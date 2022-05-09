; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_sil680.c_pt.bc'
source_filename = "../drivers/ata/pata_sil680.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.78 = type { ptr }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.84, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.84 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }

@__initcall__kmod_pata_sil680__291_436_sil680_pci_driver_init6 = internal global ptr @sil680_pci_driver_init, section ".initcall6.init", align 4
@sil680_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @sil680, ptr @sil680_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @sil680_reinit_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sil680_pci_driver_exit = internal global ptr @sil680_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [28 x i8] c"pata_sil680.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [56 x i8] c"pata_sil680.description=low-level driver for SI680 PATA\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [41 x i8] c"pata_sil680.file=drivers/ata/pata_sil680\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [24 x i8] c"pata_sil680.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version296 = internal constant [26 x i8] c"pata_sil680.version=0.4.9\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pata_sil680\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.4.9\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@sil680 = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4245, i32 1664, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sil680_init_one.info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 127, ptr @sil680_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@sil680_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sil680_cable_detect, ptr null, ptr @sil680_set_piomode, ptr @sil680_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sil680_sff_exec_command, ptr null, ptr null, ptr @sil680_sff_irq_check, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma32_port_ops }, [44 x i8] zeroinitializer }, align 32
@sil680_init_one.info_slow = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 63, ptr @sil680_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@__const.sil680_init_one.ppi = private unnamed_addr constant [2 x ptr] [ptr @sil680_init_one.info, ptr null], align 8
@sil680_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@sil680_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_bmdma32_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@sil680_set_piomode.speed_p = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 12938, i16 8835, i16 4356, i16 4291, i16 4289], [22 x i8] zeroinitializer }, align 32
@sil680_set_piomode.speed_t = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 12938, i16 8835, i16 4737, i16 4291, i16 4289], [22 x i8] zeroinitializer }, align 32
@sil680_set_dmamode.ultra_table = internal constant { [2 x [7 x i8]], [18 x i8] } { [2 x [7 x i8]] [[7 x i8] c"\0C\07\05\04\02\01\FF", [7 x i8] c"\0F\0B\07\05\03\02\01"], [18 x i8] zeroinitializer }, align 32
@sil680_set_dmamode.dma_table = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 8712, i16 4290, i16 4289], [26 x i8] zeroinitializer }, align 32
@sil680_init_chip.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sil680_init_chip\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/ata/pata_sil680.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sil680: BA5_EN = %d clock = %02X\0A\00", [62 x i8] zeroinitializer }, align 32
@sil680_init_chip.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sil680_init_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 311, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sil680: 100MHz clock.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sil680_init_chip._entry_ptr = internal global ptr @sil680_init_chip._entry, section ".printk_index", align 4
@sil680_init_chip._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 314, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sil680: 133MHz clock.\0A\00", [41 x i8] zeroinitializer }, align 32
@sil680_init_chip._entry_ptr.11 = internal global ptr @sil680_init_chip._entry.9, section ".printk_index", align 4
@sil680_init_chip._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 317, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sil680: Using PCI clock.\0A\00", [38 x i8] zeroinitializer }, align 32
@sil680_init_chip._entry_ptr.14 = internal global ptr @sil680_init_chip._entry.12, section ".printk_index", align 4
@sil680_init_chip._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 321, ptr @.str.17, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sil680: Clock disabled ?\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sil680_init_chip._entry_ptr.18 = internal global ptr @sil680_init_chip._entry.15, section ".printk_index", align 4
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 48]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 48]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"sil680_pci_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 425, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 442, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"sil680\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 419, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 328, i32 36 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"sil680_port_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 235, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"info_slow\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 335, i32 36 }
@___asan_gen_.45 = private unnamed_addr constant [29 x i8] c"sil680_init_one.__print_once\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [11 x i8] c"sil680_sht\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 230, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [8 x i8] c"speed_p\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 109, i32 19 }
@___asan_gen_.52 = private unnamed_addr constant [8 x i8] c"speed_t\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 112, i32 19 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"ultra_table\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 161, i32 18 }
@___asan_gen_.58 = private unnamed_addr constant [10 x i8] c"dma_table\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 165, i32 19 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 267, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 311, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 314, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 317, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [29 x i8] c"../drivers/ata/pata_sil680.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 321, i32 3 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_version296, ptr @__exitcall_sil680_pci_driver_exit, ptr @__initcall__kmod_pata_sil680__291_436_sil680_pci_driver_init6, ptr @__modver_attr, ptr @sil680_init_chip._entry, ptr @sil680_init_chip._entry.12, ptr @sil680_init_chip._entry.15, ptr @sil680_init_chip._entry.9, ptr @sil680_init_chip._entry_ptr, ptr @sil680_init_chip._entry_ptr.11, ptr @sil680_init_chip._entry_ptr.14, ptr @sil680_init_chip._entry_ptr.18, ptr @sil680_pci_driver_exit, ptr @sil680_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sil680, ptr @sil680_init_one.info, ptr @sil680_port_ops, ptr @sil680_init_one.info_slow, ptr @sil680_init_one.__print_once, ptr @sil680_sht, ptr @sil680_set_piomode.speed_p, ptr @sil680_set_piomode.speed_t, ptr @sil680_set_dmamode.ultra_table, ptr @sil680_set_dmamode.dma_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil680_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil680 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil680_init_one.info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil680_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil680_init_one.info_slow to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil680_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil680_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil680_set_piomode.speed_p to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil680_set_piomode.speed_t to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil680_set_dmamode.ultra_table to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil680_set_dmamode.dma_table to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil680_init_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil680_init_chip._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil680_init_chip._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil680_init_chip._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sil680_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @sil680_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sil680_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @sil680_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil680_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 8
  %try_mmio = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #5
  %0 = load i64, ptr @__const.sil680_init_one.ppi, align 8
  %1 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %ppi, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %try_mmio) #5
  %2 = ptrtoint ptr %try_mmio to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %try_mmio, align 4, !annotation !73
  %.b105 = load i1, ptr @sil680_init_one.__print_once, align 1
  br i1 %.b105, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @sil680_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call fastcc zeroext i8 @sil680_init_chip(ptr noundef %pdev, ptr noundef nonnull %try_mmio)
  %3 = zext i8 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %call4, label %if.end3.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 48, label %if.end3.cleanup_crit_edge
  ]

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sil680_init_one.info_slow, ptr %ppi, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end3.sw.epilog_crit_edge
  %5 = ptrtoint ptr %try_mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %try_mmio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %sw.epilog.use_ioports_crit_edge, label %if.end8

sw.epilog.use_ioports_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %use_ioports

if.end8:                                          ; preds = %sw.epilog
  %call9 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 32, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.use_ioports_crit_edge

if.end8.use_ioports_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %use_ioports

if.end12:                                         ; preds = %if.end8
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call14 = call ptr @ata_host_alloc_pinfo(ptr noundef %dev13, ptr noundef nonnull %ppi, i32 noundef 2) #5
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call18 = call ptr @pcim_iomap_table(ptr noundef %pdev) #5
  %iomap = getelementptr inbounds %struct.ata_host, ptr %call14, i32 0, i32 2
  %7 = ptrtoint ptr %iomap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call18, ptr %iomap, align 4
  %call.i = call i32 @dma_set_mask(ptr noundef %dev13, i64 noundef 4294967295) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end23, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev13, i64 noundef 4294967295) #5
  call void @pci_set_master(ptr noundef %pdev) #5
  %8 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomap, align 4
  %arrayidx25 = getelementptr ptr, ptr %9, i32 5
  %10 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx25, align 4
  %ports = getelementptr inbounds %struct.ata_host, ptr %call14, i32 0, i32 12
  %12 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ports, align 4
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %13, i32 0, i32 8, i32 13
  %14 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %bmdma_addr, align 4
  %add.ptr27 = getelementptr i8, ptr %11, i32 128
  %15 = load ptr, ptr %ports, align 4
  %ioaddr30 = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %ioaddr30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr27, ptr %ioaddr30, align 32
  %add.ptr31 = getelementptr i8, ptr %11, i32 138
  %17 = load ptr, ptr %ports, align 4
  %ctl_addr = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 8, i32 12
  %18 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr31, ptr %ctl_addr, align 16
  %19 = load ptr, ptr %ports, align 4
  %altstatus_addr = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 8, i32 11
  %20 = ptrtoint ptr %altstatus_addr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr31, ptr %altstatus_addr, align 4
  %21 = load ptr, ptr %ports, align 4
  %ioaddr41 = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 8
  call void @ata_sff_std_ports(ptr noundef %ioaddr41) #5
  %add.ptr42 = getelementptr i8, ptr %11, i32 8
  %arrayidx44 = getelementptr %struct.ata_host, ptr %call14, i32 1, i32 0, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx44, align 4
  %bmdma_addr46 = getelementptr inbounds %struct.ata_port, ptr %23, i32 0, i32 8, i32 13
  %24 = ptrtoint ptr %bmdma_addr46 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr42, ptr %bmdma_addr46, align 4
  %add.ptr47 = getelementptr i8, ptr %11, i32 192
  %25 = load ptr, ptr %arrayidx44, align 4
  %ioaddr50 = getelementptr inbounds %struct.ata_port, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %ioaddr50 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr47, ptr %ioaddr50, align 32
  %add.ptr52 = getelementptr i8, ptr %11, i32 202
  %27 = load ptr, ptr %arrayidx44, align 4
  %ctl_addr56 = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 8, i32 12
  %28 = ptrtoint ptr %ctl_addr56 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr52, ptr %ctl_addr56, align 16
  %29 = load ptr, ptr %arrayidx44, align 4
  %altstatus_addr61 = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 8, i32 11
  %30 = ptrtoint ptr %altstatus_addr61 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr52, ptr %altstatus_addr61, align 4
  %31 = load ptr, ptr %arrayidx44, align 4
  %ioaddr64 = getelementptr inbounds %struct.ata_port, ptr %31, i32 0, i32 8
  call void @ata_sff_std_ports(ptr noundef %ioaddr64) #5
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %32 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq, align 4
  %call65 = call i32 @ata_host_activate(ptr noundef nonnull %call14, i32 noundef %33, ptr noundef nonnull @ata_bmdma_interrupt, i32 noundef 128, ptr noundef nonnull @sil680_sht) #5
  br label %cleanup

use_ioports:                                      ; preds = %if.end8.use_ioports_crit_edge, %sw.epilog.use_ioports_crit_edge
  %call67 = call i32 @ata_pci_bmdma_init_one(ptr noundef %pdev, ptr noundef nonnull %ppi, ptr noundef nonnull @sil680_sht, ptr noundef null, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %use_ioports, %if.end23, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call67, %use_ioports ], [ %call65, %if.end23 ], [ %call, %if.end.cleanup_crit_edge ], [ -19, %if.end3.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ], [ %call.i, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %try_mmio) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil680_reinit_one(ptr noundef %pdev) #2 align 64 {
entry:
  %try_mmio = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %try_mmio) #5
  %call1 = tail call i32 @ata_pci_device_do_resume(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = call fastcc zeroext i8 @sil680_init_chip(ptr noundef %pdev, ptr noundef nonnull %try_mmio)
  tail call void @ata_host_resume(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %try_mmio) #5
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @sil680_init_chip(ptr noundef %pdev, ptr nocapture noundef writeonly %try_mmio) unnamed_addr #2 align 64 {
entry:
  %tmpbyte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmpbyte) #5
  %0 = ptrtoint ptr %tmpbyte to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %tmpbyte, align 1
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %1 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %conv1 = select i1 %tobool.not, i8 -1, i8 1
  %call = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 12, i8 noundef zeroext %conv1) #5
  %call2 = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 128, i8 noundef zeroext 0) #5
  %call3 = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 132, i8 noundef zeroext 0) #5
  %call4 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 138, ptr noundef nonnull %tmpbyte) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sil680_init_chip.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sil680_init_chip, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %3 = ptrtoint ptr %tmpbyte to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tmpbyte, align 1
  %conv9 = zext i8 %4 to i32
  %and = and i32 %conv9, 1
  %and11 = and i32 %conv9, 48
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sil680_init_chip.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %and, i32 noundef %and11) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = ptrtoint ptr %try_mmio to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %try_mmio, align 4
  %6 = ptrtoint ptr %tmpbyte to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tmpbyte, align 1
  %8 = and i8 %7, 48
  %and13 = zext i8 %8 to i32
  %9 = zext i32 %and13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %and13, label %do.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 48, label %sw.bb17
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i8 %7, 16
  br label %sw.epilog.sink.split

sw.bb17:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %and19 = and i8 %7, -33
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb17, %sw.bb
  %and19.sink = phi i8 [ %and19, %sw.bb17 ], [ %or, %sw.bb ]
  %call21 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 138, i8 noundef zeroext %and19.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.end.sw.epilog_crit_edge
  %call22 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 138, ptr noundef nonnull %tmpbyte) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sil680_init_chip.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sil680_init_chip, %if.then35)) #5
          to label %do.end43 [label %if.then35], !srcloc !74

if.then35:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %10 = ptrtoint ptr %tmpbyte to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tmpbyte, align 1
  %conv37 = zext i8 %11 to i32
  %and38 = and i32 %conv37, 1
  %and40 = and i32 %conv37, 48
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sil680_init_chip.__UNIQUE_ID_ddebug290, ptr noundef %dev36, ptr noundef nonnull @.str.5, i32 noundef %and38, i32 noundef %and40) #5
  br label %do.end43

do.end43:                                         ; preds = %if.then35, %sw.epilog
  %call44 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 161, i8 noundef zeroext 114) #5
  %call45 = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef 162, i16 noundef zeroext 12938) #5
  %call46 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 164, i32 noundef 1658675933) #5
  %call47 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 168, i32 noundef 1133659026) #5
  %call48 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 172, i32 noundef 1074348041) #5
  %call49 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 177, i8 noundef zeroext 114) #5
  %call50 = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef 178, i16 noundef zeroext 12938) #5
  %call51 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 180, i32 noundef 1658675933) #5
  %call52 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 184, i32 noundef 1133659026) #5
  %call53 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 188, i32 noundef 1074348041) #5
  %12 = ptrtoint ptr %tmpbyte to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tmpbyte, align 1
  %14 = lshr i8 %13, 4
  %15 = and i8 %14, 3
  %16 = zext i8 %15 to i32
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %16, label %do.end43.unreachabledefault [
    i32 0, label %do.end59
    i32 1, label %do.end64
    i32 2, label %do.end69
    i32 3, label %do.end74
  ]

do.end59:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #7
  %dev60 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev60, ptr noundef nonnull @.str.6) #8
  br label %sw.epilog76

do.end64:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #7
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev65, ptr noundef nonnull @.str.10) #8
  br label %sw.epilog76

do.end69:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #7
  %dev70 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev70, ptr noundef nonnull @.str.13) #8
  br label %sw.epilog76

do.end74:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #7
  %dev75 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev75, ptr noundef nonnull @.str.16) #8
  br label %sw.epilog76

do.end43.unreachabledefault:                      ; preds = %do.end43
  unreachable

sw.epilog76:                                      ; preds = %do.end74, %do.end69, %do.end64, %do.end59
  %18 = ptrtoint ptr %tmpbyte to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tmpbyte, align 1
  %20 = and i8 %19, 48
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmpbyte) #5
  ret i8 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_std_ports(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_init_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil680_cable_detect(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  %ata66 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -136
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %4 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no.i, align 4
  %shl.i = shl i32 %5, 4
  %add1.i = add i32 %shl.i, 160
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ata66) #5
  %6 = ptrtoint ptr %ata66 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %ata66, align 1, !annotation !73
  %call1 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add1.i, ptr noundef nonnull %ata66) #5
  %7 = ptrtoint ptr %ata66 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ata66, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %. = select i1 %tobool.not, i32 1, i32 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ata66) #5
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sil680_set_piomode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  %reg = alloca i16, align 2
  %mode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %0 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_no.i, align 4
  %shl.i = shl i32 %1, 4
  %add1.i = add i32 %shl.i, 162
  %add1.i59 = add i32 %shl.i, 164
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %2 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 2
  %or.i = or i32 %cond.i, %add1.i59
  %mul = shl i32 %1, 2
  %add = add i32 %mul, 128
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 -136
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %8 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %9 to i32
  %sub = add nsw i32 %conv, -8
  %mul2 = shl i32 %3, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #5
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %reg, align 2, !annotation !73
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mode) #5
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %mode, align 1, !annotation !73
  %call3 = tail call ptr @ata_dev_pair(ptr noundef %adev) #5
  %cmp.not = icmp eq ptr %call3, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %12 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pio_mode, align 16
  %pio_mode7 = getelementptr inbounds %struct.ata_device, ptr %call3, i32 0, i32 11
  %14 = ptrtoint ptr %pio_mode7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pio_mode7, align 16
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp9 = icmp ugt i8 %13, %15
  br i1 %cmp9, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %conv8 = zext i8 %15 to i32
  %sub13 = add nsw i32 %conv8, -8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %lowest_pio.0 = phi i32 [ %sub13, %if.then ], [ %sub, %land.lhs.true.if.end_crit_edge ], [ %sub, %entry.if.end_crit_edge ]
  %arrayidx = getelementptr [5 x i16], ptr @sil680_set_piomode.speed_p, i32 0, i32 %sub
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx, align 2
  %call14 = tail call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef %or.i, i16 noundef zeroext %17) #5
  %arrayidx15 = getelementptr [5 x i16], ptr @sil680_set_piomode.speed_t, i32 0, i32 %lowest_pio.0
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx15, align 2
  %call16 = tail call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef %add1.i, i16 noundef zeroext %19) #5
  %sub17 = add i32 %shl.i, 160
  %call18 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef %sub17, ptr noundef nonnull %reg) #5
  %call19 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add, ptr noundef nonnull %mode) #5
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %reg, align 2
  %22 = and i16 %21, -513
  store i16 %22, ptr %reg, align 2
  %shl = shl i32 3, %mul2
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mode, align 1
  %25 = trunc i32 %shl to i8
  %26 = xor i8 %25, -1
  %conv24 = and i8 %24, %26
  store i8 %conv24, ptr %mode, align 1
  %call25 = call i32 @ata_pio_need_iordy(ptr noundef %adev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %if.end.if.end33_crit_edge, label %if.then26

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %reg, align 2
  %29 = or i16 %28, 512
  store i16 %29, ptr %reg, align 2
  %shl29 = shl nuw i32 1, %mul2
  %30 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mode, align 1
  %32 = trunc i32 %shl29 to i8
  %conv32 = or i8 %31, %32
  store i8 %conv32, ptr %mode, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %if.end.if.end33_crit_edge
  %33 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %reg, align 2
  %call35 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef %sub17, i16 noundef zeroext %34) #5
  %35 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mode, align 1
  %call36 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add, i8 noundef zeroext %36) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sil680_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %scsc = alloca i8, align 1
  %mode = alloca i8, align 1
  %multi = alloca i16, align 2
  %ultra = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -136
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %4 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no.i, align 4
  %shl.i = shl i32 %5, 4
  %add1.i = add i32 %shl.i, 168
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %6 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 2
  %or.i = or i32 %cond.i, %add1.i
  %add1.i58 = add i32 %shl.i, 172
  %or.i62 = or i32 %cond.i, %add1.i58
  %mul = shl i32 %5, 2
  %add = add i32 %mul, 128
  %mul2 = shl i32 %7, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scsc) #5
  %8 = ptrtoint ptr %scsc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %scsc, align 1, !annotation !73
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mode) #5
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %mode, align 1, !annotation !73
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %multi) #5
  %10 = ptrtoint ptr %multi to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %multi, align 2, !annotation !73
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ultra) #5
  %11 = ptrtoint ptr %ultra to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %ultra, align 2, !annotation !73
  %call3 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 138, ptr noundef nonnull %scsc) #5
  %call4 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add, ptr noundef nonnull %mode) #5
  %call5 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef %or.i, ptr noundef nonnull %multi) #5
  %call6 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef %or.i62, ptr noundef nonnull %ultra) #5
  %12 = ptrtoint ptr %ultra to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ultra, align 2
  %14 = and i16 %13, -64
  store i16 %14, ptr %ultra, align 2
  %shl = shl i32 3, %mul2
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mode, align 1
  %17 = trunc i32 %shl to i8
  %18 = ptrtoint ptr %scsc to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %scsc, align 1
  %20 = and i8 %19, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp ne i8 %20, 0
  %conv13 = zext i1 %tobool.not to i8
  %21 = ptrtoint ptr %scsc to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv13, ptr %scsc, align 1
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %22 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dma_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %23)
  %cmp = icmp ugt i8 %23, 63
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %multi to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 4289, ptr %multi, align 2
  %idxprom = zext i1 %tobool.not to i32
  %conv17 = zext i8 %23 to i32
  %sub = add nsw i32 %conv17, -64
  %arrayidx18 = getelementptr [2 x [7 x i8]], ptr @sil680_set_dmamode.ultra_table, i32 0, i32 %idxprom, i32 %sub
  %25 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %26 to i16
  %or = or i16 %14, %conv19
  %27 = ptrtoint ptr %ultra to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %or, ptr %ultra, align 2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv14 = zext i8 %23 to i32
  %sub28 = add nsw i32 %conv14, -32
  %arrayidx29 = getelementptr [3 x i16], ptr @sil680_set_dmamode.dma_table, i32 0, i32 %sub28
  %28 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx29, align 2
  %30 = ptrtoint ptr %multi to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %multi, align 2
  %shl30 = shl i32 2, %mul2
  %31 = trunc i32 %shl30 to i8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.pn = phi i8 [ %31, %if.else ], [ %17, %if.then ]
  %32 = xor i8 %17, -1
  %conv10 = and i8 %16, %32
  %storemerge = or i8 %.pn, %conv10
  %33 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %storemerge, ptr %mode, align 1
  %call34 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add, i8 noundef zeroext %storemerge) #5
  %34 = ptrtoint ptr %multi to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %multi, align 2
  %call35 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef %or.i, i16 noundef zeroext %35) #5
  %36 = ptrtoint ptr %ultra to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ultra, align 2
  %call36 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef %or.i62, i16 noundef zeroext %37) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ultra) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %multi) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scsc) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sil680_sff_exec_command(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %tf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %command = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 14
  %0 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %command, align 1
  %command_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 10
  %2 = ptrtoint ptr %command_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %command_addr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 %1) #5, !srcloc !76
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 13
  %4 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmdma_addr, align 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sil680_sff_irq_check(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -136
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %4 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no.i, align 4
  %shl.i = shl i32 %5, 4
  %add1.i = add i32 %shl.i, 161
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %val, align 1, !annotation !73
  %call1 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add1.i, ptr noundef nonnull %val) #5
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val, align 1
  %9 = and i8 %8, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool = icmp ne i8 %9, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_pair(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pio_need_iordy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_do_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !45, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_pata_sil680__291_436_sil680_pci_driver_init6, !1, !"__initcall__kmod_pata_sil680__291_436_sil680_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_sil680.c", i32 436, i32 1}
!2 = !{ptr @__exitcall_sil680_pci_driver_exit, !1, !"__exitcall_sil680_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_sil680.c", i32 438, i32 1}
!5 = !{ptr @__UNIQUE_ID_description293, !6, !"__UNIQUE_ID_description293", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_sil680.c", i32 439, i32 1}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_sil680.c", i32 440, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version296, !11, !"__UNIQUE_ID_version296", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_sil680.c", i32 442, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @sil680_pci_driver, !17, !"sil680_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_sil680.c", i32 425, i32 26}
!18 = !{ptr @sil680, !19, !"sil680", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_sil680.c", i32 419, i32 35}
!20 = !{ptr @sil680_init_one.info, !21, !"info", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_sil680.c", i32 328, i32 36}
!22 = !{ptr @sil680_init_one.info_slow, !23, !"info_slow", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_sil680.c", i32 335, i32 36}
!24 = distinct !{null, !25, !"__print_once", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_sil680.c", i32 347, i32 2}
!26 = !{ptr @sil680_port_ops, !27, !"sil680_port_ops", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_sil680.c", i32 235, i32 35}
!28 = !{ptr @sil680_set_piomode.speed_p, !29, !"speed_p", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_sil680.c", i32 109, i32 19}
!30 = !{ptr @sil680_set_piomode.speed_t, !31, !"speed_t", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_sil680.c", i32 112, i32 19}
!32 = !{ptr @sil680_set_dmamode.ultra_table, !33, !"ultra_table", i1 false, i1 false}
!33 = !{!"../drivers/ata/pata_sil680.c", i32 161, i32 18}
!34 = !{ptr @sil680_set_dmamode.dma_table, !35, !"dma_table", i1 false, i1 false}
!35 = !{!"../drivers/ata/pata_sil680.c", i32 165, i32 19}
!36 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/ata/pata_sil680.c", i32 267, i32 2}
!38 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sil680_init_chip.__UNIQUE_ID_ddebug289, !37, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!41 = !{ptr @sil680_init_chip.__UNIQUE_ID_ddebug290, !42, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!42 = !{!"../drivers/ata/pata_sil680.c", i32 295, i32 2}
!43 = !{ptr @.str.6, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/ata/pata_sil680.c", i32 311, i32 3}
!45 = !{ptr @.str.7, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @sil680_init_chip._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @sil680_init_chip._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/ata/pata_sil680.c", i32 314, i32 3}
!51 = !{ptr @sil680_init_chip._entry.9, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @sil680_init_chip._entry_ptr.11, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/ata/pata_sil680.c", i32 317, i32 3}
!55 = !{ptr @sil680_init_chip._entry.12, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @sil680_init_chip._entry_ptr.14, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/ata/pata_sil680.c", i32 321, i32 3}
!59 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @sil680_init_chip._entry.15, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @sil680_init_chip._entry_ptr.18, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @sil680_sht, !63, !"sil680_sht", i1 false, i1 false}
!63 = !{!"../drivers/ata/pata_sil680.c", i32 230, i32 34}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"auto-init"}
!74 = !{i64 2148701279, i64 2148701284, i64 2148701297, i64 2148701341, i64 2148701375, i64 2148701396}
!75 = !{i64 2152530729}
!76 = !{i64 4989384}
!77 = !{i64 4989779}
!78 = !{i64 2152529124}
