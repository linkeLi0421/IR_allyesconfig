; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-parport.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-parport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.parport_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, i8, %struct.list_head }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.adapter_parm = type { %struct.lineop, %struct.lineop, %struct.lineop, %struct.lineop, %struct.lineop, i8 }
%struct.lineop = type { i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.parport_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pardev_cb = type { ptr, ptr, ptr, ptr, i32 }
%struct.i2c_par = type { ptr, %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_smbus_alert_setup, ptr, %struct.list_head }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_smbus_alert_setup = type { i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@__param_str_parport = internal constant [20 x i8] c"i2c_parport.parport\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_parport = internal constant %struct.kparam_array { i32 4, i32 4, ptr null, ptr @param_ops_int, ptr @parport }, align 4
@__param_parport = internal constant %struct.kernel_param { ptr @__param_str_parport, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_parport } }, section "__param", align 4
@__UNIQUE_ID_parporttype288 = internal constant [42 x i8] c"i2c_parport.parmtype=parport:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_parport289 = internal constant [151 x i8] c"i2c_parport.parm=parport:List of parallel ports to bind to, by index.\0A At most 4 devices are supported.\0A Default is one device connected to parport0.\0A\00", section ".modinfo", align 1
@__param_str_type = internal constant [17 x i8] c"i2c_parport.type\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@type = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_type = internal constant %struct.kernel_param { ptr @__param_str_type, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @type } }, section "__param", align 4
@__UNIQUE_ID_typetype290 = internal constant [30 x i8] c"i2c_parport.parmtype=type:int\00", section ".modinfo", align 1
@__UNIQUE_ID_type291 = internal constant [315 x i8] c"i2c_parport.parm=type:Type of adapter:\0A 0 = Philips adapter\0A 1 = home brew teletext adapter\0A 2 = Velleman K8000 adapter\0A 3 = ELV adapter\0A 4 = ADM1032 evaluation board\0A 5 = ADM1025, ADM1030 and ADM1031 evaluation boards\0A 6 = Barco LPT->DVI (K5800236) adapter\0A 7 = One For All JP1 parallel port adapter\0A 8 = VCT-jig\0A\00", section ".modinfo", align 1
@__initcall__kmod_i2c_parport__296_405_i2c_parport_driver_init6 = internal global ptr @i2c_parport_driver_init, section ".initcall6.init", align 4
@i2c_parport_driver = internal global { %struct.parport_driver, [52 x i8] } { %struct.parport_driver { ptr @.str.1, ptr null, ptr @i2c_parport_detach, ptr @i2c_parport_attach, ptr null, %struct.device_driver zeroinitializer, i8 1, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_i2c_parport_driver_exit = internal global ptr @i2c_parport_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [51 x i8] c"i2c_parport.author=Jean Delvare <jdelvare@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [51 x i8] c"i2c_parport.description=I2C bus over parallel port\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [48 x i8] c"i2c_parport.file=drivers/i2c/busses/i2c-parport\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [24 x i8] c"i2c_parport.license=GPL\00", section ".modinfo", align 1
@parport = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 -1, i32 -1, i32 -1], [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c_parport\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c-parport\00", [20 x i8] zeroinitializer }, align 32
@adapter_list_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @adapter_list_lock, i64 52), ptr getelementptr (i8, ptr @adapter_list_lock, i64 52) }, ptr @adapter_list_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@adapter_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @adapter_list, ptr @adapter_list }, [24 x i8] zeroinitializer }, align 32
@adapter_parm = internal constant { [9 x %struct.adapter_parm], [48 x i8] } { [9 x %struct.adapter_parm] [%struct.adapter_parm { %struct.lineop { i8 -128, i8 0, i8 1 }, %struct.lineop { i8 8, i8 2, i8 0 }, %struct.lineop { i8 -128, i8 1, i8 0 }, %struct.lineop { i8 8, i8 1, i8 0 }, %struct.lineop zeroinitializer, i8 0 }, %struct.adapter_parm { %struct.lineop { i8 2, i8 0, i8 0 }, %struct.lineop { i8 1, i8 0, i8 0 }, %struct.lineop { i8 -128, i8 1, i8 1 }, %struct.lineop zeroinitializer, %struct.lineop zeroinitializer, i8 0 }, %struct.adapter_parm { %struct.lineop { i8 2, i8 2, i8 1 }, %struct.lineop { i8 8, i8 2, i8 1 }, %struct.lineop { i8 16, i8 1, i8 0 }, %struct.lineop zeroinitializer, %struct.lineop zeroinitializer, i8 0 }, %struct.adapter_parm { %struct.lineop { i8 2, i8 0, i8 1 }, %struct.lineop { i8 1, i8 0, i8 1 }, %struct.lineop { i8 64, i8 1, i8 1 }, %struct.lineop { i8 8, i8 1, i8 1 }, %struct.lineop zeroinitializer, i8 0 }, %struct.adapter_parm { %struct.lineop { i8 2, i8 0, i8 1 }, %struct.lineop { i8 1, i8 0, i8 1 }, %struct.lineop { i8 16, i8 1, i8 1 }, %struct.lineop zeroinitializer, %struct.lineop { i8 -16, i8 0, i8 0 }, i8 -128 }, %struct.adapter_parm { %struct.lineop { i8 2, i8 0, i8 1 }, %struct.lineop { i8 1, i8 0, i8 1 }, %struct.lineop { i8 16, i8 1, i8 1 }, %struct.lineop zeroinitializer, %struct.lineop zeroinitializer, i8 0 }, %struct.adapter_parm { %struct.lineop { i8 2, i8 0, i8 1 }, %struct.lineop { i8 1, i8 0, i8 1 }, %struct.lineop { i8 32, i8 1, i8 0 }, %struct.lineop { i8 64, i8 1, i8 0 }, %struct.lineop { i8 -4, i8 0, i8 0 }, i8 0 }, %struct.adapter_parm { %struct.lineop { i8 1, i8 0, i8 0 }, %struct.lineop { i8 2, i8 0, i8 0 }, %struct.lineop { i8 -128, i8 1, i8 1 }, %struct.lineop zeroinitializer, %struct.lineop { i8 4, i8 0, i8 1 }, i8 0 }, %struct.adapter_parm { %struct.lineop { i8 4, i8 0, i8 1 }, %struct.lineop { i8 1, i8 0, i8 1 }, %struct.lineop { i8 64, i8 1, i8 0 }, %struct.lineop { i8 -128, i8 1, i8 1 }, %struct.lineop zeroinitializer, i8 0 }], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"adapter_list_lock.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adapter_list_lock\00", [46 x i8] zeroinitializer }, align 32
@port_read = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @port_read_data, ptr @port_read_status, ptr @port_read_control], [20 x i8] zeroinitializer }, align 32
@port_write = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @port_write_data, ptr null, ptr @port_write_control], [20 x i8] zeroinitializer }, align 32
@i2c_parport_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014i2c-parport: adapter type unspecified\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2c_parport_attach\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/busses/i2c-parport.c\00", [63 x i8] zeroinitializer }, align 32
@i2c_parport_attach._entry_ptr = internal global ptr @i2c_parport_attach._entry, section ".printk_index", align 4
@i2c_parport_attach._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014i2c-parport: invalid type (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@i2c_parport_attach._entry_ptr.9 = internal global ptr @i2c_parport_attach._entry.7, section ".printk_index", align 4
@i2c_parport_attach.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.10, i8 0, i8 71, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Not using parport%d.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"i2c-parport: Not using parport%d.\0A\00", [61 x i8] zeroinitializer }, align 32
@i2c_parport_attach.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.12, i8 0, i8 74, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"attaching to %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"i2c-parport: attaching to %s\0A\00", [34 x i8] zeroinitializer }, align 32
@i2c_parport_attach._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013i2c-parport: Unable to register with parport\0A\00", [48 x i8] zeroinitializer }, align 32
@i2c_parport_attach._entry_ptr.16 = internal global ptr @i2c_parport_attach._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Parallel port adapter\00", [42 x i8] zeroinitializer }, align 32
@parport_algo_data = internal constant { %struct.i2c_algo_bit_data, [56 x i8] } { %struct.i2c_algo_bit_data { ptr null, ptr @parport_setsda, ptr @parport_setscl, ptr @parport_getsda, ptr @parport_getscl, ptr null, ptr null, i32 10, i32 100, i8 0 }, [56 x i8] zeroinitializer }, align 32
@i2c_parport_attach._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 325, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not claim parallel port\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i2c_parport_attach._entry_ptr.22 = internal global ptr @i2c_parport_attach._entry.18, section ".printk_index", align 4
@i2c_parport_attach._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.5, ptr @.str.6, i32 340, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to register with I2C\0A\00", [35 x i8] zeroinitializer }, align 32
@i2c_parport_attach._entry_ptr.25 = internal global ptr @i2c_parport_attach._entry.23, section ".printk_index", align 4
@i2c_parport_attach._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.5, ptr @.str.6, i32 355, ptr @.str.28, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register ARA client\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@i2c_parport_attach._entry_ptr.29 = internal global ptr @i2c_parport_attach._entry.26, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@i2c_parport_irq.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.6, ptr @.str.31, i8 0, i8 64, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2c_parport_irq\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SMBus alert received\0A\00", [42 x i8] zeroinitializer }, align 32
@i2c_parport_irq.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.6, ptr @.str.32, i8 0, i8 65, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"SMBus alert received but no ARA client!\0A\00", [55 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 136, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"i2c_parport_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 399, i32 30 }
@___asan_gen_.39 = private unnamed_addr constant [8 x i8] c"parport\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 128, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 405, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 400, i32 10 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"adapter_list_lock\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [13 x i8] c"adapter_list\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 124, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"adapter_parm\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 48, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 125, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant [10 x i8] c"port_read\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 184, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant [11 x i8] c"port_write\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 178, i32 22 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 271, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 276, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 287, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 299, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 304, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 311, i32 33 }
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"parport_algo_data\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 240, i32 39 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 324, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 340, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 354, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 257, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [36 x i8] c"../drivers/i2c/busses/i2c-parport.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 260, i32 3 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__UNIQUE_ID_parport289, ptr @__UNIQUE_ID_parporttype288, ptr @__UNIQUE_ID_type291, ptr @__UNIQUE_ID_typetype290, ptr @__exitcall_i2c_parport_driver_exit, ptr @__initcall__kmod_i2c_parport__296_405_i2c_parport_driver_init6, ptr @__param_parport, ptr @__param_type, ptr @i2c_parport_attach._entry, ptr @i2c_parport_attach._entry.14, ptr @i2c_parport_attach._entry.18, ptr @i2c_parport_attach._entry.23, ptr @i2c_parport_attach._entry.26, ptr @i2c_parport_attach._entry.7, ptr @i2c_parport_attach._entry_ptr, ptr @i2c_parport_attach._entry_ptr.16, ptr @i2c_parport_attach._entry_ptr.22, ptr @i2c_parport_attach._entry_ptr.25, ptr @i2c_parport_attach._entry_ptr.29, ptr @i2c_parport_attach._entry_ptr.9, ptr @i2c_parport_driver_exit, ptr @type, ptr @i2c_parport_driver, ptr @parport, ptr @.str, ptr @.str.1, ptr @adapter_list_lock, ptr @adapter_list, ptr @adapter_parm, ptr @.str.2, ptr @.str.3, ptr @port_read, ptr @port_write, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @parport_algo_data, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_parport_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_list_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_parm to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_read to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_write to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_parport_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_parport_attach._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_parport_attach._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_algo_data to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_parport_attach._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_parport_attach._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_parport_attach._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_parport_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__parport_register_driver(ptr noundef nonnull @i2c_parport_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i2c_parport_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @parport_unregister_driver(ptr noundef nonnull @i2c_parport_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__parport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2c_parport_detach(ptr noundef %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @adapter_list_lock, i32 noundef 0) #7
  %0 = load ptr, ptr @adapter_list, align 4
  %cmp.not40 = icmp eq ptr %0, @adapter_list
  br i1 %cmp.not40, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ops = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in41 = phi ptr [ %0, %for.body.lr.ph ], [ %.pn44, %for.inc.for.body_crit_edge ]
  %adapter.043 = getelementptr i8, ptr %.pn.in41, i32 -1416
  %1 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn44 = load ptr, ptr %.pn.in41, align 8
  %2 = ptrtoint ptr %adapter.043 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.043, align 8
  %port5 = getelementptr inbounds %struct.pardevice, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %port5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port5, align 4
  %cmp6 = icmp eq ptr %5, %port
  br i1 %cmp6, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  %ara = getelementptr i8, ptr %.pn.in41, i32 -4
  %6 = ptrtoint ptr %ara to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ara, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %disable_irq = getelementptr inbounds %struct.parport_operations, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %disable_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disable_irq, align 4
  tail call void %11(ptr noundef %port) #7
  %12 = ptrtoint ptr %ara to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ara, align 4
  tail call void @i2c_unregister_device(ptr noundef %13) #7
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %adapter9 = getelementptr i8, ptr %.pn.in41, i32 -1408
  tail call void @i2c_del_adapter(ptr noundef %adapter9) #7
  %14 = load i32, ptr @type, align 4
  %init = getelementptr [9 x %struct.adapter_parm], ptr @adapter_parm, i32 0, i32 %14, i32 4
  %15 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %init, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool10.not = icmp eq i8 %16, 0
  br i1 %tobool10.not, label %if.end.if.end14_crit_edge, label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %port.i = getelementptr [9 x %struct.adapter_parm], ptr @adapter_parm, i32 0, i32 %14, i32 4, i32 1
  %17 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %port.i, align 1
  %idxprom.i = zext i8 %18 to i32
  %arrayidx.i = getelementptr [3 x ptr], ptr @port_read, i32 0, i32 %idxprom.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call zeroext i8 %20(ptr noundef %port) #7
  %21 = and i32 %14, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %21)
  %tobool.not.i.not.not = icmp eq i32 %21, 7
  %arrayidx14.i = getelementptr [3 x ptr], ptr @port_write, i32 0, i32 %idxprom.i
  %22 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx14.i, align 4
  %neg.i = xor i8 %16, -1
  %and.i = and i8 %call.i, %neg.i
  %or29.i = or i8 %call.i, %16
  %and.sink.i = select i1 %tobool.not.i.not.not, i8 %or29.i, i8 %and.i
  tail call void %23(ptr noundef %port, i8 noundef zeroext %and.sink.i) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %24 = ptrtoint ptr %adapter.043 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter.043, align 8
  tail call void @parport_release(ptr noundef %25) #7
  %26 = ptrtoint ptr %adapter.043 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter.043, align 8
  tail call void @parport_unregister_device(ptr noundef %27) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in41) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.list_del.exit_crit_edge

if.end14.list_del.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in41, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %.pn.in41, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end14.list_del.exit_crit_edge
  %34 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in41, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in41, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %adapter.043) #7
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn44, @adapter_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @adapter_list_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2c_parport_attach(ptr noundef %port) #2 align 64 {
entry:
  %i2c_parport_cb = alloca %struct.pardev_cb, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %i2c_parport_cb) #7
  %0 = getelementptr inbounds %struct.pardev_cb, ptr %i2c_parport_cb, i32 0, i32 2
  %1 = getelementptr inbounds %struct.pardev_cb, ptr %i2c_parport_cb, i32 0, i32 3
  %2 = getelementptr inbounds %struct.pardev_cb, ptr %i2c_parport_cb, i32 0, i32 4
  %3 = load i32, ptr @type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp1 = icmp ugt i32 %3, 8
  br i1 %cmp1, label %do.end5, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %number = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 26
  %4 = load i32, ptr @parport, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp10 = icmp eq i32 %4, -1
  br i1 %cmp10, label %for.cond.preheader.for.inc_crit_edge, label %if.end12

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %3) #10
  br label %cleanup

if.end12:                                         ; preds = %for.cond.preheader
  %5 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp14 = icmp eq i32 %6, %4
  br i1 %cmp14, label %if.end12.if.end30_crit_edge, label %if.end12.for.inc_crit_edge

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end12.if.end30_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

for.inc:                                          ; preds = %if.end12.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %7 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @parport, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp10.1 = icmp eq i32 %7, -1
  br i1 %cmp10.1, label %for.inc.for.inc.1_crit_edge, label %if.end12.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end12.1:                                       ; preds = %for.inc
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp14.1 = icmp eq i32 %9, %7
  br i1 %cmp14.1, label %if.end12.1.if.end30_crit_edge, label %if.end12.1.for.inc.1_crit_edge

if.end12.1.for.inc.1_crit_edge:                   ; preds = %if.end12.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end12.1.if.end30_crit_edge:                    ; preds = %if.end12.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

for.inc.1:                                        ; preds = %if.end12.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %10 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @parport, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp10.2 = icmp eq i32 %10, -1
  br i1 %cmp10.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end12.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end12.2:                                       ; preds = %for.inc.1
  %11 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp14.2 = icmp eq i32 %12, %10
  br i1 %cmp14.2, label %if.end12.2.if.end30_crit_edge, label %if.end12.2.for.inc.2_crit_edge

if.end12.2.for.inc.2_crit_edge:                   ; preds = %if.end12.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end12.2.if.end30_crit_edge:                    ; preds = %if.end12.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

for.inc.2:                                        ; preds = %if.end12.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %13 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @parport, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp10.3 = icmp eq i32 %13, -1
  br i1 %cmp10.3, label %for.inc.2.do.body19_crit_edge, label %if.end12.3

for.inc.2.do.body19_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

if.end12.3:                                       ; preds = %for.inc.2
  %14 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp14.3 = icmp eq i32 %15, %13
  br i1 %cmp14.3, label %if.end12.3.if.end30_crit_edge, label %if.end12.3.do.body19_crit_edge

if.end12.3.do.body19_crit_edge:                   ; preds = %if.end12.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

if.end12.3.if.end30_crit_edge:                    ; preds = %if.end12.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.body19:                                        ; preds = %if.end12.3.do.body19_crit_edge, %for.inc.2.do.body19_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_parport_attach.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_parport_attach, %cleanup)) #7
          to label %if.then25 [label %cleanup], !srcloc !101

if.then25:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @i2c_parport_attach.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.11, i32 noundef %17) #7
  br label %cleanup

if.end30:                                         ; preds = %if.end12.3.if.end30_crit_edge, %if.end12.2.if.end30_crit_edge, %if.end12.1.if.end30_crit_edge, %if.end12.if.end30_crit_edge
  %i.0192.lcssa = phi i32 [ 0, %if.end12.if.end30_crit_edge ], [ 1, %if.end12.1.if.end30_crit_edge ], [ 2, %if.end12.2.if.end30_crit_edge ], [ 3, %if.end12.3.if.end30_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 1424) #11
  %tobool32.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool32.not, label %if.end30.cleanup_crit_edge, label %if.end34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %19 = ptrtoint ptr %i2c_parport_cb to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %i2c_parport_cb, align 8
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %2, align 8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @i2c_parport_irq, ptr %1, align 4
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %0, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_parport_attach.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_parport_attach, %do.end52)) #7
          to label %if.then49 [label %do.end52], !srcloc !101

if.then49:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @i2c_parport_attach.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.13, ptr noundef %24) #7
  br label %do.end52

do.end52:                                         ; preds = %if.then49, %if.end34
  %ops = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 24
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %disable_irq = getelementptr inbounds %struct.parport_operations, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %disable_irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %disable_irq, align 4
  tail call void %28(ptr noundef %port) #7
  %call53 = call ptr @parport_register_dev_model(ptr noundef %port, ptr noundef nonnull @.str.1, ptr noundef nonnull %i2c_parport_cb, i32 noundef %i.0192.lcssa) #7
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call53, ptr %call7.i.i, align 8
  %tobool55.not = icmp eq ptr %call53, null
  br i1 %tobool55.not, label %do.end59, label %if.end62

do.end59:                                         ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %err_free

if.end62:                                         ; preds = %do.end52
  %adapter63 = getelementptr inbounds %struct.i2c_par, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %adapter63 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %adapter63, align 8
  %class = getelementptr inbounds %struct.i2c_par, ptr %call7.i.i, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %class, align 4
  %name66 = getelementptr inbounds %struct.i2c_par, ptr %call7.i.i, i32 0, i32 1, i32 12
  %call67 = call i32 @strlcpy(ptr noundef %name66, ptr noundef nonnull @.str.17, i32 noundef 48) #7
  %algo_data = getelementptr inbounds %struct.i2c_par, ptr %call7.i.i, i32 0, i32 2
  %32 = call ptr @memcpy(ptr %algo_data, ptr @parport_algo_data, i32 40)
  %33 = load i32, ptr @type, align 4
  %getscl = getelementptr [9 x %struct.adapter_parm], ptr @adapter_parm, i32 0, i32 %33, i32 3
  %34 = ptrtoint ptr %getscl to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %getscl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool69.not = icmp eq i8 %35, 0
  br i1 %tobool69.not, label %if.then70, label %if.end62.if.end74_crit_edge

if.end62.if.end74_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then70:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %getscl72 = getelementptr inbounds %struct.i2c_par, ptr %call7.i.i, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %getscl72 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %getscl72, align 8
  %udelay = getelementptr inbounds %struct.i2c_par, ptr %call7.i.i, i32 0, i32 2, i32 7
  %37 = ptrtoint ptr %udelay to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 50, ptr %udelay, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.end62.if.end74_crit_edge
  %38 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %port, ptr %algo_data, align 8
  %algo_data78 = getelementptr inbounds %struct.i2c_par, ptr %call7.i.i, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %algo_data78 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %algo_data, ptr %algo_data78, align 4
  %physport = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 11
  %40 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %physport, align 8
  %dev = getelementptr inbounds %struct.parport, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.i2c_par, ptr %call7.i.i, i32 0, i32 1, i32 9, i32 1
  %44 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %parent, align 8
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call7.i.i, align 8
  %call82 = call i32 @parport_claim_or_block(ptr noundef %46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.end74.err_unregister_crit_edge, label %if.end90

if.end74.err_unregister_crit_edge:                ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unregister

if.end90:                                         ; preds = %if.end74
  %47 = load i32, ptr @type, align 4
  %arrayidx.i = getelementptr [9 x %struct.adapter_parm], ptr @adapter_parm, i32 0, i32 %47
  %port.i.i = getelementptr inbounds %struct.lineop, ptr %arrayidx.i, i32 0, i32 1
  %48 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %port.i.i, align 1
  %idxprom.i.i = zext i8 %49 to i32
  %arrayidx.i.i = getelementptr [3 x ptr], ptr @port_read, i32 0, i32 %idxprom.i.i
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call zeroext i8 %51(ptr noundef %port) #7
  %inverted.i.i = getelementptr inbounds %struct.lineop, ptr %arrayidx.i, i32 0, i32 2
  %52 = ptrtoint ptr %inverted.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %inverted.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i.i.not = icmp eq i8 %53, 0
  %arrayidx14.i.i = getelementptr [3 x ptr], ptr @port_write, i32 0, i32 %idxprom.i.i
  %54 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx14.i.i, align 4
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i, align 4
  %neg.i.i = xor i8 %57, -1
  %and.i.i = and i8 %call.i.i, %neg.i.i
  %or29.i.i = or i8 %57, %call.i.i
  %and.sink.i.i = select i1 %tobool.not.i.i.not, i8 %or29.i.i, i8 %and.i.i
  call void %55(ptr noundef %port, i8 noundef zeroext %and.sink.i.i) #7
  %58 = load i32, ptr @type, align 4
  %setscl.i = getelementptr [9 x %struct.adapter_parm], ptr @adapter_parm, i32 0, i32 %58, i32 1
  %port.i.i175 = getelementptr [9 x %struct.adapter_parm], ptr @adapter_parm, i32 0, i32 %58, i32 1, i32 1
  %59 = ptrtoint ptr %port.i.i175 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %port.i.i175, align 4
  %idxprom.i.i176 = zext i8 %60 to i32
  %arrayidx.i.i177 = getelementptr [3 x ptr], ptr @port_read, i32 0, i32 %idxprom.i.i176
  %61 = ptrtoint ptr %arrayidx.i.i177 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i177, align 4
  %call.i.i178 = call zeroext i8 %62(ptr noundef %port) #7
  %63 = and i32 %58, 268435455
  %64 = lshr i32 380, %63
  %65 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i.i179.not = icmp eq i32 %65, 0
  %arrayidx14.i.i180 = getelementptr [3 x ptr], ptr @port_write, i32 0, i32 %idxprom.i.i176
  %66 = ptrtoint ptr %arrayidx14.i.i180 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx14.i.i180, align 4
  %68 = ptrtoint ptr %setscl.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %setscl.i, align 1
  %neg.i.i181 = xor i8 %69, -1
  %and.i.i182 = and i8 %call.i.i178, %neg.i.i181
  %or29.i.i183 = or i8 %69, %call.i.i178
  %and.sink.i.i184 = select i1 %tobool.not.i.i179.not, i8 %or29.i.i183, i8 %and.i.i182
  call void %67(ptr noundef %port, i8 noundef zeroext %and.sink.i.i184) #7
  %70 = load i32, ptr @type, align 4
  %init = getelementptr [9 x %struct.adapter_parm], ptr @adapter_parm, i32 0, i32 %70, i32 4
  %71 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %init, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool93.not = icmp eq i8 %72, 0
  br i1 %tobool93.not, label %if.end90.if.end97_crit_edge, label %if.then94

if.end90.if.end97_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.then94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %port.i = getelementptr [9 x %struct.adapter_parm], ptr @adapter_parm, i32 0, i32 %70, i32 4, i32 1
  %73 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %port.i, align 1
  %idxprom.i = zext i8 %74 to i32
  %arrayidx.i185 = getelementptr [3 x ptr], ptr @port_read, i32 0, i32 %idxprom.i
  %75 = ptrtoint ptr %arrayidx.i185 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i185, align 4
  %call.i = call zeroext i8 %76(ptr noundef %port) #7
  %77 = and i32 %70, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %77)
  %tobool.not.i.not.not = icmp eq i32 %77, 7
  %arrayidx14.i = getelementptr [3 x ptr], ptr @port_write, i32 0, i32 %idxprom.i
  %78 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx14.i, align 4
  %neg.i = xor i8 %72, -1
  %and.i = and i8 %call.i, %neg.i
  %or29.i = or i8 %call.i, %72
  %and.sink.i = select i1 %tobool.not.i.not.not, i8 %and.i, i8 %or29.i
  call void %79(ptr noundef %port, i8 noundef zeroext %and.sink.i) #7
  call void @msleep(i32 noundef 100) #7
  br label %if.end97

if.end97:                                         ; preds = %if.then94, %if.end90.if.end97_crit_edge
  %call99 = call i32 @i2c_bit_add_bus(ptr noundef %adapter63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %if.end97.err_unregister_crit_edge, label %if.end107

if.end97.err_unregister_crit_edge:                ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unregister

if.end107:                                        ; preds = %if.end97
  %80 = load i32, ptr @type, align 4
  %81 = and i32 %80, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %81)
  %tobool109.not.not = icmp eq i32 %81, 4
  br i1 %tobool109.not.not, label %if.then110, label %if.end107.if.end123_crit_edge

if.end107.if.end123_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.then110:                                       ; preds = %if.end107
  %alert_data = getelementptr inbounds %struct.i2c_par, ptr %call7.i.i, i32 0, i32 3
  %call112 = call ptr @i2c_new_smbus_alert_device(ptr noundef %adapter63, ptr noundef %alert_data) #7
  %cmp.i = icmp ugt ptr %call112, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end119, label %if.then114

if.then114:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  %ara115 = getelementptr inbounds %struct.i2c_par, ptr %call7.i.i, i32 0, i32 4
  %82 = ptrtoint ptr %ara115 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call112, ptr %ara115, align 4
  %83 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ops, align 4
  %enable_irq = getelementptr inbounds %struct.parport_operations, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %enable_irq to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %enable_irq, align 4
  call void %86(ptr noundef %port) #7
  br label %if.end123

do.end119:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call7.i.i, align 8
  %dev121 = getelementptr inbounds %struct.pardevice, ptr %88, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev121, ptr noundef nonnull @.str.27) #10
  br label %if.end123

if.end123:                                        ; preds = %do.end119, %if.then114, %if.end107.if.end123_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @adapter_list_lock, i32 noundef 0) #7
  %node = getelementptr inbounds %struct.i2c_par, ptr %call7.i.i, i32 0, i32 5
  %89 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @adapter_list, i32 0, i32 1), align 4
  %call.i.i186 = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %89, ptr noundef nonnull @adapter_list) #7
  br i1 %call.i.i186, label %if.end.i.i, label %if.end123.list_add_tail.exit_crit_edge

if.end123.list_add_tail.exit_crit_edge:           ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %node, ptr getelementptr inbounds (%struct.list_head, ptr @adapter_list, i32 0, i32 1), align 4
  %90 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @adapter_list, ptr %node, align 8
  %prev3.i.i = getelementptr inbounds %struct.i2c_par, ptr %call7.i.i, i32 0, i32 5, i32 1
  %91 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %89, ptr %prev3.i.i, align 4
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %node, ptr %89, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end123.list_add_tail.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @adapter_list_lock) #7
  br label %cleanup

err_unregister:                                   ; preds = %if.end97.err_unregister_crit_edge, %if.end74.err_unregister_crit_edge
  %.str.24.sink = phi ptr [ @.str.19, %if.end74.err_unregister_crit_edge ], [ @.str.24, %if.end97.err_unregister_crit_edge ]
  %93 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %call7.i.i, align 8
  %dev106 = getelementptr inbounds %struct.pardevice, ptr %94, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev106, ptr noundef nonnull %.str.24.sink) #10
  %95 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call7.i.i, align 8
  call void @parport_release(ptr noundef %96) #7
  %97 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %call7.i.i, align 8
  call void @parport_unregister_device(ptr noundef %98) #7
  br label %err_free

err_free:                                         ; preds = %err_unregister, %do.end59
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free, %list_add_tail.exit, %if.end30.cleanup_crit_edge, %if.then25, %do.body19, %do.end5, %do.end
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %i2c_parport_cb) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @port_read_data(ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 24
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %read_data = getelementptr inbounds %struct.parport_operations, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %read_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_data, align 4
  %call = tail call zeroext i8 %3(ptr noundef %p) #7
  ret i8 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @port_read_status(ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 24
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %read_status = getelementptr inbounds %struct.parport_operations, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %read_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_status, align 4
  %call = tail call zeroext i8 %3(ptr noundef %p) #7
  ret i8 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @port_read_control(ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 24
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %read_control = getelementptr inbounds %struct.parport_operations, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %read_control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_control, align 4
  %call = tail call zeroext i8 %3(ptr noundef %p) #7
  ret i8 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @port_write_data(ptr noundef %p, i8 noundef zeroext %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 24
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void %3(ptr noundef %p, i8 noundef zeroext %d) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @port_write_control(ptr noundef %p, i8 noundef zeroext %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 24
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %write_control = getelementptr inbounds %struct.parport_operations, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %write_control to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_control, align 4
  tail call void %3(ptr noundef %p, i8 noundef zeroext %d) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2c_parport_irq(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ara1 = getelementptr inbounds %struct.i2c_par, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %ara1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ara1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body8, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_parport_irq.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_parport_irq, %do.end)) #7
          to label %if.then6 [label %do.end], !srcloc !101

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_parport_irq.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.31) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %call7 = tail call i32 @i2c_handle_smbus_alert(ptr noundef nonnull %1) #7
  br label %if.end28

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_parport_irq.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_parport_irq, %if.end28)) #7
          to label %if.then22 [label %if.end28], !srcloc !101

if.then22:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %dev24 = getelementptr inbounds %struct.i2c_par, ptr %data, i32 0, i32 1, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_parport_irq.__UNIQUE_ID_ddebug293, ptr noundef %dev24, ptr noundef nonnull @.str.32) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %do.body8, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_register_dev_model(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_claim_or_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_setsda(ptr noundef %data, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @type, align 4
  %arrayidx = getelementptr [9 x %struct.adapter_parm], ptr @adapter_parm, i32 0, i32 %0
  %port.i = getelementptr inbounds %struct.lineop, ptr %arrayidx, i32 0, i32 1
  %1 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %port.i, align 1
  %idxprom.i = zext i8 %2 to i32
  %arrayidx.i = getelementptr [3 x ptr], ptr @port_read, i32 0, i32 %idxprom.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call zeroext i8 %4(ptr noundef %data) #7
  %inverted.i = getelementptr inbounds %struct.lineop, ptr %arrayidx, i32 0, i32 2
  %5 = ptrtoint ptr %inverted.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %inverted.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp ne i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool1.not.i = icmp eq i32 %state, 0
  %or.cond31.i = xor i1 %tobool1.not.i, %tobool.not.i
  %arrayidx14.i = getelementptr [3 x ptr], ptr @port_write, i32 0, i32 %idxprom.i
  %7 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx14.i, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 4
  %neg.i = xor i8 %10, -1
  %and.i = and i8 %call.i, %neg.i
  %or29.i = or i8 %10, %call.i
  %and.sink.i = select i1 %or.cond31.i, i8 %and.i, i8 %or29.i
  tail call void %8(ptr noundef %data, i8 noundef zeroext %and.sink.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parport_setscl(ptr noundef %data, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @type, align 4
  %setscl = getelementptr [9 x %struct.adapter_parm], ptr @adapter_parm, i32 0, i32 %0, i32 1
  %port.i = getelementptr [9 x %struct.adapter_parm], ptr @adapter_parm, i32 0, i32 %0, i32 1, i32 1
  %1 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %port.i, align 4
  %idxprom.i = zext i8 %2 to i32
  %arrayidx.i = getelementptr [3 x ptr], ptr @port_read, i32 0, i32 %idxprom.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call zeroext i8 %4(ptr noundef %data) #7
  %5 = and i32 %0, 268435455
  %6 = lshr i32 380, %5
  %7 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool1.not.i = icmp eq i32 %state, 0
  %or.cond31.i = xor i1 %tobool1.not.i, %tobool.not.i
  %arrayidx14.i = getelementptr [3 x ptr], ptr @port_write, i32 0, i32 %idxprom.i
  %8 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx14.i, align 4
  %10 = ptrtoint ptr %setscl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %setscl, align 1
  %neg.i = xor i8 %11, -1
  %and.i = and i8 %call.i, %neg.i
  %or29.i = or i8 %11, %call.i
  %and.sink.i = select i1 %or.cond31.i, i8 %and.i, i8 %or29.i
  tail call void %9(ptr noundef %data, i8 noundef zeroext %and.sink.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_smbus_alert_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_handle_smbus_alert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_getsda(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @type, align 4
  %getsda = getelementptr [9 x %struct.adapter_parm], ptr @adapter_parm, i32 0, i32 %0, i32 2
  %port.i = getelementptr [9 x %struct.adapter_parm], ptr @adapter_parm, i32 0, i32 %0, i32 2, i32 1
  %1 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %port.i, align 1
  %idxprom.i = zext i8 %2 to i32
  %arrayidx.i = getelementptr [3 x ptr], ptr @port_read, i32 0, i32 %idxprom.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call zeroext i8 %4(ptr noundef %data) #7
  %5 = and i32 %0, 268435455
  %6 = lshr i32 325, %5
  %7 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.not = icmp eq i32 %7, 0
  %8 = ptrtoint ptr %getsda to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %getsda, align 2
  %and1123.i = and i8 %9, %call.i
  call void @__sanitizer_cov_trace_cmp1(i8 %and1123.i, i8 %9)
  %cmp14.i = icmp eq i8 %and1123.i, %9
  call void @__sanitizer_cov_trace_cmp1(i8 %and1123.i, i8 %9)
  %cmp.not.i = icmp ne i8 %and1123.i, %9
  %.in.i = select i1 %tobool.not.i.not, i1 %cmp.not.i, i1 %cmp14.i
  %10 = zext i1 %.in.i to i32
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_getscl(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @type, align 4
  %getscl = getelementptr [9 x %struct.adapter_parm], ptr @adapter_parm, i32 0, i32 %0, i32 3
  %port.i = getelementptr [9 x %struct.adapter_parm], ptr @adapter_parm, i32 0, i32 %0, i32 3, i32 1
  %1 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %port.i, align 2
  %idxprom.i = zext i8 %2 to i32
  %arrayidx.i = getelementptr [3 x ptr], ptr @port_read, i32 0, i32 %idxprom.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call zeroext i8 %4(ptr noundef %data) #7
  %5 = and i32 %0, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %6 = icmp ne i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %7 = icmp ne i32 %5, 8
  %tobool.not.i = and i1 %6, %7
  %8 = ptrtoint ptr %getscl to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %getscl, align 1
  %and1123.i = and i8 %9, %call.i
  call void @__sanitizer_cov_trace_cmp1(i8 %and1123.i, i8 %9)
  %cmp14.i = icmp eq i8 %and1123.i, %9
  call void @__sanitizer_cov_trace_cmp1(i8 %and1123.i, i8 %9)
  %cmp.not.i = icmp ne i8 %and1123.i, %9
  %.in.i = select i1 %tobool.not.i, i1 %cmp14.i, i1 %cmp.not.i
  %10 = zext i1 %.in.i to i32
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !21, !22, !24, !25, !27, !28, !30, !32, !34, !35, !36, !38, !40, !42, !44, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__param_parport, !1, !"__param_parport", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 129, i32 1}
!2 = !{ptr @__UNIQUE_ID_parporttype288, !1, !"__UNIQUE_ID_parporttype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_parport289, !4, !"__UNIQUE_ID_parport289", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 130, i32 1}
!5 = !{ptr @__param_type, !6, !"__param_type", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 137, i32 1}
!7 = !{ptr @__UNIQUE_ID_typetype290, !6, !"__UNIQUE_ID_typetype290", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_type291, !9, !"__UNIQUE_ID_type291", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 138, i32 1}
!10 = !{ptr @__initcall__kmod_i2c_parport__296_405_i2c_parport_driver_init6, !11, !"__initcall__kmod_i2c_parport__296_405_i2c_parport_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 405, i32 1}
!12 = !{ptr @__exitcall_i2c_parport_driver_exit, !11, !"__exitcall_i2c_parport_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author297, !14, !"__UNIQUE_ID_author297", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 407, i32 1}
!15 = !{ptr @__UNIQUE_ID_description298, !16, !"__UNIQUE_ID_description298", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 408, i32 1}
!17 = !{ptr @__UNIQUE_ID_file299, !18, !"__UNIQUE_ID_file299", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 409, i32 1}
!19 = !{ptr @__UNIQUE_ID_license300, !18, !"__UNIQUE_ID_license300", i1 false, i1 false}
!20 = !{ptr @__param_str_parport, !1, !"__param_str_parport", i1 false, i1 false}
!21 = !{ptr @__param_arr_parport, !1, !"__param_arr_parport", i1 false, i1 false}
!22 = !{ptr @parport, !23, !"parport", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 128, i32 12}
!24 = !{ptr @__param_str_type, !6, !"__param_str_type", i1 false, i1 false}
!25 = !{ptr @type, !26, !"type", i1 false, i1 false}
!26 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 136, i32 12}
!27 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 400, i32 10}
!30 = !{ptr @i2c_parport_driver, !31, !"i2c_parport_driver", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 399, i32 30}
!32 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 125, i32 8}
!34 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @adapter_list_lock, !33, !"adapter_list_lock", i1 false, i1 false}
!36 = !{ptr @adapter_list, !37, !"adapter_list", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 124, i32 8}
!38 = !{ptr @adapter_parm, !39, !"adapter_parm", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 48, i32 34}
!40 = !{ptr @port_read, !41, !"port_read", i1 false, i1 false}
!41 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 184, i32 31}
!42 = !{ptr @port_write, !43, !"port_write", i1 false, i1 false}
!43 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 178, i32 22}
!44 = !{ptr @.str.4, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 271, i32 3}
!46 = !{ptr @.str.5, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @i2c_parport_attach._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @i2c_parport_attach._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 276, i32 3}
!52 = !{ptr @i2c_parport_attach._entry.7, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @i2c_parport_attach._entry_ptr.9, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.10, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 287, i32 3}
!56 = !{ptr @i2c_parport_attach.__UNIQUE_ID_ddebug294, !55, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!57 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 299, i32 2}
!60 = !{ptr @i2c_parport_attach.__UNIQUE_ID_ddebug295, !59, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!61 = !{ptr @.str.13, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 304, i32 3}
!64 = !{ptr @i2c_parport_attach._entry.14, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @i2c_parport_attach._entry_ptr.16, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 311, i32 33}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 324, i32 3}
!70 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @i2c_parport_attach._entry.18, !69, !"_entry", i1 false, i1 false}
!73 = !{ptr @i2c_parport_attach._entry_ptr.22, !69, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 340, i32 3}
!76 = !{ptr @i2c_parport_attach._entry.23, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @i2c_parport_attach._entry_ptr.25, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 354, i32 4}
!80 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @i2c_parport_attach._entry.26, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @i2c_parport_attach._entry_ptr.29, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 257, i32 3}
!85 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @i2c_parport_irq.__UNIQUE_ID_ddebug292, !84, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 260, i32 3}
!89 = !{ptr @i2c_parport_irq.__UNIQUE_ID_ddebug293, !88, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!90 = !{ptr @parport_algo_data, !91, !"parport_algo_data", i1 false, i1 false}
!91 = !{!"../drivers/i2c/busses/i2c-parport.c", i32 240, i32 39}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{i64 2148700389, i64 2148700394, i64 2148700407, i64 2148700451, i64 2148700485, i64 2148700506}
