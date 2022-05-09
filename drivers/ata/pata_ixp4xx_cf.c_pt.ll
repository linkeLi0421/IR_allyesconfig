; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_ixp4xx_cf.c_pt.bc'
source_filename = "../drivers/ata/pata_ixp4xx_cf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.ixp4xx_pata = type { ptr, ptr, i32, ptr, ptr }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.83, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.83 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }

@__initcall__kmod_pata_ixp4xx_cf__288_308_ixp4xx_pata_platform_driver_init6 = internal global ptr @ixp4xx_pata_platform_driver_init, section ".initcall6.init", align 4
@ixp4xx_pata_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ixp4xx_pata_probe, ptr @ata_platform_remove_one, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ixp4xx_pata_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ixp4xx_pata_platform_driver_exit = internal global ptr @ixp4xx_pata_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [62 x i8] c"pata_ixp4xx_cf.author=Alessandro Zummo <a.zummo@towertech.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [74 x i8] c"pata_ixp4xx_cf.description=low-level driver for ixp4xx Compact Flash PATA\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [47 x i8] c"pata_ixp4xx_cf.file=drivers/ata/pata_ixp4xx_cf\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [27 x i8] c"pata_ixp4xx_cf.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version293 = internal constant [27 x i8] c"pata_ixp4xx_cf.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pata_ixp4xx_cf\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias294 = internal constant [45 x i8] c"pata_ixp4xx_cf.alias=platform:pata_ixp4xx_cf\00", section ".modinfo", align 1
@ixp4xx_pata_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,ixp4xx-compact-flash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ixp4xx_port_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 64, i32 0, i32 31, i32 0, i32 0, ptr @ixp4xx_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"no regmap\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't inspect CMD address\0A\00", [37 x i8] zeroinitializer }, align 32
@ixp4xx_pata_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 261, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"using CS%d for PIO timing configuration\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ixp4xx_pata_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/ata/pata_ixp4xx_cf.c\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ixp4xx_pata_probe._entry_ptr = internal global ptr @ixp4xx_pata_probe._entry, section ".printk_index", align 4
@ixp4xx_pata_probe.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ixp4xx_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ixp4xx_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_cable_40wire, ptr null, ptr @ixp4xx_set_piomode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ixp4xx_mmio_data_xfer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_port_ops }, [44 x i8] zeroinitializer }, align 32
@ata_sff_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@ixp4xx_set_piomode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.8, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016ata%u.%02u: configured for PIO%d 8bit\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ixp4xx_set_piomode\00", [45 x i8] zeroinitializer }, align 32
@ixp4xx_set_piomode._entry_ptr = internal global ptr @ixp4xx_set_piomode._entry, section ".printk_index", align 4
@ixp4xx_mmio_data_xfer.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.8, ptr @.str.14, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ixp4xx_mmio_data_xfer\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ata%u.%02u: %s %d bytes\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cmd 0x%lx ctl 0x%lx\00", [44 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@switch.table.ixp4xx_set_piomode = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 172425216, i32 105054208, i32 37814272, i32 8519680, i32 4194304], [44 x i8] zeroinitializer }, align 32
@switch.table.ixp4xx_mmio_data_xfer = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 694419456, i32 84082688, i32 11665408, i32 8519680, i32 4194304], [44 x i8] zeroinitializer }, align 32
@switch.table.ixp4xx_mmio_data_xfer.18 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 172425216, i32 105054208, i32 37814272, i32 8519680, i32 4194304], [44 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [28 x i8] c"ixp4xx_pata_platform_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 299, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 313, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [21 x i8] c"ixp4xx_pata_of_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 294, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"ixp4xx_port_info\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 187, i32 29 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 256, i32 50 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 258, i32 39 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 260, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 261, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [31 x i8] c"ixp4xx_pata_probe.__print_once\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [11 x i8] c"ixp4xx_sht\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 176, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant [16 x i8] c"ixp4xx_port_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 180, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 117, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 135, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [32 x i8] c"../drivers/ata/pata_ixp4xx_cf.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 229, i32 20 }
@___asan_gen_.95 = private unnamed_addr constant [32 x i8] c"switch.table.ixp4xx_set_piomode\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [35 x i8] c"switch.table.ixp4xx_mmio_data_xfer\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [38 x i8] c"switch.table.ixp4xx_mmio_data_xfer.18\00", align 1
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__UNIQUE_ID_version293, ptr @__exitcall_ixp4xx_pata_platform_driver_exit, ptr @__initcall__kmod_pata_ixp4xx_cf__288_308_ixp4xx_pata_platform_driver_init6, ptr @__modver_attr, ptr @ixp4xx_pata_platform_driver_exit, ptr @ixp4xx_pata_probe._entry, ptr @ixp4xx_pata_probe._entry_ptr, ptr @ixp4xx_set_piomode._entry, ptr @ixp4xx_set_piomode._entry_ptr, ptr @ixp4xx_pata_platform_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ixp4xx_pata_of_match, ptr @ixp4xx_port_info, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @ixp4xx_pata_probe.__print_once, ptr @ixp4xx_sht, ptr @ixp4xx_port_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @switch.table.ixp4xx_set_piomode, ptr @switch.table.ixp4xx_mmio_data_xfer, ptr @switch.table.ixp4xx_mmio_data_xfer.18], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pata_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pata_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pata_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_pata_probe.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_set_piomode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixp4xx_set_piomode to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixp4xx_mmio_data_xfer to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixp4xx_mmio_data_xfer.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ixp4xx_pata_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ixp4xx_pata_platform_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ixp4xx_pata_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ixp4xx_pata_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixp4xx_pata_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pi = alloca %struct.ata_port_info, align 4
  %ppi = alloca [2 x ptr], align 4
  %csindex = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pi) #6
  %0 = call ptr @memcpy(ptr %pi, ptr @ixp4xx_port_info, i32 28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #6
  %1 = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %2 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pi, ptr %ppi, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csindex) #6
  %6 = ptrtoint ptr %csindex to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %csindex, align 4, !annotation !66
  %call = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call2 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #6
  %tobool.not = icmp eq ptr %call, null
  %tobool3.not = icmp eq ptr %call2, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #6
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.device_node, ptr %5, i32 0, i32 6
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 4
  %call8 = call ptr @syscon_node_to_regmap(ptr noundef %8) #6
  %rmap = getelementptr inbounds %struct.ixp4xx_pata, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %rmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %rmap, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call8 to i32
  %call14 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %10, ptr noundef nonnull @.str.3) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %call16 = call i32 @of_property_read_u32_index(ptr noundef %5, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef nonnull %csindex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.end, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call16, ptr noundef nonnull @.str.5) #6
  br label %cleanup

do.end:                                           ; preds = %if.end15
  %11 = ptrtoint ptr %csindex to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %csindex, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef %12) #9
  %13 = ptrtoint ptr %csindex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %csindex, align 4
  %mul = shl i32 %14, 2
  %cmd_csreg = getelementptr inbounds %struct.ixp4xx_pata, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %cmd_csreg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul, ptr %cmd_csreg, align 4
  %call21 = call ptr @ata_host_alloc_pinfo(ptr noundef %dev1, ptr noundef nonnull %ppi, i32 noundef 1) #6
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call21, ptr %call.i, align 4
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %do.end.cleanup_crit_edge, label %if.end25

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %do.end
  %private_data = getelementptr inbounds %struct.ata_host, ptr %call21, i32 0, i32 5
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %private_data, align 4
  %call27 = call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %call31 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call) #6
  %cmd32 = getelementptr inbounds %struct.ixp4xx_pata, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %cmd32 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call31, ptr %cmd32, align 4
  %call33 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call2) #6
  %ctl34 = getelementptr inbounds %struct.ixp4xx_pata, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %ctl34 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call33, ptr %ctl34, align 4
  %20 = ptrtoint ptr %cmd32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cmd32, align 4
  %cmp.i105 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  %cmp.i106 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  %or.cond107 = select i1 %cmp.i105, i1 true, i1 %cmp.i106
  br i1 %or.cond107, label %if.end30.cleanup_crit_edge, label %if.end41

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.end30
  %call42 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp = icmp sgt i32 %call42, 0
  br i1 %cmp, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end41
  %call44 = call i32 @irq_set_irq_type(i32 noundef %call42, i32 noundef 1) #6
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %ports = getelementptr inbounds %struct.ata_host, ptr %23, i32 0, i32 12
  %24 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ports, align 4
  %26 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call, align 4
  %28 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call2, align 4
  call fastcc void @ixp4xx_setup_port(ptr noundef %25, ptr noundef nonnull %call.i, i32 noundef %27, i32 noundef %29)
  %.b104 = load i1, ptr @ixp4xx_pata_probe.__print_once, align 1
  br i1 %.b104, label %if.then43.if.end53_crit_edge, label %if.then52

if.then43.if.end53_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.else:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp45.not = icmp eq i32 %call42, 0
  %call42. = select i1 %cmp45.not, i32 -22, i32 %call42
  br label %cleanup

if.then52:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ixp4xx_pata_probe.__print_once, align 1
  call void @ata_print_version(ptr noundef %dev1, ptr noundef nonnull @.str.2) #6
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.then43.if.end53_crit_edge
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %call55 = call i32 @ata_host_activate(ptr noundef %31, i32 noundef %call42, ptr noundef nonnull @ata_sff_interrupt, i32 noundef 0, ptr noundef nonnull @ixp4xx_sht) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.else, %if.end30.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then18, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then11 ], [ %call19, %if.then18 ], [ %call55, %if.end53 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ %call27, %if.end25.cleanup_crit_edge ], [ -12, %if.end30.cleanup_crit_edge ], [ %call42., %if.else ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csindex) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pi) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_platform_remove_one(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixp4xx_setup_port(ptr noundef %ap, ptr nocapture noundef readonly %ixpp, i32 noundef %raw_cmd, i32 noundef %raw_ctl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8
  %add = add i32 %raw_ctl, 6
  %cmd = getelementptr inbounds %struct.ixp4xx_pata, ptr %ixpp, i32 0, i32 3
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 4
  %2 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %ioaddr1, align 4
  %ctl = getelementptr inbounds %struct.ixp4xx_pata, ptr %ixpp, i32 0, i32 4
  %3 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctl, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 6
  %altstatus_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 11
  %5 = ptrtoint ptr %altstatus_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %altstatus_addr, align 4
  %6 = load ptr, ptr %ctl, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 6
  %ctl_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 12
  %7 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr3, ptr %ctl_addr, align 4
  tail call void @ata_sff_std_ports(ptr noundef %ioaddr1) #6
  tail call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %ap, ptr noundef nonnull @.str.17, i32 noundef %raw_cmd, i32 noundef %add) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_40wire(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ixp4xx_set_piomode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 128
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pmp, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %12 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devno, align 4
  %add = add i32 %13, %11
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %14 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %15 to i32
  %sub = add nsw i32 %conv, -8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %9, i32 noundef %add, i32 noundef %sub) #9
  %16 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pio_mode, align 16
  %switch.tableidx = add i8 %17, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %18 = icmp ult i8 %switch.tableidx, 5
  br i1 %18, label %switch.lookup, label %entry.ixp4xx_set_8bit_timing.exit_crit_edge

entry.ixp4xx_set_8bit_timing.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixp4xx_set_8bit_timing.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %19 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ixp4xx_set_piomode, i32 0, i32 %19
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  %rmap14.i = getelementptr inbounds %struct.ixp4xx_pata, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %rmap14.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmap14.i, align 4
  %cmd_csreg15.i = getelementptr inbounds %struct.ixp4xx_pata, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %cmd_csreg15.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cmd_csreg15.i, align 4
  %call.i34.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %24, i32 noundef 1073676288, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %ixp4xx_set_8bit_timing.exit

ixp4xx_set_8bit_timing.exit:                      ; preds = %switch.lookup, %entry.ixp4xx_set_8bit_timing.exit_crit_edge
  %rmap17.i = getelementptr inbounds %struct.ixp4xx_pata, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %rmap17.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmap17.i, align 4
  %cmd_csreg18.i = getelementptr inbounds %struct.ixp4xx_pata, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %cmd_csreg18.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cmd_csreg18.i, align 4
  %call.i35.i = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %28, i32 noundef 65, i32 noundef 65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixp4xx_mmio_data_xfer(ptr nocapture noundef readonly %qc, ptr nocapture noundef %buf, i32 noundef %buflen, i32 noundef %rw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %buflen, 1
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %data_addr = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %data_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data_addr, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 31
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixp4xx_mmio_data_xfer.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixp4xx_mmio_data_xfer, %if.then)) #6
          to label %do.body9 [label %if.then], !srcloc !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 128
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pmp, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %devno, align 4
  %add = add i32 %21, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rw)
  %cmp = icmp eq i32 %rw, 0
  %cond = select i1 %cmp, ptr @.str.15, ptr @.str.16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ixp4xx_mmio_data_xfer.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.14, i32 noundef %17, i32 noundef %add, ptr noundef nonnull %cond, i32 noundef %buflen) #6
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock, align 8
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #6
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pio_mode, align 16
  %switch.tableidx = add i8 %25, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %26 = icmp ult i8 %switch.tableidx, 5
  br i1 %26, label %switch.lookup, label %do.body9.ixp4xx_set_16bit_timing.exit_crit_edge

do.body9.ixp4xx_set_16bit_timing.exit_crit_edge:  ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixp4xx_set_16bit_timing.exit

switch.lookup:                                    ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %27 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ixp4xx_mmio_data_xfer, i32 0, i32 %27
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load i32, ptr %switch.gep, align 4
  %rmap14.i = getelementptr inbounds %struct.ixp4xx_pata, ptr %11, i32 0, i32 1
  %29 = ptrtoint ptr %rmap14.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmap14.i, align 4
  %cmd_csreg15.i = getelementptr inbounds %struct.ixp4xx_pata, ptr %11, i32 0, i32 2
  %31 = ptrtoint ptr %cmd_csreg15.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cmd_csreg15.i, align 4
  %call.i34.i = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %32, i32 noundef 1073676288, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %ixp4xx_set_16bit_timing.exit

ixp4xx_set_16bit_timing.exit:                     ; preds = %switch.lookup, %do.body9.ixp4xx_set_16bit_timing.exit_crit_edge
  %rmap17.i = getelementptr inbounds %struct.ixp4xx_pata, ptr %11, i32 0, i32 1
  %33 = ptrtoint ptr %rmap17.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmap17.i, align 4
  %cmd_csreg18.i = getelementptr inbounds %struct.ixp4xx_pata, ptr %11, i32 0, i32 2
  %35 = ptrtoint ptr %cmd_csreg18.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cmd_csreg18.i, align 4
  %call.i35.i = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %36, i32 noundef 65, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 1073740) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rw)
  %cmp18 = icmp eq i32 %rw, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %buflen)
  %cmp21113.not = icmp ult i32 %buflen, 2
  br i1 %cmp18, label %for.cond.preheader, label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %ixp4xx_set_16bit_timing.exit
  br i1 %cmp21113.not, label %if.end37.thread, label %do.body30.preheader

do.body30.preheader:                              ; preds = %for.cond26.preheader
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %do.body30

for.cond.preheader:                               ; preds = %ixp4xx_set_16bit_timing.exit
  br i1 %cmp21113.not, label %if.end37.thread123, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax116 = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0114 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #6, !srcloc !68
  %39 = tail call i16 @llvm.bswap.i16(i16 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  %arrayidx = getelementptr i16, ptr %buf, i32 %i.0114
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.0114, 1
  %exitcond117.not = icmp eq i32 %inc, %umax116
  br i1 %exitcond117.not, label %for.body.if.end37_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end37_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.body30:                                        ; preds = %do.body30.do.body30_crit_edge, %do.body30.preheader
  %i.1112 = phi i32 [ %inc35, %do.body30.do.body30_crit_edge ], [ 0, %do.body30.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %arrayidx33 = getelementptr i16, ptr %buf, i32 %i.1112
  %41 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx33, align 2
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 %43) #6, !srcloc !71
  %inc35 = add nuw nsw i32 %i.1112, 1
  %exitcond.not = icmp eq i32 %inc35, %umax
  br i1 %exitcond.not, label %do.body30.if.end37_crit_edge, label %do.body30.do.body30_crit_edge

do.body30.do.body30_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30

do.body30.if.end37_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end37:                                         ; preds = %do.body30.if.end37_crit_edge, %for.body.if.end37_crit_edge
  %and = and i32 %buflen, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %if.end37.if.end64_crit_edge, label %if.then45, !prof !72

if.end37.if.end64_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.end37.thread123:                               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %tobool38.not125 = icmp eq i32 %buflen, 0
  br i1 %tobool38.not125, label %if.end37.thread123.if.end64_crit_edge, label %if.then45.thread126, !prof !72

if.end37.thread123.if.end64_crit_edge:            ; preds = %if.end37.thread123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then45.thread126:                              ; preds = %if.end37.thread123
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr127 = getelementptr i8, ptr %buf, i32 %buflen
  %add.ptr46128 = getelementptr i8, ptr %add.ptr127, i32 -1
  br label %if.then49

if.end37.thread:                                  ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %tobool38.not119 = icmp eq i32 %buflen, 0
  br i1 %tobool38.not119, label %if.end37.thread.if.end64_crit_edge, label %if.then45.thread, !prof !72

if.end37.thread.if.end64_crit_edge:               ; preds = %if.end37.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then45.thread:                                 ; preds = %if.end37.thread
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr120 = getelementptr i8, ptr %buf, i32 %buflen
  %add.ptr46121 = getelementptr i8, ptr %add.ptr120, i32 -1
  br label %if.else56

if.then45:                                        ; preds = %if.end37
  %add.ptr = getelementptr i8, ptr %buf, i32 %buflen
  %add.ptr46 = getelementptr i8, ptr %add.ptr, i32 -1
  br i1 %cmp18, label %if.then45.if.then49_crit_edge, label %if.then45.if.else56_crit_edge

if.then45.if.else56_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else56

if.then45.if.then49_crit_edge:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then49

if.then49:                                        ; preds = %if.then45.if.then49_crit_edge, %if.then45.thread126
  %add.ptr46129 = phi ptr [ %add.ptr46128, %if.then45.thread126 ], [ %add.ptr46, %if.then45.if.then49_crit_edge ]
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  %align_buf.sroa.0.0.extract.trunc = trunc i16 %44 to i8
  %45 = ptrtoint ptr %add.ptr46129 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %align_buf.sroa.0.0.extract.trunc, ptr %add.ptr46129, align 1
  br label %if.end62

if.else56:                                        ; preds = %if.then45.if.else56_crit_edge, %if.then45.thread
  %add.ptr46122 = phi ptr [ %add.ptr46121, %if.then45.thread ], [ %add.ptr46, %if.then45.if.else56_crit_edge ]
  %46 = ptrtoint ptr %add.ptr46122 to i32
  call void @__asan_load1_noabort(i32 %46)
  %align_buf.sroa.0.0.copyload = load i8, ptr %add.ptr46122, align 1
  %align_buf.sroa.0.0.insert.ext = zext i8 %align_buf.sroa.0.0.copyload to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 %align_buf.sroa.0.0.insert.ext) #6, !srcloc !71
  br label %if.end62

if.end62:                                         ; preds = %if.else56, %if.then49
  %inc63 = add nuw i32 %shr, 1
  br label %if.end64

if.end64:                                         ; preds = %if.end62, %if.end37.thread.if.end64_crit_edge, %if.end37.thread123.if.end64_crit_edge, %if.end37.if.end64_crit_edge
  %words.0 = phi i32 [ %inc63, %if.end62 ], [ %shr, %if.end37.if.end64_crit_edge ], [ %shr, %if.end37.thread.if.end64_crit_edge ], [ 0, %if.end37.thread123.if.end64_crit_edge ]
  %47 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pio_mode, align 16
  %switch.tableidx133 = add i8 %48, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx133)
  %49 = icmp ult i8 %switch.tableidx133, 5
  br i1 %49, label %switch.lookup132, label %if.end64.ixp4xx_set_8bit_timing.exit_crit_edge

if.end64.ixp4xx_set_8bit_timing.exit_crit_edge:   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %ixp4xx_set_8bit_timing.exit

switch.lookup132:                                 ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %50 = sext i8 %switch.tableidx133 to i32
  %switch.gep134 = getelementptr inbounds [5 x i32], ptr @switch.table.ixp4xx_mmio_data_xfer.18, i32 0, i32 %50
  %51 = ptrtoint ptr %switch.gep134 to i32
  call void @__asan_load4_noabort(i32 %51)
  %switch.load135 = load i32, ptr %switch.gep134, align 4
  %52 = ptrtoint ptr %rmap17.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmap17.i, align 4
  %54 = ptrtoint ptr %cmd_csreg18.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cmd_csreg18.i, align 4
  %call.i34.i104 = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef %55, i32 noundef 1073676288, i32 noundef %switch.load135, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %ixp4xx_set_8bit_timing.exit

ixp4xx_set_8bit_timing.exit:                      ; preds = %switch.lookup132, %if.end64.ixp4xx_set_8bit_timing.exit_crit_edge
  %56 = ptrtoint ptr %rmap17.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmap17.i, align 4
  %58 = ptrtoint ptr %cmd_csreg18.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cmd_csreg18.i, align 4
  %call.i35.i108 = tail call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef %59, i32 noundef 65, i32 noundef 65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 1073740) #6
  %61 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lock, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %62, i32 noundef %call13) #6
  %shl = shl i32 %words.0, 1
  ret i32 %shl
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_std_ports(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_queuecmd(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_ioctl(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_slave_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_slave_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_unlock_native_capacity(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !50, !51, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_pata_ixp4xx_cf__288_308_ixp4xx_pata_platform_driver_init6, !1, !"__initcall__kmod_pata_ixp4xx_cf__288_308_ixp4xx_pata_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_ixp4xx_cf.c", i32 308, i32 1}
!2 = !{ptr @__exitcall_ixp4xx_pata_platform_driver_exit, !1, !"__exitcall_ixp4xx_pata_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_ixp4xx_cf.c", i32 310, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_ixp4xx_cf.c", i32 311, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_ixp4xx_cf.c", i32 312, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version293, !11, !"__UNIQUE_ID_version293", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_ixp4xx_cf.c", i32 313, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias294, !17, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_ixp4xx_cf.c", i32 314, i32 1}
!18 = !{ptr @ixp4xx_pata_platform_driver, !19, !"ixp4xx_pata_platform_driver", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_ixp4xx_cf.c", i32 299, i32 31}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_ixp4xx_cf.c", i32 256, i32 50}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_ixp4xx_cf.c", i32 258, i32 39}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_ixp4xx_cf.c", i32 260, i32 34}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_ixp4xx_cf.c", i32 261, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ixp4xx_pata_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @ixp4xx_pata_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = distinct !{null, !35, !"__print_once", i1 false, i1 false}
!35 = !{!"../drivers/ata/pata_ixp4xx_cf.c", i32 289, i32 2}
!36 = !{ptr @ixp4xx_port_info, !37, !"ixp4xx_port_info", i1 false, i1 false}
!37 = !{!"../drivers/ata/pata_ixp4xx_cf.c", i32 187, i32 29}
!38 = !{ptr @ixp4xx_port_ops, !39, !"ixp4xx_port_ops", i1 false, i1 false}
!39 = !{!"../drivers/ata/pata_ixp4xx_cf.c", i32 180, i32 35}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/ata/pata_ixp4xx_cf.c", i32 117, i32 2}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ixp4xx_set_piomode._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ixp4xx_set_piomode._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/ata/pata_ixp4xx_cf.c", i32 135, i32 2}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ixp4xx_mmio_data_xfer.__UNIQUE_ID_ddebug287, !46, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!49 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/ata/pata_ixp4xx_cf.c", i32 229, i32 20}
!53 = !{ptr @ixp4xx_sht, !54, !"ixp4xx_sht", i1 false, i1 false}
!54 = !{!"../drivers/ata/pata_ixp4xx_cf.c", i32 176, i32 34}
!55 = !{ptr @ixp4xx_pata_of_match, !56, !"ixp4xx_pata_of_match", i1 false, i1 false}
!56 = !{!"../drivers/ata/pata_ixp4xx_cf.c", i32 294, i32 34}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"auto-init"}
!67 = !{i64 2148698652, i64 2148698657, i64 2148698670, i64 2148698714, i64 2148698748, i64 2148698769}
!68 = !{i64 4700368}
!69 = !{i64 2155490020}
!70 = !{i64 2155490226}
!71 = !{i64 4700168}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i64 2155490880}
!74 = !{i64 2155491090}
