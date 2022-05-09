; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-piix4.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-piix4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_piix4_adapdata = type { i16, i8, i8, i8 }

@__param_str_force = internal constant [16 x i8] c"i2c_piix4.force\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@force = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_force = internal constant %struct.kernel_param { ptr @__param_str_force, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @force } }, section "__param", align 4
@__UNIQUE_ID_forcetype292 = internal constant [29 x i8] c"i2c_piix4.parmtype=force:int\00", section ".modinfo", align 1
@__UNIQUE_ID_force293 = internal constant [59 x i8] c"i2c_piix4.parm=force:Forcibly enable the PIIX4. DANGEROUS!\00", section ".modinfo", align 1
@__param_str_force_addr = internal constant [21 x i8] c"i2c_piix4.force_addr\00", align 1
@force_addr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_force_addr = internal constant %struct.kernel_param { ptr @__param_str_force_addr, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 2, %union.anon.76 { ptr @force_addr } }, section "__param", align 4
@__UNIQUE_ID_force_addrtype294 = internal constant [34 x i8] c"i2c_piix4.parmtype=force_addr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_force_addr295 = internal constant [95 x i8] c"i2c_piix4.parm=force_addr:Forcibly enable the PIIX4 at the given address. EXTREMELY DANGEROUS!\00", section ".modinfo", align 1
@__initcall__kmod_i2c_piix4__308_1033_piix4_driver_init6 = internal global ptr @piix4_driver_init, section ".initcall6.init", align 4
@piix4_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @piix4_ids, ptr @piix4_probe, ptr @piix4_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_piix4_driver_exit = internal global ptr @piix4_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author309 = internal constant [49 x i8] c"i2c_piix4.author=Frodo Looijaard <frodol@dds.nl>\00", section ".modinfo", align 1
@__UNIQUE_ID_author310 = internal constant [55 x i8] c"i2c_piix4.author=Philip Edelbrock <phil@netroedge.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description311 = internal constant [41 x i8] c"i2c_piix4.description=PIIX4 SMBus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [44 x i8] c"i2c_piix4.file=drivers/i2c/busses/i2c-piix4\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [22 x i8] c"i2c_piix4.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2c_piix4\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"piix4_smbus\00", [20 x i8] zeroinitializer }, align 32
@piix4_ids = internal constant { [16 x %struct.pci_device_id], [128 x i8] } { [16 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 28947, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 29083, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4181, i32 37987, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 17235, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 17251, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 17266, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4098, i32 17285, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 30731, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 30987, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 7572, i32 30987, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4454, i32 512, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4454, i32 513, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4454, i32 515, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4454, i32 517, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4454, i32 1032, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [128 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@piix4_main_adapters = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@piix4_aux_adapter = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@piix4_setup_sb800._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 276, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"SMBus does not support forcing address!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"piix4_setup_sb800\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/i2c/busses/i2c-piix4.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@piix4_setup_sb800._entry_ptr = internal global ptr @piix4_setup_sb800._entry, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sb800_piix4_smb\00", [16 x i8] zeroinitializer }, align 32
@piix4_setup_sb800._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 296, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"SMB base address index region 0x%x already in use.\0A\00", [44 x i8] zeroinitializer }, align 32
@piix4_setup_sb800._entry_ptr.11 = internal global ptr @piix4_setup_sb800._entry.9, section ".printk_index", align 4
@piix4_setup_sb800._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 319, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SMBus Host Controller not enabled!\0A\00", [60 x i8] zeroinitializer }, align 32
@piix4_setup_sb800._entry_ptr.14 = internal global ptr @piix4_setup_sb800._entry.12, section ".printk_index", align 4
@piix4_setup_sb800._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 328, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SMBus region 0x%x already in use!\0A\00", [61 x i8] zeroinitializer }, align 32
@piix4_setup_sb800._entry_ptr.17 = internal global ptr @piix4_setup_sb800._entry.15, section ".printk_index", align 4
@piix4_setup_sb800._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 336, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Auxiliary SMBus Host Controller at 0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@piix4_setup_sb800._entry_ptr.21 = internal global ptr @piix4_setup_sb800._entry.18, section ".printk_index", align 4
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2ccfg\00", [25 x i8] zeroinitializer }, align 32
@piix4_setup_sb800._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 343, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"SMBus I2C bus config region 0x%x already in use!\0A\00", [46 x i8] zeroinitializer }, align 32
@piix4_setup_sb800._entry_ptr.25 = internal global ptr @piix4_setup_sb800._entry.23, section ".printk_index", align 4
@piix4_setup_sb800.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.26, i8 0, i8 87, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Using IRQ for SMBus\0A\00", [43 x i8] zeroinitializer }, align 32
@piix4_setup_sb800.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.27, i8 0, i8 88, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Using SMI# for SMBus\0A\00", [42 x i8] zeroinitializer }, align 32
@piix4_setup_sb800._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.4, ptr @.str.5, i32 357, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"SMBus Host Controller at 0x%x, revision %d\0A\00", [52 x i8] zeroinitializer }, align 32
@piix4_setup_sb800._entry_ptr.30 = internal global ptr @piix4_setup_sb800._entry.28, section ".printk_index", align 4
@piix4_port_sel_sb800 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@piix4_port_mask_sb800 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@piix4_port_shift_sb800 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@piix4_setup_sb800._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.4, ptr @.str.5, i32 392, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Using register 0x%02x for SMBus port selection\0A\00", [48 x i8] zeroinitializer }, align 32
@piix4_setup_sb800._entry_ptr.33 = internal global ptr @piix4_setup_sb800._entry.31, section ".printk_index", align 4
@piix4_adapter_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@piix4_main_port_names_sb800 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], [16 x i8] zeroinitializer }, align 32
@piix4_add_adapters_sb800._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.5, i32 900, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Error setting up SB800 adapters. Unregistering!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"piix4_add_adapters_sb800\00", [39 x i8] zeroinitializer }, align 32
@piix4_add_adapters_sb800._entry_ptr = internal global ptr @piix4_add_adapters_sb800._entry, section ".printk_index", align 4
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" port 0\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" port 2\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" port 3\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" port 4\00", [24 x i8] zeroinitializer }, align 32
@srvrworks_csb5_delay = internal global { i1, [31 x i8] } zeroinitializer, align 32
@piix4_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.5, i32 181, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Accessing the SMBus on this system is unsafe!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"piix4_setup\00", [20 x i8] zeroinitializer }, align 32
@piix4_setup._entry_ptr = internal global ptr @piix4_setup._entry, section ".printk_index", align 4
@piix4_setup._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.5, i32 190, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"IBM system detected; this module may corrupt your serial eeprom! Refusing to load module!\0A\00", [37 x i8] zeroinitializer }, align 32
@piix4_setup._entry_ptr.44 = internal global ptr @piix4_setup._entry.42, section ".printk_index", align 4
@piix4_setup._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.5, i32 204, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"SMBus base address uninitialized - upgrade BIOS or use force_addr=0xaddr\0A\00", [54 x i8] zeroinitializer }, align 32
@piix4_setup._entry_ptr.47 = internal global ptr @piix4_setup._entry.45, section ".printk_index", align 4
@piix4_setup._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.41, ptr @.str.5, i32 214, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@piix4_setup._entry_ptr.49 = internal global ptr @piix4_setup._entry.48, section ".printk_index", align 4
@piix4_setup._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.41, ptr @.str.5, i32 227, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"WARNING: SMBus interface set to new address %04x!\0A\00", [45 x i8] zeroinitializer }, align 32
@piix4_setup._entry_ptr.52 = internal global ptr @piix4_setup._entry.50, section ".printk_index", align 4
@piix4_setup._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.41, ptr @.str.5, i32 241, ptr @.str.55, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"WARNING: SMBus interface has been FORCEFULLY ENABLED!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@piix4_setup._entry_ptr.56 = internal global ptr @piix4_setup._entry.53, section ".printk_index", align 4
@piix4_setup._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.41, ptr @.str.5, i32 244, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@piix4_setup._entry_ptr.58 = internal global ptr @piix4_setup._entry.57, section ".printk_index", align 4
@piix4_setup.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.5, ptr @.str.26, i8 0, i8 62, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@piix4_setup.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.5, ptr @.str.27, i8 0, i8 63, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@piix4_setup._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.41, ptr @.str.5, i32 256, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Illegal Interrupt configuration (or code out of date)!\0A\00", [40 x i8] zeroinitializer }, align 32
@piix4_setup._entry_ptr.61 = internal global ptr @piix4_setup._entry.59, section ".printk_index", align 4
@piix4_setup._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.41, ptr @.str.5, i32 261, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@piix4_setup._entry_ptr.63 = internal global ptr @piix4_setup._entry.62, section ".printk_index", align 4
@piix4_smbus_algorithm_sb800 = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr null, ptr null, ptr @piix4_access_sb800, ptr null, ptr @piix4_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@smbus_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr null, ptr null, ptr @piix4_access, ptr null, ptr @piix4_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SMBus PIIX4 adapter%s at %04x\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@piix4_access_sb800._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.5, i32 723, ptr @.str.70, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"IMC base address index region 0x%x already in use.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"piix4_access_sb800\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@piix4_access_sb800._entry_ptr = internal global ptr @piix4_access_sb800._entry, section ".printk_index", align 4
@piix4_access_sb800._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.69, ptr @.str.5, i32 727, ptr @.str.70, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to communicate with the IMC.\0A\00", [59 x i8] zeroinitializer }, align 32
@piix4_access_sb800._entry_ptr.73 = internal global ptr @piix4_access_sb800._entry.71, section ".printk_index", align 4
@piix4_access_sb800._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.69, ptr @.str.5, i32 736, ptr @.str.70, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Continuing without IMC notification.\0A\00", [58 x i8] zeroinitializer }, align 32
@piix4_access_sb800._entry_ptr.76 = internal global ptr @piix4_access_sb800._entry.74, section ".printk_index", align 4
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smbus_kerncz_imc\00", [47 x i8] zeroinitializer }, align 32
@piix4_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.5, i32 570, ptr @.str.70, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported transaction %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"piix4_access\00", [19 x i8] zeroinitializer }, align 32
@piix4_access._entry_ptr = internal global ptr @piix4_access._entry, section ".printk_index", align 4
@piix4_transaction.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.5, ptr @.str.81, i8 0, i8 112, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"piix4_transaction\00", [46 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Transaction (pre): CNT=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@piix4_transaction.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.5, ptr @.str.82, i8 0, i8 113, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SMBus busy (%02x). Resetting...\0A\00", [63 x i8] zeroinitializer }, align 32
@piix4_transaction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.80, ptr @.str.5, i32 456, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Failed! (%02x)\0A\00", [16 x i8] zeroinitializer }, align 32
@piix4_transaction._entry_ptr = internal global ptr @piix4_transaction._entry, section ".printk_index", align 4
@piix4_transaction.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.5, ptr @.str.84, i8 0, i8 114, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Successful!\0A\00", [19 x i8] zeroinitializer }, align 32
@piix4_transaction._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.80, ptr @.str.5, i32 478, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SMBus Timeout!\0A\00", [16 x i8] zeroinitializer }, align 32
@piix4_transaction._entry_ptr.87 = internal global ptr @piix4_transaction._entry.85, section ".printk_index", align 4
@piix4_transaction._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.80, ptr @.str.5, i32 484, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error: Failed bus transaction\0A\00", [33 x i8] zeroinitializer }, align 32
@piix4_transaction._entry_ptr.90 = internal global ptr @piix4_transaction._entry.88, section ".printk_index", align 4
@piix4_transaction.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.5, ptr @.str.91, i8 0, i8 122, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Bus collision! SMBus may be locked until next hard reset. (sorry!)\0A\00", [60 x i8] zeroinitializer }, align 32
@piix4_transaction.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.5, ptr @.str.92, i8 0, i8 124, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error: no response!\0A\00", [43 x i8] zeroinitializer }, align 32
@piix4_transaction._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.80, ptr @.str.5, i32 504, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed reset at end of transaction (%02x)\0A\00", [53 x i8] zeroinitializer }, align 32
@piix4_transaction._entry_ptr.95 = internal global ptr @piix4_transaction._entry.93, section ".printk_index", align 4
@piix4_transaction.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.5, ptr @.str.96, i8 0, i8 127, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Transaction (post): CNT=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@piix4_setup_aux.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.5, ptr @.str.98, i8 0, i8 102, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"piix4_setup_aux\00", [16 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Auxiliary SMBus controller not enabled\0A\00", [56 x i8] zeroinitializer }, align 32
@piix4_setup_aux.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.5, ptr @.str.99, i8 0, i8 104, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Auxiliary SMBus base address uninitialized\0A\00", [52 x i8] zeroinitializer }, align 32
@piix4_setup_aux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.97, ptr @.str.5, i32 426, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Auxiliary SMBus region 0x%x already in use!\0A\00", [51 x i8] zeroinitializer }, align 32
@piix4_setup_aux._entry_ptr = internal global ptr @piix4_setup_aux._entry, section ".printk_index", align 4
@piix4_setup_aux._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.97, ptr @.str.5, i32 432, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@piix4_setup_aux._entry_ptr.102 = internal global ptr @piix4_setup_aux._entry.101, section ".printk_index", align 4
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" port 1\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 4098, i64 4130, i64 7572]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 16, i64 30731, i64 30987]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 16, i64 30731, i64 30987]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 16, i64 4130, i64 7572]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 16, i64 4130, i64 7572]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 16, i64 30731, i64 30987]
@__sancov_gen_cov_switch_values.109 = internal global [5 x i64] [i64 3, i64 4, i64 0, i64 2, i64 8]
@__sancov_gen_cov_switch_values.110 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.111 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 104, i32 12 }
@___asan_gen_.115 = private unnamed_addr constant [11 x i8] c"force_addr\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 110, i32 12 }
@___asan_gen_.118 = private unnamed_addr constant [13 x i8] c"piix4_driver\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 1026, i32 26 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 1033, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 1027, i32 11 }
@___asan_gen_.127 = private unnamed_addr constant [10 x i8] c"piix4_ids\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 782, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 961, i32 9 }
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c"piix4_main_adapters\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 808, i32 28 }
@___asan_gen_.136 = private unnamed_addr constant [18 x i8] c"piix4_aux_adapter\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 809, i32 28 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 275, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 293, i32 7 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 294, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 318, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 327, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 334, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 341, i32 7 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 342, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 351, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 353, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 355, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [21 x i8] c"piix4_port_sel_sb800\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 150, i32 11 }
@___asan_gen_.211 = private unnamed_addr constant [22 x i8] c"piix4_port_mask_sb800\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 151, i32 11 }
@___asan_gen_.214 = private unnamed_addr constant [23 x i8] c"piix4_port_shift_sb800\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 152, i32 11 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 390, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [20 x i8] c"piix4_adapter_count\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 810, i32 12 }
@___asan_gen_.226 = private unnamed_addr constant [28 x i8] c"piix4_main_port_names_sb800\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 153, i32 20 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 899, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 154, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 154, i32 13 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 154, i32 24 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 154, i32 35 }
@___asan_gen_.250 = private unnamed_addr constant [21 x i8] c"srvrworks_csb5_delay\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 180, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 188, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 202, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 213, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 226, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 240, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 243, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 255, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 259, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant [28 x i8] c"piix4_smbus_algorithm_sb800\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 777, i32 35 }
@___asan_gen_.305 = private unnamed_addr constant [16 x i8] c"smbus_algorithm\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 772, i32 35 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 854, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 721, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 726, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 735, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 620, i32 7 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 570, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 445, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 452, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 456, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 459, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 478, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 484, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 489, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 496, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 503, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 506, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 409, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 416, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 425, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 430, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.411 = private constant [34 x i8] c"../drivers/i2c/busses/i2c-piix4.c\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.411, i32 156, i32 48 }
@llvm.compiler.used = appending global [143 x ptr] [ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description311, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_force293, ptr @__UNIQUE_ID_force_addr295, ptr @__UNIQUE_ID_force_addrtype294, ptr @__UNIQUE_ID_forcetype292, ptr @__UNIQUE_ID_license313, ptr @__exitcall_piix4_driver_exit, ptr @__initcall__kmod_i2c_piix4__308_1033_piix4_driver_init6, ptr @__param_force, ptr @__param_force_addr, ptr @piix4_access._entry, ptr @piix4_access._entry_ptr, ptr @piix4_access_sb800._entry, ptr @piix4_access_sb800._entry.71, ptr @piix4_access_sb800._entry.74, ptr @piix4_access_sb800._entry_ptr, ptr @piix4_access_sb800._entry_ptr.73, ptr @piix4_access_sb800._entry_ptr.76, ptr @piix4_add_adapters_sb800._entry, ptr @piix4_add_adapters_sb800._entry_ptr, ptr @piix4_driver_exit, ptr @piix4_setup._entry, ptr @piix4_setup._entry.42, ptr @piix4_setup._entry.45, ptr @piix4_setup._entry.48, ptr @piix4_setup._entry.50, ptr @piix4_setup._entry.53, ptr @piix4_setup._entry.57, ptr @piix4_setup._entry.59, ptr @piix4_setup._entry.62, ptr @piix4_setup._entry_ptr, ptr @piix4_setup._entry_ptr.44, ptr @piix4_setup._entry_ptr.47, ptr @piix4_setup._entry_ptr.49, ptr @piix4_setup._entry_ptr.52, ptr @piix4_setup._entry_ptr.56, ptr @piix4_setup._entry_ptr.58, ptr @piix4_setup._entry_ptr.61, ptr @piix4_setup._entry_ptr.63, ptr @piix4_setup_aux._entry, ptr @piix4_setup_aux._entry.101, ptr @piix4_setup_aux._entry_ptr, ptr @piix4_setup_aux._entry_ptr.102, ptr @piix4_setup_sb800._entry, ptr @piix4_setup_sb800._entry.12, ptr @piix4_setup_sb800._entry.15, ptr @piix4_setup_sb800._entry.18, ptr @piix4_setup_sb800._entry.23, ptr @piix4_setup_sb800._entry.28, ptr @piix4_setup_sb800._entry.31, ptr @piix4_setup_sb800._entry.9, ptr @piix4_setup_sb800._entry_ptr, ptr @piix4_setup_sb800._entry_ptr.11, ptr @piix4_setup_sb800._entry_ptr.14, ptr @piix4_setup_sb800._entry_ptr.17, ptr @piix4_setup_sb800._entry_ptr.21, ptr @piix4_setup_sb800._entry_ptr.25, ptr @piix4_setup_sb800._entry_ptr.30, ptr @piix4_setup_sb800._entry_ptr.33, ptr @piix4_transaction._entry, ptr @piix4_transaction._entry.85, ptr @piix4_transaction._entry.88, ptr @piix4_transaction._entry.93, ptr @piix4_transaction._entry_ptr, ptr @piix4_transaction._entry_ptr.87, ptr @piix4_transaction._entry_ptr.90, ptr @piix4_transaction._entry_ptr.95, ptr @force, ptr @force_addr, ptr @piix4_driver, ptr @.str, ptr @.str.1, ptr @piix4_ids, ptr @.str.2, ptr @piix4_main_adapters, ptr @piix4_aux_adapter, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @piix4_port_sel_sb800, ptr @piix4_port_mask_sb800, ptr @piix4_port_shift_sb800, ptr @.str.32, ptr @piix4_adapter_count, ptr @piix4_main_port_names_sb800, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @srvrworks_csb5_delay, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.51, ptr @.str.54, ptr @.str.55, ptr @.str.60, ptr @piix4_smbus_algorithm_sb800, ptr @smbus_algorithm, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.103], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_ids to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_main_adapters to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_aux_adapter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_setup_sb800._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_setup_sb800._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_setup_sb800._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_setup_sb800._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_setup_sb800._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_setup_sb800._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_setup_sb800._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_port_sel_sb800 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_port_mask_sb800 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_port_shift_sb800 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_setup_sb800._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_adapter_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_main_port_names_sb800 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_add_adapters_sb800._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srvrworks_csb5_delay to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_setup._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_setup._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_setup._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_setup._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_setup._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_setup._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_setup._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_setup._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_smbus_algorithm_sb800 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbus_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_access_sb800._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_access_sb800._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_access_sb800._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_transaction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_transaction._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_transaction._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_transaction._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_setup_aux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix4_setup_aux._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @piix4_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @piix4_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @piix4_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @piix4_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @piix4_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %imc = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 8
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %entry.if.else_crit_edge [
    i16 4098, label %land.lhs.true
    i16 4130, label %entry.land.lhs.true28_crit_edge
    i16 7572, label %entry.land.lhs.true28_crit_edge166
  ]

entry.land.lhs.true28_crit_edge166:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true28

entry.land.lhs.true28_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true28

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17285, i16 %4)
  %cmp4 = icmp eq i16 %4, 17285
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true6:                                   ; preds = %land.lhs.true
  %revision = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 12
  %5 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %6)
  %cmp8 = icmp ugt i8 %6, 63
  br i1 %cmp8, label %land.lhs.true6.if.end36_crit_edge, label %land.lhs.true6.if.else_crit_edge

land.lhs.true6.if.else_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true6.if.end36_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true28:                                  ; preds = %entry.land.lhs.true28_crit_edge, %entry.land.lhs.true28_crit_edge166
  %device29 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %device29 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device29, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 30987, i16 %8)
  %cmp31 = icmp eq i16 %8, 30987
  br i1 %cmp31, label %if.then33, label %land.lhs.true28.if.end36_crit_edge

land.lhs.true28.if.end36_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then33:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %imc) #8
  %9 = ptrtoint ptr %imc to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %imc, align 1, !annotation !251
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 8
  %call = call i32 @pci_bus_read_config_byte(ptr noundef %11, i32 noundef 163, i32 noundef 64, ptr noundef nonnull %imc) #8
  %12 = ptrtoint ptr %imc to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %imc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool = icmp slt i8 %13, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %imc) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %land.lhs.true28.if.end36_crit_edge, %land.lhs.true6.if.end36_crit_edge
  %notify_imc.1.off0 = phi i1 [ %tobool, %if.then33 ], [ false, %land.lhs.true28.if.end36_crit_edge ], [ false, %land.lhs.true6.if.end36_crit_edge ]
  %call37 = call fastcc i32 @piix4_setup_sb800(ptr noundef %dev, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end36.cleanup106_crit_edge, label %if.end41

if.end36.cleanup106_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup106

if.end41:                                         ; preds = %if.end36
  %conv42 = trunc i32 %call37 to i16
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %14 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %device.i, align 2
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.104)
  switch i16 %15, label %if.end41.if.else.i_crit_edge [
    i16 30987, label %if.end41.for.body.preheader.i_crit_edge
    i16 30731, label %land.lhs.true.i
  ]

if.end41.for.body.preheader.i_crit_edge:          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader.i

if.end41.if.else.i_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end41
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 12
  %17 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %18)
  %cmp8.i = icmp ugt i8 %18, 30
  br i1 %cmp8.i, label %land.lhs.true.i.for.body.preheader.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i.for.body.preheader.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end41.if.else.i_crit_edge
  br label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.else.i, %land.lhs.true.i.for.body.preheader.i_crit_edge, %if.end41.for.body.preheader.i_crit_edge
  %storemerge.i = phi i32 [ 4, %if.else.i ], [ 2, %if.end41.for.body.preheader.i_crit_edge ], [ 2, %land.lhs.true.i.for.body.preheader.i_crit_edge ]
  store i32 %storemerge.i, ptr @piix4_adapter_count, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %port.058.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %conv15.i = trunc i32 %port.058.i to i8
  %arrayidx.i = getelementptr [4 x ptr], ptr @piix4_main_port_names_sb800, i32 0, i32 %port.058.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx16.i = getelementptr [4 x ptr], ptr @piix4_main_adapters, i32 0, i32 %port.058.i
  %call.i = call fastcc i32 @piix4_add_adapter(ptr noundef %dev, i16 noundef zeroext %conv42, i1 noundef zeroext true, i8 noundef zeroext %conv15.i, i1 noundef zeroext %notify_imc.1.off0, ptr noundef %20, ptr noundef %arrayidx16.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17.i = icmp slt i32 %call.i, 0
  br i1 %cmp17.i, label %do.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %port.058.i, 1
  %21 = load i32, ptr @piix4_adapter_count, align 4
  %cmp10.i = icmp slt i32 %inc.i, %21
  br i1 %cmp10.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end60_crit_edge

for.inc.i.if.end60_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.end.i:                                         ; preds = %for.body.i
  %dev21.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21.i, ptr noundef nonnull @.str.34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port.058.i)
  %cmp2260.not.i = icmp eq i32 %port.058.i, 0
  br i1 %cmp2260.not.i, label %do.end.i.cleanup106_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  br label %while.body.i

do.end.i.cleanup106_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup106

while.body.i:                                     ; preds = %if.end32.i.while.body.i_crit_edge, %do.end.i.while.body.i_crit_edge
  %dec61.in.i = phi i32 [ %dec61.i, %if.end32.i.while.body.i_crit_edge ], [ %port.058.i, %do.end.i.while.body.i_crit_edge ]
  %dec61.i = add nsw i32 %dec61.in.i, -1
  %arrayidx24.i = getelementptr [4 x ptr], ptr @piix4_main_adapters, i32 0, i32 %dec61.i
  %22 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx24.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 9, i32 8
  %24 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver_data.i.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool27.not.i = icmp eq i16 %27, 0
  br i1 %tobool27.not.i, label %while.body.i.if.end32.i_crit_edge, label %if.then28.i

while.body.i.if.end32.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then28.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @i2c_del_adapter(ptr noundef %23) #8
  call void @kfree(ptr noundef %25) #8
  %28 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx24.i, align 4
  call void @kfree(ptr noundef %29) #8
  %30 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx24.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then28.i, %while.body.i.if.end32.i_crit_edge
  %cmp22.i = icmp sgt i32 %dec61.in.i, 1
  br i1 %cmp22.i, label %if.end32.i.while.body.i_crit_edge, label %if.end32.i.cleanup106_crit_edge

if.end32.i.cleanup106_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup106

if.end32.i.while.body.i_crit_edge:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.else:                                          ; preds = %land.lhs.true6.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call49 = tail call fastcc i32 @piix4_setup(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.else.cleanup106_crit_edge, label %if.end53

if.else.cleanup106_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup106

if.end53:                                         ; preds = %if.else
  %conv54 = trunc i32 %call49 to i16
  %call55 = tail call fastcc i32 @piix4_add_adapter(ptr noundef %dev, i16 noundef zeroext %conv54, i1 noundef zeroext false, i8 noundef zeroext 0, i1 noundef zeroext false, ptr noundef nonnull @.str.2, ptr noundef nonnull @piix4_main_adapters)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.end53.cleanup106_crit_edge, label %if.end53.if.end60_crit_edge

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.end53.cleanup106_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup106

if.end60:                                         ; preds = %if.end53.if.end60_crit_edge, %for.inc.i.if.end60_crit_edge
  %is_sb800.0.off0 = phi ptr [ @.str.2, %if.end53.if.end60_crit_edge ], [ @.str.103, %for.inc.i.if.end60_crit_edge ]
  %31 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4098, i16 %32)
  %cmp63 = icmp eq i16 %32, 4098
  br i1 %cmp63, label %land.lhs.true65, label %if.end60.if.end80_crit_edge

if.end60.if.end80_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

land.lhs.true65:                                  ; preds = %if.end60
  %device66 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %33 = ptrtoint ptr %device66 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %device66, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17285, i16 %34)
  %cmp68 = icmp eq i16 %34, 17285
  br i1 %cmp68, label %if.then70, label %land.lhs.true65.if.end80thread-pre-split_crit_edge

land.lhs.true65.if.end80thread-pre-split_crit_edge: ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80thread-pre-split

if.then70:                                        ; preds = %land.lhs.true65
  %revision71 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 12
  %35 = ptrtoint ptr %revision71 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %revision71, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %36)
  %cmp73 = icmp ult i8 %36, 64
  br i1 %cmp73, label %if.then75, label %if.else77

if.then75:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  %call76 = call fastcc i32 @piix4_setup_aux(ptr noundef %dev)
  br label %if.end80thread-pre-split

if.else77:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  %call78 = call fastcc i32 @piix4_setup_sb800(ptr noundef %dev, i8 noundef zeroext 1)
  br label %if.end80thread-pre-split

if.end80thread-pre-split:                         ; preds = %if.else77, %if.then75, %land.lhs.true65.if.end80thread-pre-split_crit_edge
  %retval1.0.ph = phi i32 [ -19, %land.lhs.true65.if.end80thread-pre-split_crit_edge ], [ %call78, %if.else77 ], [ %call76, %if.then75 ]
  %37 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %37)
  %.pr = load i16, ptr %vendor, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.end80thread-pre-split, %if.end60.if.end80_crit_edge
  %38 = phi i16 [ %.pr, %if.end80thread-pre-split ], [ %32, %if.end60.if.end80_crit_edge ]
  %retval1.0 = phi i32 [ %retval1.0.ph, %if.end80thread-pre-split ], [ -19, %if.end60.if.end80_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 4130, i16 %38)
  %cmp83 = icmp eq i16 %38, 4130
  br i1 %cmp83, label %land.lhs.true85, label %if.end80.if.end97_crit_edge

if.end80.if.end97_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

land.lhs.true85:                                  ; preds = %if.end80
  %device86 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %39 = ptrtoint ptr %device86 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %device86, align 2
  %41 = zext i16 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.105)
  switch i16 %40, label %land.lhs.true85.if.end97_crit_edge [
    i16 30731, label %land.lhs.true85.if.then95_crit_edge
    i16 30987, label %land.lhs.true85.if.then95_crit_edge167
  ]

land.lhs.true85.if.then95_crit_edge167:           ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then95

land.lhs.true85.if.then95_crit_edge:              ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then95

land.lhs.true85.if.end97_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then95:                                        ; preds = %land.lhs.true85.if.then95_crit_edge, %land.lhs.true85.if.then95_crit_edge167
  %call96 = call fastcc i32 @piix4_setup_sb800(ptr noundef %dev, i8 noundef zeroext 1)
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %land.lhs.true85.if.end97_crit_edge, %if.end80.if.end97_crit_edge
  %retval1.1 = phi i32 [ %call96, %if.then95 ], [ %retval1.0, %if.end80.if.end97_crit_edge ], [ %retval1.0, %land.lhs.true85.if.end97_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.1)
  %cmp98 = icmp sgt i32 %retval1.1, 0
  br i1 %cmp98, label %if.then100, label %if.end97.cleanup106_crit_edge

if.end97.cleanup106_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup106

if.then100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  %conv101 = trunc i32 %retval1.1 to i16
  %42 = call fastcc i32 @piix4_add_adapter(ptr noundef %dev, i16 noundef zeroext %conv101, i1 noundef zeroext false, i8 noundef zeroext 0, i1 noundef zeroext false, ptr noundef nonnull %is_sb800.0.off0, ptr noundef nonnull @piix4_aux_adapter)
  br label %cleanup106

cleanup106:                                       ; preds = %if.then100, %if.end97.cleanup106_crit_edge, %if.end53.cleanup106_crit_edge, %if.else.cleanup106_crit_edge, %if.end32.i.cleanup106_crit_edge, %do.end.i.cleanup106_crit_edge, %if.end36.cleanup106_crit_edge
  %retval.1 = phi i32 [ %call49, %if.else.cleanup106_crit_edge ], [ %call55, %if.end53.cleanup106_crit_edge ], [ 0, %if.then100 ], [ 0, %if.end97.cleanup106_crit_edge ], [ %call37, %if.end36.cleanup106_crit_edge ], [ %call.i, %do.end.i.cleanup106_crit_edge ], [ %call.i, %if.end32.i.cleanup106_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @piix4_remove(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @piix4_adapter_count, align 4
  %dec19 = add i32 %0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec19)
  %cmp20 = icmp sgt i32 %dec19, -1
  br i1 %cmp20, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %dec21 = phi i32 [ %dec, %if.end.while.body_crit_edge ], [ %dec19, %entry.while.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr @piix4_main_adapters, i32 0, i32 %dec21
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %while.body
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 9, i32 8
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i = icmp eq i16 %6, 0
  br i1 %tobool.not.i, label %if.then.piix4_adap_remove.exit_crit_edge, label %if.then.i

if.then.piix4_adap_remove.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %piix4_adap_remove.exit

if.then.i:                                        ; preds = %if.then
  tail call void @i2c_del_adapter(ptr noundef nonnull %2) #8
  %port.i = getelementptr inbounds %struct.i2c_piix4_adapdata, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %port.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i = icmp eq i8 %8, 0
  br i1 %cmp.i, label %if.then3.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %4, align 2
  %conv5.i = zext i16 %10 to i32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv5.i, i32 noundef 9) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  tail call void @kfree(ptr noundef %4) #8
  tail call void @kfree(ptr noundef nonnull %2) #8
  br label %piix4_adap_remove.exit

piix4_adap_remove.exit:                           ; preds = %if.end.i, %if.then.piix4_adap_remove.exit_crit_edge
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %piix4_adap_remove.exit, %while.body.if.end_crit_edge
  %dec = add i32 %dec21, -1
  %cmp = icmp sgt i32 %dec, -1
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %12 = load ptr, ptr @piix4_aux_adapter, align 4
  %tobool3.not = icmp eq ptr %12, null
  br i1 %tobool3.not, label %while.end.if.end5_crit_edge, label %if.then4

while.end.if.end5_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %while.end
  %driver_data.i.i.i10 = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 9, i32 8
  %13 = ptrtoint ptr %driver_data.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i.i10, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %14, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not.i11 = icmp eq i16 %16, 0
  br i1 %tobool.not.i11, label %if.then4.piix4_adap_remove.exit18_crit_edge, label %if.then.i14

if.then4.piix4_adap_remove.exit18_crit_edge:      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %piix4_adap_remove.exit18

if.then.i14:                                      ; preds = %if.then4
  tail call void @i2c_del_adapter(ptr noundef nonnull %12) #8
  %port.i12 = getelementptr inbounds %struct.i2c_piix4_adapdata, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %port.i12 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %port.i12, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.i13 = icmp eq i8 %18, 0
  br i1 %cmp.i13, label %if.then3.i16, label %if.then.i14.if.end.i17_crit_edge

if.then.i14.if.end.i17_crit_edge:                 ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i17

if.then3.i16:                                     ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %14, align 2
  %conv5.i15 = zext i16 %20 to i32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv5.i15, i32 noundef 9) #8
  br label %if.end.i17

if.end.i17:                                       ; preds = %if.then3.i16, %if.then.i14.if.end.i17_crit_edge
  tail call void @kfree(ptr noundef %14) #8
  tail call void @kfree(ptr noundef nonnull %12) #8
  br label %piix4_adap_remove.exit18

piix4_adap_remove.exit18:                         ; preds = %if.end.i17, %if.then4.piix4_adap_remove.exit18_crit_edge
  store ptr null, ptr @piix4_aux_adapter, align 4
  br label %if.end5

if.end5:                                          ; preds = %piix4_adap_remove.exit18, %while.end.if.end5_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bus_read_config_byte(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @piix4_setup_sb800(ptr noundef %PIIX4_dev, i8 noundef zeroext %aux) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @force, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @force_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 7
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.106)
  switch i16 %3, label %if.end.if.else_crit_edge [
    i16 4130, label %land.lhs.true
    i16 7572, label %land.lhs.true30
  ]

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %device = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 8
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 30731, i16 %6)
  %cmp4 = icmp eq i16 %6, 30731
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true.land.lhs.true15_crit_edge

land.lhs.true.land.lhs.true15_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true15

land.lhs.true6:                                   ; preds = %land.lhs.true
  %revision = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 12
  %7 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %8)
  %cmp8 = icmp ugt i8 %8, 64
  br i1 %cmp8, label %land.lhs.true6.if.end39_crit_edge, label %land.lhs.true15thread-pre-split

land.lhs.true6.if.end39_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

land.lhs.true15thread-pre-split:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %9)
  %.pr = load i16, ptr %device, align 2
  br label %land.lhs.true15

land.lhs.true15:                                  ; preds = %land.lhs.true15thread-pre-split, %land.lhs.true.land.lhs.true15_crit_edge
  %10 = phi i16 [ %.pr, %land.lhs.true15thread-pre-split ], [ %6, %land.lhs.true.land.lhs.true15_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 30987, i16 %10)
  %cmp18 = icmp eq i16 %10, 30987
  br i1 %cmp18, label %land.lhs.true20, label %land.lhs.true15.if.else_crit_edge

land.lhs.true15.if.else_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true20:                                  ; preds = %land.lhs.true15
  %revision21 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 12
  %11 = ptrtoint ptr %revision21 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %revision21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 72, i8 %12)
  %cmp23 = icmp ugt i8 %12, 72
  br i1 %cmp23, label %land.lhs.true20.if.end39_crit_edge, label %land.lhs.true20.if.else_crit_edge

land.lhs.true20.if.else_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true20.if.end39_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

land.lhs.true30:                                  ; preds = %if.end
  %device31 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 8
  %13 = ptrtoint ptr %device31 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device31, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 30987, i16 %14)
  %cmp33 = icmp eq i16 %14, 30987
  br i1 %cmp33, label %land.lhs.true30.if.end39_crit_edge, label %land.lhs.true30.if.else_crit_edge

land.lhs.true30.if.else_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true30.if.end39_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.else:                                          ; preds = %land.lhs.true30.if.else_crit_edge, %land.lhs.true20.if.else_crit_edge, %land.lhs.true15.if.else_crit_edge, %if.end.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %aux)
  %tobool37.not = icmp eq i8 %aux, 0
  %conv38 = select i1 %tobool37.not, i8 44, i8 40
  br label %if.end39

if.end39:                                         ; preds = %if.else, %land.lhs.true30.if.end39_crit_edge, %land.lhs.true20.if.end39_crit_edge, %land.lhs.true6.if.end39_crit_edge
  %smb_en.0 = phi i8 [ %conv38, %if.else ], [ 0, %land.lhs.true30.if.end39_crit_edge ], [ 0, %land.lhs.true20.if.end39_crit_edge ], [ 0, %land.lhs.true6.if.end39_crit_edge ]
  %call = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 3286, i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef 4194304) #8
  %tobool40.not = icmp eq ptr %call, null
  br i1 %tobool40.not, label %do.end44, label %if.end46

do.end44:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.10, i32 noundef 3286) #11
  br label %cleanup

if.end46:                                         ; preds = %if.end39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18871082 to ptr), i8 %smb_en.0) #8, !srcloc !253
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18871081 to ptr)) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %16 = or i8 %smb_en.0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18871082 to ptr), i8 %16) #8, !srcloc !253
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18871081 to ptr)) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 3286, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %smb_en.0)
  %tobool51.not = icmp eq i8 %smb_en.0, 0
  br i1 %tobool51.not, label %if.then52, label %if.else62

if.then52:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %18 = and i8 %15, 16
  %conv55 = zext i8 %17 to i16
  %shl = shl nuw i16 %conv55, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %aux)
  %tobool57.not = icmp eq i8 %aux, 0
  %19 = or i16 %shl, 32
  %spec.select = select i1 %tobool57.not, i16 %shl, i16 %19
  br label %if.end72

if.else62:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %and64 = and i8 %15, 1
  %conv66 = zext i8 %17 to i16
  %shl67 = shl nuw i16 %conv66, 8
  %20 = and i8 %15, -32
  %conv63.masked = zext i8 %20 to i16
  %and70 = or i16 %shl67, %conv63.masked
  br label %if.end72

if.end72:                                         ; preds = %if.else62, %if.then52
  %smb_en_status.0 = phi i8 [ %and64, %if.else62 ], [ %18, %if.then52 ]
  %piix4_smba.0 = phi i16 [ %and70, %if.else62 ], [ %spec.select, %if.then52 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %smb_en_status.0)
  %tobool73.not = icmp eq i8 %smb_en_status.0, 0
  br i1 %tobool73.not, label %do.end77, label %if.end79

do.end77:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  %dev78 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev78, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end79:                                         ; preds = %if.end72
  %conv80 = zext i16 %piix4_smba.0 to i32
  %21 = load ptr, ptr getelementptr inbounds (%struct.pci_driver, ptr @piix4_driver, i32 0, i32 1), align 4
  %call86 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv80, i32 noundef 9, ptr noundef %21, i32 noundef 0) #8
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %do.end91, label %if.end94

do.end91:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %dev92 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev92, ptr noundef nonnull @.str.16, i32 noundef %conv80) #11
  br label %cleanup

if.end94:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %aux)
  %tobool95.not = icmp eq i8 %aux, 0
  br i1 %tobool95.not, label %if.end103, label %do.end99

do.end99:                                         ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %dev100 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev100, ptr noundef nonnull @.str.19, i32 noundef %conv80) #11
  br label %cleanup

if.end103:                                        ; preds = %if.end94
  %add106 = add nuw nsw i32 %conv80, 16
  %call107 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %add106, i32 noundef 1, ptr noundef nonnull @.str.22, i32 noundef 0) #8
  %tobool108.not = icmp eq ptr %call107, null
  br i1 %tobool108.not, label %do.end112, label %if.end118

do.end112:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  %dev113 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev113, ptr noundef nonnull @.str.24, i32 noundef %add106) #11
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv80, i32 noundef 9) #8
  br label %cleanup

if.end118:                                        ; preds = %if.end103
  %add.i = or i32 %add106, -18874368
  %22 = inttoptr i32 %add.i to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %add106, i32 noundef 1) #8
  %conv126 = zext i8 %23 to i32
  %and127 = and i32 %conv126, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %do.body142, label %do.body130

do.body130:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @piix4_setup_sb800.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@piix4_setup_sb800, %do.end164)) #8
          to label %if.then136 [label %do.end164], !srcloc !256

if.then136:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #10
  %dev137 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @piix4_setup_sb800.__UNIQUE_ID_ddebug298, ptr noundef %dev137, ptr noundef nonnull @.str.26) #8
  br label %do.end164

do.body142:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @piix4_setup_sb800.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@piix4_setup_sb800, %do.end164)) #8
          to label %if.then156 [label %do.end164], !srcloc !256

if.then156:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #10
  %dev157 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @piix4_setup_sb800.__UNIQUE_ID_ddebug299, ptr noundef %dev157, ptr noundef nonnull @.str.27) #8
  br label %do.end164

do.end164:                                        ; preds = %if.then156, %do.body142, %if.then136, %do.body130
  %dev165 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 44
  %24 = lshr i32 %conv126, 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev165, ptr noundef nonnull @.str.29, i32 noundef %conv80, i32 noundef %24) #11
  %25 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vendor, align 8
  %27 = zext i16 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.107)
  switch i16 %26, label %if.else195 [
    i16 4130, label %do.end164.if.then177_crit_edge
    i16 7572, label %do.end164.if.then177_crit_edge7
  ]

do.end164.if.then177_crit_edge7:                  ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then177

do.end164.if.then177_crit_edge:                   ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then177

if.then177:                                       ; preds = %do.end164.if.then177_crit_edge, %do.end164.if.then177_crit_edge7
  %device178 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 8
  %28 = ptrtoint ptr %device178 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %device178, align 2
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.108)
  switch i16 %29, label %if.then177.if.else193_crit_edge [
    i16 30987, label %if.then177.if.then192_crit_edge
    i16 30731, label %land.lhs.true187
  ]

if.then177.if.then192_crit_edge:                  ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then192

if.then177.if.else193_crit_edge:                  ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else193

land.lhs.true187:                                 ; preds = %if.then177
  %revision188 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 12
  %31 = ptrtoint ptr %revision188 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %revision188, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %32)
  %cmp190 = icmp ugt i8 %32, 30
  br i1 %cmp190, label %land.lhs.true187.if.then192_crit_edge, label %land.lhs.true187.if.else193_crit_edge

land.lhs.true187.if.else193_crit_edge:            ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else193

land.lhs.true187.if.then192_crit_edge:            ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then192

if.then192:                                       ; preds = %land.lhs.true187.if.then192_crit_edge, %if.then177.if.then192_crit_edge
  store i8 2, ptr @piix4_port_sel_sb800, align 1
  store i8 24, ptr @piix4_port_mask_sb800, align 1
  store i8 3, ptr @piix4_port_shift_sb800, align 1
  br label %do.end210

if.else193:                                       ; preds = %land.lhs.true187.if.else193_crit_edge, %if.then177.if.else193_crit_edge
  store i8 46, ptr @piix4_port_sel_sb800, align 1
  store i8 6, ptr @piix4_port_mask_sb800, align 1
  store i8 1, ptr @piix4_port_shift_sb800, align 1
  br label %do.end210

if.else195:                                       ; preds = %do.end164
  %call196 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 3286, i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef 4194304) #8
  %tobool197.not = icmp eq ptr %call196, null
  br i1 %tobool197.not, label %if.then198, label %if.end200

if.then198:                                       ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv80, i32 noundef 9) #8
  br label %cleanup

if.end200:                                        ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18871082 to ptr), i8 47) #8, !srcloc !253
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18871081 to ptr)) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %34 = and i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool204.not = icmp eq i8 %34, 0
  %conv206 = select i1 %tobool204.not, i8 44, i8 46
  store i8 %conv206, ptr @piix4_port_sel_sb800, align 1
  store i8 6, ptr @piix4_port_mask_sb800, align 1
  store i8 1, ptr @piix4_port_shift_sb800, align 1
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 3286, i32 noundef 2) #8
  br label %do.end210

do.end210:                                        ; preds = %if.end200, %if.else193, %if.then192
  %35 = load i8, ptr @piix4_port_sel_sb800, align 1
  %conv212 = zext i8 %35 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev165, ptr noundef nonnull @.str.32, i32 noundef %conv212) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end210, %if.then198, %do.end112, %do.end99, %do.end91, %do.end77, %do.end44, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %conv80, %do.end99 ], [ %conv80, %do.end210 ], [ -16, %if.then198 ], [ -16, %do.end112 ], [ -16, %do.end91 ], [ -19, %do.end77 ], [ -16, %do.end44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @piix4_setup(ptr noundef %PIIX4_dev) unnamed_addr #2 align 64 {
entry:
  %temp = alloca i8, align 1
  %piix4_smba = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %temp) #8
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %temp, align 1, !annotation !251
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %piix4_smba) #8
  %1 = ptrtoint ptr %piix4_smba to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %piix4_smba, align 2, !annotation !251
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 7
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4454, i16 %3)
  %cmp = icmp eq i16 %3, 4454
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %device = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 8
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 513, i16 %5)
  %cmp3 = icmp eq i16 %5, 513
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @srvrworks_csb5_delay, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = load i32, ptr @force_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool20.not = icmp eq i32 %6, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = trunc i32 %6 to i16
  %conv22 = and i16 %7, -16
  %8 = ptrtoint ptr %piix4_smba to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv22, ptr %piix4_smba, align 2
  store i32 0, ptr @force, align 4
  br label %if.end36

if.else:                                          ; preds = %if.end
  %call23 = call i32 @pci_read_config_word(ptr noundef %PIIX4_dev, i32 noundef 144, ptr noundef nonnull %piix4_smba) #8
  %9 = ptrtoint ptr %piix4_smba to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %piix4_smba, align 2
  %11 = and i16 %10, -16
  store i16 %11, ptr %piix4_smba, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp28 = icmp eq i16 %11, 0
  br i1 %cmp28, label %do.end33, label %if.else.if.end36_crit_edge

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.end33:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.46) #11
  br label %cleanup

if.end36:                                         ; preds = %if.else.if.end36_crit_edge, %if.then21
  %12 = ptrtoint ptr %piix4_smba to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %piix4_smba, align 2
  %conv42 = zext i16 %13 to i32
  %14 = load ptr, ptr getelementptr inbounds (%struct.pci_driver, ptr @piix4_driver, i32 0, i32 1), align 4
  %call43 = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv42, i32 noundef 9, ptr noundef %14, i32 noundef 0) #8
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %do.end48, label %if.end51

do.end48:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 44
  %15 = ptrtoint ptr %piix4_smba to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %piix4_smba, align 2
  %conv50 = zext i16 %16 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef nonnull @.str.16, i32 noundef %conv50) #11
  br label %cleanup

if.end51:                                         ; preds = %if.end36
  %call52 = call i32 @pci_read_config_byte(ptr noundef %PIIX4_dev, i32 noundef 210, ptr noundef nonnull %temp) #8
  %17 = load i32, ptr @force_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool53.not = icmp eq i32 %17, 0
  %18 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %temp, align 1
  br i1 %tobool53.not, label %if.else68, label %if.then54

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %20 = and i8 %19, -2
  %call58 = call i32 @pci_write_config_byte(ptr noundef %PIIX4_dev, i32 noundef 210, i8 noundef zeroext %20) #8
  %21 = ptrtoint ptr %piix4_smba to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %piix4_smba, align 2
  %call59 = call i32 @pci_write_config_word(ptr noundef %PIIX4_dev, i32 noundef 144, i16 noundef zeroext %22) #8
  %23 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %temp, align 1
  %25 = or i8 %24, 1
  %call62 = call i32 @pci_write_config_byte(ptr noundef %PIIX4_dev, i32 noundef 210, i8 noundef zeroext %25) #8
  %dev66 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 44
  %26 = ptrtoint ptr %piix4_smba to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %piix4_smba, align 2
  %conv67 = zext i16 %27 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev66, ptr noundef nonnull @.str.51, i32 noundef %conv67) #11
  br label %if.end92

if.else68:                                        ; preds = %if.end51
  %28 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp71 = icmp eq i8 %28, 0
  br i1 %cmp71, label %if.then73, label %if.else68.if.end92_crit_edge

if.else68.if.end92_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then73:                                        ; preds = %if.else68
  %29 = load i32, ptr @force, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool74.not = icmp eq i32 %29, 0
  br i1 %tobool74.not, label %do.end87, label %if.then75

if.then75:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  %or77 = or i8 %19, 1
  %call79 = call i32 @pci_write_config_byte(ptr noundef %PIIX4_dev, i32 noundef 210, i8 noundef zeroext %or77) #8
  %dev83 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev83, ptr noundef nonnull @.str.54) #11
  br label %if.end92

do.end87:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  %dev88 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev88, ptr noundef nonnull @.str.13) #11
  %30 = ptrtoint ptr %piix4_smba to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %piix4_smba, align 2
  %conv89 = zext i16 %31 to i32
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv89, i32 noundef 9) #8
  br label %cleanup

if.end92:                                         ; preds = %if.then75, %if.else68.if.end92_crit_edge, %if.then54
  %32 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %temp, align 1
  %34 = trunc i8 %33 to i4
  %trunc = and i4 %34, -2
  %35 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.109)
  switch i4 %trunc, label %do.end141 [
    i4 -8, label %if.end92.do.body102_crit_edge
    i4 2, label %if.end92.do.body102_crit_edge6
    i4 0, label %do.body119
  ]

if.end92.do.body102_crit_edge6:                   ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body102

if.end92.do.body102_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body102

do.body102:                                       ; preds = %if.end92.do.body102_crit_edge, %if.end92.do.body102_crit_edge6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @piix4_setup.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@piix4_setup, %if.end144)) #8
          to label %if.then108 [label %if.end144], !srcloc !256

if.then108:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #10
  %dev109 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @piix4_setup.__UNIQUE_ID_ddebug296, ptr noundef %dev109, ptr noundef nonnull @.str.26) #8
  br label %if.end144

do.body119:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @piix4_setup.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@piix4_setup, %if.end144)) #8
          to label %if.then133 [label %if.end144], !srcloc !256

if.then133:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #10
  %dev134 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @piix4_setup.__UNIQUE_ID_ddebug297, ptr noundef %dev134, ptr noundef nonnull @.str.27) #8
  br label %if.end144

do.end141:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %dev142 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev142, ptr noundef nonnull @.str.60) #11
  br label %if.end144

if.end144:                                        ; preds = %do.end141, %if.then133, %do.body119, %if.then108, %do.body102
  %call145 = call i32 @pci_read_config_byte(ptr noundef %PIIX4_dev, i32 noundef 214, ptr noundef nonnull %temp) #8
  %dev149 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 44
  %36 = ptrtoint ptr %piix4_smba to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %piix4_smba, align 2
  %conv150 = zext i16 %37 to i32
  %38 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %temp, align 1
  %conv151 = zext i8 %39 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev149, ptr noundef nonnull @.str.29, i32 noundef %conv150, i32 noundef %conv151) #11
  %40 = ptrtoint ptr %piix4_smba to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %piix4_smba, align 2
  %conv152 = zext i16 %41 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end144, %do.end87, %do.end48, %do.end33
  %retval.0 = phi i32 [ %conv152, %if.end144 ], [ -19, %do.end87 ], [ -16, %do.end48 ], [ -19, %do.end33 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %piix4_smba) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %temp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @piix4_add_adapter(ptr noundef %dev, i16 noundef zeroext %smba, i1 noundef zeroext %sb800_main, i8 noundef zeroext %port, i1 noundef zeroext %notify_imc, ptr noundef %name, ptr nocapture noundef writeonly %padap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %sb800_main to i8
  %frombool1 = zext i1 %notify_imc to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1360) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %smba to i32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv, i32 noundef 9) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %call7.i.i, align 8
  %class = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 129, ptr %class, align 4
  %cond = select i1 %sb800_main, ptr @piix4_smbus_algorithm_sb800, ptr @smbus_algorithm
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cond, ptr %algo, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 6) #12
  %cmp5 = icmp eq ptr %call7.i.i1, null
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %conv8 = zext i16 %smba to i32
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv8, i32 noundef 9) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call7.i.i1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %smba, ptr %call7.i.i1, align 8
  %sb800_main12 = getelementptr inbounds %struct.i2c_piix4_adapdata, ptr %call7.i.i1, i32 0, i32 1
  %6 = ptrtoint ptr %sb800_main12 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %sb800_main12, align 2
  %conv14 = zext i8 %port to i32
  %7 = load i8, ptr @piix4_port_shift_sb800, align 1
  %conv15 = zext i8 %7 to i32
  %shl = shl i32 %conv14, %conv15
  %conv16 = trunc i32 %shl to i8
  %port17 = getelementptr inbounds %struct.i2c_piix4_adapdata, ptr %call7.i.i1, i32 0, i32 3
  %8 = ptrtoint ptr %port17 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv16, ptr %port17, align 4
  %notify_imc19 = getelementptr inbounds %struct.i2c_piix4_adapdata, ptr %call7.i.i1, i32 0, i32 2
  %9 = ptrtoint ptr %notify_imc19 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool1, ptr %notify_imc19, align 1
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev21, ptr %parent, align 8
  %name29 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 12
  %conv30 = zext i16 %smba to i32
  %call31 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name29, i32 noundef 48, ptr noundef nonnull @.str.67, ptr noundef %name, i32 noundef %conv30)
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 9, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i1, ptr %driver_data.i.i, align 4
  %call32 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i1) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv30, i32 noundef 9) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %padap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %padap, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then34, %if.then7, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ -12, %if.then7 ], [ %call32, %if.then34 ], [ 0, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @piix4_setup_aux(ptr noundef %PIIX4_dev) unnamed_addr #2 align 64 {
entry:
  %piix4_smba = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %piix4_smba) #8
  %0 = ptrtoint ptr %piix4_smba to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %piix4_smba, align 2, !annotation !251
  %call = call i32 @pci_read_config_word(ptr noundef %PIIX4_dev, i32 noundef 88, ptr noundef nonnull %piix4_smba) #8
  %1 = ptrtoint ptr %piix4_smba to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %piix4_smba, align 2
  %3 = and i16 %2, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @piix4_setup_aux.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@piix4_setup_aux, %cleanup)) #8
          to label %if.then7 [label %cleanup], !srcloc !256

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @piix4_setup_aux.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.98) #8
  br label %cleanup

if.end8:                                          ; preds = %entry
  %and10 = and i16 %2, -16
  %4 = ptrtoint ptr %piix4_smba to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %and10, ptr %piix4_smba, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and10)
  %cmp13 = icmp eq i16 %and10, 0
  br i1 %cmp13, label %do.body16, label %if.end35

do.body16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @piix4_setup_aux.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@piix4_setup_aux, %cleanup)) #8
          to label %if.then30 [label %cleanup], !srcloc !256

if.then30:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @piix4_setup_aux.__UNIQUE_ID_ddebug301, ptr noundef %dev31, ptr noundef nonnull @.str.99) #8
  br label %cleanup

if.end35:                                         ; preds = %if.end8
  %conv41 = zext i16 %and10 to i32
  %5 = load ptr, ptr getelementptr inbounds (%struct.pci_driver, ptr @piix4_driver, i32 0, i32 1), align 4
  %call42 = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %conv41, i32 noundef 9, ptr noundef %5, i32 noundef 0) #8
  %tobool43.not = icmp eq ptr %call42, null
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %PIIX4_dev, i32 0, i32 44
  %6 = ptrtoint ptr %piix4_smba to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %piix4_smba, align 2
  %conv49 = zext i16 %7 to i32
  br i1 %tobool43.not, label %do.end47, label %do.end53

do.end47:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.100, i32 noundef %conv49) #11
  br label %cleanup

do.end53:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev48, ptr noundef nonnull @.str.19, i32 noundef %conv49) #11
  %8 = ptrtoint ptr %piix4_smba to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %piix4_smba, align 2
  %conv56 = zext i16 %9 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %do.end47, %if.then30, %do.body16, %if.then7, %do.body
  %retval.0 = phi i32 [ %conv56, %do.end53 ], [ -16, %do.end47 ], [ -19, %if.then7 ], [ -19, %if.then30 ], [ -19, %do.body ], [ -19, %do.body16 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %piix4_smba) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @piix4_access_sb800(ptr noundef %adap, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %call2 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 3286, i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef 4194304) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %3 to i32
  %add.i = add nuw nsw i32 %conv, -18874360
  %4 = inttoptr i32 %add.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  br label %do.body

do.body:                                          ; preds = %if.end14.do.body_crit_edge, %if.end
  %retries.0 = phi i32 [ 500, %if.end ], [ %dec, %if.end14.do.body_crit_edge ]
  %smbslvcnt.0 = phi i8 [ %5, %if.end ], [ %6, %if.end14.do.body_crit_edge ]
  %or = or i8 %smbslvcnt.0, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %or) #8, !srcloc !253
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %7 = and i8 %6, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool12.not = icmp eq i8 %7, 0
  br i1 %tobool12.not, label %if.end14, label %if.end18

if.end14:                                         ; preds = %do.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %dec = add nsw i32 %retries.0, -1
  %tobool15.not = icmp eq i32 %dec, 0
  br i1 %tobool15.not, label %if.end14.release_crit_edge, label %if.end14.do.body_crit_edge

if.end14.do.body_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end14.release_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %release

if.end18:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %size)
  %cmp = icmp eq i32 %size, 5
  br i1 %cmp, label %land.lhs.true, label %if.end18.if.end40_crit_edge

if.end18.if.end40_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end18
  %notify_imc = getelementptr inbounds %struct.i2c_piix4_adapdata, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %notify_imc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %notify_imc, align 1, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool20.not = icmp eq i8 %9, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end40_crit_edge, label %if.then22

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then22:                                        ; preds = %land.lhs.true
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 62, i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef 4194304) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end26, label %if.end.i

if.end.i:                                         ; preds = %if.then22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874306 to ptr), i8 -126) #8, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874305 to ptr), i8 0) #8, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874306 to ptr), i8 -125) #8, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874305 to ptr), i8 -76) #8, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874306 to ptr), i8 -128) #8, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874305 to ptr), i8 -106) #8, !srcloc !253
  br label %while.body.i

while.body.i:                                     ; preds = %if.end5.i.while.body.i_crit_edge, %if.end.i
  %dec6.i = phi i32 [ 499, %if.end.i ], [ %dec.i, %if.end5.i.while.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874306 to ptr), i8 -126) #8, !srcloc !253
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874305 to ptr)) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 -6, i8 %10)
  %cmp.i = icmp eq i8 %10, -6
  br i1 %cmp.i, label %piix4_imc_sleep.exit, label %if.end5.i

if.end5.i:                                        ; preds = %while.body.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %dec.i = add nsw i32 %dec6.i, -1
  %tobool1.not.i = icmp eq i32 %dec6.i, 0
  br i1 %tobool1.not.i, label %do.end30, label %if.end5.i.while.body.i_crit_edge

if.end5.i.while.body.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

piix4_imc_sleep.exit:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 62, i32 noundef 2) #8
  br label %if.end40

do.end26:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.68, i32 noundef 62) #11
  br label %do.end36

do.end30:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 62, i32 noundef 2) #8
  %dev31 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev31, ptr noundef nonnull @.str.72) #11
  br label %do.end36

do.end36:                                         ; preds = %do.end30, %do.end26
  %dev37 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev37, ptr noundef nonnull @.str.75) #11
  %11 = ptrtoint ptr %notify_imc to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %notify_imc, align 1
  br label %if.end40

if.end40:                                         ; preds = %do.end36, %piix4_imc_sleep.exit, %land.lhs.true.if.end40_crit_edge, %if.end18.if.end40_crit_edge
  %12 = load i8, ptr @piix4_port_sel_sb800, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18871082 to ptr), i8 %12) #8, !srcloc !253
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18871081 to ptr)) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %port42 = getelementptr inbounds %struct.i2c_piix4_adapdata, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %port42 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port42, align 2
  %16 = load i8, ptr @piix4_port_mask_sb800, align 1
  %and4596 = and i8 %16, %13
  call void @__sanitizer_cov_trace_cmp1(i8 %and4596, i8 %15)
  %cmp47.not = icmp eq i8 %and4596, %15
  br i1 %cmp47.not, label %if.end40.if.end56_crit_edge, label %if.then49

if.end40.if.end56_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then49:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i8 %16, -1
  %and52 = and i8 %13, %neg
  %or54 = or i8 %and52, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18871081 to ptr), i8 %or54) #8, !srcloc !253
  br label %if.end56

if.end56:                                         ; preds = %if.then49, %if.end40.if.end56_crit_edge
  %call57 = tail call i32 @piix4_access(ptr noundef %adap, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr noundef %data)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18871081 to ptr), i8 %13) #8, !srcloc !253
  %or58 = or i8 %6, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %or58) #8, !srcloc !253
  br i1 %cmp, label %land.lhs.true64, label %if.end56.release_crit_edge

if.end56.release_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %release

land.lhs.true64:                                  ; preds = %if.end56
  %notify_imc65 = getelementptr inbounds %struct.i2c_piix4_adapdata, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %notify_imc65 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %notify_imc65, align 1, !range !257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool66.not = icmp eq i8 %18, 0
  br i1 %tobool66.not, label %land.lhs.true64.release_crit_edge, label %if.then68

land.lhs.true64.release_crit_edge:                ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #10
  br label %release

if.then68:                                        ; preds = %land.lhs.true64
  %call.i103 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef 62, i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef 4194304) #8
  %tobool.not.i104 = icmp eq ptr %call.i103, null
  br i1 %tobool.not.i104, label %if.then68.release_crit_edge, label %if.end.i105

if.then68.release_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %release

if.end.i105:                                      ; preds = %if.then68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874306 to ptr), i8 -126) #8, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874305 to ptr), i8 0) #8, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874306 to ptr), i8 -125) #8, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874305 to ptr), i8 -75) #8, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874306 to ptr), i8 -128) #8, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874305 to ptr), i8 -106) #8, !srcloc !253
  br label %while.body.i108

while.body.i108:                                  ; preds = %if.end5.i111.while.body.i108_crit_edge, %if.end.i105
  %dec6.i106 = phi i32 [ 499, %if.end.i105 ], [ %dec.i109, %if.end5.i111.while.body.i108_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874306 to ptr), i8 -126) #8, !srcloc !253
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874305 to ptr)) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 -6, i8 %19)
  %cmp.i107 = icmp eq i8 %19, -6
  br i1 %cmp.i107, label %while.body.i108.while.end.i_crit_edge, label %if.end5.i111

while.body.i108.while.end.i_crit_edge:            ; preds = %while.body.i108
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end5.i111:                                     ; preds = %while.body.i108
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %dec.i109 = add nsw i32 %dec6.i106, -1
  %tobool1.not.i110 = icmp eq i32 %dec6.i106, 0
  br i1 %tobool1.not.i110, label %if.end5.i111.while.end.i_crit_edge, label %if.end5.i111.while.body.i108_crit_edge

if.end5.i111.while.body.i108_crit_edge:           ; preds = %if.end5.i111
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i108

if.end5.i111.while.end.i_crit_edge:               ; preds = %if.end5.i111
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %if.end5.i111.while.end.i_crit_edge, %while.body.i108.while.end.i_crit_edge
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 62, i32 noundef 2) #8
  br label %release

release:                                          ; preds = %while.end.i, %if.then68.release_crit_edge, %land.lhs.true64.release_crit_edge, %if.end56.release_crit_edge, %if.end14.release_crit_edge
  %retval1.0 = phi i32 [ %call57, %land.lhs.true64.release_crit_edge ], [ %call57, %if.end56.release_crit_edge ], [ %call57, %if.then68.release_crit_edge ], [ %call57, %while.end.i ], [ -16, %if.end14.release_crit_edge ]
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef 3286, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %release, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %release ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @piix4_func(ptr nocapture noundef readnone %adapter) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 58654720
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @piix4_access(ptr noundef %adap, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  %4 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %size, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb16
    i32 3, label %sw.bb33
    i32 5, label %sw.bb57
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i16 %addr to i8
  %shl = shl i8 %conv, 1
  %or = or i8 %shl, %read_write
  %conv3 = zext i16 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  %add.i = add nuw nsw i32 %conv3, -18874364
  %5 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %or) #8, !srcloc !253
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %conv5 = trunc i16 %addr to i8
  %shl6 = shl i8 %conv5, 1
  %or8 = or i8 %shl6, %read_write
  %conv10 = zext i16 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  %add.i224 = add nuw nsw i32 %conv10, -18874364
  %6 = inttoptr i32 %add.i224 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %or8) #8, !srcloc !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp = icmp eq i8 %read_write, 0
  br i1 %cmp, label %if.then, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  %add.i226 = add nuw nsw i32 %conv10, -18874365
  %7 = inttoptr i32 %add.i226 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %command) #8, !srcloc !253
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %conv17 = trunc i16 %addr to i8
  %shl18 = shl i8 %conv17, 1
  %or20 = or i8 %shl18, %read_write
  %conv22 = zext i16 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  %add.i228 = add nuw nsw i32 %conv22, -18874364
  %8 = inttoptr i32 %add.i228 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %or20) #8, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  %add.i230 = add nuw nsw i32 %conv22, -18874365
  %9 = inttoptr i32 %add.i230 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %command) #8, !srcloc !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp27 = icmp eq i8 %read_write, 0
  br i1 %cmp27, label %if.then29, label %sw.bb16.sw.epilog_crit_edge

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then29:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  %add.i232 = add nuw nsw i32 %conv22, -18874363
  %12 = inttoptr i32 %add.i232 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %11) #8, !srcloc !253
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  %conv34 = trunc i16 %addr to i8
  %shl35 = shl i8 %conv34, 1
  %or37 = or i8 %shl35, %read_write
  %conv39 = zext i16 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  %add.i234 = add nuw nsw i32 %conv39, -18874364
  %13 = inttoptr i32 %add.i234 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %or37) #8, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  %add.i236 = add nuw nsw i32 %conv39, -18874365
  %14 = inttoptr i32 %add.i236 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %command) #8, !srcloc !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp44 = icmp eq i8 %read_write, 0
  br i1 %cmp44, label %if.then46, label %sw.bb33.sw.epilog_crit_edge

sw.bb33.sw.epilog_crit_edge:                      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then46:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %data, align 2
  %conv48 = trunc i16 %16 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  %add.i238 = add nuw nsw i32 %conv39, -18874363
  %17 = inttoptr i32 %add.i238 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv48) #8, !srcloc !253
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %data, align 2
  %20 = lshr i16 %19, 8
  %conv53 = trunc i16 %20 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  %add.i240 = add nuw nsw i32 %conv39, -18874362
  %21 = inttoptr i32 %add.i240 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %conv53) #8, !srcloc !253
  br label %sw.epilog

sw.bb57:                                          ; preds = %entry
  %conv58 = trunc i16 %addr to i8
  %shl59 = shl i8 %conv58, 1
  %or61 = or i8 %shl59, %read_write
  %conv63 = zext i16 %3 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  %add.i242 = add nuw nsw i32 %conv63, -18874364
  %22 = inttoptr i32 %add.i242 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %or61) #8, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  %add.i244 = add nuw nsw i32 %conv63, -18874365
  %23 = inttoptr i32 %add.i244 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %command) #8, !srcloc !253
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp68 = icmp eq i8 %read_write, 0
  br i1 %cmp68, label %if.then70, label %sw.bb57.sw.epilog_crit_edge

sw.bb57.sw.epilog_crit_edge:                      ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then70:                                        ; preds = %sw.bb57
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data, align 2
  %conv71 = zext i8 %25 to i32
  %26 = add i8 %25, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %26)
  %27 = icmp ult i8 %26, -32
  br i1 %27, label %if.then70.cleanup_crit_edge, label %for.body.lr.ph

if.then70.cleanup_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  %add.i246 = add nuw nsw i32 %conv63, -18874363
  %28 = inttoptr i32 %add.i246 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %25) #8, !srcloc !253
  %add.i248 = add nuw nsw i32 %conv63, -18874366
  %29 = inttoptr i32 %add.i248 to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %add.i250 = add nuw nsw i32 %conv63, -18874361
  %31 = inttoptr i32 %add.i250 to ptr
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0266 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx86 = getelementptr [34 x i8], ptr %data, i32 0, i32 %i.0266
  %32 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx86, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %33) #8, !srcloc !253
  %inc = add nuw nsw i32 %i.0266, 1
  %exitcond = icmp eq i32 %i.0266, %conv71
  br i1 %exitcond, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.78, i32 noundef %size) #11
  br label %cleanup

sw.epilog:                                        ; preds = %for.body.sw.epilog_crit_edge, %sw.bb57.sw.epilog_crit_edge, %if.then46, %sw.bb33.sw.epilog_crit_edge, %if.then29, %sw.bb16.sw.epilog_crit_edge, %if.then, %sw.bb4.sw.epilog_crit_edge, %sw.bb
  %conv93.pre-phi = phi i32 [ %conv63, %sw.bb57.sw.epilog_crit_edge ], [ %conv39, %sw.bb33.sw.epilog_crit_edge ], [ %conv39, %if.then46 ], [ %conv22, %sw.bb16.sw.epilog_crit_edge ], [ %conv22, %if.then29 ], [ %conv10, %sw.bb4.sw.epilog_crit_edge ], [ %conv10, %if.then ], [ %conv3, %sw.bb ], [ %conv63, %for.body.sw.epilog_crit_edge ]
  %cmp102 = phi i1 [ false, %sw.bb57.sw.epilog_crit_edge ], [ false, %sw.bb33.sw.epilog_crit_edge ], [ false, %if.then46 ], [ false, %sw.bb16.sw.epilog_crit_edge ], [ false, %if.then29 ], [ false, %sw.bb4.sw.epilog_crit_edge ], [ false, %if.then ], [ true, %sw.bb ], [ false, %for.body.sw.epilog_crit_edge ]
  %size.addr.0 = phi i32 [ 20, %sw.bb57.sw.epilog_crit_edge ], [ 12, %sw.bb33.sw.epilog_crit_edge ], [ 12, %if.then46 ], [ 8, %sw.bb16.sw.epilog_crit_edge ], [ 8, %if.then29 ], [ 4, %sw.bb4.sw.epilog_crit_edge ], [ 4, %if.then ], [ 0, %sw.bb ], [ 20, %for.body.sw.epilog_crit_edge ]
  %conv92 = trunc i32 %size.addr.0 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  %add.i252 = add nuw nsw i32 %conv93.pre-phi, -18874366
  %34 = inttoptr i32 %add.i252 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %conv92) #8, !srcloc !253
  %call95 = tail call fastcc i32 @piix4_transaction(ptr noundef %adap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool.not = icmp eq i32 %call95, 0
  br i1 %tobool.not, label %if.end97, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end97:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp99 = icmp eq i8 %read_write, 0
  %brmerge = or i1 %cmp99, %cmp102
  br i1 %brmerge, label %if.end97.cleanup_crit_edge, label %if.end105

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end105:                                        ; preds = %if.end97
  %35 = add nsw i32 %size.addr.0, -4
  %36 = lshr exact i32 %35, 2
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %36, label %if.end105.cleanup_crit_edge [
    i32 0, label %if.end105.sw.bb106_crit_edge
    i32 1, label %if.end105.sw.bb106_crit_edge270
    i32 2, label %sw.bb110
    i32 4, label %sw.bb122
  ]

if.end105.sw.bb106_crit_edge270:                  ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb106

if.end105.sw.bb106_crit_edge:                     ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb106

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb106:                                         ; preds = %if.end105.sw.bb106_crit_edge, %if.end105.sw.bb106_crit_edge270
  %add.i254 = add nuw nsw i32 %conv93.pre-phi, -18874363
  %38 = inttoptr i32 %add.i254 to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %40 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %data, align 2
  br label %cleanup

sw.bb110:                                         ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  %add.i256 = add nuw nsw i32 %conv93.pre-phi, -18874363
  %41 = inttoptr i32 %add.i256 to ptr
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %41) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %conv114 = zext i8 %42 to i16
  %add.i258 = add nuw nsw i32 %conv93.pre-phi, -18874362
  %43 = inttoptr i32 %add.i258 to ptr
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %43) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %conv118 = zext i8 %44 to i16
  %shl119 = shl nuw i16 %conv118, 8
  %add120 = or i16 %shl119, %conv114
  %45 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %add120, ptr %data, align 2
  br label %cleanup

sw.bb122:                                         ; preds = %if.end105
  %add.i260 = add nuw nsw i32 %conv93.pre-phi, -18874363
  %46 = inttoptr i32 %add.i260 to ptr
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %48 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %data, align 2
  %49 = add i8 %47, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %49)
  %50 = icmp ult i8 %49, -32
  br i1 %50, label %sw.bb122.cleanup_crit_edge, label %if.end137

sw.bb122.cleanup_crit_edge:                       ; preds = %sw.bb122
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end137:                                        ; preds = %sw.bb122
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %52 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp144.not268 = icmp eq i8 %53, 0
  br i1 %cmp144.not268, label %if.end137.cleanup_crit_edge, label %for.body146.lr.ph

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body146.lr.ph:                                ; preds = %if.end137
  %add.i264 = add nuw nsw i32 %conv93.pre-phi, -18874361
  %54 = inttoptr i32 %add.i264 to ptr
  br label %for.body146

for.body146:                                      ; preds = %for.body146.for.body146_crit_edge, %for.body146.lr.ph
  %i.1269 = phi i32 [ 1, %for.body146.lr.ph ], [ %inc152, %for.body146.for.body146_crit_edge ]
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %54) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %arrayidx150 = getelementptr [34 x i8], ptr %data, i32 0, i32 %i.1269
  %56 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %arrayidx150, align 1
  %inc152 = add nuw nsw i32 %i.1269, 1
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %data, align 2
  %conv143 = zext i8 %58 to i32
  %cmp144.not.not = icmp ult i32 %i.1269, %conv143
  br i1 %cmp144.not.not, label %for.body146.for.body146_crit_edge, label %for.body146.cleanup_crit_edge

for.body146.cleanup_crit_edge:                    ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body146.for.body146_crit_edge:                ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body146

cleanup:                                          ; preds = %for.body146.cleanup_crit_edge, %if.end137.cleanup_crit_edge, %sw.bb122.cleanup_crit_edge, %sw.bb110, %sw.bb106, %if.end105.cleanup_crit_edge, %if.end97.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end, %if.then70.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end ], [ -22, %if.then70.cleanup_crit_edge ], [ %call95, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end97.cleanup_crit_edge ], [ -71, %sw.bb122.cleanup_crit_edge ], [ 0, %if.end105.cleanup_crit_edge ], [ 0, %sw.bb110 ], [ 0, %sw.bb106 ], [ 0, %if.end137.cleanup_crit_edge ], [ 0, %for.body146.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @piix4_transaction(ptr noundef %piix4_adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %piix4_adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @piix4_transaction.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@piix4_transaction, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !256

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %piix4_adapter, i32 0, i32 9
  %conv = zext i16 %3 to i32
  %add.i = add nuw nsw i32 %conv, -18874366
  %4 = inttoptr i32 %add.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %conv6 = zext i8 %5 to i32
  %add.i292 = add nuw nsw i32 %conv, -18874365
  %6 = inttoptr i32 %add.i292 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %conv10 = zext i8 %7 to i32
  %add.i294 = add nuw nsw i32 %conv, -18874364
  %8 = inttoptr i32 %add.i294 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %conv14 = zext i8 %9 to i32
  %add.i296 = add nuw nsw i32 %conv, -18874363
  %10 = inttoptr i32 %add.i296 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %conv18 = zext i8 %11 to i32
  %add.i298 = add nuw nsw i32 %conv, -18874362
  %12 = inttoptr i32 %add.i298 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %conv22 = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @piix4_transaction.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.81, i32 noundef %conv6, i32 noundef %conv10, i32 noundef %conv14, i32 noundef %conv18, i32 noundef %conv22) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv23 = zext i16 %3 to i32
  %add.i300 = or i32 %conv23, -18874368
  %14 = inttoptr i32 %add.i300 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %conv26 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.not = icmp eq i8 %15, 0
  br i1 %cmp.not, label %do.end.if.end82_crit_edge, label %do.body29

do.end.if.end82_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

do.body29:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @piix4_transaction.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@piix4_transaction, %do.end47)) #8
          to label %if.then43 [label %do.end47], !srcloc !256

if.then43:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %dev44 = getelementptr inbounds %struct.i2c_adapter, ptr %piix4_adapter, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @piix4_transaction.__UNIQUE_ID_ddebug303, ptr noundef %dev44, ptr noundef nonnull @.str.82, i32 noundef %conv26) #8
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %do.body29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %15) #8, !srcloc !253
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp55.not = icmp eq i8 %16, 0
  br i1 %cmp55.not, label %do.body62, label %do.end60

do.end60:                                         ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  %conv54 = zext i8 %16 to i32
  %dev61 = getelementptr inbounds %struct.i2c_adapter, ptr %piix4_adapter, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61, ptr noundef nonnull @.str.83, i32 noundef %conv54) #11
  br label %cleanup

do.body62:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @piix4_transaction.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@piix4_transaction, %if.end82)) #8
          to label %if.then76 [label %if.end82], !srcloc !256

if.then76:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  %dev77 = getelementptr inbounds %struct.i2c_adapter, ptr %piix4_adapter, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @piix4_transaction.__UNIQUE_ID_ddebug304, ptr noundef %dev77, ptr noundef nonnull @.str.84) #8
  br label %if.end82

if.end82:                                         ; preds = %if.then76, %do.body62, %do.end.if.end82_crit_edge
  %add85 = add nuw nsw i32 %conv23, -18874366
  %17 = inttoptr i32 %add85 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !258
  %19 = or i8 %18, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %19) #8, !srcloc !253
  %.b = load i1, ptr @srvrworks_csb5_delay, align 4
  br i1 %.b, label %if.then94, label %if.else95

if.then94:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2100, i32 noundef 2) #8
  br label %land.rhs.preheader

if.else95:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 500, i32 noundef 2) #8
  br label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %if.else95, %if.then94
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.preheader
  %inc336 = phi i32 [ %inc, %while.body.land.rhs_crit_edge ], [ 1, %land.rhs.preheader ]
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %conv102 = zext i8 %20 to i32
  %and103 = and i32 %conv102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %land.rhs.if.end112_crit_edge, label %while.body

land.rhs.if.end112_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

while.body:                                       ; preds = %land.rhs
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 500, i32 noundef 2) #8
  %inc = add nuw nsw i32 %inc336, 1
  %exitcond.not = icmp eq i32 %inc, 500
  br i1 %exitcond.not, label %do.end110, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

do.end110:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev111 = getelementptr inbounds %struct.i2c_adapter, ptr %piix4_adapter, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev111, ptr noundef nonnull @.str.86) #11
  br label %if.end112

if.end112:                                        ; preds = %do.end110, %land.rhs.if.end112_crit_edge
  %result.0 = phi i32 [ -110, %do.end110 ], [ 0, %land.rhs.if.end112_crit_edge ]
  %and113 = and i32 %conv102, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end112.if.end120_crit_edge, label %if.then115

if.end112.if.end120_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.then115:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  %dev119 = getelementptr inbounds %struct.i2c_adapter, ptr %piix4_adapter, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev119, ptr noundef nonnull @.str.89) #11
  br label %if.end120

if.end120:                                        ; preds = %if.then115, %if.end112.if.end120_crit_edge
  %result.1 = phi i32 [ -5, %if.then115 ], [ %result.0, %if.end112.if.end120_crit_edge ]
  %and121 = and i32 %conv102, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end120.if.end143_crit_edge, label %if.then123

if.end120.if.end143_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

if.then123:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @piix4_transaction.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@piix4_transaction, %if.end143)) #8
          to label %if.then138 [label %if.end143], !srcloc !256

if.then138:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #10
  %dev139 = getelementptr inbounds %struct.i2c_adapter, ptr %piix4_adapter, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @piix4_transaction.__UNIQUE_ID_ddebug305, ptr noundef %dev139, ptr noundef nonnull @.str.91) #8
  br label %if.end143

if.end143:                                        ; preds = %if.then138, %if.then123, %if.end120.if.end143_crit_edge
  %result.2 = phi i32 [ -5, %if.then138 ], [ %result.1, %if.end120.if.end143_crit_edge ], [ -5, %if.then123 ]
  %and144 = and i32 %conv102, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.end143.if.end166_crit_edge, label %if.then146

if.end143.if.end166_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end166

if.then146:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @piix4_transaction.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@piix4_transaction, %if.end166)) #8
          to label %if.then161 [label %if.end166], !srcloc !256

if.then161:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #10
  %dev162 = getelementptr inbounds %struct.i2c_adapter, ptr %piix4_adapter, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @piix4_transaction.__UNIQUE_ID_ddebug306, ptr noundef %dev162, ptr noundef nonnull @.str.92) #8
  br label %if.end166

if.end166:                                        ; preds = %if.then161, %if.then146, %if.end143.if.end166_crit_edge
  %result.3 = phi i32 [ -6, %if.then161 ], [ %result.2, %if.end143.if.end166_crit_edge ], [ -6, %if.then146 ]
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp171.not = icmp eq i8 %21, 0
  br i1 %cmp171.not, label %if.end166.if.end184_crit_edge, label %if.then173

if.end166.if.end184_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end184

if.then173:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !252
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %22) #8, !srcloc !253
  br label %if.end184

if.end184:                                        ; preds = %if.then173, %if.end166.if.end184_crit_edge
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp189.not = icmp eq i8 %23, 0
  br i1 %cmp189.not, label %if.end184.do.body197_crit_edge, label %do.end194

if.end184.do.body197_crit_edge:                   ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body197

do.end194:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #10
  %conv188 = zext i8 %23 to i32
  %dev195 = getelementptr inbounds %struct.i2c_adapter, ptr %piix4_adapter, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev195, ptr noundef nonnull @.str.94, i32 noundef %conv188) #11
  br label %do.body197

do.body197:                                       ; preds = %do.end194, %if.end184.do.body197_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @piix4_transaction.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@piix4_transaction, %cleanup)) #8
          to label %if.then211 [label %cleanup], !srcloc !256

if.then211:                                       ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #10
  %dev212 = getelementptr inbounds %struct.i2c_adapter, ptr %piix4_adapter, i32 0, i32 9
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %conv216 = zext i8 %24 to i32
  %add.i318 = add nuw nsw i32 %conv23, -18874365
  %25 = inttoptr i32 %add.i318 to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %conv220 = zext i8 %26 to i32
  %add.i320 = add nuw nsw i32 %conv23, -18874364
  %27 = inttoptr i32 %add.i320 to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %conv224 = zext i8 %28 to i32
  %add.i322 = add nuw nsw i32 %conv23, -18874363
  %29 = inttoptr i32 %add.i322 to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %conv228 = zext i8 %30 to i32
  %add.i324 = add nuw nsw i32 %conv23, -18874362
  %31 = inttoptr i32 %add.i324 to ptr
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #8, !srcloc !254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !255
  %conv232 = zext i8 %32 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @piix4_transaction.__UNIQUE_ID_ddebug307, ptr noundef %dev212, ptr noundef nonnull @.str.96, i32 noundef %conv216, i32 noundef %conv220, i32 noundef %conv224, i32 noundef %conv228, i32 noundef %conv232) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then211, %do.body197, %do.end60
  %retval.0 = phi i32 [ -16, %do.end60 ], [ %result.3, %if.then211 ], [ %result.3, %do.body197 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !26, !27, !28, !29, !31, !33, !35, !37, !39, !40, !41, !42, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !68, !69, !70, !72, !73, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88, !90, !92, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !137, !139, !141, !142, !143, !145, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !180, !181, !182, !183, !185, !186, !187, !189, !190, !192, !193, !194, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !210, !211, !213, !214, !215, !217, !218, !220, !222, !224, !225, !226, !228, !229, !231, !232, !233, !235, !236, !238, !240}
!llvm.module.flags = !{!242, !243, !244, !245, !246, !247, !248, !249}
!llvm.ident = !{!250}

!0 = !{ptr @__param_force, !1, !"__param_force", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 105, i32 1}
!2 = !{ptr @__UNIQUE_ID_forcetype292, !1, !"__UNIQUE_ID_forcetype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force293, !4, !"__UNIQUE_ID_force293", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 106, i32 1}
!5 = !{ptr @__param_force_addr, !6, !"__param_force_addr", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 111, i32 1}
!7 = !{ptr @__UNIQUE_ID_force_addrtype294, !6, !"__UNIQUE_ID_force_addrtype294", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_force_addr295, !9, !"__UNIQUE_ID_force_addr295", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 112, i32 1}
!10 = !{ptr @__initcall__kmod_i2c_piix4__308_1033_piix4_driver_init6, !11, !"__initcall__kmod_i2c_piix4__308_1033_piix4_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 1033, i32 1}
!12 = !{ptr @__exitcall_piix4_driver_exit, !11, !"__exitcall_piix4_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author309, !14, !"__UNIQUE_ID_author309", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 1035, i32 1}
!15 = !{ptr @__UNIQUE_ID_author310, !16, !"__UNIQUE_ID_author310", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 1036, i32 1}
!17 = !{ptr @__UNIQUE_ID_description311, !18, !"__UNIQUE_ID_description311", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 1037, i32 1}
!19 = !{ptr @__UNIQUE_ID_file312, !20, !"__UNIQUE_ID_file312", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 1038, i32 1}
!21 = !{ptr @__UNIQUE_ID_license313, !20, !"__UNIQUE_ID_license313", i1 false, i1 false}
!22 = !{ptr @force, !23, !"force", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 104, i32 12}
!24 = !{ptr @force_addr, !25, !"force_addr", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 110, i32 12}
!26 = !{ptr @__param_str_force, !1, !"__param_str_force", i1 false, i1 false}
!27 = !{ptr @__param_str_force_addr, !6, !"__param_str_force_addr", i1 false, i1 false}
!28 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 1027, i32 11}
!31 = !{ptr @piix4_driver, !32, !"piix4_driver", i1 false, i1 false}
!32 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 1026, i32 26}
!33 = !{ptr @piix4_ids, !34, !"piix4_ids", i1 false, i1 false}
!34 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 782, i32 35}
!35 = !{ptr @.str.2, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 961, i32 9}
!37 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 275, i32 3}
!39 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @piix4_setup_sb800._entry, !38, !"_entry", i1 false, i1 false}
!44 = !{ptr @piix4_setup_sb800._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 293, i32 7}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 294, i32 3}
!49 = !{ptr @piix4_setup_sb800._entry.9, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @piix4_setup_sb800._entry_ptr.11, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 318, i32 3}
!53 = !{ptr @piix4_setup_sb800._entry.12, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @piix4_setup_sb800._entry_ptr.14, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 327, i32 3}
!57 = !{ptr @piix4_setup_sb800._entry.15, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @piix4_setup_sb800._entry_ptr.17, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 334, i32 3}
!61 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @piix4_setup_sb800._entry.18, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @piix4_setup_sb800._entry_ptr.21, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 341, i32 7}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 342, i32 3}
!68 = !{ptr @piix4_setup_sb800._entry.23, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @piix4_setup_sb800._entry_ptr.25, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 351, i32 3}
!72 = !{ptr @piix4_setup_sb800.__UNIQUE_ID_ddebug298, !71, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 353, i32 3}
!75 = !{ptr @piix4_setup_sb800.__UNIQUE_ID_ddebug299, !74, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 355, i32 2}
!78 = !{ptr @piix4_setup_sb800._entry.28, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @piix4_setup_sb800._entry_ptr.30, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 390, i32 2}
!82 = !{ptr @piix4_setup_sb800._entry.31, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @piix4_setup_sb800._entry_ptr.33, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @piix4_port_sel_sb800, !85, !"piix4_port_sel_sb800", i1 false, i1 false}
!85 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 150, i32 11}
!86 = !{ptr @piix4_port_mask_sb800, !87, !"piix4_port_mask_sb800", i1 false, i1 false}
!87 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 151, i32 11}
!88 = !{ptr @piix4_port_shift_sb800, !89, !"piix4_port_shift_sb800", i1 false, i1 false}
!89 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 152, i32 11}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 899, i32 2}
!92 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @piix4_add_adapters_sb800._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @piix4_add_adapters_sb800._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @piix4_adapter_count, !96, !"piix4_adapter_count", i1 false, i1 false}
!96 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 810, i32 12}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 154, i32 2}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 154, i32 13}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 154, i32 24}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 154, i32 35}
!105 = !{ptr @piix4_main_port_names_sb800, !106, !"piix4_main_port_names_sb800", i1 false, i1 false}
!106 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 153, i32 20}
!107 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 180, i32 3}
!109 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @piix4_setup._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @piix4_setup._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 188, i32 3}
!114 = !{ptr @piix4_setup._entry.42, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @piix4_setup._entry_ptr.44, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 202, i32 4}
!118 = !{ptr @piix4_setup._entry.45, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @piix4_setup._entry_ptr.47, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @piix4_setup._entry.48, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 213, i32 3}
!122 = !{ptr @piix4_setup._entry_ptr.49, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 226, i32 3}
!125 = !{ptr @piix4_setup._entry.50, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @piix4_setup._entry_ptr.52, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 240, i32 4}
!129 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @piix4_setup._entry.53, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @piix4_setup._entry_ptr.56, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @piix4_setup._entry.57, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 243, i32 4}
!134 = !{ptr @piix4_setup._entry_ptr.58, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @piix4_setup.__UNIQUE_ID_ddebug296, !136, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!136 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 251, i32 3}
!137 = !{ptr @piix4_setup.__UNIQUE_ID_ddebug297, !138, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!138 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 253, i32 3}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 255, i32 3}
!141 = !{ptr @piix4_setup._entry.59, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @piix4_setup._entry_ptr.61, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @piix4_setup._entry.62, !144, !"_entry", i1 false, i1 false}
!144 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 259, i32 2}
!145 = !{ptr @piix4_setup._entry_ptr.63, !144, !"_entry_ptr", i1 false, i1 false}
!146 = distinct !{null, !147, !"srvrworks_csb5_delay", i1 false, i1 false}
!147 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 116, i32 12}
!148 = distinct !{null, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 121, i32 12}
!150 = distinct !{null, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 128, i32 12}
!152 = distinct !{null, !153, !"piix4_dmi_blacklist", i1 false, i1 false}
!153 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 119, i32 35}
!154 = distinct !{null, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 141, i32 12}
!156 = distinct !{null, !157, !"piix4_dmi_ibm", i1 false, i1 false}
!157 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 139, i32 35}
!158 = !{ptr @.str.67, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 854, i32 3}
!160 = !{ptr @piix4_smbus_algorithm_sb800, !161, !"piix4_smbus_algorithm_sb800", i1 false, i1 false}
!161 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 777, i32 35}
!162 = !{ptr @.str.68, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 721, i32 4}
!164 = !{ptr @.str.69, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @piix4_access_sb800._entry, !163, !"_entry", i1 false, i1 false}
!167 = !{ptr @piix4_access_sb800._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.72, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 726, i32 4}
!170 = !{ptr @piix4_access_sb800._entry.71, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @piix4_access_sb800._entry_ptr.73, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 735, i32 4}
!174 = !{ptr @piix4_access_sb800._entry.74, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @piix4_access_sb800._entry_ptr.76, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.77, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 620, i32 7}
!178 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 570, i32 3}
!180 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @piix4_access._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @piix4_access._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.80, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 445, i32 2}
!185 = !{ptr @.str.81, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @piix4_transaction.__UNIQUE_ID_ddebug302, !184, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!187 = !{ptr @.str.82, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 452, i32 3}
!189 = !{ptr @piix4_transaction.__UNIQUE_ID_ddebug303, !188, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!190 = !{ptr @.str.83, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 456, i32 4}
!192 = !{ptr @piix4_transaction._entry, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @piix4_transaction._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.84, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 459, i32 4}
!196 = !{ptr @piix4_transaction.__UNIQUE_ID_ddebug304, !195, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!197 = !{ptr @.str.86, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 478, i32 3}
!199 = !{ptr @piix4_transaction._entry.85, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @piix4_transaction._entry_ptr.87, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.89, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 484, i32 3}
!203 = !{ptr @piix4_transaction._entry.88, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @piix4_transaction._entry_ptr.90, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.91, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 489, i32 3}
!207 = !{ptr @piix4_transaction.__UNIQUE_ID_ddebug305, !206, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!208 = !{ptr @.str.92, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 496, i32 3}
!210 = !{ptr @piix4_transaction.__UNIQUE_ID_ddebug306, !209, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!211 = !{ptr @.str.94, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 503, i32 3}
!213 = !{ptr @piix4_transaction._entry.93, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @piix4_transaction._entry_ptr.95, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.96, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 506, i32 2}
!217 = !{ptr @piix4_transaction.__UNIQUE_ID_ddebug307, !216, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!218 = !{ptr @smbus_algorithm, !219, !"smbus_algorithm", i1 false, i1 false}
!219 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 772, i32 35}
!220 = !{ptr @piix4_main_adapters, !221, !"piix4_main_adapters", i1 false, i1 false}
!221 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 808, i32 28}
!222 = !{ptr @.str.97, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 409, i32 3}
!224 = !{ptr @.str.98, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @piix4_setup_aux.__UNIQUE_ID_ddebug300, !223, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!226 = !{ptr @.str.99, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 416, i32 3}
!228 = !{ptr @piix4_setup_aux.__UNIQUE_ID_ddebug301, !227, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!229 = !{ptr @.str.100, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 425, i32 3}
!231 = !{ptr @piix4_setup_aux._entry, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @piix4_setup_aux._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @piix4_setup_aux._entry.101, !234, !"_entry", i1 false, i1 false}
!234 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 430, i32 2}
!235 = !{ptr @piix4_setup_aux._entry_ptr.102, !234, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.103, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 156, i32 48}
!238 = distinct !{null, !239, !"piix4_aux_port_name_sb800", i1 false, i1 false}
!239 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 156, i32 20}
!240 = !{ptr @piix4_aux_adapter, !241, !"piix4_aux_adapter", i1 false, i1 false}
!241 = !{!"../drivers/i2c/busses/i2c-piix4.c", i32 809, i32 28}
!242 = !{i32 1, !"wchar_size", i32 2}
!243 = !{i32 1, !"min_enum_size", i32 4}
!244 = !{i32 8, !"branch-target-enforcement", i32 0}
!245 = !{i32 8, !"sign-return-address", i32 0}
!246 = !{i32 8, !"sign-return-address-all", i32 0}
!247 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!248 = !{i32 7, !"uwtable", i32 1}
!249 = !{i32 7, !"frame-pointer", i32 2}
!250 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!251 = !{!"auto-init"}
!252 = !{i64 2152542402}
!253 = !{i64 5006346}
!254 = !{i64 5006741}
!255 = !{i64 2152540417}
!256 = !{i64 2148980113, i64 2148980118, i64 2148980131, i64 2148980175, i64 2148980209, i64 2148980230}
!257 = !{i8 0, i8 2}
!258 = !{i64 2155988509}
!259 = !{i64 2155997169}
