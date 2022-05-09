; ModuleID = '/llk/IR_all_yes/drivers/mfd/janz-cmodio.c_pt.bc'
source_filename = "../drivers/mfd/janz-cmodio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.cmodio_device = type { ptr, ptr, i8, [4 x %struct.mfd_cell], [12 x %struct.resource], [4 x %struct.janz_platform_data] }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.janz_platform_data = type { i32 }
%struct.janz_cmodio_onboard_regs = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__param_str_modules = internal constant [20 x i8] c"janz_cmodio.modules\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_modules = internal constant %struct.kparam_array { i32 4, i32 4, ptr @num_modules, ptr @param_ops_charp, ptr @modules }, align 4
@__param_modules = internal constant %struct.kernel_param { ptr @__param_str_modules, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_modules } }, section "__param", align 4
@__UNIQUE_ID_modulestype236 = internal constant [44 x i8] c"janz_cmodio.parmtype=modules:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_modules237 = internal constant [72 x i8] c"janz_cmodio.parm=modules:MODULbus modules attached to the carrier board\00", section ".modinfo", align 1
@__initcall__kmod_janz_cmodio__239_279_cmodio_pci_driver_init6 = internal global ptr @cmodio_pci_driver_init, section ".initcall6.init", align 4
@cmodio_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.2, ptr @cmodio_pci_ids, ptr @cmodio_pci_probe, ptr @cmodio_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cmodio_pci_driver_exit = internal global ptr @cmodio_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author240 = internal constant [56 x i8] c"janz_cmodio.author=Ira W. Snyder <iws@ovro.caltech.edu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [71 x i8] c"janz_cmodio.description=Janz CMOD-IO PCI MODULbus Carrier Board Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [41 x i8] c"janz_cmodio.file=drivers/mfd/janz-cmodio\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [24 x i8] c"janz_cmodio.license=GPL\00", section ".modinfo", align 1
@num_modules = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@modules = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str, ptr @.str, ptr @.str, ptr @.str], [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"empty\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"janz_cmodio\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"janz-cmodio\00", [20 x i8] zeroinitializer }, align 32
@cmodio_pci_ids = internal constant { [7 x %struct.pci_device_id], [32 x i8] } { [7 x %struct.pci_device_id] [%struct.pci_device_id { i32 4277, i32 36912, i32 5059, i32 257, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 5059, i32 256, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4277, i32 36912, i32 5059, i32 513, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4277, i32 36912, i32 5059, i32 514, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 5059, i32 513, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 5059, i32 514, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cmodio_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 191, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to enable device\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cmodio_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mfd/janz-cmodio.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cmodio_pci_probe._entry_ptr = internal global ptr @cmodio_pci_probe._entry, section ".printk_index", align 4
@cmodio_pci_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 198, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to request regions\0A\00", [37 x i8] zeroinitializer }, align 32
@cmodio_pci_probe._entry_ptr.10 = internal global ptr @cmodio_pci_probe._entry.8, section ".printk_index", align 4
@cmodio_pci_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 205, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to remap onboard regs\0A\00", [34 x i8] zeroinitializer }, align 32
@cmodio_pci_probe._entry_ptr.13 = internal global ptr @cmodio_pci_probe._entry.11, section ".printk_index", align 4
@cmodio_sysfs_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cmodio_sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@cmodio_pci_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 216, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to create sysfs attributes\0A\00", [61 x i8] zeroinitializer }, align 32
@cmodio_pci_probe._entry_ptr.16 = internal global ptr @cmodio_pci_probe._entry.14, section ".printk_index", align 4
@cmodio_pci_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 229, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to probe submodules\0A\00", [36 x i8] zeroinitializer }, align 32
@cmodio_pci_probe._entry_ptr.19 = internal global ptr @cmodio_pci_probe._entry.17, section ".printk_index", align 4
@cmodio_sysfs_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_modulbus_number, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_modulbus_number = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @modulbus_number_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"modulbus_number\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@cmodio_probe_submodules.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.5, ptr @.str.24, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cmodio_probe_submodules\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MODULbus %d: name %s\0A\00", [42 x i8] zeroinitializer }, align 32
@cmodio_probe_submodules._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.5, i32 140, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"no MODULbus modules specified, please set the ``modules'' kernel parameter according to your hardware configuration\0A\00", [43 x i8] zeroinitializer }, align 32
@cmodio_probe_submodules._entry_ptr = internal global ptr @cmodio_probe_submodules._entry, section ".printk_index", align 4
@cmodio_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.26 = private unnamed_addr constant [18 x i8] c"cmodio_pci_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 272, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"num_modules\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 30, i32 21 }
@___asan_gen_.32 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 31, i32 14 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 32, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 279, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 273, i32 14 }
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"cmodio_pci_ids\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 261, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 191, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 198, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 205, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [24 x i8] c"cmodio_sysfs_attr_group\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 167, i32 37 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 216, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 229, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [19 x i8] c"cmodio_sysfs_attrs\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 162, i32 26 }
@___asan_gen_.95 = private unnamed_addr constant [25 x i8] c"dev_attr_modulbus_number\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 160, i32 8 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 157, i32 25 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 130, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 137, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [10 x i8] c"cmodio_id\00", align 1
@___asan_gen_.117 = private constant [29 x i8] c"../drivers/mfd/janz-cmodio.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 39, i32 21 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__UNIQUE_ID_modules237, ptr @__UNIQUE_ID_modulestype236, ptr @__exitcall_cmodio_pci_driver_exit, ptr @__initcall__kmod_janz_cmodio__239_279_cmodio_pci_driver_init6, ptr @__param_modules, ptr @cmodio_pci_driver_exit, ptr @cmodio_pci_probe._entry, ptr @cmodio_pci_probe._entry.11, ptr @cmodio_pci_probe._entry.14, ptr @cmodio_pci_probe._entry.17, ptr @cmodio_pci_probe._entry.8, ptr @cmodio_pci_probe._entry_ptr, ptr @cmodio_pci_probe._entry_ptr.10, ptr @cmodio_pci_probe._entry_ptr.13, ptr @cmodio_pci_probe._entry_ptr.16, ptr @cmodio_pci_probe._entry_ptr.19, ptr @cmodio_probe_submodules._entry, ptr @cmodio_probe_submodules._entry_ptr, ptr @cmodio_pci_driver, ptr @num_modules, ptr @modules, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cmodio_pci_ids, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @cmodio_sysfs_attr_group, ptr @.str.15, ptr @.str.18, ptr @cmodio_sysfs_attrs, ptr @dev_attr_modulbus_number, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @cmodio_id], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmodio_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_modules to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modules to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmodio_pci_ids to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmodio_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmodio_pci_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmodio_pci_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmodio_sysfs_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmodio_pci_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmodio_pci_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmodio_sysfs_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_modulbus_number to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmodio_probe_submodules._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmodio_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cmodio_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @cmodio_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cmodio_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @cmodio_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmodio_pci_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 768, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 8
  %call2 = tail call i32 @pci_enable_device(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %dev) #5
  %call7 = tail call i32 @pci_request_regions(ptr noundef %dev, ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  br label %out_pci_disable_device

if.end14:                                         ; preds = %if.end6
  %call15 = tail call ptr @pci_ioremap_bar(ptr noundef %dev, i32 noundef 4) #5
  %ctrl = getelementptr inbounds %struct.cmodio_device, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call15, ptr %ctrl, align 4
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #8
  br label %out_pci_release_regions

if.end23:                                         ; preds = %if.end14
  %int_enable = getelementptr inbounds %struct.janz_cmodio_onboard_regs, ptr %call15, i32 0, i32 3
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %int_enable) #5, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %hex = getelementptr inbounds %struct.cmodio_device, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %hex to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %hex, align 8
  %call27 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @cmodio_sysfs_attr_group) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end34, label %do.end32

do.end32:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #8
  br label %out_unmap_ctrl

if.end34:                                         ; preds = %if.end23
  %5 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl, align 4
  %int_disable = getelementptr inbounds %struct.janz_cmodio_onboard_regs, ptr %6, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %int_disable, i8 15) #5, !srcloc !87
  %call36 = tail call fastcc i32 @cmodio_probe_submodules(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end34.cleanup_crit_edge, label %do.end41

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #8
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @cmodio_sysfs_attr_group) #5
  br label %out_unmap_ctrl

out_unmap_ctrl:                                   ; preds = %do.end41, %do.end32
  %ret.0 = phi i32 [ %call27, %do.end32 ], [ %call36, %do.end41 ]
  %7 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl, align 4
  tail call void @iounmap(ptr noundef %8) #5
  br label %out_pci_release_regions

out_pci_release_regions:                          ; preds = %out_unmap_ctrl, %do.end21
  %ret.1 = phi i32 [ %ret.0, %out_unmap_ctrl ], [ -12, %do.end21 ]
  tail call void @pci_release_regions(ptr noundef %dev) #5
  br label %out_pci_disable_device

out_pci_disable_device:                           ; preds = %out_pci_release_regions, %do.end12
  %ret.2 = phi i32 [ %call7, %do.end12 ], [ %ret.1, %out_pci_release_regions ]
  tail call void @pci_disable_device(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %out_pci_disable_device, %if.end34.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ %ret.2, %out_pci_disable_device ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmodio_pci_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void @mfd_remove_devices(ptr noundef %dev1) #5
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @cmodio_sysfs_attr_group) #5
  %ctrl = getelementptr inbounds %struct.cmodio_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  tail call void @iounmap(ptr noundef %3) #5
  tail call void @pci_release_regions(ptr noundef %dev) #5
  tail call void @pci_disable_device(ptr noundef %dev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cmodio_probe_submodules(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = load i32, ptr @num_modules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp42.not = icmp eq i32 %2, 0
  br i1 %cmp42.not, label %entry.do.end17_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.044 = phi i32 [ %inc12, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %num_probed.043 = phi i32 [ %num_probed.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr @modules, i32 0, i32 %i.044
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %strcmpload = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %strcmpload)
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %call2 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(6) @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false.for.inc_crit_edge, label %do.body

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body:                                          ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmodio_probe_submodules.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmodio_probe_submodules, %if.then8)) #5
          to label %do.end [label %if.then8], !srcloc !88

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cmodio_probe_submodules.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %i.044, ptr noundef %4) #5
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %arrayidx.i = getelementptr %struct.cmodio_device, ptr %priv, i32 0, i32 3, i32 %num_probed.043
  %mul.i = mul i32 %num_probed.043, 3
  %arrayidx1.i = getelementptr %struct.cmodio_device, ptr %priv, i32 0, i32 4, i32 %mul.i
  %arrayidx3.i = getelementptr %struct.cmodio_device, ptr %priv, i32 0, i32 5, i32 %num_probed.043
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %4, ptr %arrayidx.i, align 8
  %resources5.i = getelementptr %struct.cmodio_device, ptr %priv, i32 0, i32 3, i32 %num_probed.043, i32 15
  %11 = ptrtoint ptr %resources5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx1.i, ptr %resources5.i, align 4
  %num_resources.i = getelementptr %struct.cmodio_device, ptr %priv, i32 0, i32 3, i32 %num_probed.043, i32 14
  %12 = ptrtoint ptr %num_resources.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %num_resources.i, align 8
  %13 = load i32, ptr @cmodio_id, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr @cmodio_id, align 4
  %id.i = getelementptr %struct.cmodio_device, ptr %priv, i32 0, i32 3, i32 %num_probed.043, i32 1
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %id.i, align 4
  %15 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %i.044, ptr %arrayidx3.i, align 4
  %platform_data.i = getelementptr %struct.cmodio_device, ptr %priv, i32 0, i32 3, i32 %num_probed.043, i32 7
  %16 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx3.i, ptr %platform_data.i, align 4
  %pdata_size.i = getelementptr %struct.cmodio_device, ptr %priv, i32 0, i32 3, i32 %num_probed.043, i32 8
  %17 = ptrtoint ptr %pdata_size.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %pdata_size.i, align 8
  %flags.i = getelementptr %struct.cmodio_device, ptr %priv, i32 0, i32 4, i32 %mul.i, i32 3
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 512, ptr %flags.i, align 4
  %arrayidx7.i = getelementptr %struct.pci_dev, ptr %9, i32 0, i32 47, i32 3
  %parent.i = getelementptr %struct.cmodio_device, ptr %priv, i32 0, i32 4, i32 %mul.i, i32 5
  %19 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx7.i, ptr %parent.i, align 4
  %20 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx7.i, align 8
  %mul10.i = shl i32 %i.044, 9
  %add.i = add i32 %21, %mul10.i
  %22 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.i, ptr %arrayidx1.i, align 4
  %sub.i = add i32 %add.i, 511
  %end.i = getelementptr %struct.cmodio_device, ptr %priv, i32 0, i32 4, i32 %mul.i, i32 1
  %23 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub.i, ptr %end.i, align 4
  %incdec.ptr.i = getelementptr %struct.resource, ptr %arrayidx1.i, i32 1
  %flags14.i = getelementptr %struct.resource, ptr %arrayidx1.i, i32 1, i32 3
  %24 = ptrtoint ptr %flags14.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 512, ptr %flags14.i, align 4
  %arrayidx16.i = getelementptr %struct.pci_dev, ptr %9, i32 0, i32 47, i32 4
  %parent17.i = getelementptr %struct.resource, ptr %arrayidx1.i, i32 1, i32 5
  %25 = ptrtoint ptr %parent17.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %arrayidx16.i, ptr %parent17.i, align 4
  %26 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx16.i, align 8
  %28 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %incdec.ptr.i, align 4
  %end24.i = getelementptr %struct.pci_dev, ptr %9, i32 0, i32 47, i32 4, i32 1
  %29 = ptrtoint ptr %end24.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %end24.i, align 4
  %end25.i = getelementptr %struct.resource, ptr %arrayidx1.i, i32 1, i32 1
  %31 = ptrtoint ptr %end25.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %end25.i, align 4
  %incdec.ptr26.i = getelementptr %struct.resource, ptr %arrayidx1.i, i32 2
  %flags27.i = getelementptr %struct.resource, ptr %arrayidx1.i, i32 2, i32 3
  %32 = ptrtoint ptr %flags27.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1024, ptr %flags27.i, align 4
  %parent28.i = getelementptr %struct.resource, ptr %arrayidx1.i, i32 2, i32 5
  %33 = ptrtoint ptr %parent28.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %parent28.i, align 4
  %34 = ptrtoint ptr %incdec.ptr26.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %incdec.ptr26.i, align 4
  %end30.i = getelementptr %struct.resource, ptr %arrayidx1.i, i32 2, i32 1
  %35 = ptrtoint ptr %end30.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %end30.i, align 4
  %inc = add i32 %num_probed.043, 1
  br label %for.inc

for.inc:                                          ; preds = %do.end, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %num_probed.1 = phi i32 [ %inc, %do.end ], [ %num_probed.043, %lor.lhs.false.for.inc_crit_edge ], [ %num_probed.043, %for.body.for.inc_crit_edge ]
  %inc12 = add nuw i32 %i.044, 1
  %36 = load i32, ptr @num_modules, align 4
  %cmp = icmp ult i32 %inc12, %36
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_probed.1)
  %cmp13 = icmp eq i32 %num_probed.1, 0
  br i1 %cmp13, label %for.end.do.end17_crit_edge, label %if.end20

for.end.do.end17_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17

do.end17:                                         ; preds = %for.end.do.end17_crit_edge, %entry.do.end17_crit_edge
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 8
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.25) #8
  br label %cleanup

if.end20:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %cells = getelementptr inbounds %struct.cmodio_device, ptr %priv, i32 0, i32 3
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq, align 4
  %call22 = tail call i32 @mfd_add_devices(ptr noundef %dev21, i32 noundef 0, ptr noundef %cells, i32 noundef %num_probed.1, ptr noundef null, i32 noundef %40, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end17
  %retval.0 = phi i32 [ -19, %do.end17 ], [ %call22, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @modulbus_number_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hex = getelementptr inbounds %struct.cmodio_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hex to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hex, align 8
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %conv) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !19, !21, !23, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !61, !63, !65, !67, !68, !69, !71, !72, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__param_modules, !1, !"__param_modules", i1 false, i1 false}
!1 = !{!"../drivers/mfd/janz-cmodio.c", i32 35, i32 1}
!2 = !{ptr @__UNIQUE_ID_modulestype236, !1, !"__UNIQUE_ID_modulestype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_modules237, !4, !"__UNIQUE_ID_modules237", i1 false, i1 false}
!4 = !{!"../drivers/mfd/janz-cmodio.c", i32 36, i32 1}
!5 = !{ptr @__initcall__kmod_janz_cmodio__239_279_cmodio_pci_driver_init6, !6, !"__initcall__kmod_janz_cmodio__239_279_cmodio_pci_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/mfd/janz-cmodio.c", i32 279, i32 1}
!7 = !{ptr @__exitcall_cmodio_pci_driver_exit, !6, !"__exitcall_cmodio_pci_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author240, !9, !"__UNIQUE_ID_author240", i1 false, i1 false}
!9 = !{!"../drivers/mfd/janz-cmodio.c", i32 281, i32 1}
!10 = !{ptr @__UNIQUE_ID_description241, !11, !"__UNIQUE_ID_description241", i1 false, i1 false}
!11 = !{!"../drivers/mfd/janz-cmodio.c", i32 282, i32 1}
!12 = !{ptr @__UNIQUE_ID_file242, !13, !"__UNIQUE_ID_file242", i1 false, i1 false}
!13 = !{!"../drivers/mfd/janz-cmodio.c", i32 283, i32 1}
!14 = !{ptr @__UNIQUE_ID_license243, !13, !"__UNIQUE_ID_license243", i1 false, i1 false}
!15 = !{ptr @__param_str_modules, !1, !"__param_str_modules", i1 false, i1 false}
!16 = !{ptr @__param_arr_modules, !1, !"__param_arr_modules", i1 false, i1 false}
!17 = !{ptr @num_modules, !18, !"num_modules", i1 false, i1 false}
!18 = !{!"../drivers/mfd/janz-cmodio.c", i32 30, i32 21}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mfd/janz-cmodio.c", i32 32, i32 2}
!21 = !{ptr @modules, !22, !"modules", i1 false, i1 false}
!22 = !{!"../drivers/mfd/janz-cmodio.c", i32 31, i32 14}
!23 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mfd/janz-cmodio.c", i32 273, i32 14}
!26 = !{ptr @cmodio_pci_driver, !27, !"cmodio_pci_driver", i1 false, i1 false}
!27 = !{!"../drivers/mfd/janz-cmodio.c", i32 272, i32 26}
!28 = !{ptr @cmodio_pci_ids, !29, !"cmodio_pci_ids", i1 false, i1 false}
!29 = !{!"../drivers/mfd/janz-cmodio.c", i32 261, i32 35}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mfd/janz-cmodio.c", i32 191, i32 3}
!32 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cmodio_pci_probe._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @cmodio_pci_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mfd/janz-cmodio.c", i32 198, i32 3}
!40 = !{ptr @cmodio_pci_probe._entry.8, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @cmodio_pci_probe._entry_ptr.10, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mfd/janz-cmodio.c", i32 205, i32 3}
!44 = !{ptr @cmodio_pci_probe._entry.11, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @cmodio_pci_probe._entry_ptr.13, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mfd/janz-cmodio.c", i32 216, i32 3}
!48 = !{ptr @cmodio_pci_probe._entry.14, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @cmodio_pci_probe._entry_ptr.16, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mfd/janz-cmodio.c", i32 229, i32 3}
!52 = !{ptr @cmodio_pci_probe._entry.17, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @cmodio_pci_probe._entry_ptr.19, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @cmodio_sysfs_attr_group, !55, !"cmodio_sysfs_attr_group", i1 false, i1 false}
!55 = !{!"../drivers/mfd/janz-cmodio.c", i32 167, i32 37}
!56 = !{ptr @cmodio_sysfs_attrs, !57, !"cmodio_sysfs_attrs", i1 false, i1 false}
!57 = !{!"../drivers/mfd/janz-cmodio.c", i32 162, i32 26}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mfd/janz-cmodio.c", i32 160, i32 8}
!60 = !{ptr @dev_attr_modulbus_number, !59, !"dev_attr_modulbus_number", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mfd/janz-cmodio.c", i32 157, i32 25}
!63 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mfd/janz-cmodio.c", i32 127, i32 21}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/mfd/janz-cmodio.c", i32 130, i32 3}
!67 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @cmodio_probe_submodules.__UNIQUE_ID_ddebug238, !66, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mfd/janz-cmodio.c", i32 137, i32 3}
!71 = !{ptr @cmodio_probe_submodules._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @cmodio_probe_submodules._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @cmodio_id, !74, !"cmodio_id", i1 false, i1 false}
!74 = !{!"../drivers/mfd/janz-cmodio.c", i32 39, i32 21}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 4985285}
!85 = !{i64 2152524630}
!86 = !{i64 2152526235}
!87 = !{i64 4984890}
!88 = !{i64 2148696785, i64 2148696790, i64 2148696803, i64 2148696847, i64 2148696881, i64 2148696902}
