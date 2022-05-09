; ModuleID = '/llk/IR_all_yes/drivers/char/ipmi/ipmi_ssif.c_pt.bc'
source_filename = "../drivers/char/ipmi/ipmi_ssif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.ssif_addr_info = type { %struct.i2c_board_info, ptr, i32, i32, i32, %union.ipmi_smi_info_union, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%union.ipmi_smi_info_union = type {}
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.ssif_info = type { ptr, %struct.spinlock, ptr, ptr, i32, i32, %struct.ipmi_smi_handlers, i32, %union.ipmi_smi_info_union, i8, i8, i8, i8, i8, i8, i8, i8, i32, [273 x i8], i32, [32 x i8], ptr, ptr, ptr, %struct.completion, i8, i32, i32, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i8, i8, i8, i32, i32, ptr, i32, i32, [14 x %struct.atomic_t] }
%struct.ipmi_smi_handlers = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipmi_smi_info = type { i32, ptr, %union.ipmi_smi_info_union }
%struct.timespec64 = type { i64, i32 }
%struct.ipmi_smi_msg = type { %struct.list_head, i32, i32, ptr, i32, [272 x i8], i32, [272 x i8], ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__param_str_addr = internal constant [15 x i8] c"ipmi_ssif.addr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_addr = internal constant %struct.kparam_array { i32 4, i32 2, ptr @num_addrs, ptr @param_ops_ushort, ptr @addr }, align 4
@__param_addr = internal constant %struct.kernel_param { ptr @__param_str_addr, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_addr } }, section "__param", align 4
@__UNIQUE_ID_addrtype298 = internal constant [40 x i8] c"ipmi_ssif.parmtype=addr:array of ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_addr299 = internal constant [70 x i8] c"ipmi_ssif.parm=addr:The addresses to scan for IPMI BMCs on the SSIFs.\00", section ".modinfo", align 1
@__param_str_adapter_name = internal constant [23 x i8] c"ipmi_ssif.adapter_name\00", align 1
@__param_arr_adapter_name = internal constant %struct.kparam_array { i32 4, i32 4, ptr @num_adapter_names, ptr @param_ops_charp, ptr @adapter_name }, align 4
@__param_adapter_name = internal constant %struct.kernel_param { ptr @__param_str_adapter_name, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_adapter_name } }, section "__param", align 4
@__UNIQUE_ID_adapter_nametype300 = internal constant [47 x i8] c"ipmi_ssif.parmtype=adapter_name:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_name301 = internal constant [117 x i8] c"ipmi_ssif.parm=adapter_name:The string name of the I2C device that has the BMC.  By default all devices are scanned.\00", section ".modinfo", align 1
@__param_str_slave_addrs = internal constant [22 x i8] c"ipmi_ssif.slave_addrs\00", align 1
@__param_arr_slave_addrs = internal constant %struct.kparam_array { i32 4, i32 4, ptr @num_slave_addrs, ptr @param_ops_int, ptr @slave_addrs }, align 4
@__param_slave_addrs = internal constant %struct.kernel_param { ptr @__param_str_slave_addrs, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_slave_addrs } }, section "__param", align 4
@__UNIQUE_ID_slave_addrstype302 = internal constant [44 x i8] c"ipmi_ssif.parmtype=slave_addrs:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_slave_addrs303 = internal constant [78 x i8] c"ipmi_ssif.parm=slave_addrs:The default IPMB slave address for the controller.\00", section ".modinfo", align 1
@__param_str_alerts_broken = internal constant [24 x i8] c"ipmi_ssif.alerts_broken\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@alerts_broken = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_alerts_broken = internal constant %struct.kernel_param { ptr @__param_str_alerts_broken, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @alerts_broken } }, section "__param", align 4
@__UNIQUE_ID_alerts_brokentype304 = internal constant [38 x i8] c"ipmi_ssif.parmtype=alerts_broken:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_alerts_broken305 = internal constant [69 x i8] c"ipmi_ssif.parm=alerts_broken:Don't enable alerts for the controller.\00", section ".modinfo", align 1
@__param_str_dbg = internal constant [14 x i8] c"ipmi_ssif.dbg\00", align 1
@__param_arr_dbg = internal constant %struct.kparam_array { i32 4, i32 4, ptr @num_dbg, ptr @param_ops_int, ptr @dbg }, align 4
@__param_dbg = internal constant %struct.kernel_param { ptr @__param_str_dbg, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_dbg } }, section "__param", align 4
@__UNIQUE_ID_dbgtype306 = internal constant [36 x i8] c"ipmi_ssif.parmtype=dbg:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_dbg307 = internal constant [38 x i8] c"ipmi_ssif.parm=dbg:Turn on debugging.\00", section ".modinfo", align 1
@__param_str_dbg_probe = internal constant [20 x i8] c"ipmi_ssif.dbg_probe\00", align 1
@ssif_dbg_probe = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_dbg_probe = internal constant %struct.kernel_param { ptr @__param_str_dbg_probe, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @ssif_dbg_probe } }, section "__param", align 4
@__UNIQUE_ID_dbg_probetype308 = internal constant [34 x i8] c"ipmi_ssif.parmtype=dbg_probe:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_dbg_probe309 = internal constant [66 x i8] c"ipmi_ssif.parm=dbg_probe:Enable debugging of probing of adapters.\00", section ".modinfo", align 1
@__param_str_tryacpi = internal constant [18 x i8] c"ipmi_ssif.tryacpi\00", align 1
@ssif_tryacpi = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_tryacpi = internal constant %struct.kernel_param { ptr @__param_str_tryacpi, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @ssif_tryacpi } }, section "__param", align 4
@__UNIQUE_ID_tryacpitype310 = internal constant [32 x i8] c"ipmi_ssif.parmtype=tryacpi:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_tryacpi311 = internal constant [112 x i8] c"ipmi_ssif.parm=tryacpi:Setting this to zero will disable the default scan of the interfaces identified via ACPI\00", section ".modinfo", align 1
@__param_str_trydmi = internal constant [17 x i8] c"ipmi_ssif.trydmi\00", align 1
@ssif_trydmi = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_trydmi = internal constant %struct.kernel_param { ptr @__param_str_trydmi, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @ssif_trydmi } }, section "__param", align 4
@__UNIQUE_ID_trydmitype312 = internal constant [31 x i8] c"ipmi_ssif.parmtype=trydmi:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_trydmi313 = internal constant [119 x i8] c"ipmi_ssif.parm=trydmi:Setting this to zero will disable the default scan of the interfaces identified via DMI (SMBIOS)\00", section ".modinfo", align 1
@__initcall__kmod_ipmi_ssif__316_2120_init_ipmi_ssif6 = internal global ptr @init_ipmi_ssif, section ".initcall6.init", align 4
@__exitcall_cleanup_ipmi_ssif = internal global ptr @cleanup_ipmi_ssif, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias317 = internal constant [39 x i8] c"ipmi_ssif.alias=platform:dmi-ipmi-ssif\00", section ".modinfo", align 1
@__UNIQUE_ID_author318 = internal constant [88 x i8] c"ipmi_ssif.author=Todd C Davis <todd.c.davis@intel.com>, Corey Minyard <minyard@acm.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description319 = internal constant [72 x i8] c"ipmi_ssif.description=IPMI driver for management controllers on a SMBus\00", section ".modinfo", align 1
@__UNIQUE_ID_file320 = internal constant [43 x i8] c"ipmi_ssif.file=drivers/char/ipmi/ipmi_ssif\00", section ".modinfo", align 1
@__UNIQUE_ID_license321 = internal constant [22 x i8] c"ipmi_ssif.license=GPL\00", section ".modinfo", align 1
@num_addrs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@addr = internal global { [4 x i16], [24 x i8] } zeroinitializer, align 32
@num_adapter_names = internal global { i32, [28 x i8] } zeroinitializer, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_name = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@num_slave_addrs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@slave_addrs = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@num_dbg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dbg = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@init_ipmi_ssif._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016ipmi_ssif: IPMI SSIF Interface driver\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"init_ipmi_ssif\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/char/ipmi/ipmi_ssif.c\00", [34 x i8] zeroinitializer }, align 32
@init_ipmi_ssif._entry_ptr = internal global ptr @init_ipmi_ssif._entry, section ".printk_index", align 4
@init_ipmi_ssif._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 2097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013ipmi_ssif: Couldn't add hardcoded device at addr 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@init_ipmi_ssif._entry_ptr.5 = internal global ptr @init_ipmi_ssif._entry.3, section ".printk_index", align 4
@ssif_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr @ssif_probe, ptr @ssif_remove, ptr null, ptr null, ptr @ssif_alert, ptr null, %struct.device_driver { ptr @.str.9, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ssif_id, ptr @ssif_detect, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@ipmi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ssif_platform_probe, ptr @ssif_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.9, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ssif_plat_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@init_ipmi_ssif._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 2107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ipmi_ssif: Unable to register driver: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@init_ipmi_ssif._entry_ptr.8 = internal global ptr @init_ipmi_ssif._entry.6, section ".printk_index", align 4
@platform_registered = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ssif_infos_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ssif_infos_mutex, i64 52), ptr getelementptr (i8, ptr @ssif_infos_mutex, i64 52) }, ptr @ssif_infos_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipmi_ssif\00", [22 x i8] zeroinitializer }, align 32
@ssif_infos = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ssif_infos, ptr @ssif_infos }, [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ssif_infos_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ssif_infos_mutex\00", [47 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ssif_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ipmi_ssif\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ssif_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1670, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ipmi_ssif: Out of memory!, exiting ..\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ssif_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ssif_probe._entry_ptr = internal global ptr @ssif_probe._entry, section ".printk_index", align 4
@ssif_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.2, i32 1674, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ipmi_ssif: Not probing, Interface already present\0A\00", [45 x i8] zeroinitializer }, align 32
@ssif_probe._entry_ptr.18 = internal global ptr @ssif_probe._entry.16, section ".printk_index", align 4
@ssif_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.13, ptr @.str.2, i32 1683, ptr @.str.21, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"ipmi_ssif: Trying %s-specified SSIF interface at i2c address 0x%x, adapter %s, slave address 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ssif_probe._entry_ptr.22 = internal global ptr @ssif_probe._entry.19, section ".printk_index", align 4
@ssif_probe.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.2, ptr @.str.23, i8 1, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ipmi_ssif: SSIF info too short: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ssif_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.13, ptr @.str.2, i32 1733, ptr @.str.21, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [114 x i8], [46 x i8] } { [114 x i8] c"ipmi_ssif: Error fetching SSIF: %d %d %2.2x, your system probably doesn't support this command so using defaults\0A\00", [46 x i8] zeroinitializer }, align 32
@ssif_probe._entry_ptr.26 = internal global ptr @ssif_probe._entry.24, section ".printk_index", align 4
@ssif_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.13, ptr @.str.2, i32 1751, ptr @.str.29, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ipmi_ssif: Unable to clear message flags: %d %d %2.2x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ssif_probe._entry_ptr.30 = internal global ptr @ssif_probe._entry.27, section ".printk_index", align 4
@ssif_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.13, ptr @.str.2, i32 1760, ptr @.str.29, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ipmi_ssif: Error getting global enables: %d %d %2.2x\0A\00", [42 x i8] zeroinitializer }, align 32
@ssif_probe._entry_ptr.33 = internal global ptr @ssif_probe._entry.31, section ".printk_index", align 4
@ssif_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.13, ptr @.str.2, i32 1780, ptr @.str.29, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ipmi_ssif: Error setting global enables: %d %d %2.2x\0A\00", [42 x i8] zeroinitializer }, align 32
@ssif_probe._entry_ptr.36 = internal global ptr @ssif_probe._entry.34, section ".printk_index", align 4
@ssif_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.13, ptr @.str.2, i32 1802, ptr @.str.29, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@ssif_probe._entry_ptr.38 = internal global ptr @ssif_probe._entry.37, section ".printk_index", align 4
@ssif_probe.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.2, ptr @.str.39, i8 1, i8 -58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ipmi_ssif: %s: i2c_probe found device at i2c address %x\0A\00", [39 x i8] zeroinitializer }, align 32
@ssif_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ssif_info->lock\00", [47 x i8] zeroinitializer }, align 32
@ssif_probe.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&ssif_info->retry_timer)\00", [38 x i8] zeroinitializer }, align 32
@ssif_probe.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&ssif_info->watch_timer)\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kssif%4.4x\00", [21 x i8] zeroinitializer }, align 32
@ssif_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.13, ptr @.str.2, i32 1852, ptr @.str.48, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ipmi_ssif: Could not start kernel thread: error %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@ssif_probe._entry_ptr.49 = internal global ptr @ssif_probe._entry.46, section ".printk_index", align 4
@ipmi_ssif_dev_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ipmi_ssif_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ssif_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.13, ptr @.str.2, i32 1863, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ipmi_ssif: Unable to add device attributes: error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ssif_probe._entry_ptr.52 = internal global ptr @ssif_probe._entry.50, section ".printk_index", align 4
@ssif_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.13, ptr @.str.2, i32 1873, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ipmi_ssif: Unable to register device: error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@ssif_probe._entry_ptr.55 = internal global ptr @ssif_probe._entry.53, section ".printk_index", align 4
@ssif_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.13, ptr @.str.2, i32 1883, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ipmi_ssif: Unable to start IPMI SSIF: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ssif_probe._entry_ptr.58 = internal global ptr @ssif_probe._entry.56, section ".printk_index", align 4
@ssif_check_and_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 1613, ptr @.str.21, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"ipmi_ssif: Removing %s-specified SSIF interface in favor of ACPI\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ssif_check_and_remove\00", [42 x i8] zeroinitializer }, align 32
@ssif_check_and_remove._entry_ptr = internal global ptr @ssif_check_and_remove._entry, section ".printk_index", align 4
@test_multipart_messages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1539, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ipmi_ssif: Second multipart test failed.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"test_multipart_messages\00", [40 x i8] zeroinitializer }, align 32
@test_multipart_messages._entry_ptr = internal global ptr @test_multipart_messages._entry, section ".printk_index", align 4
@start_multipart_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 1460, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"ipmi_ssif: Could not write multi-part start, though the BMC said it could handle it.  Just limit sends to one part.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"start_multipart_test\00", [43 x i8] zeroinitializer }, align 32
@start_multipart_test._entry_ptr = internal global ptr @start_multipart_test._entry, section ".printk_index", align 4
@start_multipart_test._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 1471, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"ipmi_ssif: Could not write multi-part middle, though the BMC said it could handle it.  Just limit sends to one part.\0A\00", [42 x i8] zeroinitializer }, align 32
@start_multipart_test._entry_ptr.67 = internal global ptr @start_multipart_test._entry.65, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@msg_done_handler.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 0, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"msg_done_handler\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ipmi_ssif: %s: Error %d\0A\00", [39 x i8] zeroinitializer }, align 32
@msg_done_handler.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.68, ptr @.str.2, ptr @.str.70, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ipmi_ssif: Middle message with no data\0A\00", [56 x i8] zeroinitializer }, align 32
@msg_done_handler.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.68, ptr @.str.2, ptr @.str.71, i8 0, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ipmi_ssif: Received middle message <31\0A\00", [56 x i8] zeroinitializer }, align 32
@msg_done_handler.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.68, ptr @.str.2, ptr @.str.72, i8 0, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ipmi_ssif: Received message too big\0A\00", [59 x i8] zeroinitializer }, align 32
@msg_done_handler.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.68, ptr @.str.2, ptr @.str.73, i8 0, i8 -78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"ipmi_ssif: Received message out of sequence, expected %u, got %u\0A\00", [62 x i8] zeroinitializer }, align 32
@msg_done_handler.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.68, ptr @.str.2, ptr @.str.74, i8 0, i8 -71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ipmi_ssif: DONE 1: state = %d, result=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@msg_done_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.68, ptr @.str.2, i32 781, ptr @.str.29, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ipmi_ssif: Error getting flags: %d %d, %x\0A\00", [53 x i8] zeroinitializer }, align 32
@msg_done_handler._entry_ptr = internal global ptr @msg_done_handler._entry, section ".printk_index", align 4
@msg_done_handler._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.68, ptr @.str.2, i32 791, ptr @.str.29, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ipmi_ssif: Invalid response getting flags: %x %x\0A\00", [46 x i8] zeroinitializer }, align 32
@msg_done_handler._entry_ptr.78 = internal global ptr @msg_done_handler._entry.76, section ".printk_index", align 4
@msg_done_handler._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.68, ptr @.str.2, i32 805, ptr @.str.29, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ipmi_ssif: Error clearing flags: %d %d, %x\0A\00", [52 x i8] zeroinitializer }, align 32
@msg_done_handler._entry_ptr.81 = internal global ptr @msg_done_handler._entry.79, section ".printk_index", align 4
@msg_done_handler._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.68, ptr @.str.2, i32 810, ptr @.str.29, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ipmi_ssif: Invalid response clearing flags: %x %x\0A\00", [45 x i8] zeroinitializer }, align 32
@msg_done_handler._entry_ptr.84 = internal global ptr @msg_done_handler._entry.82, section ".printk_index", align 4
@msg_done_handler._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.68, ptr @.str.2, i32 828, ptr @.str.29, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ipmi_ssif: Invalid response getting events: %x %x\0A\00", [45 x i8] zeroinitializer }, align 32
@msg_done_handler._entry_ptr.87 = internal global ptr @msg_done_handler._entry.85, section ".printk_index", align 4
@msg_done_handler._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.68, ptr @.str.2, i32 852, ptr @.str.29, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@msg_done_handler._entry_ptr.89 = internal global ptr @msg_done_handler._entry.88, section ".printk_index", align 4
@msg_done_handler.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.68, ptr @.str.2, ptr @.str.90, i8 0, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ipmi_ssif: DONE 2: state = %d.\0A\00", [32 x i8] zeroinitializer }, align 32
@deliver_recv_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 329, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ipmi_ssif: %s: Malformed message: rsp_size = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"deliver_recv_msg\00", [47 x i8] zeroinitializer }, align 32
@deliver_recv_msg._entry_ptr = internal global ptr @deliver_recv_msg._entry, section ".printk_index", align 4
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"msg_written_handler\00", [44 x i8] zeroinitializer }, align 32
@msg_written_handler.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.93, ptr @.str.2, ptr @.str.95, i8 0, i8 -29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ipmi_ssif: %s: Error  %d\0A\00", [38 x i8] zeroinitializer }, align 32
@sender.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.96, ptr @.str.2, ptr @.str.97, i8 1, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sender\00", [25 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ipmi_ssif: **Enqueue %02x %02x: %lld.%6.6ld\0A\00", [51 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ipmi_ssif_dev_attrs = internal global { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @dev_attr_type, ptr @dev_attr_sent_messages, ptr @dev_attr_sent_messages_parts, ptr @dev_attr_send_retries, ptr @dev_attr_send_errors, ptr @dev_attr_received_messages, ptr @dev_attr_received_message_parts, ptr @dev_attr_receive_retries, ptr @dev_attr_receive_errors, ptr @dev_attr_flag_fetches, ptr @dev_attr_hosed, ptr @dev_attr_events, ptr @dev_attr_watchdog_pretimeouts, ptr @dev_attr_alerts, ptr null], [36 x i8] zeroinitializer }, align 32
@dev_attr_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ipmi_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sent_messages = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ipmi_sent_messages_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sent_messages_parts = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ipmi_sent_messages_parts_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_send_retries = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ipmi_send_retries_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_send_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ipmi_send_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_received_messages = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ipmi_received_messages_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_received_message_parts = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ipmi_received_message_parts_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_receive_retries = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ipmi_receive_retries_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_receive_errors = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ipmi_receive_errors_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_flag_fetches = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ipmi_flag_fetches_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hosed = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ipmi_hosed_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_events = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ipmi_events_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_watchdog_pretimeouts = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ipmi_watchdog_pretimeouts_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_alerts = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ipmi_alerts_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ssif\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sent_messages\00", [18 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sent_messages_parts\00", [44 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"send_retries\00", [19 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"send_errors\00", [20 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"received_messages\00", [46 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"received_message_parts\00", [41 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"receive_retries\00", [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"receive_errors\00", [17 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"flag_fetches\00", [19 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hosed\00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"watchdog_pretimeouts\00", [43 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alerts\00", [25 x i8] zeroinitializer }, align 32
@ssif_plat_ids = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"dmi-ipmi-ssif\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ipmi_ssif\00\00\00\00\00\00\00\00\00\00\00\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.115 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"alerts_broken\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1157, i32 13 }
@___asan_gen_.119 = private unnamed_addr constant [15 x i8] c"ssif_dbg_probe\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1171, i32 13 }
@___asan_gen_.122 = private unnamed_addr constant [13 x i8] c"ssif_tryacpi\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1175, i32 13 }
@___asan_gen_.125 = private unnamed_addr constant [12 x i8] c"ssif_trydmi\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1179, i32 13 }
@___asan_gen_.128 = private unnamed_addr constant [10 x i8] c"num_addrs\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1142, i32 12 }
@___asan_gen_.131 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1141, i32 23 }
@___asan_gen_.134 = private unnamed_addr constant [18 x i8] c"num_adapter_names\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1147, i32 12 }
@___asan_gen_.137 = private unnamed_addr constant [13 x i8] c"adapter_name\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1146, i32 14 }
@___asan_gen_.140 = private unnamed_addr constant [16 x i8] c"num_slave_addrs\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1152, i32 12 }
@___asan_gen_.143 = private unnamed_addr constant [12 x i8] c"slave_addrs\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1151, i32 12 }
@___asan_gen_.146 = private unnamed_addr constant [8 x i8] c"num_dbg\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1167, i32 12 }
@___asan_gen_.149 = private unnamed_addr constant [4 x i8] c"dbg\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1166, i32 12 }
@___asan_gen_.152 = private unnamed_addr constant [12 x i8] c"initialized\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2088, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2096, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant [16 x i8] c"ssif_i2c_driver\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2035, i32 26 }
@___asan_gen_.174 = private unnamed_addr constant [12 x i8] c"ipmi_driver\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2071, i32 31 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2107, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant [20 x i8] c"platform_registered\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"ssif_infos_mutex\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1926, i32 33 }
@___asan_gen_.190 = private unnamed_addr constant [11 x i8] c"ssif_infos\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1184, i32 8 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1183, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant [8 x i8] c"ssif_id\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2029, i32 35 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1670, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1674, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1680, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1693, i32 5 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1731, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1749, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1758, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1778, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1800, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1815, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1820, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1822, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1823, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1846, i32 23 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1850, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant [25 x i8] c"ipmi_ssif_dev_attr_group\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1237, i32 37 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1861, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1872, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1882, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1611, i32 5 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1539, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1460, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1471, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 636, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 669, i32 5 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 683, i32 5 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 693, i32 5 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 713, i32 5 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 740, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 779, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 789, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 803, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 808, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 826, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 850, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 878, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 327, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 897, i32 5 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 910, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1069, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.434 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 87, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant [20 x i8] c"ipmi_ssif_dev_attrs\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1219, i32 26 }
@___asan_gen_.439 = private unnamed_addr constant [14 x i8] c"dev_attr_type\00", align 1
@___asan_gen_.442 = private unnamed_addr constant [23 x i8] c"dev_attr_sent_messages\00", align 1
@___asan_gen_.445 = private unnamed_addr constant [29 x i8] c"dev_attr_sent_messages_parts\00", align 1
@___asan_gen_.448 = private unnamed_addr constant [22 x i8] c"dev_attr_send_retries\00", align 1
@___asan_gen_.451 = private unnamed_addr constant [21 x i8] c"dev_attr_send_errors\00", align 1
@___asan_gen_.454 = private unnamed_addr constant [27 x i8] c"dev_attr_received_messages\00", align 1
@___asan_gen_.457 = private unnamed_addr constant [32 x i8] c"dev_attr_received_message_parts\00", align 1
@___asan_gen_.460 = private unnamed_addr constant [25 x i8] c"dev_attr_receive_retries\00", align 1
@___asan_gen_.463 = private unnamed_addr constant [24 x i8] c"dev_attr_receive_errors\00", align 1
@___asan_gen_.466 = private unnamed_addr constant [22 x i8] c"dev_attr_flag_fetches\00", align 1
@___asan_gen_.469 = private unnamed_addr constant [15 x i8] c"dev_attr_hosed\00", align 1
@___asan_gen_.472 = private unnamed_addr constant [16 x i8] c"dev_attr_events\00", align 1
@___asan_gen_.475 = private unnamed_addr constant [30 x i8] c"dev_attr_watchdog_pretimeouts\00", align 1
@___asan_gen_.478 = private unnamed_addr constant [16 x i8] c"dev_attr_alerts\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1203, i32 8 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1201, i32 25 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1205, i32 1 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1206, i32 1 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1207, i32 1 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1208, i32 1 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1209, i32 1 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1210, i32 1 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1211, i32 1 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1212, i32 1 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1213, i32 1 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1214, i32 1 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1215, i32 1 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1216, i32 1 }
@___asan_gen_.526 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 1217, i32 1 }
@___asan_gen_.529 = private unnamed_addr constant [14 x i8] c"ssif_plat_ids\00", align 1
@___asan_gen_.530 = private constant [33 x i8] c"../drivers/char/ipmi/ipmi_ssif.c\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.530, i32 2066, i32 40 }
@___asan_gen_.532 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@llvm.compiler.used = appending global [198 x ptr] [ptr @__UNIQUE_ID_adapter_name301, ptr @__UNIQUE_ID_adapter_nametype300, ptr @__UNIQUE_ID_addr299, ptr @__UNIQUE_ID_addrtype298, ptr @__UNIQUE_ID_alerts_broken305, ptr @__UNIQUE_ID_alerts_brokentype304, ptr @__UNIQUE_ID_alias317, ptr @__UNIQUE_ID_author318, ptr @__UNIQUE_ID_dbg307, ptr @__UNIQUE_ID_dbg_probe309, ptr @__UNIQUE_ID_dbg_probetype308, ptr @__UNIQUE_ID_dbgtype306, ptr @__UNIQUE_ID_description319, ptr @__UNIQUE_ID_file320, ptr @__UNIQUE_ID_license321, ptr @__UNIQUE_ID_slave_addrs303, ptr @__UNIQUE_ID_slave_addrstype302, ptr @__UNIQUE_ID_tryacpi311, ptr @__UNIQUE_ID_tryacpitype310, ptr @__UNIQUE_ID_trydmi313, ptr @__UNIQUE_ID_trydmitype312, ptr @__exitcall_cleanup_ipmi_ssif, ptr @__initcall__kmod_ipmi_ssif__316_2120_init_ipmi_ssif6, ptr @__param_adapter_name, ptr @__param_addr, ptr @__param_alerts_broken, ptr @__param_dbg, ptr @__param_dbg_probe, ptr @__param_slave_addrs, ptr @__param_tryacpi, ptr @__param_trydmi, ptr @deliver_recv_msg._entry, ptr @deliver_recv_msg._entry_ptr, ptr @init_ipmi_ssif._entry, ptr @init_ipmi_ssif._entry.3, ptr @init_ipmi_ssif._entry.6, ptr @init_ipmi_ssif._entry_ptr, ptr @init_ipmi_ssif._entry_ptr.5, ptr @init_ipmi_ssif._entry_ptr.8, ptr @msg_done_handler._entry, ptr @msg_done_handler._entry.76, ptr @msg_done_handler._entry.79, ptr @msg_done_handler._entry.82, ptr @msg_done_handler._entry.85, ptr @msg_done_handler._entry.88, ptr @msg_done_handler._entry_ptr, ptr @msg_done_handler._entry_ptr.78, ptr @msg_done_handler._entry_ptr.81, ptr @msg_done_handler._entry_ptr.84, ptr @msg_done_handler._entry_ptr.87, ptr @msg_done_handler._entry_ptr.89, ptr @ssif_check_and_remove._entry, ptr @ssif_check_and_remove._entry_ptr, ptr @ssif_probe._entry, ptr @ssif_probe._entry.16, ptr @ssif_probe._entry.19, ptr @ssif_probe._entry.24, ptr @ssif_probe._entry.27, ptr @ssif_probe._entry.31, ptr @ssif_probe._entry.34, ptr @ssif_probe._entry.37, ptr @ssif_probe._entry.46, ptr @ssif_probe._entry.50, ptr @ssif_probe._entry.53, ptr @ssif_probe._entry.56, ptr @ssif_probe._entry_ptr, ptr @ssif_probe._entry_ptr.18, ptr @ssif_probe._entry_ptr.22, ptr @ssif_probe._entry_ptr.26, ptr @ssif_probe._entry_ptr.30, ptr @ssif_probe._entry_ptr.33, ptr @ssif_probe._entry_ptr.36, ptr @ssif_probe._entry_ptr.38, ptr @ssif_probe._entry_ptr.49, ptr @ssif_probe._entry_ptr.52, ptr @ssif_probe._entry_ptr.55, ptr @ssif_probe._entry_ptr.58, ptr @start_multipart_test._entry, ptr @start_multipart_test._entry.65, ptr @start_multipart_test._entry_ptr, ptr @start_multipart_test._entry_ptr.67, ptr @test_multipart_messages._entry, ptr @test_multipart_messages._entry_ptr, ptr @alerts_broken, ptr @ssif_dbg_probe, ptr @ssif_tryacpi, ptr @ssif_trydmi, ptr @num_addrs, ptr @addr, ptr @num_adapter_names, ptr @adapter_name, ptr @num_slave_addrs, ptr @slave_addrs, ptr @num_dbg, ptr @dbg, ptr @initialized, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @ssif_i2c_driver, ptr @ipmi_driver, ptr @.str.7, ptr @platform_registered, ptr @ssif_infos_mutex, ptr @.str.9, ptr @ssif_infos, ptr @.str.10, ptr @.str.11, ptr @ssif_id, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.39, ptr @ssif_probe.__key, ptr @.str.40, ptr @ssif_probe.__key.41, ptr @.str.42, ptr @ssif_probe.__key.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @ipmi_ssif_dev_attr_group, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @init_completion.__key, ptr @.str.98, ptr @ipmi_ssif_dev_attrs, ptr @dev_attr_type, ptr @dev_attr_sent_messages, ptr @dev_attr_sent_messages_parts, ptr @dev_attr_send_retries, ptr @dev_attr_send_errors, ptr @dev_attr_received_messages, ptr @dev_attr_received_message_parts, ptr @dev_attr_receive_retries, ptr @dev_attr_receive_errors, ptr @dev_attr_flag_fetches, ptr @dev_attr_hosed, ptr @dev_attr_events, ptr @dev_attr_watchdog_pretimeouts, ptr @dev_attr_alerts, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @ssif_plat_ids, ptr @str], section "llvm.metadata"
@0 = internal global [141 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alerts_broken to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_dbg_probe to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_tryacpi to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_trydmi to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_addrs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_adapter_names to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_slave_addrs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slave_addrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_dbg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ipmi_ssif._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ipmi_ssif._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ipmi_ssif._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_registered to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_infos_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_infos to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 114, i32 160, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_probe.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_probe.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_ssif_dev_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_check_and_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_multipart_messages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_multipart_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_multipart_test._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_done_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_done_handler._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_done_handler._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_done_handler._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_done_handler._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_done_handler._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deliver_recv_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipmi_ssif_dev_attrs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sent_messages to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sent_messages_parts to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_send_retries to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_send_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_received_messages to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_received_message_parts to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_receive_retries to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_receive_errors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_flag_fetches to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hosed to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_events to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_watchdog_pretimeouts to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alerts to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssif_plat_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_ipmi_ssif() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %.b46 = load i1, ptr @initialized, align 1
  br i1 %.b46, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  %0 = load i32, ptr @num_addrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp52 = icmp sgt i32 %0, 0
  br i1 %cmp52, label %do.end.for.body_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.053 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i16], ptr @addr, i32 0, i32 %i.053
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  %arrayidx1 = getelementptr [4 x ptr], ptr @adapter_name, i32 0, i32 %i.053
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr [4 x i32], ptr @dbg, i32 0, i32 %i.053
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr [4 x i32], ptr @slave_addrs, i32 0, i32 %i.053
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ssif_infos_mutex, i32 noundef 0) #12
  %call.i = tail call fastcc ptr @ssif_info_find(i16 noundef zeroext %2, ptr noundef %4, i1 noundef zeroext false) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %for.body.do.end9_crit_edge

for.body.do.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

if.end.i:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 188) #16
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.do.end9_crit_edge, label %if.end4.i

if.end.i.do.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

if.end4.i:                                        ; preds = %if.end.i
  %tobool5.not.i = icmp eq ptr %4, null
  br i1 %tobool5.not.i, label %if.end4.i.if.end13.i_crit_edge, label %if.then6.i

if.end4.i.if.end13.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then6.i:                                       ; preds = %if.end4.i
  %call7.i = tail call noalias ptr @kstrdup(ptr noundef nonnull %4, i32 noundef 3264) #12
  %adapter_name8.i = getelementptr inbounds %struct.ssif_addr_info, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %adapter_name8.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i, ptr %adapter_name8.i, align 8
  %tobool10.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.then6.i.if.end13.i_crit_edge

if.then6.i.if.end13.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %do.end9

if.end13.i:                                       ; preds = %if.then6.i.if.end13.i_crit_edge, %if.end4.i.if.end13.i_crit_edge
  %11 = call ptr @memcpy(ptr %call7.i.i.i, ptr @str, i32 20)
  %addr17.i = getelementptr inbounds %struct.i2c_board_info, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %addr17.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %2, ptr %addr17.i, align 2
  %platform_data.i = getelementptr inbounds %struct.i2c_board_info, ptr %call7.i.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i, ptr %platform_data.i, align 4
  %debug19.i = getelementptr inbounds %struct.ssif_addr_info, ptr %call7.i.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %debug19.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %6, ptr %debug19.i, align 4
  %slave_addr20.i = getelementptr inbounds %struct.ssif_addr_info, ptr %call7.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %slave_addr20.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %8, ptr %slave_addr20.i, align 8
  %addr_src21.i = getelementptr inbounds %struct.ssif_addr_info, ptr %call7.i.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %addr_src21.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %addr_src21.i, align 4
  %dev22.i = getelementptr inbounds %struct.ssif_addr_info, ptr %call7.i.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %dev22.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %dev22.i, align 8
  %link.i = getelementptr inbounds %struct.ssif_addr_info, ptr %call7.i.i.i, i32 0, i32 10
  %18 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ssif_infos, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link.i, ptr noundef %18, ptr noundef nonnull @ssif_infos) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end13.i.new_ssif_client.exit_crit_edge

if.end13.i.new_ssif_client.exit_crit_edge:        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %new_ssif_client.exit

if.end.i.i.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %link.i, ptr getelementptr inbounds (%struct.list_head, ptr @ssif_infos, i32 0, i32 1), align 4
  %19 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ssif_infos, ptr %link.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ssif_addr_info, ptr %call7.i.i.i, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %prev3.i.i.i, align 8
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %link.i, ptr %18, align 4
  br label %new_ssif_client.exit

new_ssif_client.exit:                             ; preds = %if.end.i.i.i, %if.end13.i.new_ssif_client.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ssif_infos_mutex) #12
  br label %for.inc

do.end9:                                          ; preds = %if.then11.i, %if.end.i.do.end9_crit_edge, %for.body.do.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ssif_infos_mutex) #12
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx, align 2
  %conv12 = zext i16 %23 to i32
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv12) #15
  br label %for.inc

for.inc:                                          ; preds = %do.end9, %new_ssif_client.exit
  %inc = add nuw nsw i32 %i.053, 1
  %24 = load i32, ptr @num_addrs, align 4
  %cmp = icmp slt i32 %inc, %24
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %25 = load i8, ptr @ssif_tryacpi, align 1, !range !334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool15.not = icmp eq i8 %25, 0
  br i1 %tobool15.not, label %for.end.if.end17_crit_edge, label %if.then16

for.end.if.end17_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  store ptr null, ptr getelementptr inbounds (%struct.i2c_driver, ptr @ssif_i2c_driver, i32 0, i32 7, i32 7), align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %for.end.if.end17_crit_edge
  %26 = load i8, ptr @ssif_trydmi, align 1, !range !334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool18.not = icmp eq i8 %26, 0
  br i1 %tobool18.not, label %if.end17.for.cond.i.preheader_crit_edge, label %if.then19

if.end17.for.cond.i.preheader_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

if.then19:                                        ; preds = %if.end17
  %call20 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ipmi_driver, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.else, label %do.end25

do.end25:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call20) #15
  br label %for.cond.i.preheader

if.else:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @platform_registered, align 1
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.else, %do.end25, %if.end17.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %count.0.i = phi i32 [ %phi.bo.i, %for.cond.i.for.cond.i_crit_edge ], [ 1, %for.cond.i.preheader ]
  %.pn.in.i = phi ptr [ %.pn.i, %for.cond.i.for.cond.i_crit_edge ], [ @ssif_infos, %for.cond.i.preheader ]
  %27 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @ssif_infos
  %phi.bo.i = add i32 %count.0.i, 1
  br i1 %cmp.not.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %count.0.i, i32 2) #12
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %for.end.i.ssif_address_list.exit_crit_edge, label %if.end7.i.i.i, !prof !335

for.end.i.ssif_address_list.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ssif_address_list.exit

if.end7.i.i.i:                                    ; preds = %for.end.i
  %30 = extractvalue { i32, i1 } %28, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #17
  %tobool.not.i48 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i48, label %if.end7.i.i.i.ssif_address_list.exit_crit_edge, label %for.cond8.preheader.i

if.end7.i.i.i.ssif_address_list.exit_crit_edge:   ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ssif_address_list.exit

for.cond8.preheader.i:                            ; preds = %if.end7.i.i.i
  %.pn5864.i = load ptr, ptr @ssif_infos, align 4
  %cmp10.not65.i = icmp eq ptr %.pn5864.i, @ssif_infos
  br i1 %cmp10.not65.i, label %for.cond8.preheader.i.for.end37.i_crit_edge, label %for.cond8.preheader.i.for.body12.i_crit_edge

for.cond8.preheader.i.for.body12.i_crit_edge:     ; preds = %for.cond8.preheader.i
  br label %for.body12.i

for.cond8.preheader.i.for.end37.i_crit_edge:      ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end37.i

for.body12.i:                                     ; preds = %if.end30.i.for.body12.i_crit_edge, %for.cond8.preheader.i.for.body12.i_crit_edge
  %.pn5867.i = phi ptr [ %.pn58.i, %if.end30.i.for.body12.i_crit_edge ], [ %.pn5864.i, %for.cond8.preheader.i.for.body12.i_crit_edge ]
  %i.066.i = phi i32 [ %i.1.i, %if.end30.i.for.body12.i_crit_edge ], [ 0, %for.cond8.preheader.i.for.body12.i_crit_edge ]
  %addr13.i = getelementptr i8, ptr %.pn5867.i, i32 -158
  %31 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %addr13.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.066.i)
  %cmp1561.not.i = icmp eq i32 %i.066.i, 0
  br i1 %cmp1561.not.i, label %for.body12.i.for.end24.i_crit_edge, label %for.body12.i.for.body16.i_crit_edge

for.body12.i.for.body16.i_crit_edge:              ; preds = %for.body12.i
  br label %for.body16.i

for.body12.i.for.end24.i_crit_edge:               ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end24.i

for.body16.i:                                     ; preds = %for.inc22.i.for.body16.i_crit_edge, %for.body12.i.for.body16.i_crit_edge
  %j.062.i = phi i32 [ %inc23.i, %for.inc22.i.for.body16.i_crit_edge ], [ 0, %for.body12.i.for.body16.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %call8.i.i.i, i32 %j.062.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %34, i16 %32)
  %cmp18.i = icmp eq i16 %34, %32
  br i1 %cmp18.i, label %for.body16.i.for.end24.i_crit_edge, label %for.inc22.i

for.body16.i.for.end24.i_crit_edge:               ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end24.i

for.inc22.i:                                      ; preds = %for.body16.i
  %inc23.i = add nuw i32 %j.062.i, 1
  %exitcond.not.i = icmp eq i32 %inc23.i, %i.066.i
  br i1 %exitcond.not.i, label %for.inc22.i.if.then27.i_crit_edge, label %for.inc22.i.for.body16.i_crit_edge

for.inc22.i.for.body16.i_crit_edge:               ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16.i

for.inc22.i.if.then27.i_crit_edge:                ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27.i

for.end24.i:                                      ; preds = %for.body16.i.for.end24.i_crit_edge, %for.body12.i.for.end24.i_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %for.body12.i.for.end24.i_crit_edge ], [ %j.062.i, %for.body16.i.for.end24.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa.i, i32 %i.066.i)
  %cmp25.i = icmp eq i32 %j.0.lcssa.i, %i.066.i
  br i1 %cmp25.i, label %for.end24.i.if.then27.i_crit_edge, label %for.end24.i.if.end30.i_crit_edge

for.end24.i.if.end30.i_crit_edge:                 ; preds = %for.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i

for.end24.i.if.then27.i_crit_edge:                ; preds = %for.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then27.i

if.then27.i:                                      ; preds = %for.end24.i.if.then27.i_crit_edge, %for.inc22.i.if.then27.i_crit_edge
  %inc28.i = add i32 %i.066.i, 1
  %arrayidx29.i = getelementptr i16, ptr %call8.i.i.i, i32 %i.066.i
  %35 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %32, ptr %arrayidx29.i, align 2
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then27.i, %for.end24.i.if.end30.i_crit_edge
  %i.1.i = phi i32 [ %inc28.i, %if.then27.i ], [ %i.066.i, %for.end24.i.if.end30.i_crit_edge ]
  %36 = ptrtoint ptr %.pn5867.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn58.i = load ptr, ptr %.pn5867.i, align 4
  %cmp10.not.i = icmp eq ptr %.pn58.i, @ssif_infos
  br i1 %cmp10.not.i, label %if.end30.i.for.end37.i_crit_edge, label %if.end30.i.for.body12.i_crit_edge

if.end30.i.for.body12.i_crit_edge:                ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body12.i

if.end30.i.for.end37.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end37.i

for.end37.i:                                      ; preds = %if.end30.i.for.end37.i_crit_edge, %for.cond8.preheader.i.for.end37.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond8.preheader.i.for.end37.i_crit_edge ], [ %i.1.i, %if.end30.i.for.end37.i_crit_edge ]
  %arrayidx38.i = getelementptr i16, ptr %call8.i.i.i, i32 %i.0.lcssa.i
  %37 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -2, ptr %arrayidx38.i, align 2
  br label %ssif_address_list.exit

ssif_address_list.exit:                           ; preds = %for.end37.i, %if.end7.i.i.i.ssif_address_list.exit_crit_edge, %for.end.i.ssif_address_list.exit_crit_edge
  %retval.0.i = phi ptr [ %call8.i.i.i, %for.end37.i ], [ null, %if.end7.i.i.i.ssif_address_list.exit_crit_edge ], [ null, %for.end.i.ssif_address_list.exit_crit_edge ]
  store ptr %retval.0.i, ptr getelementptr inbounds (%struct.i2c_driver, ptr @ssif_i2c_driver, i32 0, i32 10), align 4
  %call31 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ssif_i2c_driver) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %ssif_address_list.exit.cleanup_crit_edge

ssif_address_list.exit.cleanup_crit_edge:         ; preds = %ssif_address_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then33:                                        ; preds = %ssif_address_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @initialized, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %ssif_address_list.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then33 ], [ %call31, %ssif_address_list.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_ipmi_ssif() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %.b6 = load i1, ptr @initialized, align 1
  br i1 %.b6, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  store i1 false, ptr @initialized, align 1
  tail call void @i2c_del_driver(ptr noundef nonnull @ssif_i2c_driver) #12
  %0 = load ptr, ptr getelementptr inbounds (%struct.i2c_driver, ptr @ssif_i2c_driver, i32 0, i32 10), align 4
  tail call void @kfree(ptr noundef %0) #12
  %1 = load i8, ptr @ssif_trydmi, align 1, !range !334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %.b57 = load i1, ptr @platform_registered, align 1
  br i1 %.b57, label %if.then3, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @ipmi_driver) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @ssif_infos_mutex, i32 noundef 0) #12
  %2 = load ptr, ptr @ssif_infos, align 4
  %cmp.not18.i = icmp eq ptr %2, @ssif_infos
  br i1 %cmp.not18.i, label %if.end4.free_ssif_clients.exit_crit_edge, label %if.end4.for.body.i_crit_edge

if.end4.for.body.i_crit_edge:                     ; preds = %if.end4
  br label %for.body.i

if.end4.free_ssif_clients.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_ssif_clients.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end4.for.body.i_crit_edge
  %.pn.in19.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %2, %if.end4.for.body.i_crit_edge ]
  %info.0.i = getelementptr i8, ptr %.pn.in19.i, i32 -180
  %3 = ptrtoint ptr %.pn.in19.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn.in19.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in19.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in19.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %.pn.in19.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.pn.in19.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %10 = ptrtoint ptr %.pn.in19.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in19.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in19.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %adapter_name.i = getelementptr i8, ptr %.pn.in19.i, i32 -124
  %12 = ptrtoint ptr %adapter_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter_name.i, align 4
  tail call void @kfree(ptr noundef %13) #12
  tail call void @kfree(ptr noundef %info.0.i) #12
  %cmp.not.i = icmp eq ptr %.pn.i, @ssif_infos
  br i1 %cmp.not.i, label %list_del.exit.i.free_ssif_clients.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del.exit.i.free_ssif_clients.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_ssif_clients.exit

free_ssif_clients.exit:                           ; preds = %list_del.exit.i.free_ssif_clients.exit_crit_edge, %if.end4.free_ssif_clients.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ssif_infos_mutex) #12
  br label %return

return:                                           ; preds = %free_ssif_clients.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ssif_info_find(i16 noundef zeroext %addr, ptr noundef %adapter_name, i1 noundef zeroext %match_null_name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %phi.bo = xor i1 %match_null_name, true
  br label %restart

restart:                                          ; preds = %for.end.restart_crit_edge, %entry
  %match_null_name.addr.0.off0 = phi i1 [ %phi.bo, %entry ], [ true, %for.end.restart_crit_edge ]
  %adapter_name.addr.0 = phi ptr [ %adapter_name, %entry ], [ null, %for.end.restart_crit_edge ]
  %.pn71 = load ptr, ptr @ssif_infos, align 4
  %cmp.not72 = icmp eq ptr %.pn71, @ssif_infos
  br i1 %cmp.not72, label %restart.for.end_crit_edge, label %for.body.lr.ph

restart.for.end_crit_edge:                        ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %restart
  %tobool10.not = icmp eq ptr %adapter_name.addr.0, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn73 = phi ptr [ %.pn71, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %addr1 = getelementptr i8, ptr %.pn73, i32 -158
  %0 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %addr)
  %cmp3 = icmp eq i16 %1, %addr
  br i1 %cmp3, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  %addr_src = getelementptr i8, ptr %.pn73, i32 -112
  %2 = ptrtoint ptr %addr_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp5 = icmp eq i32 %3, 5
  br i1 %cmp5, label %if.then7, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call noalias ptr @kstrdup(ptr noundef %adapter_name.addr.0, i32 noundef 3264) #12
  %adapter_name8 = getelementptr i8, ptr %.pn73, i32 -124
  %4 = ptrtoint ptr %adapter_name8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %adapter_name8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %adapter_name9 = getelementptr i8, ptr %.pn73, i32 -124
  %5 = ptrtoint ptr %adapter_name9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter_name9, align 4
  %tobool.not = icmp eq ptr %6, null
  %or.cond = and i1 %tobool10.not, %tobool.not
  br i1 %or.cond, label %for.end.loopexit56.split.loop.exit59, label %if.then11

if.then11:                                        ; preds = %if.end
  %tobool13.not = icmp ne ptr %6, null
  %cmp18.not = xor i1 %tobool10.not, %tobool13.not
  br i1 %cmp18.not, label %if.end21, label %if.then11.for.inc_crit_edge

if.then11.for.inc_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end21:                                         ; preds = %if.then11
  br i1 %tobool10.not, label %for.end.loopexit56.split.loop.exit61, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end21
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not42.i = icmp eq i8 %8, 0
  br i1 %tobool.not42.i, label %for.end.loopexit56.split.loop.exit63, label %land.lhs.true.land.rhs.i_crit_edge

land.lhs.true.land.rhs.i_crit_edge:               ; preds = %land.lhs.true
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end27.i.land.rhs.i_crit_edge, %land.lhs.true.land.rhs.i_crit_edge
  %s2.addr.044.i = phi ptr [ %incdec.ptr16.i, %if.end27.i.land.rhs.i_crit_edge ], [ %adapter_name.addr.0, %land.lhs.true.land.rhs.i_crit_edge ]
  %s1.addr.043.i = phi ptr [ %incdec.ptr.i, %if.end27.i.land.rhs.i_crit_edge ], [ %6, %land.lhs.true.land.rhs.i_crit_edge ]
  %9 = ptrtoint ptr %s2.addr.044.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %s2.addr.044.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not.i = icmp eq i8 %10, 0
  br i1 %tobool2.not.i, label %land.rhs.i.for.end.loopexit_crit_edge, label %land.rhs.i.while.cond3.i_crit_edge

land.rhs.i.while.cond3.i_crit_edge:               ; preds = %land.rhs.i
  br label %while.cond3.i

land.rhs.i.for.end.loopexit_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.loopexit

while.cond3.i:                                    ; preds = %while.cond3.i.while.cond3.i_crit_edge, %land.rhs.i.while.cond3.i_crit_edge
  %s1.addr.1.i = phi ptr [ %incdec.ptr.i, %while.cond3.i.while.cond3.i_crit_edge ], [ %s1.addr.043.i, %land.rhs.i.while.cond3.i_crit_edge ]
  %11 = ptrtoint ptr %s1.addr.1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %s1.addr.1.i, align 1
  %conv4.i = zext i8 %12 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv4.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %15 = and i8 %14, 32
  %cmp.not.i = icmp eq i8 %15, 0
  %incdec.ptr.i = getelementptr i8, ptr %s1.addr.1.i, i32 1
  br i1 %cmp.not.i, label %while.cond3.i.while.cond8.i_crit_edge, label %while.cond3.i.while.cond3.i_crit_edge

while.cond3.i.while.cond3.i_crit_edge:            ; preds = %while.cond3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond3.i

while.cond3.i.while.cond8.i_crit_edge:            ; preds = %while.cond3.i
  br label %while.cond8.i

while.cond8.i:                                    ; preds = %while.cond8.i.while.cond8.i_crit_edge, %while.cond3.i.while.cond8.i_crit_edge
  %s2.addr.1.i = phi ptr [ %incdec.ptr16.i, %while.cond8.i.while.cond8.i_crit_edge ], [ %s2.addr.044.i, %while.cond3.i.while.cond8.i_crit_edge ]
  %16 = ptrtoint ptr %s2.addr.1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %s2.addr.1.i, align 1
  %conv9.i = zext i8 %17 to i32
  %arrayidx10.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv9.i
  %18 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx10.i, align 1
  %20 = and i8 %19, 32
  %cmp13.not.i = icmp eq i8 %20, 0
  %incdec.ptr16.i = getelementptr i8, ptr %s2.addr.1.i, i32 1
  br i1 %cmp13.not.i, label %while.end17.i, label %while.cond8.i.while.cond8.i_crit_edge

while.cond8.i.while.cond8.i_crit_edge:            ; preds = %while.cond8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond8.i

while.end17.i:                                    ; preds = %while.cond8.i
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %17)
  %.not = icmp eq i8 %12, %17
  br i1 %.not, label %if.end27.i, label %while.end17.i.for.inc_crit_edge

while.end17.i.for.inc_crit_edge:                  ; preds = %while.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end27.i:                                       ; preds = %while.end17.i
  %21 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr.i, align 1
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.end27.i.for.end.loopexit_crit_edge, label %if.end27.i.land.rhs.i_crit_edge

if.end27.i.land.rhs.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

if.end27.i.for.end.loopexit_crit_edge:            ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.loopexit

for.inc:                                          ; preds = %while.end17.i.for.inc_crit_edge, %if.then11.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %23 = ptrtoint ptr %.pn73 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load ptr, ptr %.pn73, align 4
  %cmp.not = icmp eq ptr %.pn, @ssif_infos
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end.loopexit:                                 ; preds = %if.end27.i.for.end.loopexit_crit_edge, %land.rhs.i.for.end.loopexit_crit_edge
  %info.0.le69 = getelementptr i8, ptr %.pn73, i32 -180
  br label %for.end

for.end.loopexit56.split.loop.exit59:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %info.0.le67 = getelementptr i8, ptr %.pn73, i32 -180
  br label %for.end

for.end.loopexit56.split.loop.exit61:             ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %info.0.le65 = getelementptr i8, ptr %.pn73, i32 -180
  br label %for.end

for.end.loopexit56.split.loop.exit63:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %info.0.le = getelementptr i8, ptr %.pn73, i32 -180
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit56.split.loop.exit63, %for.end.loopexit56.split.loop.exit61, %for.end.loopexit56.split.loop.exit59, %for.end.loopexit, %for.inc.for.end_crit_edge, %restart.for.end_crit_edge
  %found.1 = phi ptr [ %info.0.le69, %for.end.loopexit ], [ %info.0.le67, %for.end.loopexit56.split.loop.exit59 ], [ %info.0.le65, %for.end.loopexit56.split.loop.exit61 ], [ %info.0.le, %for.end.loopexit56.split.loop.exit63 ], [ null, %restart.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %tobool34.not = icmp ne ptr %found.1, null
  %brmerge = or i1 %match_null_name.addr.0.off0, %tobool34.not
  br i1 %brmerge, label %if.end39, label %for.end.restart_crit_edge

for.end.restart_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %restart

if.end39:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  ret ptr %found.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssif_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %groups.i538 = alloca [2 x ptr], align 4
  %groups.i = alloca [2 x ptr], align 4
  %msg = alloca [3 x i8], align 1
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %msg) #12
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %msg, align 1, !annotation !336
  %1 = getelementptr inbounds [3 x i8], ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !336
  %3 = getelementptr inbounds [3 x i8], ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !336
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #12
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %len, align 4, !annotation !336
  tail call void @mutex_lock_nested(ptr noundef nonnull @ssif_infos_mutex, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 272) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef nonnull @ssif_infos_mutex) #12
  br label %cleanup368

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 712) #16
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  tail call void @mutex_unlock(ptr noundef nonnull @ssif_infos_mutex) #12
  br label %cleanup368

if.end4:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr, align 2
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 12
  %call7 = tail call fastcc ptr @ssif_info_find(i16 noundef zeroext %9, ptr noundef %name, i1 noundef zeroext true)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %addr_source = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %addr_source to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %addr_source, align 8
  br label %if.end16

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %addr_src = getelementptr inbounds %struct.ssif_addr_info, ptr %call7, i32 0, i32 4
  %13 = ptrtoint ptr %addr_src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr_src, align 4
  %addr_source10 = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %addr_source10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %addr_source10, align 8
  %debug = getelementptr inbounds %struct.ssif_addr_info, ptr %call7, i32 0, i32 2
  %16 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %debug, align 4
  %ssif_debug = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %ssif_debug to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %ssif_debug, align 4
  %client13 = getelementptr inbounds %struct.ssif_addr_info, ptr %call7, i32 0, i32 7
  %19 = ptrtoint ptr %client13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %client, ptr %client13, align 4
  %slave_addr14 = getelementptr inbounds %struct.ssif_addr_info, ptr %call7, i32 0, i32 3
  %20 = ptrtoint ptr %slave_addr14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slave_addr14, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then9
  %slave_addr.0 = phi i32 [ %21, %if.else ], [ 0, %if.then9 ]
  %client17 = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 21
  %22 = ptrtoint ptr %client17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %client, ptr %client17, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %.pn38.i = load ptr, ptr @ssif_infos, align 4
  %cmp.not39.i = icmp eq ptr %.pn38.i, @ssif_infos
  br i1 %cmp.not39.i, label %if.end16.land.lhs.true_crit_edge, label %for.body.lr.ph.i

if.end16.land.lhs.true_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

for.body.lr.ph.i:                                 ; preds = %if.end16
  %addr_source.i = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn40.i = phi ptr [ %.pn38.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %client1.i = getelementptr i8, ptr %.pn40.i, i32 -104
  %24 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client1.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %for.body.i.land.lhs.true_crit_edge, label %if.end.i

for.body.i.land.lhs.true_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.end.i:                                         ; preds = %for.body.i
  %adapter_name.i = getelementptr i8, ptr %.pn40.i, i32 -124
  %26 = ptrtoint ptr %adapter_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter_name.i, align 4
  %28 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter, align 8
  %name.i = getelementptr inbounds %struct.i2c_adapter, ptr %29, i32 0, i32 12
  %call.i = tail call i32 @strcmp(ptr noundef %27, ptr noundef %name.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %addr.i = getelementptr i8, ptr %.pn40.i, i32 -158
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %addr.i, align 2
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %33)
  %cmp5.i = icmp eq i16 %31, %33
  br i1 %cmp5.i, label %if.then7.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  %addr_src.i = getelementptr i8, ptr %.pn40.i, i32 -112
  %34 = ptrtoint ptr %addr_src.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp8.i = icmp eq i32 %35, 4
  br i1 %cmp8.i, label %do.end33.critedge, label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i
  %36 = ptrtoint ptr %addr_source.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr_source.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %cmp12.i = icmp eq i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %35)
  %cmp16.i = icmp eq i32 %35, 5
  %or.cond.i = select i1 %cmp12.i, i1 %cmp16.i, i1 false
  br i1 %or.cond.i, label %do.end.i, label %if.end11.i.for.inc.i_crit_edge

if.end11.i.for.inc.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

do.end.i:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %client1.i.le = getelementptr i8, ptr %.pn40.i, i32 -104
  %call20.i = tail call ptr @ipmi_addr_src_to_str(i32 noundef 5) #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef %call20.i) #15
  %38 = ptrtoint ptr %client1.i.le to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %client1.i.le, align 4
  tail call fastcc void @ssif_remove_dup(ptr noundef %39) #12
  br label %land.lhs.true

for.inc.i:                                        ; preds = %if.end11.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %40 = ptrtoint ptr %.pn40.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn.i = load ptr, ptr %.pn40.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @ssif_infos
  br i1 %cmp.not.i, label %for.inc.i.land.lhs.true_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.land.lhs.true_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.inc.i.land.lhs.true_crit_edge, %do.end.i, %for.body.i.land.lhs.true_crit_edge, %if.end16.land.lhs.true_crit_edge
  %addr_source20 = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 7
  %41 = ptrtoint ptr %addr_source20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr_source20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %cmp = icmp eq i32 %42, 4
  br i1 %cmp, label %if.then22, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.then22:                                        ; preds = %land.lhs.true
  %call23 = tail call fastcc i32 @ssif_add_infos(ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.if.end36_crit_edge, label %do.end

if.then22.if.end36_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

do.end:                                           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #15
  br label %if.then353

do.end33.critedge:                                ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #15
  br label %if.then353

if.end36:                                         ; preds = %if.then22.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge
  %conv37 = and i32 %slave_addr.0, 255
  %conv39 = trunc i32 %slave_addr.0 to i8
  %43 = ptrtoint ptr %addr_source20 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %addr_source20, align 8
  %call45 = tail call ptr @ipmi_addr_src_to_str(i32 noundef %44) #12
  %45 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %addr, align 2
  %conv47 = zext i16 %46 to i32
  %47 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adapter, align 8
  %name49 = getelementptr inbounds %struct.i2c_adapter, ptr %48, i32 0, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef %call45, i32 noundef %conv47, ptr noundef %name49, i32 noundef %conv37) #15
  %49 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 24, ptr %msg, align 1
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 87, ptr %1, align 1
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %3, align 1
  %call55 = call fastcc i32 @do_cmd(ptr noundef %client, i32 noundef 3, ptr noundef nonnull %msg, ptr noundef nonnull %len, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true57, label %if.end36.do.end125_crit_edge

if.end36.do.end125_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end125

land.lhs.true57:                                  ; preds = %if.end36
  %52 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp58 = icmp sgt i32 %53, 2
  br i1 %cmp58, label %land.lhs.true60, label %land.lhs.true57.do.end125_crit_edge

land.lhs.true57.do.end125_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end125

land.lhs.true60:                                  ; preds = %land.lhs.true57
  %arrayidx61 = getelementptr i8, ptr %call7.i, i32 2
  %54 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx61, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp63 = icmp eq i8 %55, 0
  br i1 %cmp63, label %if.then65, label %land.lhs.true60.do.end125_crit_edge

land.lhs.true60.do.end125_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end125

if.then65:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %53)
  %cmp66 = icmp ult i32 %53, 7
  br i1 %cmp66, label %if.then68, label %if.end83

if.then68:                                        ; preds = %if.then65
  %56 = load i8, ptr @ssif_dbg_probe, align 1, !range !334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool69.not = icmp eq i8 %56, 0
  br i1 %tobool69.not, label %if.then68.do.end125_crit_edge, label %do.body71

if.then68.do.end125_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end125

do.body71:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssif_probe.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssif_probe, %if.then76)) #12
          to label %do.end125 [label %if.then76], !srcloc !337

if.then76:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %client17 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %client17, align 8
  %dev78 = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssif_probe.__UNIQUE_ID_ddebug314, ptr noundef %dev78, ptr noundef nonnull @.str.23, i32 noundef %53) #12
  br label %do.end125

if.end83:                                         ; preds = %if.then65
  %arrayidx84 = getelementptr i8, ptr %call7.i, i32 5
  %59 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx84, align 1
  %max_xmit_msg_size = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 34
  %61 = ptrtoint ptr %max_xmit_msg_size to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %max_xmit_msg_size, align 8
  %arrayidx85 = getelementptr i8, ptr %call7.i, i32 6
  %62 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx85, align 2
  %max_recv_msg_size = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 35
  %64 = ptrtoint ptr %max_recv_msg_size to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %max_recv_msg_size, align 1
  %arrayidx86 = getelementptr i8, ptr %call7.i, i32 4
  %65 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx86, align 4
  %67 = lshr i8 %66, 6
  %68 = zext i8 %67 to i32
  %multi_support = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 37
  %69 = ptrtoint ptr %multi_support to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %multi_support, align 4
  %70 = lshr i8 %66, 3
  %71 = and i8 %70, 1
  %and91 = zext i8 %71 to i32
  %supports_pec = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 38
  %72 = ptrtoint ptr %supports_pec to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %and91, ptr %supports_pec, align 8
  %73 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values)
  switch i32 %68, label %if.end83.do.end125_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb107
    i32 2, label %if.end83.if.end134_crit_edge
  ]

if.end83.if.end134_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134

if.end83.do.end125_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end125

sw.bb:                                            ; preds = %if.end83
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %60)
  %cmp95 = icmp ugt i8 %60, 32
  br i1 %cmp95, label %if.then97, label %sw.bb.if.end99_crit_edge

sw.bb.if.end99_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end99

if.then97:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %max_xmit_msg_size to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 32, ptr %max_xmit_msg_size, align 8
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %sw.bb.if.end99_crit_edge
  %75 = ptrtoint ptr %max_recv_msg_size to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %max_recv_msg_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %76)
  %cmp102 = icmp ugt i8 %76, 32
  br i1 %cmp102, label %if.then104, label %if.end99.if.end134_crit_edge

if.end99.if.end134_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134

if.then104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %max_recv_msg_size to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 32, ptr %max_recv_msg_size, align 1
  br label %if.end134

sw.bb107:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %60)
  %cmp110 = icmp ugt i8 %60, 63
  br i1 %cmp110, label %if.then112, label %sw.bb107.if.end114_crit_edge

sw.bb107.if.end114_crit_edge:                     ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114

if.then112:                                       ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %max_xmit_msg_size to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 63, ptr %max_xmit_msg_size, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %sw.bb107.if.end114_crit_edge
  %79 = ptrtoint ptr %max_recv_msg_size to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %max_recv_msg_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 62, i8 %80)
  %cmp117 = icmp ugt i8 %80, 62
  br i1 %cmp117, label %if.then119, label %if.end114.if.end134_crit_edge

if.end114.if.end134_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end134

if.then119:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %max_recv_msg_size to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 62, ptr %max_recv_msg_size, align 1
  br label %if.end134

do.end125:                                        ; preds = %if.end83.do.end125_crit_edge, %if.then76, %do.body71, %if.then68.do.end125_crit_edge, %land.lhs.true60.do.end125_crit_edge, %land.lhs.true57.do.end125_crit_edge, %if.end36.do.end125_crit_edge
  %82 = ptrtoint ptr %client17 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %client17, align 8
  %dev127 = getelementptr inbounds %struct.i2c_client, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len, align 4
  %arrayidx128 = getelementptr i8, ptr %call7.i, i32 2
  %86 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx128, align 2
  %conv129 = zext i8 %87 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev127, ptr noundef nonnull @.str.25, i32 noundef %call55, i32 noundef %85, i32 noundef %conv129) #15
  %max_xmit_msg_size130 = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 34
  %88 = ptrtoint ptr %max_xmit_msg_size130 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 32, ptr %max_xmit_msg_size130, align 8
  %max_recv_msg_size131 = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 35
  %89 = ptrtoint ptr %max_recv_msg_size131 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 32, ptr %max_recv_msg_size131, align 1
  %multi_support132 = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 37
  %90 = ptrtoint ptr %multi_support132 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %multi_support132, align 4
  %supports_pec133 = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 38
  %91 = ptrtoint ptr %supports_pec133 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %supports_pec133, align 8
  br label %if.end134

if.end134:                                        ; preds = %do.end125, %if.then119, %if.end114.if.end134_crit_edge, %if.then104, %if.end99.if.end134_crit_edge, %if.end83.if.end134_crit_edge
  call fastcc void @test_multipart_messages(ptr noundef %client, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i)
  %92 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 24, ptr %msg, align 1
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 48, ptr %1, align 1
  %94 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 8, ptr %3, align 1
  %call139 = call fastcc i32 @do_cmd(ptr noundef %client, i32 noundef 3, ptr noundef nonnull %msg, ptr noundef nonnull %len, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %lor.lhs.false, label %if.end134.do.end151_crit_edge

if.end134.do.end151_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end151

lor.lhs.false:                                    ; preds = %if.end134
  %95 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %96)
  %cmp141 = icmp slt i32 %96, 3
  br i1 %cmp141, label %lor.lhs.false.do.end151_crit_edge, label %lor.lhs.false143

lor.lhs.false.do.end151_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end151

lor.lhs.false143:                                 ; preds = %lor.lhs.false
  %arrayidx144 = getelementptr i8, ptr %call7.i, i32 2
  %97 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx144, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp146.not = icmp eq i8 %98, 0
  br i1 %cmp146.not, label %lor.lhs.false143.if.end156_crit_edge, label %lor.lhs.false143.do.end151_crit_edge

lor.lhs.false143.do.end151_crit_edge:             ; preds = %lor.lhs.false143
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end151

lor.lhs.false143.if.end156_crit_edge:             ; preds = %lor.lhs.false143
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end156

do.end151:                                        ; preds = %lor.lhs.false143.do.end151_crit_edge, %lor.lhs.false.do.end151_crit_edge, %if.end134.do.end151_crit_edge
  %99 = ptrtoint ptr %client17 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %client17, align 8
  %dev153 = getelementptr inbounds %struct.i2c_client, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %len, align 4
  %arrayidx154 = getelementptr i8, ptr %call7.i, i32 2
  %103 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx154, align 2
  %conv155 = zext i8 %104 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev153, ptr noundef nonnull @.str.28, i32 noundef %call139, i32 noundef %102, i32 noundef %conv155) #15
  br label %if.end156

if.end156:                                        ; preds = %do.end151, %lor.lhs.false143.if.end156_crit_edge
  %105 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 24, ptr %msg, align 1
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 47, ptr %1, align 1
  %call160 = call fastcc i32 @do_cmd(ptr noundef %client, i32 noundef 2, ptr noundef nonnull %msg, ptr noundef nonnull %len, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %lor.lhs.false162, label %if.end156.do.end173_crit_edge

if.end156.do.end173_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end173

lor.lhs.false162:                                 ; preds = %if.end156
  %107 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %108)
  %cmp163 = icmp slt i32 %108, 4
  br i1 %cmp163, label %lor.lhs.false162.do.end173_crit_edge, label %lor.lhs.false165

lor.lhs.false162.do.end173_crit_edge:             ; preds = %lor.lhs.false162
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end173

lor.lhs.false165:                                 ; preds = %lor.lhs.false162
  %arrayidx166 = getelementptr i8, ptr %call7.i, i32 2
  %109 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx166, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp168.not = icmp eq i8 %110, 0
  br i1 %cmp168.not, label %if.end178, label %lor.lhs.false165.do.end173_crit_edge

lor.lhs.false165.do.end173_crit_edge:             ; preds = %lor.lhs.false165
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end173

do.end173:                                        ; preds = %lor.lhs.false165.do.end173_crit_edge, %lor.lhs.false162.do.end173_crit_edge, %if.end156.do.end173_crit_edge
  %111 = ptrtoint ptr %client17 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %client17, align 8
  %dev175 = getelementptr inbounds %struct.i2c_client, ptr %112, i32 0, i32 4
  %113 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %len, align 4
  %arrayidx176 = getelementptr i8, ptr %call7.i, i32 2
  %115 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx176, align 2
  %conv177 = zext i8 %116 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev175, ptr noundef nonnull @.str.32, i32 noundef %call160, i32 noundef %114, i32 noundef %conv177) #15
  br label %found

if.end178:                                        ; preds = %lor.lhs.false165
  %arrayidx179 = getelementptr i8, ptr %call7.i, i32 3
  %117 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx179, align 1
  %global_enables = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 10
  %119 = ptrtoint ptr %global_enables to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %global_enables, align 1
  %120 = and i8 %118, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool183.not = icmp eq i8 %120, 0
  br i1 %tobool183.not, label %if.end185, label %if.then184

if.then184:                                       ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #14
  %has_event_buffer = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 11
  %121 = ptrtoint ptr %has_event_buffer to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %has_event_buffer, align 2
  br label %found

if.end185:                                        ; preds = %if.end178
  %122 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 24, ptr %msg, align 1
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 46, ptr %1, align 1
  %124 = or i8 %118, 4
  %125 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %3, align 1
  %call193 = call fastcc i32 @do_cmd(ptr noundef %client, i32 noundef 3, ptr noundef nonnull %msg, ptr noundef nonnull %len, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %lor.lhs.false195, label %if.end185.do.end201_crit_edge

if.end185.do.end201_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end201

lor.lhs.false195:                                 ; preds = %if.end185
  %126 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %127)
  %cmp196 = icmp slt i32 %127, 2
  br i1 %cmp196, label %lor.lhs.false195.do.end201_crit_edge, label %if.end206

lor.lhs.false195.do.end201_crit_edge:             ; preds = %lor.lhs.false195
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end201

do.end201:                                        ; preds = %lor.lhs.false195.do.end201_crit_edge, %if.end185.do.end201_crit_edge
  %128 = ptrtoint ptr %client17 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %client17, align 8
  %dev203 = getelementptr inbounds %struct.i2c_client, ptr %129, i32 0, i32 4
  %130 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %len, align 4
  %132 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx166, align 2
  %conv205 = zext i8 %133 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev203, ptr noundef nonnull @.str.35, i32 noundef %call193, i32 noundef %131, i32 noundef %conv205) #15
  br label %found

if.end206:                                        ; preds = %lor.lhs.false195
  %134 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx166, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %cmp209 = icmp eq i8 %135, 0
  br i1 %cmp209, label %if.then211, label %if.end206.if.end217_crit_edge

if.end206.if.end217_crit_edge:                    ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end217

if.then211:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #14
  %has_event_buffer212 = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 11
  %136 = ptrtoint ptr %has_event_buffer212 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %has_event_buffer212, align 2
  %137 = ptrtoint ptr %global_enables to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %global_enables, align 1
  %139 = or i8 %138, 4
  store i8 %139, ptr %global_enables, align 1
  br label %if.end217

if.end217:                                        ; preds = %if.then211, %if.end206.if.end217_crit_edge
  %140 = load i8, ptr @alerts_broken, align 1, !range !334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool218.not = icmp eq i8 %140, 0
  br i1 %tobool218.not, label %if.end220, label %if.end217.found_crit_edge

if.end217.found_crit_edge:                        ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #14
  br label %found

if.end220:                                        ; preds = %if.end217
  %141 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 24, ptr %msg, align 1
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 46, ptr %1, align 1
  %143 = ptrtoint ptr %global_enables to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %global_enables, align 1
  %145 = or i8 %144, 1
  %146 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %3, align 1
  %call229 = call fastcc i32 @do_cmd(ptr noundef %client, i32 noundef 3, ptr noundef nonnull %msg, ptr noundef nonnull %len, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %lor.lhs.false231, label %if.end220.do.end237_crit_edge

if.end220.do.end237_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end237

lor.lhs.false231:                                 ; preds = %if.end220
  %147 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %148)
  %cmp232 = icmp slt i32 %148, 2
  br i1 %cmp232, label %lor.lhs.false231.do.end237_crit_edge, label %if.end242

lor.lhs.false231.do.end237_crit_edge:             ; preds = %lor.lhs.false231
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end237

do.end237:                                        ; preds = %lor.lhs.false231.do.end237_crit_edge, %if.end220.do.end237_crit_edge
  %149 = ptrtoint ptr %client17 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %client17, align 8
  %dev239 = getelementptr inbounds %struct.i2c_client, ptr %150, i32 0, i32 4
  %151 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %len, align 4
  %153 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx166, align 2
  %conv241 = zext i8 %154 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev239, ptr noundef nonnull @.str.35, i32 noundef %call229, i32 noundef %152, i32 noundef %conv241) #15
  br label %found

if.end242:                                        ; preds = %lor.lhs.false231
  %155 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx166, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %cmp245 = icmp eq i8 %156, 0
  br i1 %cmp245, label %if.then247, label %if.end242.found_crit_edge

if.end242.found_crit_edge:                        ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #14
  br label %found

if.then247:                                       ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #14
  %supports_alert = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 12
  %157 = ptrtoint ptr %supports_alert to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 1, ptr %supports_alert, align 1
  %158 = ptrtoint ptr %global_enables to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %global_enables, align 1
  %160 = or i8 %159, 1
  store i8 %160, ptr %global_enables, align 1
  br label %found

found:                                            ; preds = %if.then247, %if.end242.found_crit_edge, %do.end237, %if.end217.found_crit_edge, %do.end201, %if.then184, %do.end173
  %161 = load i8, ptr @ssif_dbg_probe, align 1, !range !334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool253.not = icmp eq i8 %161, 0
  br i1 %tobool253.not, label %found.do.body276_crit_edge, label %do.body255

found.do.body276_crit_edge:                       ; preds = %found
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body276

do.body255:                                       ; preds = %found
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssif_probe.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ssif_probe, %if.then267)) #12
          to label %do.body276 [label %if.then267], !srcloc !337

if.then267:                                       ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #14
  %162 = ptrtoint ptr %client17 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %client17, align 8
  %dev269 = getelementptr inbounds %struct.i2c_client, ptr %163, i32 0, i32 4
  %164 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %addr, align 2
  %conv271 = zext i16 %165 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssif_probe.__UNIQUE_ID_ddebug315, ptr noundef %dev269, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.13, i32 noundef %conv271) #12
  br label %do.body276

do.body276:                                       ; preds = %if.then267, %do.body255, %found.do.body276_crit_edge
  %lock = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.40, ptr noundef nonnull @ssif_probe.__key, i16 noundef signext 3) #12
  %ssif_state = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 4
  %166 = ptrtoint ptr %ssif_state to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %ssif_state, align 8
  %retry_timer = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 30
  call void @init_timer_key(ptr noundef %retry_timer, ptr noundef nonnull @retry_timeout, i32 noundef 0, ptr noundef nonnull @.str.42, ptr noundef nonnull @ssif_probe.__key.41) #12
  %watch_timer = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 33
  call void @init_timer_key(ptr noundef %watch_timer, ptr noundef nonnull @watch_timeout, i32 noundef 0, ptr noundef nonnull @.str.44, ptr noundef nonnull @ssif_probe.__key.43) #12
  %arrayidx288 = getelementptr %struct.ssif_info, ptr %call7.i.i, i32 0, i32 42, i32 0
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx288, i32 noundef 4) #12
  %167 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_store4_noabort(i32 %167)
  store volatile i32 0, ptr %arrayidx288, align 8
  %arrayidx288.1 = getelementptr %struct.ssif_info, ptr %call7.i.i, i32 0, i32 42, i32 1
  %call.i.i.1 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx288.1, i32 noundef 4) #12
  %168 = ptrtoint ptr %arrayidx288.1 to i32
  call void @__asan_store4_noabort(i32 %168)
  store volatile i32 0, ptr %arrayidx288.1, align 4
  %arrayidx288.2 = getelementptr %struct.ssif_info, ptr %call7.i.i, i32 0, i32 42, i32 2
  %call.i.i.2 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx288.2, i32 noundef 4) #12
  %169 = ptrtoint ptr %arrayidx288.2 to i32
  call void @__asan_store4_noabort(i32 %169)
  store volatile i32 0, ptr %arrayidx288.2, align 8
  %arrayidx288.3 = getelementptr %struct.ssif_info, ptr %call7.i.i, i32 0, i32 42, i32 3
  %call.i.i.3 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx288.3, i32 noundef 4) #12
  %170 = ptrtoint ptr %arrayidx288.3 to i32
  call void @__asan_store4_noabort(i32 %170)
  store volatile i32 0, ptr %arrayidx288.3, align 4
  %arrayidx288.4 = getelementptr %struct.ssif_info, ptr %call7.i.i, i32 0, i32 42, i32 4
  %call.i.i.4 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx288.4, i32 noundef 4) #12
  %171 = ptrtoint ptr %arrayidx288.4 to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile i32 0, ptr %arrayidx288.4, align 8
  %arrayidx288.5 = getelementptr %struct.ssif_info, ptr %call7.i.i, i32 0, i32 42, i32 5
  %call.i.i.5 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx288.5, i32 noundef 4) #12
  %172 = ptrtoint ptr %arrayidx288.5 to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile i32 0, ptr %arrayidx288.5, align 4
  %arrayidx288.6 = getelementptr %struct.ssif_info, ptr %call7.i.i, i32 0, i32 42, i32 6
  %call.i.i.6 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx288.6, i32 noundef 4) #12
  %173 = ptrtoint ptr %arrayidx288.6 to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile i32 0, ptr %arrayidx288.6, align 8
  %arrayidx288.7 = getelementptr %struct.ssif_info, ptr %call7.i.i, i32 0, i32 42, i32 7
  %call.i.i.7 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx288.7, i32 noundef 4) #12
  %174 = ptrtoint ptr %arrayidx288.7 to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile i32 0, ptr %arrayidx288.7, align 4
  %arrayidx288.8 = getelementptr %struct.ssif_info, ptr %call7.i.i, i32 0, i32 42, i32 8
  %call.i.i.8 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx288.8, i32 noundef 4) #12
  %175 = ptrtoint ptr %arrayidx288.8 to i32
  call void @__asan_store4_noabort(i32 %175)
  store volatile i32 0, ptr %arrayidx288.8, align 8
  %arrayidx288.9 = getelementptr %struct.ssif_info, ptr %call7.i.i, i32 0, i32 42, i32 9
  %call.i.i.9 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx288.9, i32 noundef 4) #12
  %176 = ptrtoint ptr %arrayidx288.9 to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile i32 0, ptr %arrayidx288.9, align 4
  %arrayidx288.10 = getelementptr %struct.ssif_info, ptr %call7.i.i, i32 0, i32 42, i32 10
  %call.i.i.10 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx288.10, i32 noundef 4) #12
  %177 = ptrtoint ptr %arrayidx288.10 to i32
  call void @__asan_store4_noabort(i32 %177)
  store volatile i32 0, ptr %arrayidx288.10, align 8
  %arrayidx288.11 = getelementptr %struct.ssif_info, ptr %call7.i.i, i32 0, i32 42, i32 11
  %call.i.i.11 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx288.11, i32 noundef 4) #12
  %178 = ptrtoint ptr %arrayidx288.11 to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile i32 0, ptr %arrayidx288.11, align 4
  %arrayidx288.12 = getelementptr %struct.ssif_info, ptr %call7.i.i, i32 0, i32 42, i32 12
  %call.i.i.12 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx288.12, i32 noundef 4) #12
  %179 = ptrtoint ptr %arrayidx288.12 to i32
  call void @__asan_store4_noabort(i32 %179)
  store volatile i32 0, ptr %arrayidx288.12, align 8
  %arrayidx288.13 = getelementptr %struct.ssif_info, ptr %call7.i.i, i32 0, i32 42, i32 13
  %call.i.i.13 = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx288.13, i32 noundef 4) #12
  %180 = ptrtoint ptr %arrayidx288.13 to i32
  call void @__asan_store4_noabort(i32 %180)
  store volatile i32 0, ptr %arrayidx288.13, align 4
  %supports_pec289 = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 38
  %181 = ptrtoint ptr %supports_pec289 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %supports_pec289, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool290.not = icmp eq i32 %182, 0
  br i1 %tobool290.not, label %do.body276.if.end296_crit_edge, label %if.then291

do.body276.if.end296_crit_edge:                   ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end296

if.then291:                                       ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #14
  %183 = ptrtoint ptr %client17 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %client17, align 8
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %184, align 8
  %187 = or i16 %186, 4
  store i16 %187, ptr %184, align 8
  br label %if.end296

if.end296:                                        ; preds = %if.then291, %do.body276.if.end296_crit_edge
  %handlers = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 6
  %188 = ptrtoint ptr %handlers to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr null, ptr %handlers, align 8
  %start_processing = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 6, i32 2
  %189 = ptrtoint ptr %start_processing to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr @ssif_start_processing, ptr %start_processing, align 8
  %shutdown = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 6, i32 3
  %190 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @shutdown_ssif, ptr %shutdown, align 4
  %get_smi_info = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 6, i32 4
  %191 = ptrtoint ptr %get_smi_info to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr @get_smi_info, ptr %get_smi_info, align 8
  %sender = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 6, i32 5
  %192 = ptrtoint ptr %sender to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @sender, ptr %sender, align 4
  %request_events = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 6, i32 6
  %193 = ptrtoint ptr %request_events to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr @request_events, ptr %request_events, align 8
  %set_need_watch = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 6, i32 7
  %194 = ptrtoint ptr %set_need_watch to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr @ssif_set_need_watch, ptr %set_need_watch, align 4
  %195 = ptrtoint ptr %client17 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %client17, align 8
  %adapter304 = getelementptr inbounds %struct.i2c_client, ptr %196, i32 0, i32 3
  %197 = ptrtoint ptr %adapter304 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %adapter304, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %198, i32 0, i32 11
  %199 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %nr.i, align 4
  %shl = shl i32 %200, 8
  %addr307 = getelementptr inbounds %struct.i2c_client, ptr %196, i32 0, i32 1
  %201 = ptrtoint ptr %addr307 to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %addr307, align 2
  %conv308 = zext i16 %202 to i32
  %or309 = or i32 %shl, %conv308
  %wake_thread = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 24
  %203 = ptrtoint ptr %wake_thread to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 0, ptr %wake_thread, align 4
  %wait.i = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 24, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @init_completion.__key) #12
  %call310 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @ipmi_ssif_thread, ptr noundef nonnull %call7.i.i, i32 noundef -1, ptr noundef nonnull @.str.45, i32 noundef %or309) #12
  %cmp.i = icmp ugt ptr %call310, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %out, label %cleanup.cont

cleanup.cont:                                     ; preds = %if.end296
  %call313 = call i32 @wake_up_process(ptr noundef %call310) #12
  %thread = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 23
  %204 = ptrtoint ptr %thread to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %call310, ptr %thread, align 8
  %205 = ptrtoint ptr %client17 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %client17, align 8
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %206, i32 0, i32 4, i32 8
  %207 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %208 = load ptr, ptr %client17, align 8
  %dev330 = getelementptr inbounds %struct.i2c_client, ptr %208, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %groups.i) #12
  %209 = getelementptr inbounds [2 x ptr], ptr %groups.i, i32 0, i32 1
  %210 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr @ipmi_ssif_dev_attr_group, ptr %groups.i, align 4
  %211 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr null, ptr %209, align 4
  %call.i537 = call i32 @device_add_groups(ptr noundef %dev330, ptr noundef nonnull %groups.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %groups.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i537)
  %tobool332.not = icmp eq i32 %call.i537, 0
  %212 = ptrtoint ptr %client17 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %client17, align 8
  %dev342 = getelementptr inbounds %struct.i2c_client, ptr %213, i32 0, i32 4
  br i1 %tobool332.not, label %if.end339, label %do.end336

do.end336:                                        ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev342, ptr noundef nonnull @.str.51, i32 noundef %call.i537) #15
  br label %if.then353

if.end339:                                        ; preds = %cleanup.cont
  %call343 = call i32 @ipmi_add_smi(ptr noundef null, ptr noundef %handlers, ptr noundef nonnull %call7.i.i, ptr noundef %dev342, i8 noundef zeroext %conv39) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call343)
  %tobool344.not = icmp eq i32 %call343, 0
  br i1 %tobool344.not, label %if.end339.if.end363_crit_edge, label %do.end348

if.end339.if.end363_crit_edge:                    ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end363

do.end348:                                        ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #14
  %214 = ptrtoint ptr %client17 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %client17, align 8
  %dev350 = getelementptr inbounds %struct.i2c_client, ptr %215, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev350, ptr noundef nonnull @.str.54, i32 noundef %call343) #15
  %216 = ptrtoint ptr %client17 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %client17, align 8
  %dev365 = getelementptr inbounds %struct.i2c_client, ptr %217, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %groups.i538) #12
  %218 = getelementptr inbounds [2 x ptr], ptr %groups.i538, i32 0, i32 1
  %219 = ptrtoint ptr %groups.i538 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr @ipmi_ssif_dev_attr_group, ptr %groups.i538, align 4
  %220 = ptrtoint ptr %218 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr null, ptr %218, align 4
  call void @device_remove_groups(ptr noundef %dev365, ptr noundef nonnull %groups.i538) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %groups.i538) #12
  %221 = ptrtoint ptr %client17 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %client17, align 8
  %driver_data.i539 = getelementptr inbounds %struct.i2c_client, ptr %222, i32 0, i32 4, i32 8
  %223 = ptrtoint ptr %driver_data.i539 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr null, ptr %driver_data.i539, align 4
  br label %if.then353

out:                                              ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #14
  %thread545 = getelementptr inbounds %struct.ssif_info, ptr %call7.i.i, i32 0, i32 23
  %224 = ptrtoint ptr %thread545 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %call310, ptr %thread545, align 8
  %225 = ptrtoint ptr %call310 to i32
  %226 = ptrtoint ptr %client17 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %client17, align 8
  %dev325 = getelementptr inbounds %struct.i2c_client, ptr %227, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev325, ptr noundef nonnull @.str.47, i32 noundef %225) #15
  br label %if.then353

if.then353:                                       ; preds = %out, %do.end348, %do.end336, %do.end33.critedge, %do.end
  %rv.2551 = phi i32 [ %225, %out ], [ %call23, %do.end ], [ %call343, %do.end348 ], [ %call.i537, %do.end336 ], [ -17, %do.end33.critedge ]
  br i1 %tobool8.not, label %if.then353.do.end360_crit_edge, label %if.then355

if.then353.do.end360_crit_edge:                   ; preds = %if.then353
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end360

if.then355:                                       ; preds = %if.then353
  call void @__sanitizer_cov_trace_pc() #14
  %client356 = getelementptr inbounds %struct.ssif_addr_info, ptr %call7, i32 0, i32 7
  %228 = ptrtoint ptr %client356 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr null, ptr %client356, align 4
  br label %do.end360

do.end360:                                        ; preds = %if.then355, %if.then353.do.end360_crit_edge
  %229 = ptrtoint ptr %client17 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %client17, align 8
  %dev362 = getelementptr inbounds %struct.i2c_client, ptr %230, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev362, ptr noundef nonnull @.str.57, i32 noundef %rv.2551) #15
  %231 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr null, ptr %driver_data.i.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %if.end363

if.end363:                                        ; preds = %do.end360, %if.end339.if.end363_crit_edge
  %rv.2552 = phi i32 [ %rv.2551, %do.end360 ], [ 0, %if.end339.if.end363_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #12
  call void @mutex_unlock(ptr noundef nonnull @ssif_infos_mutex) #12
  br label %cleanup368

cleanup368:                                       ; preds = %if.end363, %if.then3, %if.then
  %retval.0 = phi i32 [ %rv.2552, %if.end363 ], [ -12, %if.then3 ], [ -12, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #12
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %msg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssif_remove(ptr noundef readonly %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @ipmi_unregister_smi(ptr noundef %3) #12
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ @ssif_infos, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @ssif_infos
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond
  %client1 = getelementptr i8, ptr %.pn, i32 -104
  %5 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client1, align 4
  %cmp2 = icmp eq ptr %6, %client
  br i1 %cmp2, label %if.then3, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %client1.le = getelementptr i8, ptr %.pn, i32 -104
  %7 = ptrtoint ptr %client1.le to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %client1.le, align 4
  br label %for.end

for.end:                                          ; preds = %if.then3, %for.cond.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssif_alert(ptr nocapture noundef readonly %client, i32 noundef %type, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.not = icmp eq i32 %type, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.ssif_info, ptr %1, i32 0, i32 42, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #12, !srcloc !338
  %lock.i = getelementptr inbounds %struct.ssif_info, ptr %1, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %waiting_alert = getelementptr inbounds %struct.ssif_info, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %waiting_alert to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %waiting_alert, align 1, !range !334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %waiting_alert to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %waiting_alert, align 1
  %retry_timer = getelementptr inbounds %struct.ssif_info, ptr %1, i32 0, i32 30
  %call4 = tail call i32 @del_timer(ptr noundef %retry_timer) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  %rtc_us_timer.i = getelementptr inbounds %struct.ssif_info, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %rtc_us_timer.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rtc_us_timer.i, align 4
  %multi_pos.i = getelementptr inbounds %struct.ssif_info, ptr %1, i32 0, i32 41
  %7 = ptrtoint ptr %multi_pos.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %multi_pos.i, align 4
  %recv.i = getelementptr inbounds %struct.ssif_info, ptr %1, i32 0, i32 20
  %done_handler.i.i = getelementptr inbounds %struct.ssif_info, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %done_handler.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @msg_done_handler, ptr %done_handler.i.i, align 4
  %i2c_read_write.i.i = getelementptr inbounds %struct.ssif_info, ptr %1, i32 0, i32 26
  %9 = ptrtoint ptr %i2c_read_write.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %i2c_read_write.i.i, align 4
  %i2c_command.i.i = getelementptr inbounds %struct.ssif_info, ptr %1, i32 0, i32 27
  %10 = ptrtoint ptr %i2c_command.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %i2c_command.i.i, align 4
  %i2c_data.i.i = getelementptr inbounds %struct.ssif_info, ptr %1, i32 0, i32 28
  %11 = ptrtoint ptr %i2c_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %recv.i, ptr %i2c_data.i.i, align 4
  %i2c_size.i.i = getelementptr inbounds %struct.ssif_info, ptr %1, i32 0, i32 29
  %12 = ptrtoint ptr %i2c_size.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %i2c_size.i.i, align 4
  %wake_thread.i.i = getelementptr inbounds %struct.ssif_info, ptr %1, i32 0, i32 24
  tail call void @complete(ptr noundef %wake_thread.i.i) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %curr_msg = getelementptr inbounds %struct.ssif_info, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %curr_msg, align 4
  %tobool5.not = icmp eq ptr %14, null
  br i1 %tobool5.not, label %if.end11.critedge, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %got_alert = getelementptr inbounds %struct.ssif_info, ptr %1, i32 0, i32 13
  %15 = ptrtoint ptr %got_alert to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %got_alert, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  br label %cleanup

if.end11.critedge:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11.critedge, %if.then6, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssif_detect(ptr noundef %client, ptr noundef %info) #0 align 64 {
entry:
  %msg = alloca [3 x i8], align 1
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %msg) #12
  %0 = getelementptr inbounds [3 x i8], ptr %msg, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %0, align 1, !annotation !336
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 272) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds [3 x i8], ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 24, ptr %msg, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %3, align 1
  %call2 = call fastcc i32 @do_cmd(ptr noundef %client, i32 noundef 2, ptr noundef nonnull %msg, ptr noundef nonnull %len, ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str.9, i32 noundef 20) #12
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end.if.end7_crit_edge
  %rv.0 = phi i32 [ 0, %if.else ], [ -19, %if.end.if.end7_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.0, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #12
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %msg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ssif_add_infos(ptr noundef %client) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 188) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr_src = getelementptr inbounds %struct.ssif_addr_info, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %addr_src to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %addr_src, align 4
  %client1 = getelementptr inbounds %struct.ssif_addr_info, ptr %call7.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %client1, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 8
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 12
  %call2 = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #12
  %adapter_name = getelementptr inbounds %struct.ssif_addr_info, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %adapter_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %adapter_name, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr, align 2
  %addr3 = getelementptr inbounds %struct.i2c_board_info, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %addr3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %addr3, align 2
  %link = getelementptr inbounds %struct.ssif_addr_info, ptr %call7.i.i, i32 0, i32 10
  %9 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ssif_infos, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef %9, ptr noundef nonnull @ssif_infos) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %link, ptr getelementptr inbounds (%struct.list_head, ptr @ssif_infos, i32 0, i32 1), align 4
  %10 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ssif_infos, ptr %link, align 4
  %prev3.i.i = getelementptr inbounds %struct.ssif_addr_info, ptr %call7.i.i, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %prev3.i.i, align 8
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %link, ptr %9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipmi_addr_src_to_str(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_cmd(ptr noundef %client, i32 noundef %len, ptr noundef %msg, ptr nocapture noundef writeonly %resp_len, ptr noundef %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %len to i8
  %call = tail call i32 @i2c_smbus_write_block_data(ptr noundef %client, i8 noundef zeroext 2, i8 noundef zeroext %conv, ptr noundef %msg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.while.body.i.preheader_crit_edge, label %if.then

entry.while.body.i.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.preheader

if.then:                                          ; preds = %entry
  %call.1 = tail call i32 @i2c_smbus_write_block_data(ptr noundef %client, i8 noundef zeroext 2, i8 noundef zeroext %conv, ptr noundef %msg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %if.then.while.body.i.preheader_crit_edge, label %if.then.1

if.then.while.body.i.preheader_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.preheader

if.then.1:                                        ; preds = %if.then
  %call.2 = tail call i32 @i2c_smbus_write_block_data(ptr noundef %client, i8 noundef zeroext 2, i8 noundef zeroext %conv, ptr noundef %msg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %if.then.1.while.body.i.preheader_crit_edge, label %if.then.2

if.then.1.while.body.i.preheader_crit_edge:       ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.preheader

if.then.2:                                        ; preds = %if.then.1
  %call.3 = tail call i32 @i2c_smbus_write_block_data(ptr noundef %client, i8 noundef zeroext 2, i8 noundef zeroext %conv, ptr noundef %msg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %if.then.2.while.body.i.preheader_crit_edge, label %if.then.3

if.then.2.while.body.i.preheader_crit_edge:       ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.preheader

if.then.3:                                        ; preds = %if.then.2
  %call.4 = tail call i32 @i2c_smbus_write_block_data(ptr noundef %client, i8 noundef zeroext 2, i8 noundef zeroext %conv, ptr noundef %msg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %if.then.3.while.body.i.preheader_crit_edge, label %if.then.3.cleanup_crit_edge

if.then.3.cleanup_crit_edge:                      ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.3.while.body.i.preheader_crit_edge:       ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %if.then.3.while.body.i.preheader_crit_edge, %if.then.2.while.body.i.preheader_crit_edge, %if.then.1.while.body.i.preheader_crit_edge, %if.then.while.body.i.preheader_crit_edge, %entry.while.body.i.preheader_crit_edge
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.i.preheader
  %retry_cnt.0.i = phi i32 [ %dec.i, %if.end.i.while.body.i_crit_edge ], [ 250, %while.body.i.preheader ]
  %call.i = tail call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext 3, ptr noundef %resp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp sgt i32 %call.i, 0
  br i1 %cmp1.i, label %if.then7, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  tail call void @msleep(i32 noundef 20) #12
  %dec.i = add nsw i32 %retry_cnt.0.i, -1
  %cmp2.i = icmp eq i32 %dec.i, 0
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then7:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp8 = icmp ult i32 %call.i, 3
  br i1 %cmp8, label %if.then7.cleanup_crit_edge, label %lor.lhs.false

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then7
  %0 = ptrtoint ptr %resp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %resp, align 1
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msg, align 1
  %4 = or i8 %3, 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %4)
  %cmp13.not = icmp eq i8 %1, %4
  br i1 %cmp13.not, label %lor.lhs.false15, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %arrayidx16 = getelementptr i8, ptr %resp, i32 1
  %5 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx16, align 1
  %arrayidx18 = getelementptr i8, ptr %msg, i32 1
  %7 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp20.not = icmp eq i8 %6, %8
  br i1 %cmp20.not, label %if.else, label %lor.lhs.false15.cleanup_crit_edge

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %call.i)
  %cmp23 = icmp ugt i32 %call.i, 272
  br i1 %cmp23, label %if.else.cleanup_crit_edge, label %if.else26

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call.i, ptr %resp_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else26, %if.else.cleanup_crit_edge, %lor.lhs.false15.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else26 ], [ -22, %lor.lhs.false15.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then7.cleanup_crit_edge ], [ -7, %if.else.cleanup_crit_edge ], [ -19, %if.then.3.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_multipart_messages(ptr noundef %client, ptr nocapture noundef %ssif_info, ptr noundef %resp) unnamed_addr #0 align 64 {
entry:
  %msg = alloca [65 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %msg) #12
  %max_xmit_msg_size = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 34
  %0 = ptrtoint ptr %max_xmit_msg_size to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %max_xmit_msg_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %1)
  %cmp = icmp ult i8 %1, 33
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %1)
  %cmp4 = icmp ugt i8 %1, 63
  %2 = getelementptr inbounds i8, ptr %msg, i32 2
  %3 = call ptr @memset(ptr %2, i32 0, i32 63)
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 24, ptr %msg, align 1
  %arrayidx6 = getelementptr inbounds [65 x i8], ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %arrayidx6, align 1
  %call = call fastcc i32 @start_multipart_test(ptr noundef %client, ptr noundef nonnull %msg, i1 noundef zeroext %cmp4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.out_no_multi_part_crit_edge

if.end.out_no_multi_part_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_no_multi_part

if.end10:                                         ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, ptr %msg, i32 64
  %call12 = call i32 @i2c_smbus_write_block_data(ptr noundef %client, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end10.while.body.i_crit_edge, label %if.end16

if.end10.while.body.i_crit_edge:                  ; preds = %if.end10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end10.while.body.i_crit_edge
  %retry_cnt.0.i = phi i32 [ %dec.i, %if.end.i.while.body.i_crit_edge ], [ 250, %if.end10.while.body.i_crit_edge ]
  %call.i = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext 3, ptr noundef %resp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp sgt i32 %call.i, 0
  br i1 %cmp1.i, label %while.body.i.if.then19_crit_edge, label %if.end.i

while.body.i.if.then19_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

if.end.i:                                         ; preds = %while.body.i
  call void @msleep(i32 noundef 20) #12
  %dec.i = add nsw i32 %retry_cnt.0.i, -1
  %cmp2.i = icmp eq i32 %dec.i, 0
  br i1 %cmp2.i, label %if.end.i.if.end20_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end.i.if.end20_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp17 = icmp sgt i32 %call12, 0
  br i1 %cmp17, label %if.end16.if.then19_crit_edge, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.end16.if.then19_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

if.then19:                                        ; preds = %if.end16.if.then19_crit_edge, %while.body.i.if.then19_crit_edge
  %cmd8_works = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 36
  %6 = ptrtoint ptr %cmd8_works to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %cmd8_works, align 2
  br label %cleanup

if.end20:                                         ; preds = %if.end16.if.end20_crit_edge, %if.end.i.if.end20_crit_edge
  %call23 = call fastcc i32 @start_multipart_test(ptr noundef %client, ptr noundef nonnull %msg, i1 noundef zeroext %cmp4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %do.end

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61) #15
  br label %out_no_multi_part

if.end26:                                         ; preds = %if.end20
  %call29 = call i32 @i2c_smbus_write_block_data(ptr noundef %client, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end26.while.body.i69_crit_edge, label %if.end33

if.end26.while.body.i69_crit_edge:                ; preds = %if.end26
  br label %while.body.i69

while.body.i69:                                   ; preds = %if.end.i72.while.body.i69_crit_edge, %if.end26.while.body.i69_crit_edge
  %retry_cnt.0.i66 = phi i32 [ %dec.i70, %if.end.i72.while.body.i69_crit_edge ], [ 250, %if.end26.while.body.i69_crit_edge ]
  %call.i67 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext 3, ptr noundef %resp) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp1.i68 = icmp sgt i32 %call.i67, 0
  br i1 %cmp1.i68, label %while.body.i69.cleanup_crit_edge, label %if.end.i72

while.body.i69.cleanup_crit_edge:                 ; preds = %while.body.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i72:                                       ; preds = %while.body.i69
  call void @msleep(i32 noundef 20) #12
  %dec.i70 = add nsw i32 %retry_cnt.0.i66, -1
  %cmp2.i71 = icmp eq i32 %dec.i70, 0
  br i1 %cmp2.i71, label %if.end.i72.if.end37_crit_edge, label %if.end.i72.while.body.i69_crit_edge

if.end.i72.while.body.i69_crit_edge:              ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i69

if.end.i72.if.end37_crit_edge:                    ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp34 = icmp sgt i32 %call29, 0
  br i1 %cmp34, label %if.end33.cleanup_crit_edge, label %if.end33.if.end37_crit_edge

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end37:                                         ; preds = %if.end33.if.end37_crit_edge, %if.end.i72.if.end37_crit_edge
  %7 = ptrtoint ptr %max_xmit_msg_size to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %max_xmit_msg_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %8)
  %cmp40 = icmp ugt i8 %8, 63
  br i1 %cmp40, label %if.then42, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %max_xmit_msg_size to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 63, ptr %max_xmit_msg_size, align 4
  br label %cleanup

out_no_multi_part:                                ; preds = %do.end, %if.end.out_no_multi_part_crit_edge
  %10 = ptrtoint ptr %max_xmit_msg_size to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 32, ptr %max_xmit_msg_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_no_multi_part, %if.then42, %if.end37.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %while.body.i69.cleanup_crit_edge, %if.then19, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %msg) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @retry_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %stopping = getelementptr i8, ptr %t, i32 -20
  %0 = ptrtoint ptr %stopping to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stopping, align 4, !range !334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock.i = getelementptr i8, ptr %t, i32 -524
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %waiting_alert = getelementptr i8, ptr %t, i32 -407
  %2 = ptrtoint ptr %waiting_alert to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %waiting_alert, align 1, !range !334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %waiting_alert to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %waiting_alert, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %rtc_us_timer.i = getelementptr i8, ptr %t, i32 -404
  %5 = ptrtoint ptr %rtc_us_timer.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %rtc_us_timer.i, align 4
  %multi_pos.i = getelementptr i8, ptr %t, i32 124
  %6 = ptrtoint ptr %multi_pos.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %multi_pos.i, align 4
  %recv.i = getelementptr i8, ptr %t, i32 -120
  %done_handler.i.i = getelementptr i8, ptr %t, i32 -84
  %7 = ptrtoint ptr %done_handler.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @msg_done_handler, ptr %done_handler.i.i, align 4
  %i2c_read_write.i.i = getelementptr i8, ptr %t, i32 -16
  %8 = ptrtoint ptr %i2c_read_write.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %i2c_read_write.i.i, align 4
  %i2c_command.i.i = getelementptr i8, ptr %t, i32 -12
  %9 = ptrtoint ptr %i2c_command.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %i2c_command.i.i, align 4
  %i2c_data.i.i = getelementptr i8, ptr %t, i32 -8
  %10 = ptrtoint ptr %i2c_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %recv.i, ptr %i2c_data.i.i, align 4
  %i2c_size.i.i = getelementptr i8, ptr %t, i32 -4
  %11 = ptrtoint ptr %i2c_size.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5, ptr %i2c_size.i.i, align 4
  %wake_thread.i.i = getelementptr i8, ptr %t, i32 -76
  tail call void @complete(ptr noundef %wake_thread.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @watch_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %stopping = getelementptr i8, ptr %t, i32 -76
  %0 = ptrtoint ptr %stopping to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stopping, align 4, !range !334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock.i = getelementptr i8, ptr %t, i32 -580
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %watch_timeout = getelementptr i8, ptr %t, i32 -4
  %2 = ptrtoint ptr %watch_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %watch_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then2:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, %3
  %call4 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #12
  %ssif_state = getelementptr i8, ptr %t, i32 -528
  %5 = ptrtoint ptr %ssif_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ssif_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %land.lhs.true, label %if.then2.if.end7_crit_edge

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

land.lhs.true:                                    ; preds = %if.then2
  %curr_msg = getelementptr i8, ptr %t, i32 -532
  %7 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %curr_msg, align 4
  %cmp5 = icmp eq ptr %8, null
  br i1 %cmp5, label %if.then6, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  %req_flags.i = getelementptr i8, ptr %t, i32 -461
  %9 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %req_flags.i, align 1
  %10 = ptrtoint ptr %ssif_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %ssif_state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  %max_xmit_msg_size.i.i = getelementptr i8, ptr %t, i32 48
  %11 = ptrtoint ptr %max_xmit_msg_size.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_xmit_msg_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp1.i.i = icmp ult i8 %12, 2
  br i1 %cmp1.i.i, label %if.then.i, label %start_send.exit.thread.i

start_send.exit.thread.i:                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %retries_left.i.i = getelementptr i8, ptr %t, i32 -8
  %13 = ptrtoint ptr %retries_left.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5, ptr %retries_left.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %t, i32 -455
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 24, ptr %add.ptr.i.i, align 1
  %mb.sroa.5.0.add.ptr.i.sroa_idx.i = getelementptr i8, ptr %t, i32 -454
  %15 = ptrtoint ptr %mb.sroa.5.0.add.ptr.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 49, ptr %mb.sroa.5.0.add.ptr.i.sroa_idx.i, align 1
  %data_len.i.i = getelementptr i8, ptr %t, i32 -180
  %16 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %data_len.i.i, align 4
  %got_alert.i.i.i = getelementptr i8, ptr %t, i32 -464
  %17 = ptrtoint ptr %got_alert.i.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %got_alert.i.i.i, align 4
  %multi_data3.i.i.i = getelementptr i8, ptr %t, i32 60
  %18 = ptrtoint ptr %multi_data3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %multi_data3.i.i.i, align 4
  %data5.i.i.i = getelementptr i8, ptr %t, i32 -456
  %19 = ptrtoint ptr %data5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %data5.i.i.i, align 4
  %done_handler.i.i.i.i = getelementptr i8, ptr %t, i32 -140
  %20 = ptrtoint ptr %done_handler.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @msg_written_handler, ptr %done_handler.i.i.i.i, align 4
  %i2c_read_write.i.i.i.i = getelementptr i8, ptr %t, i32 -72
  %21 = ptrtoint ptr %i2c_read_write.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %i2c_read_write.i.i.i.i, align 4
  %i2c_command.i.i.i.i = getelementptr i8, ptr %t, i32 -68
  %22 = ptrtoint ptr %i2c_command.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %i2c_command.i.i.i.i, align 4
  %i2c_data.i.i.i.i = getelementptr i8, ptr %t, i32 -64
  %23 = ptrtoint ptr %i2c_data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %data5.i.i.i, ptr %i2c_data.i.i.i.i, align 4
  %i2c_size.i.i.i.i = getelementptr i8, ptr %t, i32 -60
  %24 = ptrtoint ptr %i2c_size.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %i2c_size.i.i.i.i, align 4
  %wake_thread.i.i.i.i = getelementptr i8, ptr %t, i32 -132
  tail call void @complete(ptr noundef %wake_thread.i.i.i.i) #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %ssif_state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %ssif_state, align 4
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.then2.if.end7_crit_edge
  %req_flags = getelementptr i8, ptr %t, i32 -461
  %26 = ptrtoint ptr %req_flags to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %req_flags, align 1
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end.if.end8_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then.i, %start_send.exit.thread.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ssif_start_processing(ptr nocapture noundef writeonly %send_info, ptr noundef %intf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %send_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %intf, ptr %send_info, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shutdown_ssif(ptr noundef %send_info) #0 align 64 {
entry:
  %groups.i = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.ssif_info, ptr %send_info, i32 0, i32 21
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %groups.i) #12
  %2 = getelementptr inbounds [2 x ptr], ptr %groups.i, i32 0, i32 1
  %3 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ipmi_ssif_dev_attr_group, ptr %groups.i, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %2, align 4
  call void @device_remove_groups(ptr noundef %dev, ptr noundef nonnull %groups.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %groups.i) #12
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %driver_data.i, align 4
  %ssif_state = getelementptr inbounds %struct.ssif_info, ptr %send_info, i32 0, i32 4
  %8 = ptrtoint ptr %ssif_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ssif_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not15 = icmp eq i32 %9, 0
  br i1 %cmp.not15, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %call = call i32 @schedule_timeout(i32 noundef 1) #12
  %10 = ptrtoint ptr %ssif_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ssif_state, align 4
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %stopping = getelementptr inbounds %struct.ssif_info, ptr %send_info, i32 0, i32 25
  %12 = ptrtoint ptr %stopping to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %stopping, align 4
  %watch_timer = getelementptr inbounds %struct.ssif_info, ptr %send_info, i32 0, i32 33
  %call3 = call i32 @del_timer_sync(ptr noundef %watch_timer) #12
  %retry_timer = getelementptr inbounds %struct.ssif_info, ptr %send_info, i32 0, i32 30
  %call4 = call i32 @del_timer_sync(ptr noundef %retry_timer) #12
  %thread = getelementptr inbounds %struct.ssif_info, ptr %send_info, i32 0, i32 23
  %13 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %thread, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %wake_thread = getelementptr inbounds %struct.ssif_info, ptr %send_info, i32 0, i32 24
  call void @complete(ptr noundef %wake_thread) #12
  %15 = ptrtoint ptr %thread to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %thread, align 4
  %call6 = call i32 @kthread_stop(ptr noundef %16) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_smi_info(ptr nocapture noundef readonly %send_info, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %addr_source = getelementptr inbounds %struct.ssif_info, ptr %send_info, i32 0, i32 7
  %0 = ptrtoint ptr %addr_source to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr_source, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %data, align 4
  %client = getelementptr inbounds %struct.ssif_info, ptr %send_info, i32 0, i32 21
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  %dev1 = getelementptr inbounds %struct.ipmi_smi_info, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev1, align 4
  %call = tail call ptr @get_device(ptr noundef %dev) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sender(ptr noundef %send_info, ptr noundef %msg) #0 align 64 {
entry:
  %oflags = alloca i32, align 4
  %t = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oflags) #12
  %waiting_msg = getelementptr inbounds %struct.ssif_info, ptr %send_info, i32 0, i32 2
  %0 = ptrtoint ptr %waiting_msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %waiting_msg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !339

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/ipmi/ipmi_ssif.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1059, 0\0A.popsection", ""() #12, !srcloc !340
  unreachable

do.end8:                                          ; preds = %entry
  %2 = ptrtoint ptr %waiting_msg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %msg, ptr %waiting_msg, align 4
  %lock.i = getelementptr inbounds %struct.ssif_info, ptr %send_info, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %3 = ptrtoint ptr %oflags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call2.i, ptr %oflags, align 4
  call fastcc void @start_next_msg(ptr noundef %send_info, ptr noundef nonnull %oflags)
  %ssif_debug = getelementptr inbounds %struct.ssif_info, ptr %send_info, i32 0, i32 5
  %4 = ptrtoint ptr %ssif_debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ssif_debug, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.end8.if.end28_crit_edge, label %if.then11

do.end8.if.end28_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then11:                                        ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %t) #12
  %6 = call ptr @memset(ptr %t, i32 255, i32 16)
  call void @ktime_get_real_ts64(ptr noundef nonnull %t) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sender.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sender, %if.then21)) #12
          to label %do.end27 [label %if.then21], !srcloc !337

if.then21:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %client = getelementptr inbounds %struct.ssif_info, ptr %send_info, i32 0, i32 21
  %7 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  %data = getelementptr inbounds %struct.ipmi_smi_msg, ptr %msg, i32 0, i32 5
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 4
  %conv = zext i8 %10 to i32
  %arrayidx23 = getelementptr %struct.ipmi_smi_msg, ptr %msg, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %12 to i32
  %13 = ptrtoint ptr %t to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %t, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %t, i32 0, i32 1
  %15 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tv_nsec, align 8
  %div = sdiv i32 %16, 1000
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sender.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.97, i32 noundef %conv, i32 noundef %conv24, i64 noundef %14, i32 noundef %div) #12
  br label %do.end27

do.end27:                                         ; preds = %if.then21, %if.then11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %t) #12
  br label %if.end28

if.end28:                                         ; preds = %do.end27, %do.end8.if.end28_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oflags) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @request_events(ptr noundef %send_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %has_event_buffer = getelementptr inbounds %struct.ssif_info, ptr %send_info, i32 0, i32 11
  %0 = ptrtoint ptr %has_event_buffer to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_event_buffer, align 2, !range !334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %lock.i = getelementptr inbounds %struct.ssif_info, ptr %send_info, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %req_events = getelementptr inbounds %struct.ssif_info, ptr %send_info, i32 0, i32 15
  %2 = ptrtoint ptr %req_events to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %req_events, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssif_set_need_watch(ptr noundef %send_info, i32 noundef %watch_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %watch_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %watch_mask)
  %tobool1.not = icmp eq i32 %watch_mask, 0
  %spec.select = select i1 %tobool1.not, i32 0, i32 25
  %timeout.0 = select i1 %tobool.not, i32 %spec.select, i32 1
  %lock.i = getelementptr inbounds %struct.ssif_info, ptr %send_info, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %watch_timeout = getelementptr inbounds %struct.ssif_info, ptr %send_info, i32 0, i32 32
  %0 = ptrtoint ptr %watch_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %watch_timeout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %timeout.0, i32 %1)
  %cmp.not = icmp eq i32 %timeout.0, %1
  br i1 %cmp.not, label %entry.if.end14_crit_edge, label %if.then6

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then6:                                         ; preds = %entry
  %2 = ptrtoint ptr %watch_timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %timeout.0, ptr %watch_timeout, align 4
  br i1 %tobool1.not, label %if.then6.if.end14_crit_edge, label %if.then10

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %watch_timer = getelementptr inbounds %struct.ssif_info, ptr %send_info, i32 0, i32 33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %3, %timeout.0
  %call12 = tail call i32 @mod_timer(ptr noundef %watch_timer, i32 noundef %add) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.then6.if.end14_crit_edge, %entry.if.end14_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_ssif_thread(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %wake_thread = getelementptr inbounds %struct.ssif_info, ptr %data, i32 0, i32 24
  %call48 = tail call zeroext i1 @kthread_should_stop() #12
  br i1 %call48, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %stopping = getelementptr inbounds %struct.ssif_info, ptr %data, i32 0, i32 25
  %wait.i = getelementptr inbounds %struct.ssif_info, ptr %data, i32 0, i32 24, i32 1
  %i2c_read_write = getelementptr inbounds %struct.ssif_info, ptr %data, i32 0, i32 26
  %client9 = getelementptr inbounds %struct.ssif_info, ptr %data, i32 0, i32 21
  %i2c_command10 = getelementptr inbounds %struct.ssif_info, ptr %data, i32 0, i32 27
  %i2c_data12 = getelementptr inbounds %struct.ssif_info, ptr %data, i32 0, i32 28
  %done_handler19 = getelementptr inbounds %struct.ssif_info, ptr %data, i32 0, i32 22
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %call1 = tail call i32 @wait_for_completion_interruptible(ptr noundef %wake_thread) #12
  %0 = ptrtoint ptr %stopping to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stopping, align 4, !range !334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call1)
  %cmp = icmp eq i32 %call1, -512
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %2 = ptrtoint ptr %wake_thread to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wake_thread, align 4
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @init_completion.__key) #12
  %3 = ptrtoint ptr %i2c_read_write to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i2c_read_write, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp5 = icmp eq i32 %4, 0
  %5 = ptrtoint ptr %client9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client9, align 4
  %7 = ptrtoint ptr %i2c_command10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i2c_command10, align 4
  %conv = trunc i32 %8 to i8
  %9 = ptrtoint ptr %i2c_data12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_data12, align 4
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %add.ptr = getelementptr i8, ptr %10, i32 1
  %call8 = tail call i32 @i2c_smbus_write_block_data(ptr noundef %6, i8 noundef zeroext %conv, i8 noundef zeroext %12, ptr noundef %add.ptr) #12
  %13 = ptrtoint ptr %done_handler19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %done_handler19, align 4
  tail call void %14(ptr noundef %data, i32 noundef %call8, ptr noundef null, i32 noundef 0) #12
  br label %cleanup

if.else:                                          ; preds = %if.end3
  %call13 = tail call i32 @i2c_smbus_read_block_data(ptr noundef %6, i8 noundef zeroext %conv, ptr noundef %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  %15 = ptrtoint ptr %done_handler19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %done_handler19, align 4
  br i1 %cmp14, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %16(ptr noundef %data, i32 noundef %call13, ptr noundef null, i32 noundef 0) #12
  br label %cleanup

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %i2c_data12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_data12, align 4
  tail call void %16(ptr noundef %data, i32 noundef 0, ptr noundef %18, i32 noundef %call13) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else18, %if.then16, %if.then6, %if.end.cleanup_crit_edge
  %call = tail call zeroext i1 @kthread_should_stop() #12
  br i1 %call, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_add_smi(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ssif_remove_dup(ptr nocapture noundef readonly %client) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @ipmi_unregister_smi(ptr noundef %3) #12
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_unregister_smi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_block_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @start_multipart_test(ptr noundef %client, ptr noundef %msg, i1 noundef zeroext %do_middle) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_smbus_write_block_data(ptr noundef %client, i8 noundef zeroext 6, i8 noundef zeroext 32, ptr noundef %msg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.then:                                          ; preds = %entry
  %call.1 = tail call i32 @i2c_smbus_write_block_data(ptr noundef %client, i8 noundef zeroext 6, i8 noundef zeroext 32, ptr noundef %msg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %if.then.if.end2_crit_edge, label %if.then.1

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.then.1:                                        ; preds = %if.then
  %call.2 = tail call i32 @i2c_smbus_write_block_data(ptr noundef %client, i8 noundef zeroext 6, i8 noundef zeroext 32, ptr noundef %msg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %if.then.1.if.end2_crit_edge, label %if.then.2

if.then.1.if.end2_crit_edge:                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.then.2:                                        ; preds = %if.then.1
  %call.3 = tail call i32 @i2c_smbus_write_block_data(ptr noundef %client, i8 noundef zeroext 6, i8 noundef zeroext 32, ptr noundef %msg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %if.then.2.if.end2_crit_edge, label %if.then.3

if.then.2.if.end2_crit_edge:                      ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.then.3:                                        ; preds = %if.then.2
  %call.4 = tail call i32 @i2c_smbus_write_block_data(ptr noundef %client, i8 noundef zeroext 6, i8 noundef zeroext 32, ptr noundef %msg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %if.then.3.if.end2_crit_edge, label %if.then.3.cleanup.sink.split_crit_edge

if.then.3.cleanup.sink.split_crit_edge:           ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then.3.if.end2_crit_edge:                      ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.end2:                                          ; preds = %if.then.3.if.end2_crit_edge, %if.then.2.if.end2_crit_edge, %if.then.1.if.end2_crit_edge, %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  br i1 %do_middle, label %if.end5, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %add.ptr = getelementptr i8, ptr %msg, i32 32
  %call6 = tail call i32 @i2c_smbus_write_block_data(ptr noundef %client, i8 noundef zeroext 7, i8 noundef zeroext 32, ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end5.cleanup.sink.split_crit_edge

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end5.cleanup.sink.split_crit_edge, %if.then.3.cleanup.sink.split_crit_edge
  %.str.66.sink = phi ptr [ @.str.63, %if.then.3.cleanup.sink.split_crit_edge ], [ @.str.66, %if.end5.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.4, %if.then.3.cleanup.sink.split_crit_edge ], [ %call6, %if.end5.cleanup.sink.split_crit_edge ]
  %dev12 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull %.str.66.sink) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %if.end2.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msg_done_handler(ptr noundef %ssif_info, i32 noundef %result, ptr noundef readonly %data, i32 noundef %len) #0 align 64 {
entry:
  %oflags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oflags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result)
  %cmp = icmp slt i32 %result, 0
  br i1 %cmp, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %retries_left = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 31
  %0 = ptrtoint ptr %retries_left to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %retries_left, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %retries_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp2 = icmp sgt i32 %dec, 0
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.then
  %arrayidx = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 42, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #12, !srcloc !338
  %lock.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %3 = ptrtoint ptr %oflags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call2.i, ptr %oflags, align 4
  %waiting_alert = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 14
  %4 = ptrtoint ptr %waiting_alert to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %waiting_alert, align 1
  %rtc_us_timer = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 17
  %5 = ptrtoint ptr %rtc_us_timer to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 20000, ptr %rtc_us_timer, align 4
  %stopping = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 25
  %6 = ptrtoint ptr %stopping to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stopping, align 4, !range !334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then4, label %if.then3.if.end_crit_edge

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then4:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %retry_timer = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 2
  %call5 = tail call i32 @mod_timer(ptr noundef %retry_timer, i32 noundef %add) #12
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then3.if.end_crit_edge
  %9 = ptrtoint ptr %oflags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %oflags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %10) #12
  br label %cleanup499

if.end6:                                          ; preds = %if.then
  %arrayidx8 = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 42, i32 7
  %call.i.i701 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx8, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx8, i32 1, i32 3, i32 1) #12
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx8, ptr %arrayidx8, i32 1, ptr elementtype(i32) %arrayidx8) #12, !srcloc !338
  %ssif_debug = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 5
  %12 = ptrtoint ptr %ssif_debug to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ssif_debug, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end6.if.then200_crit_edge, label %do.body

if.end6.if.then200_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then200

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msg_done_handler.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msg_done_handler, %if.then15)) #12
          to label %continue_op [label %if.then15], !srcloc !337

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %client = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 21
  %14 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msg_done_handler.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.68, i32 noundef %result) #12
  br label %if.then200

if.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp19 = icmp ugt i32 %len, 1
  br i1 %cmp19, label %land.lhs.true, label %if.end18.if.else_crit_edge

if.end18.if.else_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.end18
  %multi_pos = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 41
  %16 = ptrtoint ptr %multi_pos to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %multi_pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp20 = icmp eq i32 %17, 0
  br i1 %cmp20, label %land.lhs.true21, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true21:                                  ; preds = %land.lhs.true
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp23 = icmp eq i8 %19, 0
  br i1 %cmp23, label %land.lhs.true25, label %land.lhs.true21.if.else_crit_edge

land.lhs.true21.if.else_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %arrayidx26 = getelementptr i8, ptr %data, i32 1
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp28 = icmp eq i8 %21, 1
  br i1 %cmp28, label %if.then30, label %land.lhs.true25.if.else_crit_edge

land.lhs.true25.if.else_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then30:                                        ; preds = %land.lhs.true25
  %arrayidx32 = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 42, i32 5
  %call.i.i702 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx32, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx32, i32 1, i32 3, i32 1) #12
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx32, ptr %arrayidx32, i32 1, ptr elementtype(i32) %arrayidx32) #12, !srcloc !338
  %sub = add i32 %len, -2
  %add.ptr = getelementptr i8, ptr %data, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp33799.not = icmp eq i32 %sub, 0
  br i1 %cmp33799.not, label %if.then30.for.end_crit_edge, label %if.then30.for.body_crit_edge

if.then30.for.body_crit_edge:                     ; preds = %if.then30
  br label %for.body

if.then30.for.end_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then30.for.body_crit_edge
  %i.0800 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then30.for.body_crit_edge ]
  %arrayidx35 = getelementptr i8, ptr %add.ptr, i32 %i.0800
  %23 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx35, align 1
  %arrayidx37 = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 18, i32 %i.0800
  %25 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx37, align 1
  %inc = add nuw i32 %i.0800, 1
  %exitcond801.not = icmp eq i32 %inc, %sub
  br i1 %exitcond801.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then30.for.end_crit_edge
  %multi_len = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 40
  %26 = ptrtoint ptr %multi_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %multi_len, align 4
  %27 = ptrtoint ptr %multi_pos to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %multi_pos, align 4
  %recv = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 20
  %done_handler.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 22
  %28 = ptrtoint ptr %done_handler.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @msg_done_handler, ptr %done_handler.i, align 4
  %i2c_read_write.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 26
  %29 = ptrtoint ptr %i2c_read_write.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %i2c_read_write.i, align 4
  %i2c_command.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 27
  %30 = ptrtoint ptr %i2c_command.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 9, ptr %i2c_command.i, align 4
  %i2c_data.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 28
  %31 = ptrtoint ptr %i2c_data.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %recv, ptr %i2c_data.i, align 4
  %i2c_size.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 29
  %32 = ptrtoint ptr %i2c_size.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 5, ptr %i2c_size.i, align 4
  %wake_thread.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 24
  tail call void @complete(ptr noundef %wake_thread.i) #12
  br label %cleanup499

if.else:                                          ; preds = %land.lhs.true25.if.else_crit_edge, %land.lhs.true21.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end18.if.else_crit_edge
  %multi_pos39 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 41
  %33 = ptrtoint ptr %multi_pos39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %multi_pos39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool40.not = icmp eq i32 %34, 0
  br i1 %tobool40.not, label %if.else.if.else203_crit_edge, label %if.then41

if.else.if.else203_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else203

if.then41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp43 = icmp eq i32 %len, 0
  br i1 %cmp43, label %if.then45, label %if.end69

if.then45:                                        ; preds = %if.then41
  %ssif_debug46 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 5
  %35 = ptrtoint ptr %ssif_debug46 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ssif_debug46, align 4
  %and47 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.then45.if.then200_crit_edge, label %do.body50

if.then45.if.then200_crit_edge:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then200

do.body50:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msg_done_handler.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msg_done_handler, %if.then62)) #12
          to label %if.then200 [label %if.then62], !srcloc !337

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #14
  %client63 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 21
  %37 = ptrtoint ptr %client63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %client63, align 4
  %dev64 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msg_done_handler.__UNIQUE_ID_ddebug289, ptr noundef %dev64, ptr noundef nonnull @.str.70) #12
  br label %if.then200

if.end69:                                         ; preds = %if.then41
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %data, align 1
  %dec71 = add i32 %len, -1
  %incdec.ptr = getelementptr i8, ptr %data, i32 1
  %conv72 = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %40)
  %cmp73.not = icmp eq i8 %40, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %dec71)
  %cmp76.not = icmp eq i32 %dec71, 31
  %or.cond = or i1 %cmp76.not, %cmp73.not
  br i1 %or.cond, label %if.end102, label %if.then78

if.then78:                                        ; preds = %if.end69
  %ssif_debug79 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 5
  %41 = ptrtoint ptr %ssif_debug79 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ssif_debug79, align 4
  %and80 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.then78.if.then200_crit_edge, label %do.body83

if.then78.if.then200_crit_edge:                   ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then200

do.body83:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msg_done_handler.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msg_done_handler, %if.then95)) #12
          to label %if.then200 [label %if.then95], !srcloc !337

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #14
  %client96 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 21
  %43 = ptrtoint ptr %client96 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %client96, align 4
  %dev97 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msg_done_handler.__UNIQUE_ID_ddebug290, ptr noundef %dev97, ptr noundef nonnull @.str.71) #12
  br label %if.then200

if.end102:                                        ; preds = %if.end69
  %multi_len103 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 40
  %45 = ptrtoint ptr %multi_len103 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %multi_len103, align 4
  %add104 = add i32 %46, %dec71
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %add104)
  %cmp105 = icmp ugt i32 %add104, 272
  br i1 %cmp105, label %if.then107, label %for.cond132.preheader

for.cond132.preheader:                            ; preds = %if.end102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec71)
  %cmp133797.not = icmp eq i32 %dec71, 0
  br i1 %cmp133797.not, label %for.cond132.preheader.for.end143_crit_edge, label %for.cond132.preheader.for.body135_crit_edge

for.cond132.preheader.for.body135_crit_edge:      ; preds = %for.cond132.preheader
  br label %for.body135

for.cond132.preheader.for.end143_crit_edge:       ; preds = %for.cond132.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end143

if.then107:                                       ; preds = %if.end102
  %ssif_debug108 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 5
  %47 = ptrtoint ptr %ssif_debug108 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ssif_debug108, align 4
  %and109 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.then107.if.then200_crit_edge, label %do.body112

if.then107.if.then200_crit_edge:                  ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then200

do.body112:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msg_done_handler.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msg_done_handler, %if.then124)) #12
          to label %if.then200 [label %if.then124], !srcloc !337

if.then124:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #14
  %client125 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 21
  %49 = ptrtoint ptr %client125 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %client125, align 4
  %dev126 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msg_done_handler.__UNIQUE_ID_ddebug291, ptr noundef %dev126, ptr noundef nonnull @.str.72) #12
  br label %if.then200

for.body135:                                      ; preds = %for.body135.for.body135_crit_edge, %for.cond132.preheader.for.body135_crit_edge
  %i42.0798 = phi i32 [ %inc142, %for.body135.for.body135_crit_edge ], [ 0, %for.cond132.preheader.for.body135_crit_edge ]
  %arrayidx136 = getelementptr i8, ptr %incdec.ptr, i32 %i42.0798
  %51 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx136, align 1
  %53 = ptrtoint ptr %multi_len103 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %multi_len103, align 4
  %add139 = add i32 %54, %i42.0798
  %arrayidx140 = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 18, i32 %add139
  %55 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %52, ptr %arrayidx140, align 1
  %inc142 = add nuw i32 %i42.0798, 1
  %exitcond.not = icmp eq i32 %inc142, %dec71
  br i1 %exitcond.not, label %for.body135.for.end143_crit_edge, label %for.body135.for.body135_crit_edge

for.body135.for.body135_crit_edge:                ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body135

for.body135.for.end143_crit_edge:                 ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end143

for.end143:                                       ; preds = %for.body135.for.end143_crit_edge, %for.cond132.preheader.for.end143_crit_edge
  %56 = ptrtoint ptr %multi_len103 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %multi_len103, align 4
  %add145 = add i32 %57, %dec71
  store i32 %add145, ptr %multi_len103, align 4
  br i1 %cmp73.not, label %if.then149, label %if.else153

if.then149:                                       ; preds = %for.end143
  call void @__sanitizer_cov_trace_pc() #14
  %data151 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 18
  br label %continue_op

if.else153:                                       ; preds = %for.end143
  %add155 = add nuw nsw i32 %conv72, 1
  %58 = ptrtoint ptr %multi_pos39 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %multi_pos39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add155, i32 %59)
  %cmp157.not = icmp eq i32 %add155, %59
  br i1 %cmp157.not, label %cleanup.thread753, label %if.then159

if.then159:                                       ; preds = %if.else153
  %ssif_debug160 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 5
  %60 = ptrtoint ptr %ssif_debug160 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ssif_debug160, align 4
  %and161 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %if.then159.if.then200_crit_edge, label %do.body164

if.then159.if.then200_crit_edge:                  ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then200

do.body164:                                       ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msg_done_handler.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msg_done_handler, %if.then176)) #12
          to label %if.then200 [label %if.then176], !srcloc !337

if.then176:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #14
  %client177 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 21
  %62 = ptrtoint ptr %client177 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %client177, align 4
  %dev178 = getelementptr inbounds %struct.i2c_client, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %multi_pos39 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %multi_pos39, align 4
  %sub180 = add i32 %65, -1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msg_done_handler.__UNIQUE_ID_ddebug292, ptr noundef %dev178, ptr noundef nonnull @.str.73, i32 noundef %sub180, i32 noundef %conv72) #12
  br label %if.then200

cleanup.thread753:                                ; preds = %if.else153
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx188 = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 42, i32 5
  %call.i.i715 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx188, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx188, i32 1, i32 3, i32 1) #12
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx188, ptr %arrayidx188, i32 1, ptr elementtype(i32) %arrayidx188) #12, !srcloc !338
  %67 = ptrtoint ptr %multi_pos39 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %multi_pos39, align 4
  %inc190 = add i32 %68, 1
  store i32 %inc190, ptr %multi_pos39, align 4
  %recv191 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 20
  %done_handler.i729 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 22
  %69 = ptrtoint ptr %done_handler.i729 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @msg_done_handler, ptr %done_handler.i729, align 4
  %i2c_read_write.i730 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 26
  %70 = ptrtoint ptr %i2c_read_write.i730 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %i2c_read_write.i730, align 4
  %i2c_command.i731 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 27
  %71 = ptrtoint ptr %i2c_command.i731 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 9, ptr %i2c_command.i731, align 4
  %i2c_data.i732 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 28
  %72 = ptrtoint ptr %i2c_data.i732 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %recv191, ptr %i2c_data.i732, align 4
  %i2c_size.i733 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 29
  %73 = ptrtoint ptr %i2c_size.i733 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 5, ptr %i2c_size.i733, align 4
  %wake_thread.i734 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 24
  tail call void @complete(ptr noundef %wake_thread.i734) #12
  br label %cleanup499

continue_op:                                      ; preds = %if.then149, %do.body
  %len.addr.2 = phi i32 [ 0, %do.body ], [ %add145, %if.then149 ]
  %data.addr.2 = phi ptr [ %data, %do.body ], [ %data151, %if.then149 ]
  br i1 %cmp, label %continue_op.if.then200_crit_edge, label %continue_op.if.else203_crit_edge

continue_op.if.else203_crit_edge:                 ; preds = %continue_op
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else203

continue_op.if.then200_crit_edge:                 ; preds = %continue_op
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then200

if.then200:                                       ; preds = %continue_op.if.then200_crit_edge, %if.then176, %do.body164, %if.then159.if.then200_crit_edge, %if.then124, %do.body112, %if.then107.if.then200_crit_edge, %if.then95, %do.body83, %if.then78.if.then200_crit_edge, %if.then62, %do.body50, %if.then45.if.then200_crit_edge, %if.then15, %if.end6.if.then200_crit_edge
  %result.addr.2768 = phi i32 [ %result, %continue_op.if.then200_crit_edge ], [ -5, %if.then62 ], [ -5, %if.then45.if.then200_crit_edge ], [ -5, %if.then95 ], [ -5, %if.then78.if.then200_crit_edge ], [ -7, %if.then124 ], [ -7, %if.then107.if.then200_crit_edge ], [ -5, %if.then176 ], [ -5, %if.then159.if.then200_crit_edge ], [ %result, %if.end6.if.then200_crit_edge ], [ %result, %if.then15 ], [ -5, %do.body50 ], [ -5, %do.body83 ], [ -7, %do.body112 ], [ -5, %do.body164 ]
  %data.addr.2765 = phi ptr [ %data.addr.2, %continue_op.if.then200_crit_edge ], [ %data, %if.then62 ], [ %data, %if.then45.if.then200_crit_edge ], [ %incdec.ptr, %if.then95 ], [ %incdec.ptr, %if.then78.if.then200_crit_edge ], [ %incdec.ptr, %if.then124 ], [ %incdec.ptr, %if.then107.if.then200_crit_edge ], [ %incdec.ptr, %if.then176 ], [ %incdec.ptr, %if.then159.if.then200_crit_edge ], [ %data, %if.end6.if.then200_crit_edge ], [ %data, %if.then15 ], [ %data, %do.body50 ], [ %incdec.ptr, %do.body83 ], [ %incdec.ptr, %do.body112 ], [ %incdec.ptr, %do.body164 ]
  %len.addr.2763 = phi i32 [ %len.addr.2, %continue_op.if.then200_crit_edge ], [ 0, %if.then62 ], [ 0, %if.then45.if.then200_crit_edge ], [ %dec71, %if.then95 ], [ %dec71, %if.then78.if.then200_crit_edge ], [ %dec71, %if.then124 ], [ %dec71, %if.then107.if.then200_crit_edge ], [ %dec71, %if.then176 ], [ %dec71, %if.then159.if.then200_crit_edge ], [ 0, %if.end6.if.then200_crit_edge ], [ 0, %if.then15 ], [ 0, %do.body50 ], [ %dec71, %do.body83 ], [ %dec71, %do.body112 ], [ %dec71, %do.body164 ]
  %arrayidx202 = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 42, i32 7
  %call.i.i716 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx202, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx202, i32 1, i32 3, i32 1) #12
  %74 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx202, ptr %arrayidx202, i32 1, ptr elementtype(i32) %arrayidx202) #12, !srcloc !338
  br label %if.end208

if.else203:                                       ; preds = %continue_op.if.else203_crit_edge, %if.else.if.else203_crit_edge
  %data.addr.2778 = phi ptr [ %data.addr.2, %continue_op.if.else203_crit_edge ], [ %data, %if.else.if.else203_crit_edge ]
  %len.addr.2777 = phi i32 [ %len.addr.2, %continue_op.if.else203_crit_edge ], [ %len, %if.else.if.else203_crit_edge ]
  %arrayidx205 = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 42, i32 4
  %call.i.i717 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx205, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx205, i32 1, i32 3, i32 1) #12
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx205, ptr %arrayidx205, i32 1, ptr elementtype(i32) %arrayidx205) #12, !srcloc !338
  %arrayidx207 = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 42, i32 5
  %call.i.i718 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx207, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx207, i32 1, i32 3, i32 1) #12
  %76 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx207, ptr %arrayidx207, i32 1, ptr elementtype(i32) %arrayidx207) #12, !srcloc !338
  br label %if.end208

if.end208:                                        ; preds = %if.else203, %if.then200
  %cmp198770 = phi i1 [ false, %if.else203 ], [ true, %if.then200 ]
  %result.addr.2767 = phi i32 [ %result, %if.else203 ], [ %result.addr.2768, %if.then200 ]
  %data.addr.2764 = phi ptr [ %data.addr.2778, %if.else203 ], [ %data.addr.2765, %if.then200 ]
  %len.addr.2762 = phi i32 [ %len.addr.2777, %if.else203 ], [ %len.addr.2763, %if.then200 ]
  %ssif_debug209 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 5
  %77 = ptrtoint ptr %ssif_debug209 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ssif_debug209, align 4
  %and210 = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210)
  %tobool211.not = icmp eq i32 %and210, 0
  br i1 %tobool211.not, label %if.end208.if.end231_crit_edge, label %do.body213

if.end208.if.end231_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end231

do.body213:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msg_done_handler.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msg_done_handler, %if.then225)) #12
          to label %if.end231 [label %if.then225], !srcloc !337

if.then225:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #14
  %client226 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 21
  %79 = ptrtoint ptr %client226 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %client226, align 4
  %dev227 = getelementptr inbounds %struct.i2c_client, ptr %80, i32 0, i32 4
  %ssif_state = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 4
  %81 = ptrtoint ptr %ssif_state to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ssif_state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msg_done_handler.__UNIQUE_ID_ddebug293, ptr noundef %dev227, ptr noundef nonnull @.str.74, i32 noundef %82, i32 noundef %result.addr.2767) #12
  br label %if.end231

if.end231:                                        ; preds = %if.then225, %do.body213, %if.end208.if.end231_crit_edge
  %lock.i735 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 1
  %call2.i736 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i735) #12
  %83 = ptrtoint ptr %oflags to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %call2.i736, ptr %oflags, align 4
  %curr_msg = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 3
  %84 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %curr_msg, align 4
  %tobool233.not = icmp eq ptr %85, null
  br i1 %tobool233.not, label %if.end231.if.end245_crit_edge, label %if.then234

if.end231.if.end245_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end245

if.then234:                                       ; preds = %if.end231
  %tobool235.not = icmp eq ptr %data.addr.2764, null
  br i1 %tobool235.not, label %if.then234.if.end243_crit_edge, label %if.then236

if.then234.if.end243_crit_edge:                   ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end243

if.then236:                                       ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #14
  %86 = tail call i32 @llvm.umin.i32(i32 %len.addr.2762, i32 272)
  %rsp = getelementptr inbounds %struct.ipmi_smi_msg, ptr %85, i32 0, i32 7
  %87 = call ptr @memcpy(ptr %rsp, ptr %data.addr.2764, i32 %86)
  br label %if.end243

if.end243:                                        ; preds = %if.then236, %if.then234.if.end243_crit_edge
  %len.addr.4 = phi i32 [ %86, %if.then236 ], [ 0, %if.then234.if.end243_crit_edge ]
  %rsp_size = getelementptr inbounds %struct.ipmi_smi_msg, ptr %85, i32 0, i32 6
  %88 = ptrtoint ptr %rsp_size to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %len.addr.4, ptr %rsp_size, align 4
  %89 = ptrtoint ptr %curr_msg to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %curr_msg, align 4
  br label %if.end245

if.end245:                                        ; preds = %if.end243, %if.end231.if.end245_crit_edge
  %len.addr.5 = phi i32 [ %len.addr.4, %if.end243 ], [ %len.addr.2762, %if.end231.if.end245_crit_edge ]
  %ssif_state246 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 4
  %90 = ptrtoint ptr %ssif_state246 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ssif_state246, align 4
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %91, label %if.end245.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb255
    i32 3, label %sw.bb302
    i32 2, label %sw.bb350
    i32 4, label %sw.bb401
  ]

if.end245.sw.epilog_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end245
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i735, i32 noundef %call2.i736) #12
  br i1 %tobool233.not, label %sw.bb.sw.epilog_crit_edge, label %if.end249

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end249:                                        ; preds = %sw.bb
  br i1 %cmp198770, label %if.then252, label %if.else253

if.then252:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 42, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #12
  %93 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #12, !srcloc !338
  %data.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %85, i32 0, i32 5
  %94 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %data.i, align 4
  %96 = or i8 %95, 4
  %rsp.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %85, i32 0, i32 7
  %97 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %rsp.i, align 4
  %arrayidx5.i = getelementptr %struct.ipmi_smi_msg, ptr %85, i32 0, i32 5, i32 1
  %98 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx5.i, align 1
  %arrayidx7.i = getelementptr %struct.ipmi_smi_msg, ptr %85, i32 0, i32 7, i32 1
  %100 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.ipmi_smi_msg, ptr %85, i32 0, i32 7, i32 2
  %101 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -1, ptr %arrayidx9.i, align 2
  %rsp_size.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %85, i32 0, i32 6
  %102 = ptrtoint ptr %rsp_size.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 3, ptr %rsp_size.i, align 4
  %103 = ptrtoint ptr %ssif_info to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ssif_info, align 4
  tail call void @ipmi_smi_msg_received(ptr noundef %104, ptr noundef nonnull %85) #12
  br label %sw.epilog

if.else253:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @deliver_recv_msg(ptr noundef %ssif_info, ptr noundef nonnull %85)
  br label %sw.epilog

sw.bb255:                                         ; preds = %if.end245
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.addr.5)
  %cmp258 = icmp ult i32 %len.addr.5, 4
  %or.cond697 = select i1 %cmp198770, i1 true, i1 %cmp258
  br i1 %or.cond697, label %sw.bb255.if.then265_crit_edge, label %lor.lhs.false260

sw.bb255.if.then265_crit_edge:                    ; preds = %sw.bb255
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then265

lor.lhs.false260:                                 ; preds = %sw.bb255
  %arrayidx261 = getelementptr i8, ptr %data.addr.2764, i32 2
  %105 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx261, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp263.not = icmp eq i8 %106, 0
  br i1 %cmp263.not, label %if.else276, label %lor.lhs.false260.if.then265_crit_edge

lor.lhs.false260.if.then265_crit_edge:            ; preds = %lor.lhs.false260
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then265

if.then265:                                       ; preds = %lor.lhs.false260.if.then265_crit_edge, %sw.bb255.if.then265_crit_edge
  %107 = ptrtoint ptr %ssif_state246 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %ssif_state246, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i735, i32 noundef %call2.i736) #12
  %client270 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 21
  %108 = ptrtoint ptr %client270 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %client270, align 4
  %dev271 = getelementptr inbounds %struct.i2c_client, ptr %109, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.addr.5)
  %cmp272 = icmp ugt i32 %len.addr.5, 2
  br i1 %cmp272, label %cond.true, label %if.then265.cond.end_crit_edge

if.then265.cond.end_crit_edge:                    ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx274 = getelementptr i8, ptr %data.addr.2764, i32 2
  %110 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx274, align 1
  %conv275 = zext i8 %111 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then265.cond.end_crit_edge
  %cond = phi i32 [ %conv275, %cond.true ], [ 0, %if.then265.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev271, ptr noundef nonnull @.str.75, i32 noundef %result.addr.2767, i32 noundef %len.addr.5, i32 noundef %cond) #15
  br label %sw.epilog

if.else276:                                       ; preds = %lor.lhs.false260
  %112 = ptrtoint ptr %data.addr.2764 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %data.addr.2764, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %113)
  %cmp279.not = icmp eq i8 %113, 28
  br i1 %cmp279.not, label %lor.lhs.false281, label %if.else276.if.then286_crit_edge

if.else276.if.then286_crit_edge:                  ; preds = %if.else276
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then286

lor.lhs.false281:                                 ; preds = %if.else276
  %arrayidx282 = getelementptr i8, ptr %data.addr.2764, i32 1
  %114 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx282, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %115)
  %cmp284.not = icmp eq i8 %115, 49
  br i1 %cmp284.not, label %if.else296, label %lor.lhs.false281.if.then286_crit_edge

lor.lhs.false281.if.then286_crit_edge:            ; preds = %lor.lhs.false281
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then286

if.then286:                                       ; preds = %lor.lhs.false281.if.then286_crit_edge, %if.else276.if.then286_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i735, i32 noundef %call2.i736) #12
  %client290 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 21
  %116 = ptrtoint ptr %client290 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %client290, align 4
  %dev291 = getelementptr inbounds %struct.i2c_client, ptr %117, i32 0, i32 4
  %118 = ptrtoint ptr %data.addr.2764 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %data.addr.2764, align 1
  %conv293 = zext i8 %119 to i32
  %arrayidx294 = getelementptr i8, ptr %data.addr.2764, i32 1
  %120 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx294, align 1
  %conv295 = zext i8 %121 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev291, ptr noundef nonnull @.str.77, i32 noundef %conv293, i32 noundef %conv295) #15
  br label %sw.epilog

if.else296:                                       ; preds = %lor.lhs.false281
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx298 = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 42, i32 8
  %call.i.i722 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx298, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx298, i32 1, i32 3, i32 1) #12
  %122 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx298, ptr %arrayidx298, i32 1, ptr elementtype(i32) %arrayidx298) #12, !srcloc !338
  %arrayidx299 = getelementptr i8, ptr %data.addr.2764, i32 3
  %123 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx299, align 1
  %msg_flags = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 9
  %125 = ptrtoint ptr %msg_flags to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %msg_flags, align 4
  call fastcc void @handle_flags(ptr noundef %ssif_info, ptr noundef nonnull %oflags)
  br label %sw.epilog

sw.bb302:                                         ; preds = %if.end245
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len.addr.5)
  %cmp306 = icmp ult i32 %len.addr.5, 3
  %or.cond698 = select i1 %cmp198770, i1 true, i1 %cmp306
  br i1 %or.cond698, label %do.end316, label %lor.lhs.false308

lor.lhs.false308:                                 ; preds = %sw.bb302
  %arrayidx309 = getelementptr i8, ptr %data.addr.2764, i32 2
  %126 = ptrtoint ptr %arrayidx309 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx309, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %cmp311.not = icmp eq i8 %127, 0
  br i1 %cmp311.not, label %if.else327, label %do.end316.thread

do.end316.thread:                                 ; preds = %lor.lhs.false308
  call void @__sanitizer_cov_trace_pc() #14
  %client317782 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 21
  %128 = ptrtoint ptr %client317782 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %client317782, align 4
  %dev318783 = getelementptr inbounds %struct.i2c_client, ptr %129, i32 0, i32 4
  br label %cond.true321

do.end316:                                        ; preds = %sw.bb302
  %client317 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 21
  %130 = ptrtoint ptr %client317 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %client317, align 4
  %dev318 = getelementptr inbounds %struct.i2c_client, ptr %131, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.addr.5)
  %cmp319 = icmp ugt i32 %len.addr.5, 2
  br i1 %cmp319, label %do.end316.cond.true321_crit_edge, label %do.end316.cond.end325_crit_edge

do.end316.cond.end325_crit_edge:                  ; preds = %do.end316
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end325

do.end316.cond.true321_crit_edge:                 ; preds = %do.end316
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true321

cond.true321:                                     ; preds = %do.end316.cond.true321_crit_edge, %do.end316.thread
  %dev318786 = phi ptr [ %dev318783, %do.end316.thread ], [ %dev318, %do.end316.cond.true321_crit_edge ]
  %arrayidx322 = getelementptr i8, ptr %data.addr.2764, i32 2
  %132 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx322, align 1
  %conv323 = zext i8 %133 to i32
  br label %cond.end325

cond.end325:                                      ; preds = %cond.true321, %do.end316.cond.end325_crit_edge
  %dev318785 = phi ptr [ %dev318786, %cond.true321 ], [ %dev318, %do.end316.cond.end325_crit_edge ]
  %cond326 = phi i32 [ %conv323, %cond.true321 ], [ 0, %do.end316.cond.end325_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev318785, ptr noundef nonnull @.str.80, i32 noundef %result.addr.2767, i32 noundef %len.addr.5, i32 noundef %cond326) #15
  br label %if.end348

if.else327:                                       ; preds = %lor.lhs.false308
  %134 = ptrtoint ptr %data.addr.2764 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %data.addr.2764, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %135)
  %cmp330.not = icmp eq i8 %135, 28
  br i1 %cmp330.not, label %lor.lhs.false332, label %if.else327.do.end340_crit_edge

if.else327.do.end340_crit_edge:                   ; preds = %if.else327
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end340

lor.lhs.false332:                                 ; preds = %if.else327
  %arrayidx333 = getelementptr i8, ptr %data.addr.2764, i32 1
  %136 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx333, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %137)
  %cmp335.not = icmp eq i8 %137, 48
  br i1 %cmp335.not, label %lor.lhs.false332.if.end348_crit_edge, label %lor.lhs.false332.do.end340_crit_edge

lor.lhs.false332.do.end340_crit_edge:             ; preds = %lor.lhs.false332
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end340

lor.lhs.false332.if.end348_crit_edge:             ; preds = %lor.lhs.false332
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end348

do.end340:                                        ; preds = %lor.lhs.false332.do.end340_crit_edge, %if.else327.do.end340_crit_edge
  %client341 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 21
  %138 = ptrtoint ptr %client341 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %client341, align 4
  %dev342 = getelementptr inbounds %struct.i2c_client, ptr %139, i32 0, i32 4
  %conv344 = zext i8 %135 to i32
  %arrayidx345 = getelementptr i8, ptr %data.addr.2764, i32 1
  %140 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx345, align 1
  %conv346 = zext i8 %141 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev342, ptr noundef nonnull @.str.83, i32 noundef %conv344, i32 noundef %conv346) #15
  br label %if.end348

if.end348:                                        ; preds = %do.end340, %lor.lhs.false332.if.end348_crit_edge, %cond.end325
  %142 = ptrtoint ptr %ssif_state246 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 0, ptr %ssif_state246, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i735, i32 noundef %call2.i736) #12
  br label %sw.epilog

sw.bb350:                                         ; preds = %if.end245
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len.addr.5)
  %cmp354 = icmp ult i32 %len.addr.5, 3
  %or.cond699 = select i1 %cmp198770, i1 true, i1 %cmp354
  br i1 %or.cond699, label %sw.bb350.if.then362_crit_edge, label %lor.lhs.false356

sw.bb350.if.then362_crit_edge:                    ; preds = %sw.bb350
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then362

lor.lhs.false356:                                 ; preds = %sw.bb350
  %arrayidx358 = getelementptr %struct.ipmi_smi_msg, ptr %85, i32 0, i32 7, i32 2
  %143 = ptrtoint ptr %arrayidx358 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx358, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %cmp360.not = icmp eq i8 %144, 0
  br i1 %cmp360.not, label %if.else367, label %lor.lhs.false356.if.then362_crit_edge

lor.lhs.false356.if.then362_crit_edge:            ; preds = %lor.lhs.false356
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then362

if.then362:                                       ; preds = %lor.lhs.false356.if.then362_crit_edge, %sw.bb350.if.then362_crit_edge
  %done = getelementptr inbounds %struct.ipmi_smi_msg, ptr %85, i32 0, i32 8
  %145 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %done, align 4
  tail call void %146(ptr noundef %85) #12
  %msg_flags363 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 9
  %147 = ptrtoint ptr %msg_flags363 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %msg_flags363, align 4
  %149 = and i8 %148, -3
  store i8 %149, ptr %msg_flags363, align 4
  call fastcc void @handle_flags(ptr noundef %ssif_info, ptr noundef nonnull %oflags)
  br label %sw.epilog

if.else367:                                       ; preds = %lor.lhs.false356
  %rsp357 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %85, i32 0, i32 7
  %150 = ptrtoint ptr %rsp357 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %rsp357, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %151)
  %cmp371.not = icmp eq i8 %151, 28
  br i1 %cmp371.not, label %lor.lhs.false373, label %if.else367.do.end382_crit_edge

if.else367.do.end382_crit_edge:                   ; preds = %if.else367
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end382

lor.lhs.false373:                                 ; preds = %if.else367
  %arrayidx375 = getelementptr %struct.ipmi_smi_msg, ptr %85, i32 0, i32 7, i32 1
  %152 = ptrtoint ptr %arrayidx375 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx375, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 53, i8 %153)
  %cmp377.not = icmp eq i8 %153, 53
  br i1 %cmp377.not, label %if.else396, label %lor.lhs.false373.do.end382_crit_edge

lor.lhs.false373.do.end382_crit_edge:             ; preds = %lor.lhs.false373
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end382

do.end382:                                        ; preds = %lor.lhs.false373.do.end382_crit_edge, %if.else367.do.end382_crit_edge
  %client383 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 21
  %154 = ptrtoint ptr %client383 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %client383, align 4
  %dev384 = getelementptr inbounds %struct.i2c_client, ptr %155, i32 0, i32 4
  %conv387 = zext i8 %151 to i32
  %arrayidx389 = getelementptr %struct.ipmi_smi_msg, ptr %85, i32 0, i32 7, i32 1
  %156 = ptrtoint ptr %arrayidx389 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx389, align 1
  %conv390 = zext i8 %157 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev384, ptr noundef nonnull @.str.86, i32 noundef %conv387, i32 noundef %conv390) #15
  %done391 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %85, i32 0, i32 8
  %158 = ptrtoint ptr %done391 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %done391, align 4
  tail call void %159(ptr noundef %85) #12
  %msg_flags392 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 9
  %160 = ptrtoint ptr %msg_flags392 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %msg_flags392, align 4
  %162 = and i8 %161, -3
  store i8 %162, ptr %msg_flags392, align 4
  call fastcc void @handle_flags(ptr noundef %ssif_info, ptr noundef nonnull %oflags)
  br label %sw.epilog

if.else396:                                       ; preds = %lor.lhs.false373
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @handle_flags(ptr noundef %ssif_info, ptr noundef nonnull %oflags)
  %arrayidx398 = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 42, i32 10
  %call.i.i723 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx398, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx398, i32 1, i32 3, i32 1) #12
  %163 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx398, ptr %arrayidx398, i32 1, ptr elementtype(i32) %arrayidx398) #12, !srcloc !338
  tail call fastcc void @deliver_recv_msg(ptr noundef %ssif_info, ptr noundef %85)
  br label %sw.epilog

sw.bb401:                                         ; preds = %if.end245
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len.addr.5)
  %cmp405 = icmp ult i32 %len.addr.5, 3
  %or.cond700 = select i1 %cmp198770, i1 true, i1 %cmp405
  br i1 %or.cond700, label %sw.bb401.if.then413_crit_edge, label %lor.lhs.false407

sw.bb401.if.then413_crit_edge:                    ; preds = %sw.bb401
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then413

lor.lhs.false407:                                 ; preds = %sw.bb401
  %arrayidx409 = getelementptr %struct.ipmi_smi_msg, ptr %85, i32 0, i32 7, i32 2
  %164 = ptrtoint ptr %arrayidx409 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx409, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %cmp411.not = icmp eq i8 %165, 0
  br i1 %cmp411.not, label %if.else419, label %lor.lhs.false407.if.then413_crit_edge

lor.lhs.false407.if.then413_crit_edge:            ; preds = %lor.lhs.false407
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then413

if.then413:                                       ; preds = %lor.lhs.false407.if.then413_crit_edge, %sw.bb401.if.then413_crit_edge
  %done414 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %85, i32 0, i32 8
  %166 = ptrtoint ptr %done414 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %done414, align 4
  tail call void %167(ptr noundef %85) #12
  %msg_flags415 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 9
  %168 = ptrtoint ptr %msg_flags415 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %msg_flags415, align 4
  %170 = and i8 %169, -2
  store i8 %170, ptr %msg_flags415, align 4
  call fastcc void @handle_flags(ptr noundef %ssif_info, ptr noundef nonnull %oflags)
  br label %sw.epilog

if.else419:                                       ; preds = %lor.lhs.false407
  %rsp408 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %85, i32 0, i32 7
  %171 = ptrtoint ptr %rsp408 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %rsp408, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %172)
  %cmp423.not = icmp eq i8 %172, 28
  br i1 %cmp423.not, label %lor.lhs.false425, label %if.else419.do.end434_crit_edge

if.else419.do.end434_crit_edge:                   ; preds = %if.else419
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end434

lor.lhs.false425:                                 ; preds = %if.else419
  %arrayidx427 = getelementptr %struct.ipmi_smi_msg, ptr %85, i32 0, i32 7, i32 1
  %173 = ptrtoint ptr %arrayidx427 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx427, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %174)
  %cmp429.not = icmp eq i8 %174, 51
  br i1 %cmp429.not, label %if.else448, label %lor.lhs.false425.do.end434_crit_edge

lor.lhs.false425.do.end434_crit_edge:             ; preds = %lor.lhs.false425
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end434

do.end434:                                        ; preds = %lor.lhs.false425.do.end434_crit_edge, %if.else419.do.end434_crit_edge
  %client435 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 21
  %175 = ptrtoint ptr %client435 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %client435, align 4
  %dev436 = getelementptr inbounds %struct.i2c_client, ptr %176, i32 0, i32 4
  %conv439 = zext i8 %172 to i32
  %arrayidx441 = getelementptr %struct.ipmi_smi_msg, ptr %85, i32 0, i32 7, i32 1
  %177 = ptrtoint ptr %arrayidx441 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx441, align 1
  %conv442 = zext i8 %178 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev436, ptr noundef nonnull @.str.83, i32 noundef %conv439, i32 noundef %conv442) #15
  %done443 = getelementptr inbounds %struct.ipmi_smi_msg, ptr %85, i32 0, i32 8
  %179 = ptrtoint ptr %done443 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %done443, align 4
  tail call void %180(ptr noundef %85) #12
  %msg_flags444 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 9
  %181 = ptrtoint ptr %msg_flags444 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %msg_flags444, align 4
  %183 = and i8 %182, -2
  store i8 %183, ptr %msg_flags444, align 4
  call fastcc void @handle_flags(ptr noundef %ssif_info, ptr noundef nonnull %oflags)
  br label %sw.epilog

if.else448:                                       ; preds = %lor.lhs.false425
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx450 = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 42, i32 11
  %call.i.i724 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx450, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx450, i32 1, i32 3, i32 1) #12
  %184 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx450, ptr %arrayidx450, i32 1, ptr elementtype(i32) %arrayidx450) #12, !srcloc !338
  call fastcc void @handle_flags(ptr noundef %ssif_info, ptr noundef nonnull %oflags)
  tail call fastcc void @deliver_recv_msg(ptr noundef %ssif_info, ptr noundef %85)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else448, %do.end434, %if.then413, %if.else396, %do.end382, %if.then362, %if.end348, %if.else296, %if.then286, %cond.end, %if.else253, %if.then252, %sw.bb.sw.epilog_crit_edge, %if.end245.sw.epilog_crit_edge
  %call2.i742 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i735) #12
  %185 = ptrtoint ptr %oflags to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %call2.i742, ptr %oflags, align 4
  %186 = ptrtoint ptr %ssif_state246 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %ssif_state246, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %cmp455 = icmp eq i32 %187, 0
  br i1 %cmp455, label %land.lhs.true457, label %sw.epilog.if.else473_crit_edge

sw.epilog.if.else473_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else473

land.lhs.true457:                                 ; preds = %sw.epilog
  %188 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %curr_msg, align 4
  %cmp459 = icmp eq ptr %189, null
  br i1 %cmp459, label %land.lhs.true461, label %land.lhs.true457.if.else473_crit_edge

land.lhs.true457.if.else473_crit_edge:            ; preds = %land.lhs.true457
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else473

land.lhs.true461:                                 ; preds = %land.lhs.true457
  %stopping462 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 25
  %190 = ptrtoint ptr %stopping462 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %stopping462, align 4, !range !334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool463.not = icmp eq i8 %191, 0
  br i1 %tobool463.not, label %if.then464, label %land.lhs.true461.if.else473_crit_edge

land.lhs.true461.if.else473_crit_edge:            ; preds = %land.lhs.true461
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else473

if.then464:                                       ; preds = %land.lhs.true461
  %req_events = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 15
  %192 = ptrtoint ptr %req_events to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %req_events, align 2, !range !334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool465.not = icmp eq i8 %193, 0
  br i1 %tobool465.not, label %if.else467, label %if.then466

if.then466:                                       ; preds = %if.then464
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @start_event_fetch(ptr noundef %ssif_info, ptr noundef nonnull %oflags)
  br label %if.end474

if.else467:                                       ; preds = %if.then464
  %req_flags = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 16
  %194 = ptrtoint ptr %req_flags to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %req_flags, align 1, !range !334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool468.not = icmp eq i8 %195, 0
  br i1 %tobool468.not, label %if.else470, label %if.then469

if.then469:                                       ; preds = %if.else467
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @start_flag_fetch(ptr noundef %ssif_info, ptr noundef nonnull %oflags)
  br label %if.end474

if.else470:                                       ; preds = %if.else467
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @start_next_msg(ptr noundef %ssif_info, ptr noundef nonnull %oflags)
  br label %if.end474

if.else473:                                       ; preds = %land.lhs.true461.if.else473_crit_edge, %land.lhs.true457.if.else473_crit_edge, %sw.epilog.if.else473_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i735, i32 noundef %call2.i742) #12
  br label %if.end474

if.end474:                                        ; preds = %if.else473, %if.else470, %if.then469, %if.then466
  %196 = ptrtoint ptr %ssif_debug209 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %ssif_debug209, align 4
  %and476 = and i32 %197, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and476)
  %tobool477.not = icmp eq i32 %and476, 0
  br i1 %tobool477.not, label %if.end474.cleanup499_crit_edge, label %do.body479

if.end474.cleanup499_crit_edge:                   ; preds = %if.end474
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup499

do.body479:                                       ; preds = %if.end474
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msg_done_handler.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msg_done_handler, %if.then491)) #12
          to label %cleanup499 [label %if.then491], !srcloc !337

if.then491:                                       ; preds = %do.body479
  call void @__sanitizer_cov_trace_pc() #14
  %client492 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 21
  %198 = ptrtoint ptr %client492 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %client492, align 4
  %dev493 = getelementptr inbounds %struct.i2c_client, ptr %199, i32 0, i32 4
  %200 = ptrtoint ptr %ssif_state246 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %ssif_state246, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msg_done_handler.__UNIQUE_ID_ddebug294, ptr noundef %dev493, ptr noundef nonnull @.str.90, i32 noundef %201) #12
  br label %cleanup499

cleanup499:                                       ; preds = %if.then491, %do.body479, %if.end474.cleanup499_crit_edge, %cleanup.thread753, %for.end, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oflags) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @deliver_recv_msg(ptr noundef %ssif_info, ptr noundef %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rsp_size = getelementptr inbounds %struct.ipmi_smi_msg, ptr %msg, i32 0, i32 6
  %0 = ptrtoint ptr %rsp_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rsp_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 42, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #12, !srcloc !338
  %data.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %msg, i32 0, i32 5
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data.i, align 4
  %5 = or i8 %4, 4
  %rsp.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %msg, i32 0, i32 7
  %6 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %rsp.i, align 4
  %arrayidx5.i = getelementptr %struct.ipmi_smi_msg, ptr %msg, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx5.i, align 1
  %arrayidx7.i = getelementptr %struct.ipmi_smi_msg, ptr %msg, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.ipmi_smi_msg, ptr %msg, i32 0, i32 7, i32 2
  %10 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %arrayidx9.i, align 2
  %11 = ptrtoint ptr %rsp_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %rsp_size, align 4
  %12 = ptrtoint ptr %ssif_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ssif_info, align 4
  tail call void @ipmi_smi_msg_received(ptr noundef %13, ptr noundef %msg) #12
  %client = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 21
  %14 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %rsp_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rsp_size, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, i32 noundef %17) #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %ssif_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ssif_info, align 4
  tail call void @ipmi_smi_msg_received(ptr noundef %19, ptr noundef %msg) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_flags(ptr noundef %ssif_info, ptr nocapture noundef readonly %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_flags = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 9
  %0 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msg_flags, align 4
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 42, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #12, !srcloc !338
  %3 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %msg_flags, align 4
  %5 = and i8 %4, -9
  store i8 %5, ptr %msg_flags, align 4
  %ssif_state.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 4
  %6 = ptrtoint ptr %ssif_state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %ssif_state.i, align 4
  %lock.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %8) #12
  %max_xmit_msg_size.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 34
  %9 = ptrtoint ptr %max_xmit_msg_size.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %max_xmit_msg_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp1.i.i = icmp ult i8 %10, 3
  br i1 %cmp1.i.i, label %if.then.i, label %start_send.exit.thread.i

start_send.exit.thread.i:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %retries_left.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 31
  %11 = ptrtoint ptr %retries_left.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5, ptr %retries_left.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 18, i32 1
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 24, ptr %add.ptr.i.i, align 1
  %msg.sroa.5.0.add.ptr.i.sroa_idx.i = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 18, i32 2
  %13 = ptrtoint ptr %msg.sroa.5.0.add.ptr.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 48, ptr %msg.sroa.5.0.add.ptr.i.sroa_idx.i, align 1
  %msg.sroa.7.0.add.ptr.i.sroa_idx.i = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 18, i32 3
  %14 = ptrtoint ptr %msg.sroa.7.0.add.ptr.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %msg.sroa.7.0.add.ptr.i.sroa_idx.i, align 1
  %data_len.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 19
  %15 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %data_len.i.i, align 4
  %got_alert.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 13
  %16 = ptrtoint ptr %got_alert.i.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %got_alert.i.i.i, align 4
  %multi_data3.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 39
  %17 = ptrtoint ptr %multi_data3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %multi_data3.i.i.i, align 4
  %data5.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 18
  %18 = ptrtoint ptr %data5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %data5.i.i.i, align 4
  %done_handler.i.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 22
  %19 = ptrtoint ptr %done_handler.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @msg_written_handler, ptr %done_handler.i.i.i.i, align 4
  %i2c_read_write.i.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 26
  %20 = ptrtoint ptr %i2c_read_write.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %i2c_read_write.i.i.i.i, align 4
  %i2c_command.i.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 27
  %21 = ptrtoint ptr %i2c_command.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %i2c_command.i.i.i.i, align 4
  %i2c_data.i.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 28
  %22 = ptrtoint ptr %i2c_data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %data5.i.i.i, ptr %i2c_data.i.i.i.i, align 4
  %i2c_size.i.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 29
  %23 = ptrtoint ptr %i2c_size.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 5, ptr %i2c_size.i.i.i.i, align 4
  %wake_thread.i.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 24
  tail call void @complete(ptr noundef %wake_thread.i.i.i.i) #12
  br label %start_clear_flags.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %ssif_state.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %ssif_state.i, align 4
  br label %start_clear_flags.exit

start_clear_flags.exit:                           ; preds = %if.then.i, %start_send.exit.thread.i
  %25 = ptrtoint ptr %ssif_info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ssif_info, align 4
  tail call void @ipmi_smi_watchdog_pretimeout(ptr noundef %26) #12
  br label %if.end14

if.else:                                          ; preds = %entry
  %and3 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else6, label %if.then5

if.then5:                                         ; preds = %if.else
  %call.i = tail call ptr @ipmi_alloc_smi_msg() #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i29, label %if.end.i.i.i

if.then.i29:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %ssif_state.i27 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 4
  %27 = ptrtoint ptr %ssif_state.i27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ssif_state.i27, align 4
  %lock.i.i28 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 1
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i28, i32 noundef %29) #12
  br label %if.end14

if.end.i.i.i:                                     ; preds = %if.then5
  %curr_msg.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 3
  %30 = ptrtoint ptr %curr_msg.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %curr_msg.i, align 4
  %ssif_state1.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 4
  %31 = ptrtoint ptr %ssif_state1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %ssif_state1.i, align 4
  %lock.i16.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 1
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i16.i, i32 noundef %33) #12
  %data.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %call.i, i32 0, i32 5
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 24, ptr %data.i, align 4
  %arrayidx3.i = getelementptr %struct.ipmi_smi_msg, ptr %call.i, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 51, ptr %arrayidx3.i, align 1
  %data_size.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %data_size.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %data_size.i, align 4
  %max_xmit_msg_size.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 34
  %37 = ptrtoint ptr %max_xmit_msg_size.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %max_xmit_msg_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %38)
  %cmp1.i.i.i = icmp ult i8 %38, 2
  br i1 %cmp1.i.i.i, label %if.then.i.i, label %start_send.exit.i.i

start_send.exit.i.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %retries_left.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 31
  %39 = ptrtoint ptr %retries_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 5, ptr %retries_left.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 18, i32 1
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %data.i, align 1
  %42 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %41, ptr %add.ptr.i.i.i, align 1
  %data_len.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 19
  %43 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %data_len.i.i.i, align 4
  %got_alert.i.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 13
  %44 = ptrtoint ptr %got_alert.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %got_alert.i.i.i.i, align 4
  %multi_data3.i.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 39
  %45 = ptrtoint ptr %multi_data3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %multi_data3.i.i.i.i, align 4
  %data5.i.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 18
  %46 = ptrtoint ptr %data5.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 2, ptr %data5.i.i.i.i, align 4
  %done_handler.i.i.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 22
  %47 = ptrtoint ptr %done_handler.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @msg_written_handler, ptr %done_handler.i.i.i.i.i, align 4
  %i2c_read_write.i.i.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 26
  %48 = ptrtoint ptr %i2c_read_write.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %i2c_read_write.i.i.i.i.i, align 4
  %i2c_command.i.i.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 27
  %49 = ptrtoint ptr %i2c_command.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %i2c_command.i.i.i.i.i, align 4
  %i2c_data.i.i.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 28
  %50 = ptrtoint ptr %i2c_data.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %data5.i.i.i.i, ptr %i2c_data.i.i.i.i.i, align 4
  %i2c_size.i.i.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 29
  %51 = ptrtoint ptr %i2c_size.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 5, ptr %i2c_size.i.i.i.i.i, align 4
  %wake_thread.i.i.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 24
  tail call void @complete(ptr noundef %wake_thread.i.i.i.i.i) #12
  br label %if.end14

if.then.i.i:                                      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i16.i) #12
  %52 = ptrtoint ptr %curr_msg.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %curr_msg.i, align 4
  %53 = ptrtoint ptr %ssif_state1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %ssif_state1.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i16.i, i32 noundef %call2.i.i.i) #12
  %done.i.i.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %call.i, i32 0, i32 8
  %54 = ptrtoint ptr %done.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %done.i.i.i, align 4
  tail call void %55(ptr noundef nonnull %call.i) #12
  br label %if.end14

if.else6:                                         ; preds = %if.else
  %and9 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else12, label %if.then11

if.then11:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @start_event_fetch(ptr noundef %ssif_info, ptr noundef %flags)
  br label %if.end14

if.else12:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #14
  %ssif_state = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 4
  %56 = ptrtoint ptr %ssif_state to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %ssif_state, align 4
  %lock.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 1
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %58) #12
  br label %if.end14

if.end14:                                         ; preds = %if.else12, %if.then11, %if.then.i.i, %start_send.exit.i.i, %if.then.i29, %start_clear_flags.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_event_fetch(ptr noundef %ssif_info, ptr nocapture noundef readonly %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %req_events = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 15
  %0 = ptrtoint ptr %req_events to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %req_events, align 2
  %call = tail call ptr @ipmi_alloc_smi_msg() #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end.i.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ssif_state = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 4
  %1 = ptrtoint ptr %ssif_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ssif_state, align 4
  %lock.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %3) #12
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %curr_msg = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 3
  %4 = ptrtoint ptr %curr_msg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %curr_msg, align 4
  %ssif_state1 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 4
  %5 = ptrtoint ptr %ssif_state1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %ssif_state1, align 4
  %lock.i17 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i17, i32 noundef %7) #12
  %data = getelementptr inbounds %struct.ipmi_smi_msg, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 24, ptr %data, align 4
  %arrayidx3 = getelementptr %struct.ipmi_smi_msg, ptr %call, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 53, ptr %arrayidx3, align 1
  %data_size = getelementptr inbounds %struct.ipmi_smi_msg, ptr %call, i32 0, i32 4
  %10 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %data_size, align 4
  %max_xmit_msg_size.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 34
  %11 = ptrtoint ptr %max_xmit_msg_size.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %max_xmit_msg_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp1.i.i = icmp ult i8 %12, 2
  br i1 %cmp1.i.i, label %if.then.i, label %start_send.exit.i

start_send.exit.i:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %retries_left.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 31
  %13 = ptrtoint ptr %retries_left.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5, ptr %retries_left.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %data, align 1
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %add.ptr.i.i, align 1
  %data_len.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 19
  %17 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %data_len.i.i, align 4
  %got_alert.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 13
  %18 = ptrtoint ptr %got_alert.i.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %got_alert.i.i.i, align 4
  %multi_data3.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 39
  %19 = ptrtoint ptr %multi_data3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %multi_data3.i.i.i, align 4
  %data5.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 18
  %20 = ptrtoint ptr %data5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %data5.i.i.i, align 4
  %done_handler.i.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 22
  %21 = ptrtoint ptr %done_handler.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @msg_written_handler, ptr %done_handler.i.i.i.i, align 4
  %i2c_read_write.i.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 26
  %22 = ptrtoint ptr %i2c_read_write.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %i2c_read_write.i.i.i.i, align 4
  %i2c_command.i.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 27
  %23 = ptrtoint ptr %i2c_command.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %i2c_command.i.i.i.i, align 4
  %i2c_data.i.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 28
  %24 = ptrtoint ptr %i2c_data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %data5.i.i.i, ptr %i2c_data.i.i.i.i, align 4
  %i2c_size.i.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 29
  %25 = ptrtoint ptr %i2c_size.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 5, ptr %i2c_size.i.i.i.i, align 4
  %wake_thread.i.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 24
  tail call void @complete(ptr noundef %wake_thread.i.i.i.i) #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i17) #12
  %26 = ptrtoint ptr %curr_msg to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %curr_msg, align 4
  %27 = ptrtoint ptr %ssif_state1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %ssif_state1, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i17, i32 noundef %call2.i.i) #12
  %done.i.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %call, i32 0, i32 8
  %28 = ptrtoint ptr %done.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %done.i.i, align 4
  tail call void %29(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %start_send.exit.i, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_flag_fetch(ptr noundef %ssif_info, ptr nocapture noundef readonly %flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %req_flags = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 16
  %0 = ptrtoint ptr %req_flags to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %req_flags, align 1
  %ssif_state = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 4
  %1 = ptrtoint ptr %ssif_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %ssif_state, align 4
  %lock.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %3) #12
  %max_xmit_msg_size.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 34
  %4 = ptrtoint ptr %max_xmit_msg_size.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_xmit_msg_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp1.i = icmp ult i8 %5, 2
  br i1 %cmp1.i, label %if.then, label %start_send.exit.thread

start_send.exit.thread:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %retries_left.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 31
  %6 = ptrtoint ptr %retries_left.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %retries_left.i, align 4
  %add.ptr.i = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 18, i32 1
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 24, ptr %add.ptr.i, align 1
  %mb.sroa.5.0.add.ptr.i.sroa_idx = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 18, i32 2
  %8 = ptrtoint ptr %mb.sroa.5.0.add.ptr.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 49, ptr %mb.sroa.5.0.add.ptr.i.sroa_idx, align 1
  %data_len.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 19
  %9 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %data_len.i, align 4
  %got_alert.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 13
  %10 = ptrtoint ptr %got_alert.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %got_alert.i.i, align 4
  %multi_data3.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 39
  %11 = ptrtoint ptr %multi_data3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %multi_data3.i.i, align 4
  %data5.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 18
  %12 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %data5.i.i, align 4
  %done_handler.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 22
  %13 = ptrtoint ptr %done_handler.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @msg_written_handler, ptr %done_handler.i.i.i, align 4
  %i2c_read_write.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 26
  %14 = ptrtoint ptr %i2c_read_write.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %i2c_read_write.i.i.i, align 4
  %i2c_command.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 27
  %15 = ptrtoint ptr %i2c_command.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %i2c_command.i.i.i, align 4
  %i2c_data.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 28
  %16 = ptrtoint ptr %i2c_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %data5.i.i, ptr %i2c_data.i.i.i, align 4
  %i2c_size.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 29
  %17 = ptrtoint ptr %i2c_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5, ptr %i2c_size.i.i.i, align 4
  %wake_thread.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 24
  tail call void @complete(ptr noundef %wake_thread.i.i.i) #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %ssif_state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %ssif_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %start_send.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_next_msg(ptr noundef %ssif_info, ptr nocapture noundef readonly %flags) unnamed_addr #0 align 64 {
entry:
  %oflags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oflags)
  %ssif_state = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 4
  %0 = ptrtoint ptr %oflags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %oflags, align 4
  %1 = ptrtoint ptr %ssif_state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ssif_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp50 = icmp eq i32 %2, 0
  br i1 %cmp50, label %land.lhs.true.lr.ph, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.lhs.true.lr.ph:                              ; preds = %entry
  %curr_msg = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 3
  %waiting_msg = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 2
  %lock.i39 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 1
  %max_xmit_msg_size.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 34
  %arrayidx.i = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 42, i32 9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cleanup.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %flags.addr.051 = phi ptr [ %flags, %land.lhs.true.lr.ph ], [ %oflags, %cleanup.land.lhs.true_crit_edge ]
  %3 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %curr_msg, align 4
  %cmp1 = icmp eq ptr %4, null
  br i1 %cmp1, label %if.end, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %cleanup.if.then_crit_edge, %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %flags.addr.0.lcssa = phi ptr [ %flags, %entry.if.then_crit_edge ], [ %flags.addr.051, %land.lhs.true.if.then_crit_edge ], [ %oflags, %cleanup.if.then_crit_edge ]
  %lock.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 1
  %5 = ptrtoint ptr %flags.addr.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.addr.0.lcssa, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %6) #12
  br label %cleanup16

if.end:                                           ; preds = %land.lhs.true
  %7 = ptrtoint ptr %waiting_msg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %waiting_msg, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %curr_msg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %curr_msg, align 4
  %10 = ptrtoint ptr %flags.addr.051 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.addr.051, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i39, i32 noundef %11) #12
  br label %cleanup16

if.else:                                          ; preds = %if.end
  %12 = ptrtoint ptr %curr_msg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %8, ptr %curr_msg, align 4
  %13 = ptrtoint ptr %waiting_msg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %waiting_msg, align 4
  %14 = ptrtoint ptr %flags.addr.051 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.addr.051, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i39, i32 noundef %15) #12
  %16 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %curr_msg, align 4
  %data_size = getelementptr inbounds %struct.ipmi_smi_msg, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %19)
  %cmp.i = icmp ugt i32 %19, 272
  br i1 %cmp.i, label %if.else.cleanup_crit_edge, label %if.end.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %20 = ptrtoint ptr %max_xmit_msg_size.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %max_xmit_msg_size.i, align 4
  %conv.i = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv.i)
  %cmp1.i = icmp ugt i32 %19, %conv.i
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %data.le = getelementptr inbounds %struct.ipmi_smi_msg, ptr %17, i32 0, i32 5
  %retries_left.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 31
  %22 = ptrtoint ptr %retries_left.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %retries_left.i, align 4
  %add.ptr.i = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 18, i32 1
  %23 = call ptr @memcpy(ptr %add.ptr.i, ptr %data.le, i32 %19)
  %data_len.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 19
  %24 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %19, ptr %data_len.i, align 4
  %got_alert.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 13
  %25 = ptrtoint ptr %got_alert.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %got_alert.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %19)
  %cmp.i.i = icmp ugt i32 %19, 32
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %data.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 18
  %multi_data.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 39
  %26 = ptrtoint ptr %multi_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %data.i.i, ptr %multi_data.i.i, align 4
  %multi_len.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 40
  %27 = ptrtoint ptr %multi_len.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %19, ptr %multi_len.i.i, align 4
  %multi_pos.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 41
  %28 = ptrtoint ptr %multi_pos.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 32, ptr %multi_pos.i.i, align 4
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 32, ptr %data.i.i, align 4
  br label %cleanup.thread

if.else.i.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  %multi_data3.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 39
  %30 = ptrtoint ptr %multi_data3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %multi_data3.i.i, align 4
  %conv.i.i = trunc i32 %19 to i8
  %data5.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 18
  %31 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i.i, ptr %data5.i.i, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else.i.i, %if.then.i.i
  %command.0.i.i = phi i32 [ 6, %if.then.i.i ], [ 2, %if.else.i.i ]
  %data7.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 18
  %done_handler.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 22
  %32 = ptrtoint ptr %done_handler.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @msg_written_handler, ptr %done_handler.i.i.i, align 4
  %i2c_read_write.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 26
  %33 = ptrtoint ptr %i2c_read_write.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %i2c_read_write.i.i.i, align 4
  %i2c_command.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 27
  %34 = ptrtoint ptr %i2c_command.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %command.0.i.i, ptr %i2c_command.i.i.i, align 4
  %i2c_data.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 28
  %35 = ptrtoint ptr %i2c_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %data7.i.i, ptr %i2c_data.i.i.i, align 4
  %i2c_size.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 29
  %36 = ptrtoint ptr %i2c_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 5, ptr %i2c_size.i.i.i, align 4
  %wake_thread.i.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 24
  tail call void @complete(ptr noundef %wake_thread.i.i.i) #12
  br label %cleanup16

cleanup:                                          ; preds = %if.end.i.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %37 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %curr_msg, align 4
  store ptr null, ptr %curr_msg, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #12
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 1, ptr elementtype(i32) %arrayidx.i) #12, !srcloc !338
  %data.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %38, i32 0, i32 5
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %data.i, align 4
  %42 = or i8 %41, 4
  %rsp.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %38, i32 0, i32 7
  %43 = ptrtoint ptr %rsp.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %rsp.i, align 4
  %arrayidx5.i = getelementptr %struct.ipmi_smi_msg, ptr %38, i32 0, i32 5, i32 1
  %44 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx5.i, align 1
  %arrayidx7.i = getelementptr %struct.ipmi_smi_msg, ptr %38, i32 0, i32 7, i32 1
  %46 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.ipmi_smi_msg, ptr %38, i32 0, i32 7, i32 2
  %47 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %arrayidx9.i, align 2
  %rsp_size.i = getelementptr inbounds %struct.ipmi_smi_msg, ptr %38, i32 0, i32 6
  %48 = ptrtoint ptr %rsp_size.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3, ptr %rsp_size.i, align 4
  %49 = ptrtoint ptr %ssif_info to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ssif_info, align 4
  tail call void @ipmi_smi_msg_received(ptr noundef %50, ptr noundef %38) #12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i39) #12
  %51 = ptrtoint ptr %oflags to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call2.i, ptr %oflags, align 4
  %52 = ptrtoint ptr %ssif_state to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ssif_state, align 4
  %cmp = icmp eq i32 %53, 0
  br i1 %cmp, label %cleanup.land.lhs.true_crit_edge, label %cleanup.if.then_crit_edge

cleanup.if.then_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

cleanup.land.lhs.true_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

cleanup16:                                        ; preds = %cleanup.thread, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oflags)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_smi_msg_received(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_smi_watchdog_pretimeout(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msg_written_handler(ptr noundef %ssif_info, i32 noundef %result, ptr nocapture noundef readnone %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result)
  %cmp = icmp slt i32 %result, 0
  br i1 %cmp, label %if.then, label %if.end41

if.then:                                          ; preds = %entry
  %retries_left = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 31
  %0 = ptrtoint ptr %retries_left to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %retries_left, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %retries_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp2 = icmp sgt i32 %dec, 0
  br i1 %cmp2, label %if.then3, label %if.end16

if.then3:                                         ; preds = %if.then
  %got_alert.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 13
  %2 = ptrtoint ptr %got_alert.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %got_alert.i, align 4
  %data_len.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 19
  %3 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %4)
  %cmp.i = icmp ugt i32 %4, 32
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %data.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 18
  %multi_data.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 39
  %5 = ptrtoint ptr %multi_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data.i, ptr %multi_data.i, align 4
  %multi_len.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 40
  %6 = ptrtoint ptr %multi_len.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %multi_len.i, align 4
  %multi_pos.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 41
  %7 = ptrtoint ptr %multi_pos.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 32, ptr %multi_pos.i, align 4
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %data.i, align 4
  br label %start_resend.exit

if.else.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %multi_data3.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 39
  %9 = ptrtoint ptr %multi_data3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %multi_data3.i, align 4
  %conv.i = trunc i32 %4 to i8
  %data5.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 18
  %10 = ptrtoint ptr %data5.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %data5.i, align 4
  br label %start_resend.exit

start_resend.exit:                                ; preds = %if.else.i, %if.then.i
  %command.0.i = phi i32 [ 6, %if.then.i ], [ 2, %if.else.i ]
  %data7.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 18
  %done_handler.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 22
  %11 = ptrtoint ptr %done_handler.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @msg_written_handler, ptr %done_handler.i.i, align 4
  %i2c_read_write.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 26
  %12 = ptrtoint ptr %i2c_read_write.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %i2c_read_write.i.i, align 4
  %i2c_command.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 27
  %13 = ptrtoint ptr %i2c_command.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %command.0.i, ptr %i2c_command.i.i, align 4
  %i2c_data.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 28
  %14 = ptrtoint ptr %i2c_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %data7.i, ptr %i2c_data.i.i, align 4
  %i2c_size.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 29
  %15 = ptrtoint ptr %i2c_size.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %i2c_size.i.i, align 4
  %wake_thread.i.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 24
  tail call void @complete(ptr noundef %wake_thread.i.i) #12
  %arrayidx = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 42, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #12, !srcloc !338
  br label %if.end86

if.end16:                                         ; preds = %if.then
  %arrayidx18 = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 42, i32 3
  %call.i.i132 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx18, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx18, i32 1, i32 3, i32 1) #12
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx18, ptr %arrayidx18, i32 1, ptr elementtype(i32) %arrayidx18) #12, !srcloc !338
  %ssif_debug19 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 5
  %18 = ptrtoint ptr %ssif_debug19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ssif_debug19, align 4
  %and20 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end16.if.end40_crit_edge, label %do.body23

if.end16.if.end40_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

do.body23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msg_written_handler.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msg_written_handler, %if.then35)) #12
          to label %if.end40 [label %if.then35], !srcloc !337

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #14
  %client36 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 21
  %20 = ptrtoint ptr %client36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client36, align 4
  %dev37 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msg_written_handler.__UNIQUE_ID_ddebug296, ptr noundef %dev37, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93, i32 noundef %result) #12
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %do.body23, %if.end16.if.end40_crit_edge
  tail call void @msg_done_handler(ptr noundef %ssif_info, i32 noundef %result, ptr noundef null, i32 noundef 0)
  br label %if.end86

if.end41:                                         ; preds = %entry
  %multi_data = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 39
  %22 = ptrtoint ptr %multi_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %multi_data, align 4
  %tobool42.not = icmp eq ptr %23, null
  br i1 %tobool42.not, label %if.else69, label %if.then43

if.then43:                                        ; preds = %if.end41
  %arrayidx45 = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 42, i32 1
  %call.i.i133 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx45, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx45, i32 1, i32 3, i32 1) #12
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx45, ptr %arrayidx45, i32 1, ptr elementtype(i32) %arrayidx45) #12, !srcloc !338
  %multi_len = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 40
  %25 = ptrtoint ptr %multi_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %multi_len, align 4
  %multi_pos = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 41
  %27 = ptrtoint ptr %multi_pos to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %multi_pos, align 4
  %sub = sub i32 %26, %28
  %29 = tail call i32 @llvm.smin.i32(i32 %sub, i32 32)
  %conv = trunc i32 %29 to i8
  %30 = ptrtoint ptr %multi_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %multi_data, align 4
  %arrayidx51 = getelementptr i8, ptr %31, i32 %28
  %32 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv, ptr %arrayidx51, align 1
  %33 = load ptr, ptr %multi_data, align 4
  %34 = ptrtoint ptr %multi_pos to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %multi_pos, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 %35
  %add = add i32 %35, %29
  store i32 %add, ptr %multi_pos, align 4
  %cmd8_works = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 36
  %36 = ptrtoint ptr %cmd8_works to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %cmd8_works, align 2, !range !334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool55.not = icmp eq i8 %37, 0
  br i1 %tobool55.not, label %if.else, label %if.then56

if.then56:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %sub)
  %cmp57 = icmp slt i32 %sub, 33
  br i1 %cmp57, label %if.then56.if.end67.sink.split_crit_edge, label %if.then56.if.end67_crit_edge

if.then56.if.end67_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then56.if.end67.sink.split_crit_edge:          ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.sink.split

if.else:                                          ; preds = %if.then43
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub)
  %cmp62 = icmp slt i32 %sub, 32
  br i1 %cmp62, label %if.else.if.end67.sink.split_crit_edge, label %if.else.if.end67_crit_edge

if.else.if.end67_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.else.if.end67.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67.sink.split

if.end67.sink.split:                              ; preds = %if.else.if.end67.sink.split_crit_edge, %if.then56.if.end67.sink.split_crit_edge
  %cmd.0.ph = phi i32 [ 8, %if.then56.if.end67.sink.split_crit_edge ], [ 7, %if.else.if.end67.sink.split_crit_edge ]
  %38 = ptrtoint ptr %multi_data to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %multi_data, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end67.sink.split, %if.else.if.end67_crit_edge, %if.then56.if.end67_crit_edge
  %cmd.0 = phi i32 [ 7, %if.then56.if.end67_crit_edge ], [ 7, %if.else.if.end67_crit_edge ], [ %cmd.0.ph, %if.end67.sink.split ]
  %done_handler.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 22
  %39 = ptrtoint ptr %done_handler.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @msg_written_handler, ptr %done_handler.i, align 4
  %i2c_read_write.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 26
  %40 = ptrtoint ptr %i2c_read_write.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %i2c_read_write.i, align 4
  %i2c_command.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 27
  %41 = ptrtoint ptr %i2c_command.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %cmd.0, ptr %i2c_command.i, align 4
  %i2c_data.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 28
  %42 = ptrtoint ptr %i2c_data.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr, ptr %i2c_data.i, align 4
  %i2c_size.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 29
  %43 = ptrtoint ptr %i2c_size.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 5, ptr %i2c_size.i, align 4
  %wake_thread.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 24
  tail call void @complete(ptr noundef %wake_thread.i) #12
  br label %if.end86

if.else69:                                        ; preds = %if.end41
  %stats70 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 42
  %call.i.i134 = tail call zeroext i1 @__kasan_check_write(ptr noundef %stats70, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %stats70, i32 1, i32 3, i32 1) #12
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %stats70, ptr %stats70, i32 1, ptr elementtype(i32) %stats70) #12, !srcloc !338
  %arrayidx73 = getelementptr %struct.ssif_info, ptr %ssif_info, i32 0, i32 42, i32 1
  %call.i.i135 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx73, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx73, i32 1, i32 3, i32 1) #12
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx73, ptr %arrayidx73, i32 1, ptr elementtype(i32) %arrayidx73) #12, !srcloc !338
  %lock.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %got_alert = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 13
  %46 = ptrtoint ptr %got_alert to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %got_alert, align 4, !range !334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool75.not = icmp eq i8 %47, 0
  br i1 %tobool75.not, label %if.else78, label %if.then76

if.then76:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %got_alert to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %got_alert, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  %rtc_us_timer.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 17
  %49 = ptrtoint ptr %rtc_us_timer.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %rtc_us_timer.i, align 4
  %multi_pos.i137 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 41
  %50 = ptrtoint ptr %multi_pos.i137 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %multi_pos.i137, align 4
  %recv.i = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 20
  %done_handler.i.i138 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 22
  %51 = ptrtoint ptr %done_handler.i.i138 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @msg_done_handler, ptr %done_handler.i.i138, align 4
  %i2c_read_write.i.i139 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 26
  %52 = ptrtoint ptr %i2c_read_write.i.i139 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %i2c_read_write.i.i139, align 4
  %i2c_command.i.i140 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 27
  %53 = ptrtoint ptr %i2c_command.i.i140 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 3, ptr %i2c_command.i.i140, align 4
  %i2c_data.i.i141 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 28
  %54 = ptrtoint ptr %i2c_data.i.i141 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %recv.i, ptr %i2c_data.i.i141, align 4
  %i2c_size.i.i142 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 29
  %55 = ptrtoint ptr %i2c_size.i.i142 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 5, ptr %i2c_size.i.i142, align 4
  %wake_thread.i.i143 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 24
  tail call void @complete(ptr noundef %wake_thread.i.i143) #12
  br label %if.end86

if.else78:                                        ; preds = %if.else69
  %waiting_alert = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 14
  %56 = ptrtoint ptr %waiting_alert to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %waiting_alert, align 1
  %retries_left79 = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 31
  %57 = ptrtoint ptr %retries_left79 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 250, ptr %retries_left79, align 4
  %rtc_us_timer = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 17
  %58 = ptrtoint ptr %rtc_us_timer to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 5000, ptr %rtc_us_timer, align 4
  %stopping = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 25
  %59 = ptrtoint ptr %stopping to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %stopping, align 4, !range !334
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool80.not = icmp eq i8 %60, 0
  br i1 %tobool80.not, label %if.then81, label %if.else78.if.end84_crit_edge

if.else78.if.end84_crit_edge:                     ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end84

if.then81:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #14
  %retry_timer = getelementptr inbounds %struct.ssif_info, ptr %ssif_info, i32 0, i32 30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %call83 = tail call i32 @mod_timer(ptr noundef %retry_timer, i32 noundef %61) #12
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.else78.if.end84_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #12
  br label %if.end86

if.end86:                                         ; preds = %if.end84, %if.then76, %if.end67, %if.end40, %start_resend.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipmi_alloc_smi_msg() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_groups(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_type_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.100) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_sent_messages_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %stats = getelementptr inbounds %struct.ssif_info, ptr %1, i32 0, i32 42
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stats, i32 noundef 4) #12
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %stats, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #12
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_sent_messages_parts_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.ssif_info, ptr %1, i32 0, i32 42, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_send_retries_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.ssif_info, ptr %1, i32 0, i32 42, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_send_errors_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.ssif_info, ptr %1, i32 0, i32 42, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_received_messages_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.ssif_info, ptr %1, i32 0, i32 42, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_received_message_parts_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.ssif_info, ptr %1, i32 0, i32 42, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_receive_retries_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.ssif_info, ptr %1, i32 0, i32 42, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_receive_errors_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.ssif_info, ptr %1, i32 0, i32 42, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_flag_fetches_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.ssif_info, ptr %1, i32 0, i32 42, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_hosed_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.ssif_info, ptr %1, i32 0, i32 42, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_events_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.ssif_info, ptr %1, i32 0, i32 42, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_watchdog_pretimeouts_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.ssif_info, ptr %1, i32 0, i32 42, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipmi_alerts_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.ssif_info, ptr %1, i32 0, i32 42, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 4) #12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.102, i32 noundef %3) #12
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ssif_platform_probe(ptr nocapture noundef readnone %dev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssif_platform_remove(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ssif_infos_mutex, i32 noundef 0) #12
  %link = getelementptr inbounds %struct.ssif_addr_info, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.ssif_addr_info, ptr %1, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %link, align 4
  %prev.i = getelementptr inbounds %struct.ssif_addr_info, ptr %1, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #12
  tail call void @mutex_unlock(ptr noundef nonnull @ssif_infos_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !44, !46, !48, !50, !52, !53, !55, !57, !58, !59, !61, !63, !64, !65, !67, !69, !70, !71, !73, !75, !76, !77, !78, !80, !82, !83, !84, !86, !87, !89, !91, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !107, !109, !110, !111, !113, !115, !117, !118, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !248, !249, !251, !252, !253, !254, !256, !257, !258, !260, !261, !263, !264, !265, !267, !268, !270, !272, !274, !275, !277, !279, !280, !281, !283, !284, !286, !287, !289, !290, !292, !293, !295, !296, !298, !299, !301, !302, !304, !305, !307, !308, !310, !311, !313, !314, !316, !317, !319, !321, !323}
!llvm.module.flags = !{!325, !326, !327, !328, !329, !330, !331, !332}
!llvm.ident = !{!333}

!0 = !{ptr @__param_addr, !1, !"__param_addr", i1 false, i1 false}
!1 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1143, i32 1}
!2 = !{ptr @__UNIQUE_ID_addrtype298, !1, !"__UNIQUE_ID_addrtype298", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_addr299, !4, !"__UNIQUE_ID_addr299", i1 false, i1 false}
!4 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1144, i32 1}
!5 = !{ptr @__param_adapter_name, !6, !"__param_adapter_name", i1 false, i1 false}
!6 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1148, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nametype300, !6, !"__UNIQUE_ID_adapter_nametype300", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_name301, !9, !"__UNIQUE_ID_adapter_name301", i1 false, i1 false}
!9 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1149, i32 1}
!10 = !{ptr @__param_slave_addrs, !11, !"__param_slave_addrs", i1 false, i1 false}
!11 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1153, i32 1}
!12 = !{ptr @__UNIQUE_ID_slave_addrstype302, !11, !"__UNIQUE_ID_slave_addrstype302", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_slave_addrs303, !14, !"__UNIQUE_ID_slave_addrs303", i1 false, i1 false}
!14 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1154, i32 1}
!15 = !{ptr @__param_alerts_broken, !16, !"__param_alerts_broken", i1 false, i1 false}
!16 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1158, i32 1}
!17 = !{ptr @__UNIQUE_ID_alerts_brokentype304, !16, !"__UNIQUE_ID_alerts_brokentype304", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_alerts_broken305, !19, !"__UNIQUE_ID_alerts_broken305", i1 false, i1 false}
!19 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1159, i32 1}
!20 = !{ptr @__param_dbg, !21, !"__param_dbg", i1 false, i1 false}
!21 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1168, i32 1}
!22 = !{ptr @__UNIQUE_ID_dbgtype306, !21, !"__UNIQUE_ID_dbgtype306", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_dbg307, !24, !"__UNIQUE_ID_dbg307", i1 false, i1 false}
!24 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1169, i32 1}
!25 = !{ptr @__param_dbg_probe, !26, !"__param_dbg_probe", i1 false, i1 false}
!26 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1172, i32 1}
!27 = !{ptr @__UNIQUE_ID_dbg_probetype308, !26, !"__UNIQUE_ID_dbg_probetype308", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_dbg_probe309, !29, !"__UNIQUE_ID_dbg_probe309", i1 false, i1 false}
!29 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1173, i32 1}
!30 = !{ptr @__param_tryacpi, !31, !"__param_tryacpi", i1 false, i1 false}
!31 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1176, i32 1}
!32 = !{ptr @__UNIQUE_ID_tryacpitype310, !31, !"__UNIQUE_ID_tryacpitype310", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_tryacpi311, !34, !"__UNIQUE_ID_tryacpi311", i1 false, i1 false}
!34 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1177, i32 1}
!35 = !{ptr @__param_trydmi, !36, !"__param_trydmi", i1 false, i1 false}
!36 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1180, i32 1}
!37 = !{ptr @__UNIQUE_ID_trydmitype312, !36, !"__UNIQUE_ID_trydmitype312", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_trydmi313, !39, !"__UNIQUE_ID_trydmi313", i1 false, i1 false}
!39 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1181, i32 1}
!40 = !{ptr @__initcall__kmod_ipmi_ssif__316_2120_init_ipmi_ssif6, !41, !"__initcall__kmod_ipmi_ssif__316_2120_init_ipmi_ssif6", i1 false, i1 false}
!41 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 2120, i32 1}
!42 = !{ptr @__exitcall_cleanup_ipmi_ssif, !43, !"__exitcall_cleanup_ipmi_ssif", i1 false, i1 false}
!43 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 2138, i32 1}
!44 = !{ptr @__UNIQUE_ID_alias317, !45, !"__UNIQUE_ID_alias317", i1 false, i1 false}
!45 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 2140, i32 1}
!46 = !{ptr @__UNIQUE_ID_author318, !47, !"__UNIQUE_ID_author318", i1 false, i1 false}
!47 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 2141, i32 1}
!48 = !{ptr @__UNIQUE_ID_description319, !49, !"__UNIQUE_ID_description319", i1 false, i1 false}
!49 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 2142, i32 1}
!50 = !{ptr @__UNIQUE_ID_file320, !51, !"__UNIQUE_ID_file320", i1 false, i1 false}
!51 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 2143, i32 1}
!52 = !{ptr @__UNIQUE_ID_license321, !51, !"__UNIQUE_ID_license321", i1 false, i1 false}
!53 = !{ptr @alerts_broken, !54, !"alerts_broken", i1 false, i1 false}
!54 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1157, i32 13}
!55 = !{ptr @ssif_dbg_probe, !56, !"ssif_dbg_probe", i1 false, i1 false}
!56 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1171, i32 13}
!57 = !{ptr @__param_str_addr, !1, !"__param_str_addr", i1 false, i1 false}
!58 = !{ptr @__param_arr_addr, !1, !"__param_arr_addr", i1 false, i1 false}
!59 = !{ptr @num_addrs, !60, !"num_addrs", i1 false, i1 false}
!60 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1142, i32 12}
!61 = !{ptr @addr, !62, !"addr", i1 false, i1 false}
!62 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1141, i32 23}
!63 = !{ptr @__param_str_adapter_name, !6, !"__param_str_adapter_name", i1 false, i1 false}
!64 = !{ptr @__param_arr_adapter_name, !6, !"__param_arr_adapter_name", i1 false, i1 false}
!65 = !{ptr @num_adapter_names, !66, !"num_adapter_names", i1 false, i1 false}
!66 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1147, i32 12}
!67 = !{ptr @adapter_name, !68, !"adapter_name", i1 false, i1 false}
!68 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1146, i32 14}
!69 = !{ptr @__param_str_slave_addrs, !11, !"__param_str_slave_addrs", i1 false, i1 false}
!70 = !{ptr @__param_arr_slave_addrs, !11, !"__param_arr_slave_addrs", i1 false, i1 false}
!71 = !{ptr @num_slave_addrs, !72, !"num_slave_addrs", i1 false, i1 false}
!72 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1152, i32 12}
!73 = !{ptr @slave_addrs, !74, !"slave_addrs", i1 false, i1 false}
!74 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1151, i32 12}
!75 = !{ptr @__param_str_alerts_broken, !16, !"__param_str_alerts_broken", i1 false, i1 false}
!76 = !{ptr @__param_str_dbg, !21, !"__param_str_dbg", i1 false, i1 false}
!77 = !{ptr @__param_arr_dbg, !21, !"__param_arr_dbg", i1 false, i1 false}
!78 = !{ptr @num_dbg, !79, !"num_dbg", i1 false, i1 false}
!79 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1167, i32 12}
!80 = !{ptr @dbg, !81, !"dbg", i1 false, i1 false}
!81 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1166, i32 12}
!82 = !{ptr @__param_str_dbg_probe, !26, !"__param_str_dbg_probe", i1 false, i1 false}
!83 = !{ptr @__param_str_tryacpi, !31, !"__param_str_tryacpi", i1 false, i1 false}
!84 = !{ptr @ssif_tryacpi, !85, !"ssif_tryacpi", i1 false, i1 false}
!85 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1175, i32 13}
!86 = !{ptr @__param_str_trydmi, !36, !"__param_str_trydmi", i1 false, i1 false}
!87 = !{ptr @ssif_trydmi, !88, !"ssif_trydmi", i1 false, i1 false}
!88 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1179, i32 13}
!89 = !{ptr @.str, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 2088, i32 2}
!91 = !{ptr @.str.1, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.2, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @init_ipmi_ssif._entry, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @init_ipmi_ssif._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.4, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 2096, i32 4}
!97 = !{ptr @init_ipmi_ssif._entry.3, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @init_ipmi_ssif._entry_ptr.5, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.7, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 2107, i32 4}
!101 = !{ptr @init_ipmi_ssif._entry.6, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @init_ipmi_ssif._entry_ptr.8, !100, !"_entry_ptr", i1 false, i1 false}
!103 = distinct !{null, !104, !"initialized", i1 false, i1 false}
!104 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 297, i32 13}
!105 = !{ptr @.str.9, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1926, i32 33}
!107 = !{ptr @.str.10, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1183, i32 8}
!109 = !{ptr @.str.11, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @ssif_infos_mutex, !108, !"ssif_infos_mutex", i1 false, i1 false}
!111 = !{ptr @ssif_infos, !112, !"ssif_infos", i1 false, i1 false}
!112 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1184, i32 8}
!113 = !{ptr @ssif_i2c_driver, !114, !"ssif_i2c_driver", i1 false, i1 false}
!114 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 2035, i32 26}
!115 = !{ptr @.str.12, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1670, i32 4}
!117 = !{ptr @.str.13, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.14, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.15, !116, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @ssif_probe._entry, !116, !"_entry", i1 false, i1 false}
!121 = !{ptr @ssif_probe._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.17, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1674, i32 3}
!124 = !{ptr @ssif_probe._entry.16, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @ssif_probe._entry_ptr.18, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.20, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1680, i32 2}
!128 = !{ptr @.str.21, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @ssif_probe._entry.19, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @ssif_probe._entry_ptr.22, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.23, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1693, i32 5}
!133 = !{ptr @ssif_probe.__UNIQUE_ID_ddebug314, !132, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!134 = !{ptr @.str.25, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1731, i32 3}
!136 = !{ptr @ssif_probe._entry.24, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @ssif_probe._entry_ptr.26, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.28, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1749, i32 3}
!140 = !{ptr @.str.29, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @ssif_probe._entry.27, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @ssif_probe._entry_ptr.30, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.32, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1758, i32 3}
!145 = !{ptr @ssif_probe._entry.31, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @ssif_probe._entry_ptr.33, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.35, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1778, i32 3}
!149 = !{ptr @ssif_probe._entry.34, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @ssif_probe._entry_ptr.36, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @ssif_probe._entry.37, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1800, i32 3}
!153 = !{ptr @ssif_probe._entry_ptr.38, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.39, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1815, i32 3}
!156 = !{ptr @ssif_probe.__UNIQUE_ID_ddebug315, !155, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!157 = !{ptr @ssif_probe.__key, !158, !"__key", i1 false, i1 false}
!158 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1820, i32 2}
!159 = !{ptr @.str.40, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @ssif_probe.__key.41, !161, !"__key", i1 false, i1 false}
!161 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1822, i32 2}
!162 = !{ptr @.str.42, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @ssif_probe.__key.43, !164, !"__key", i1 false, i1 false}
!164 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1823, i32 2}
!165 = !{ptr @.str.44, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.45, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1846, i32 23}
!168 = !{ptr @.str.47, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1850, i32 4}
!170 = !{ptr @.str.48, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @ssif_probe._entry.46, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @ssif_probe._entry_ptr.49, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.51, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1861, i32 3}
!175 = !{ptr @ssif_probe._entry.50, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @ssif_probe._entry_ptr.52, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.54, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1872, i32 3}
!179 = !{ptr @ssif_probe._entry.53, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @ssif_probe._entry_ptr.55, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.57, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1882, i32 3}
!183 = !{ptr @ssif_probe._entry.56, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @ssif_probe._entry_ptr.58, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.59, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1611, i32 5}
!187 = !{ptr @.str.60, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @ssif_check_and_remove._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @ssif_check_and_remove._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.61, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1539, i32 3}
!192 = !{ptr @.str.62, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @test_multipart_messages._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @test_multipart_messages._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.63, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1460, i32 3}
!197 = !{ptr @.str.64, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @start_multipart_test._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @start_multipart_test._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.66, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1471, i32 3}
!202 = !{ptr @start_multipart_test._entry.65, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @start_multipart_test._entry_ptr.67, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.68, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 636, i32 4}
!206 = !{ptr @.str.69, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @msg_done_handler.__UNIQUE_ID_ddebug288, !205, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!208 = !{ptr @.str.70, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 669, i32 5}
!210 = !{ptr @msg_done_handler.__UNIQUE_ID_ddebug289, !209, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!211 = !{ptr @.str.71, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 683, i32 5}
!213 = !{ptr @msg_done_handler.__UNIQUE_ID_ddebug290, !212, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!214 = !{ptr @.str.72, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 693, i32 5}
!216 = !{ptr @msg_done_handler.__UNIQUE_ID_ddebug291, !215, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!217 = !{ptr @.str.73, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 713, i32 5}
!219 = !{ptr @msg_done_handler.__UNIQUE_ID_ddebug292, !218, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!220 = !{ptr @.str.74, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 740, i32 3}
!222 = !{ptr @msg_done_handler.__UNIQUE_ID_ddebug293, !221, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!223 = !{ptr @.str.75, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 779, i32 4}
!225 = !{ptr @msg_done_handler._entry, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @msg_done_handler._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.77, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 789, i32 4}
!229 = !{ptr @msg_done_handler._entry.76, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @msg_done_handler._entry_ptr.78, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.80, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 803, i32 4}
!233 = !{ptr @msg_done_handler._entry.79, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @msg_done_handler._entry_ptr.81, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.83, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 808, i32 4}
!237 = !{ptr @msg_done_handler._entry.82, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @msg_done_handler._entry_ptr.84, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.86, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 826, i32 4}
!241 = !{ptr @msg_done_handler._entry.85, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @msg_done_handler._entry_ptr.87, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @msg_done_handler._entry.88, !244, !"_entry", i1 false, i1 false}
!244 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 850, i32 4}
!245 = !{ptr @msg_done_handler._entry_ptr.89, !244, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.90, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 878, i32 3}
!248 = !{ptr @msg_done_handler.__UNIQUE_ID_ddebug294, !247, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!249 = !{ptr @.str.91, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 327, i32 3}
!251 = !{ptr @.str.92, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @deliver_recv_msg._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @deliver_recv_msg._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.93, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 897, i32 5}
!256 = distinct !{null, !255, !"<string literal>", i1 false, i1 false}
!257 = distinct !{null, !255, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!258 = !{ptr @.str.95, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 910, i32 4}
!260 = !{ptr @msg_written_handler.__UNIQUE_ID_ddebug296, !259, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!261 = !{ptr @.str.96, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1069, i32 3}
!263 = !{ptr @.str.97, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @sender.__UNIQUE_ID_ddebug297, !262, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!265 = !{ptr @init_completion.__key, !266, !"__key", i1 false, i1 false}
!266 = !{!"../include/linux/completion.h", i32 87, i32 2}
!267 = !{ptr @.str.98, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @ipmi_ssif_dev_attr_group, !269, !"ipmi_ssif_dev_attr_group", i1 false, i1 false}
!269 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1237, i32 37}
!270 = !{ptr @ipmi_ssif_dev_attrs, !271, !"ipmi_ssif_dev_attrs", i1 false, i1 false}
!271 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1219, i32 26}
!272 = !{ptr @.str.99, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1203, i32 8}
!274 = !{ptr @dev_attr_type, !273, !"dev_attr_type", i1 false, i1 false}
!275 = !{ptr @.str.100, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1201, i32 25}
!277 = !{ptr @.str.101, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1205, i32 1}
!279 = !{ptr @dev_attr_sent_messages, !278, !"dev_attr_sent_messages", i1 false, i1 false}
!280 = !{ptr @.str.102, !278, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.103, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1206, i32 1}
!283 = !{ptr @dev_attr_sent_messages_parts, !282, !"dev_attr_sent_messages_parts", i1 false, i1 false}
!284 = !{ptr @.str.104, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1207, i32 1}
!286 = !{ptr @dev_attr_send_retries, !285, !"dev_attr_send_retries", i1 false, i1 false}
!287 = !{ptr @.str.105, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1208, i32 1}
!289 = !{ptr @dev_attr_send_errors, !288, !"dev_attr_send_errors", i1 false, i1 false}
!290 = !{ptr @.str.106, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1209, i32 1}
!292 = !{ptr @dev_attr_received_messages, !291, !"dev_attr_received_messages", i1 false, i1 false}
!293 = !{ptr @.str.107, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1210, i32 1}
!295 = !{ptr @dev_attr_received_message_parts, !294, !"dev_attr_received_message_parts", i1 false, i1 false}
!296 = !{ptr @.str.108, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1211, i32 1}
!298 = !{ptr @dev_attr_receive_retries, !297, !"dev_attr_receive_retries", i1 false, i1 false}
!299 = !{ptr @.str.109, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1212, i32 1}
!301 = !{ptr @dev_attr_receive_errors, !300, !"dev_attr_receive_errors", i1 false, i1 false}
!302 = !{ptr @.str.110, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1213, i32 1}
!304 = !{ptr @dev_attr_flag_fetches, !303, !"dev_attr_flag_fetches", i1 false, i1 false}
!305 = !{ptr @.str.111, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1214, i32 1}
!307 = !{ptr @dev_attr_hosed, !306, !"dev_attr_hosed", i1 false, i1 false}
!308 = !{ptr @.str.112, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1215, i32 1}
!310 = !{ptr @dev_attr_events, !309, !"dev_attr_events", i1 false, i1 false}
!311 = !{ptr @.str.113, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1216, i32 1}
!313 = !{ptr @dev_attr_watchdog_pretimeouts, !312, !"dev_attr_watchdog_pretimeouts", i1 false, i1 false}
!314 = !{ptr @.str.114, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 1217, i32 1}
!316 = !{ptr @dev_attr_alerts, !315, !"dev_attr_alerts", i1 false, i1 false}
!317 = !{ptr @ssif_id, !318, !"ssif_id", i1 false, i1 false}
!318 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 2029, i32 35}
!319 = !{ptr @ipmi_driver, !320, !"ipmi_driver", i1 false, i1 false}
!320 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 2071, i32 31}
!321 = !{ptr @ssif_plat_ids, !322, !"ssif_plat_ids", i1 false, i1 false}
!322 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 2066, i32 40}
!323 = distinct !{null, !324, !"platform_registered", i1 false, i1 false}
!324 = !{!"../drivers/char/ipmi/ipmi_ssif.c", i32 298, i32 13}
!325 = !{i32 1, !"wchar_size", i32 2}
!326 = !{i32 1, !"min_enum_size", i32 4}
!327 = !{i32 8, !"branch-target-enforcement", i32 0}
!328 = !{i32 8, !"sign-return-address", i32 0}
!329 = !{i32 8, !"sign-return-address-all", i32 0}
!330 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!331 = !{i32 7, !"uwtable", i32 1}
!332 = !{i32 7, !"frame-pointer", i32 2}
!333 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!334 = !{i8 0, i8 2}
!335 = !{!"branch_weights", i32 1, i32 2000}
!336 = !{!"auto-init"}
!337 = !{i64 2149006947, i64 2149006952, i64 2149006965, i64 2149007009, i64 2149007043, i64 2149007064}
!338 = !{i64 2148393570, i64 2148393596, i64 2148393625, i64 2148393659, i64 2148393690, i64 2148393713}
!339 = !{!"branch_weights", i32 2000, i32 1}
!340 = !{i64 2155685628, i64 2155686123, i64 2155685665, i64 2155685721, i64 2155685755, i64 2155685779, i64 2155685820, i64 2155685841, i64 2155685869, i64 2155685903}
