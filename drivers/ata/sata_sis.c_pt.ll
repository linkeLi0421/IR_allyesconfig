; ModuleID = '/llk/IR_all_yes/drivers/ata/sata_sis.c_pt.bc'
source_filename = "../drivers/ata/sata_sis.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }
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

@__UNIQUE_ID_author289 = internal constant [29 x i8] c"sata_sis.author=Uwe Koziolek\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [85 x i8] c"sata_sis.description=low-level driver for Silicon Integrated Systems SATA controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [35 x i8] c"sata_sis.file=drivers/ata/sata_sis\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"sata_sis.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version293 = internal constant [21 x i8] c"sata_sis.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sata_sis\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__initcall__kmod_sata_sis__294_298_sis_pci_driver_init6 = internal global ptr @sis_pci_driver_init, section ".initcall6.init", align 4
@sis_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @sis_pci_tbl, ptr @sis_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @ata_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sis_pci_driver_exit = internal global ptr @sis_pci_driver_exit, section ".exitcall.exit", align 4
@sis_pci_tbl = internal constant { [7 x %struct.pci_device_id], [32 x i8] } { [7 x %struct.pci_device_id] [%struct.pci_device_id { i32 4153, i32 384, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4153, i32 385, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4153, i32 386, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4153, i32 387, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4153, i32 4482, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4153, i32 4483, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sis_port_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 2, i32 0, i32 31, i32 7, i32 127, ptr @sis_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@sis_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@sis_info133_for_sata = external dso_local constant %struct.ata_port_info, align 4
@sis_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 230, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Detected SiS 180/181/964 chipset in SATA mode\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sis_init_one\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/ata/sata_sis.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sis_init_one._entry_ptr = internal global ptr @sis_init_one._entry, section ".printk_index", align 4
@sis_init_one._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 234, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Detected SiS 180/181 chipset in combined mode\0A\00", [49 x i8] zeroinitializer }, align 32
@sis_init_one._entry_ptr.10 = internal global ptr @sis_init_one._entry.8, section ".printk_index", align 4
@sis_init_one._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 244, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Detected SiS 182/965 chipset\0A\00", [34 x i8] zeroinitializer }, align 32
@sis_init_one._entry_ptr.13 = internal global ptr @sis_init_one._entry.11, section ".printk_index", align 4
@sis_init_one._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 247, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Detected SiS 182/965L chipset\0A\00", [33 x i8] zeroinitializer }, align 32
@sis_init_one._entry_ptr.16 = internal global ptr @sis_init_one._entry.14, section ".printk_index", align 4
@sis_init_one._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 253, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Detected SiS 1182/966/680 SATA controller\0A\00", [53 x i8] zeroinitializer }, align 32
@sis_init_one._entry_ptr.19 = internal global ptr @sis_init_one._entry.17, section ".printk_index", align 4
@sis_init_one._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 259, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Detected SiS 1183/966/966L/968/680 controller in PATA mode\0A\00", [36 x i8] zeroinitializer }, align 32
@sis_init_one._entry_ptr.22 = internal global ptr @sis_init_one._entry.20, section ".printk_index", align 4
@sis_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@sis_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sis_scr_read, ptr @sis_scr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 384, i64 385, i64 386, i64 387, i64 4482, i64 4483]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 48]
@__sancov_gen_cov_switch_values.24 = internal global [7 x i64] [i64 5, i64 16, i64 384, i64 385, i64 386, i64 387, i64 4482]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 16, i64 384, i64 385, i64 386, i64 387, i64 4482]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 97, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"sis_pci_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 64, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant [12 x i8] c"sis_pci_tbl\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 53, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"sis_port_info\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 85, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant [26 x i8] c"sis_init_one.__print_once\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 229, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 233, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 244, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 247, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 252, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 258, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [8 x i8] c"sis_sht\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 75, i32 34 }
@___asan_gen_.96 = private unnamed_addr constant [8 x i8] c"sis_ops\00", align 1
@___asan_gen_.97 = private constant [26 x i8] c"../drivers/ata/sata_sis.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 79, i32 35 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__UNIQUE_ID_version293, ptr @__exitcall_sis_pci_driver_exit, ptr @__initcall__kmod_sata_sis__294_298_sis_pci_driver_init6, ptr @__modver_attr, ptr @sis_init_one._entry, ptr @sis_init_one._entry.11, ptr @sis_init_one._entry.14, ptr @sis_init_one._entry.17, ptr @sis_init_one._entry.20, ptr @sis_init_one._entry.8, ptr @sis_init_one._entry_ptr, ptr @sis_init_one._entry_ptr.10, ptr @sis_init_one._entry_ptr.13, ptr @sis_init_one._entry_ptr.16, ptr @sis_init_one._entry_ptr.19, ptr @sis_init_one._entry_ptr.22, ptr @sis_pci_driver_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sis_pci_driver, ptr @sis_pci_tbl, ptr @sis_port_info, ptr @sis_init_one.__print_once, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @sis_sht, ptr @sis_ops], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_pci_tbl to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_init_one._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_init_one._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_init_one._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_init_one._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_init_one._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sis_pci_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @sis_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sis_pci_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @sis_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %pi = alloca %struct.ata_port_info, align 4
  %ppi = alloca [2 x ptr], align 4
  %host = alloca ptr, align 4
  %genctl = alloca i32, align 4
  %val = alloca i32, align 4
  %pmr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pi) #6
  %0 = call ptr @memcpy(ptr %pi, ptr @sis_port_info, i32 28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #6
  %1 = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %2 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pi, ptr %ppi, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pi, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host) #6
  %4 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %host, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %genctl) #6
  %5 = ptrtoint ptr %genctl to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %genctl, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pmr) #6
  %7 = ptrtoint ptr %pmr to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %pmr, align 1, !annotation !65
  %.b164 = load i1, ptr @sis_init_one.__print_once, align 1
  br i1 %.b164, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @sis_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 @pcim_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup119_crit_edge

if.end.cleanup119_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup119

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 84, ptr noundef nonnull %genctl) #6
  %8 = ptrtoint ptr %genctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %genctl, align 4
  %and = and i32 %9, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then5, label %if.end3.if.end6_crit_edge

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pi, align 4
  %or = or i32 %11, 1073741824
  store i32 %or, ptr %pi, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %12 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pi, align 4
  %and8 = and i32 %13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %if.end6.if.end26_crit_edge

if.end6.if.end26_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end6
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10 = icmp eq i32 %15, 0
  br i1 %cmp10, label %land.lhs.true.if.then21_crit_edge, label %lor.lhs.false

land.lhs.true.if.then21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

lor.lhs.false:                                    ; preds = %land.lhs.true
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5, i32 1
  %16 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp13 = icmp eq i32 %17, 0
  %sub = sub i32 1, %15
  %add = add i32 %sub, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add)
  %cmp20169 = icmp ult i32 %add, 128
  %cmp20 = select i1 %cmp13, i1 true, i1 %cmp20169
  br i1 %cmp20, label %lor.lhs.false.if.then21_crit_edge, label %lor.lhs.false.if.end26_crit_edge

lor.lhs.false.if.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

lor.lhs.false.if.then21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

if.then21:                                        ; preds = %lor.lhs.false.if.then21_crit_edge, %land.lhs.true.if.then21_crit_edge
  %and22 = and i32 %9, -67108865
  %18 = ptrtoint ptr %genctl to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and22, ptr %genctl, align 4
  %call23 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 84, i32 noundef %and22) #6
  %19 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pi, align 4
  %or25 = or i32 %20, 1073741824
  store i32 %or25, ptr %pi, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %lor.lhs.false.if.end26_crit_edge, %if.end6.if.end26_crit_edge
  %call27 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 144, ptr noundef nonnull %pmr) #6
  %device = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 1
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %device, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %if.end26.sw.epilog77_crit_edge [
    i32 384, label %if.end26.sw.bb_crit_edge
    i32 385, label %if.end26.sw.bb_crit_edge171
    i32 386, label %if.end26.sw.bb46_crit_edge
    i32 387, label %if.end26.sw.bb46_crit_edge172
    i32 4482, label %do.end66
    i32 4483, label %do.end73
  ]

if.end26.sw.bb46_crit_edge172:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46

if.end26.sw.bb46_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb46

if.end26.sw.bb_crit_edge171:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end26.sw.bb_crit_edge:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end26.sw.epilog77_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog77

sw.bb:                                            ; preds = %if.end26.sw.bb_crit_edge, %if.end26.sw.bb_crit_edge171
  %24 = ptrtoint ptr %pmr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pmr, align 1
  %26 = and i8 %25, 48
  %and28 = zext i8 %26 to i32
  %27 = zext i32 %and28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %and28, label %sw.bb.sw.epilog_crit_edge [
    i32 16, label %sw.bb29
    i32 48, label %sw.bb31
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb29:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @sis_info133_for_sata, ptr %1, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @sis_info133_for_sata, ptr %ppi, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb31, %sw.bb29, %sw.bb.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp35 = icmp eq i8 %26, 0
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br i1 %cmp35, label %do.end, label %do.end41

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev38, ptr noundef nonnull @.str.3) #9
  br label %sw.epilog77

do.end41:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev38, ptr noundef nonnull @.str.9) #9
  %30 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pi, align 4
  %or44 = or i32 %31, 1
  store i32 %or44, ptr %pi, align 4
  br label %sw.epilog77

sw.bb46:                                          ; preds = %if.end26.sw.bb46_crit_edge, %if.end26.sw.bb46_crit_edge172
  %call47 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 108, ptr noundef nonnull %val) #6
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %tobool49.not = icmp sgt i32 %33, -1
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br i1 %tobool49.not, label %do.end60, label %do.end53

do.end53:                                         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev61, ptr noundef nonnull @.str.12) #9
  %34 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pi, align 4
  %or56 = or i32 %35, 1
  store i32 %or56, ptr %pi, align 4
  br label %sw.epilog77

do.end60:                                         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev61, ptr noundef nonnull @.str.15) #9
  br label %sw.epilog77

do.end66:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %dev67 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev67, ptr noundef nonnull @.str.18) #9
  %36 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pi, align 4
  %or69 = or i32 %37, 1
  store i32 %or69, ptr %pi, align 4
  br label %sw.epilog77

do.end73:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %dev74 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev74, ptr noundef nonnull @.str.21) #9
  %38 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @sis_info133_for_sata, ptr %ppi, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @sis_info133_for_sata, ptr %1, align 4
  br label %sw.epilog77

sw.epilog77:                                      ; preds = %do.end73, %do.end66, %do.end60, %do.end53, %do.end41, %do.end, %if.end26.sw.epilog77_crit_edge
  %port2_start.0 = phi i32 [ 32, %if.end26.sw.epilog77_crit_edge ], [ 32, %do.end73 ], [ 32, %do.end66 ], [ 32, %do.end53 ], [ 32, %do.end60 ], [ 64, %do.end ], [ 0, %do.end41 ]
  %call78 = call i32 @ata_pci_bmdma_prepare_host(ptr noundef %pdev, ptr noundef nonnull %ppi, ptr noundef nonnull %host) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %for.body.preheader, label %sw.epilog77.cleanup119_crit_edge

sw.epilog77.cleanup119_crit_edge:                 ; preds = %sw.epilog77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup119

for.body.preheader:                               ; preds = %sw.epilog77
  %40 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %host, align 4
  %arrayidx84 = getelementptr %struct.ata_host, ptr %41, i32 0, i32 12, i32 0
  %42 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx84, align 4
  %flags85 = getelementptr inbounds %struct.ata_port, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %flags85 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags85, align 4
  %46 = and i32 %45, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %.not = icmp eq i32 %46, 3
  br i1 %.not, label %if.then92, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then92:                                        ; preds = %for.body.preheader
  %call93 = call i32 @ata_slave_link_init(ptr noundef %43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then92.for.inc_crit_edge, label %if.then92.cleanup119_crit_edge

if.then92.cleanup119_crit_edge:                   ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup119

if.then92.for.inc_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.then92.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %47 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %host, align 4
  %arrayidx84.1 = getelementptr %struct.ata_host, ptr %48, i32 0, i32 12, i32 1
  %49 = ptrtoint ptr %arrayidx84.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx84.1, align 4
  %flags85.1 = getelementptr inbounds %struct.ata_port, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %flags85.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags85.1, align 4
  %53 = and i32 %52, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %53)
  %.not.1 = icmp eq i32 %53, 3
  br i1 %.not.1, label %if.then92.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then92.1:                                      ; preds = %for.inc
  %call93.1 = call i32 @ata_slave_link_init(ptr noundef %50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.1)
  %tobool94.not.1 = icmp eq i32 %call93.1, 0
  br i1 %tobool94.not.1, label %if.then92.1.for.inc.1_crit_edge, label %if.then92.1.cleanup119_crit_edge

if.then92.1.cleanup119_crit_edge:                 ; preds = %if.then92.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup119

if.then92.1.for.inc.1_crit_edge:                  ; preds = %if.then92.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then92.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %54 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pi, align 4
  %and99 = and i32 %55, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.then101, label %for.inc.1.if.end117_crit_edge

for.inc.1.if.end117_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end117

if.then101:                                       ; preds = %for.inc.1
  %call102 = call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 32, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %cleanup114.thread, label %if.then101.cleanup119_crit_edge

if.then101.cleanup119_crit_edge:                  ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup119

cleanup114.thread:                                ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %host, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %iomap, align 4
  %arrayidx106 = getelementptr ptr, ptr %59, i32 5
  %60 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx106, align 4
  %ports107 = getelementptr inbounds %struct.ata_host, ptr %57, i32 0, i32 12
  %62 = ptrtoint ptr %ports107 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ports107, align 4
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %63, i32 0, i32 8, i32 14
  %64 = ptrtoint ptr %scr_addr to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %scr_addr, align 8
  %add.ptr = getelementptr i8, ptr %61, i32 %port2_start.0
  %arrayidx111 = getelementptr %struct.ata_host, ptr %57, i32 1, i32 0, i32 0, i32 0, i32 1
  %65 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx111, align 4
  %scr_addr113 = getelementptr inbounds %struct.ata_port, ptr %66, i32 0, i32 8, i32 14
  %67 = ptrtoint ptr %scr_addr113 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr, ptr %scr_addr113, align 8
  br label %if.end117

if.end117:                                        ; preds = %cleanup114.thread, %for.inc.1.if.end117_crit_edge
  call void @pci_set_master(ptr noundef %pdev) #6
  call void @pci_intx(ptr noundef %pdev, i32 noundef 1) #6
  %68 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %host, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %70 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq, align 4
  %call118 = call i32 @ata_host_activate(ptr noundef %69, i32 noundef %71, ptr noundef nonnull @ata_bmdma_interrupt, i32 noundef 128, ptr noundef nonnull @sis_sht) #6
  br label %cleanup119

cleanup119:                                       ; preds = %if.end117, %if.then101.cleanup119_crit_edge, %if.then92.1.cleanup119_crit_edge, %if.then92.cleanup119_crit_edge, %sw.epilog77.cleanup119_crit_edge, %if.end.cleanup119_crit_edge
  %retval.3 = phi i32 [ %call118, %if.end117 ], [ %call, %if.end.cleanup119_crit_edge ], [ %call78, %sw.epilog77.cleanup119_crit_edge ], [ %call102, %if.then101.cleanup119_crit_edge ], [ %call93, %if.then92.cleanup119_crit_edge ], [ %call93.1, %if.then92.1.cleanup119_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pmr) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %genctl) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pi) #6
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_resume(ptr noundef) #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_prepare_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_slave_link_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_intx(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_interrupt(i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis_scr_read(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, ptr noundef %val) #2 align 64 {
entry:
  %pmr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 14
  %2 = ptrtoint ptr %scr_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scr_addr, align 8
  %pmp = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %4 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pmp, align 4
  %mul = shl i32 %5, 4
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sc_reg)
  %cmp = icmp ugt i32 %sc_reg, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host.i, align 4
  %dev.i = getelementptr inbounds %struct.ata_host, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 -136
  %mul.i.i = shl nuw nsw i32 %sc_reg, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 192
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pmr.i.i) #6
  %12 = ptrtoint ptr %pmr.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %pmr.i.i, align 1, !annotation !65
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_no.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %if.then2.get_scr_cfg_addr.exit.i_crit_edge, label %if.then.i.i

if.then2.get_scr_cfg_addr.exit.i_crit_edge:       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_scr_cfg_addr.exit.i

if.then.i.i:                                      ; preds = %if.then2
  %device.i.i = getelementptr i8, ptr %11, i32 -102
  %15 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %device.i.i, align 2
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %16, label %if.then.i.i.get_scr_cfg_addr.exit.i_crit_edge [
    i16 384, label %if.then.i.i.sw.bb.i.i_crit_edge
    i16 385, label %if.then.i.i.sw.bb.i.i_crit_edge14
    i16 386, label %if.then.i.i.sw.bb6.i.i_crit_edge
    i16 387, label %if.then.i.i.sw.bb6.i.i_crit_edge15
    i16 4482, label %if.then.i.i.sw.bb6.i.i_crit_edge16
  ]

if.then.i.i.sw.bb6.i.i_crit_edge16:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i.i

if.then.i.i.sw.bb6.i.i_crit_edge15:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i.i

if.then.i.i.sw.bb6.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i.i

if.then.i.i.sw.bb.i.i_crit_edge14:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

if.then.i.i.sw.bb.i.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

if.then.i.i.get_scr_cfg_addr.exit.i_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_scr_cfg_addr.exit.i

sw.bb.i.i:                                        ; preds = %if.then.i.i.sw.bb.i.i_crit_edge, %if.then.i.i.sw.bb.i.i_crit_edge14
  %call.i.i = call i32 @pci_read_config_byte(ptr noundef %add.ptr.i.i, i32 noundef 144, ptr noundef nonnull %pmr.i.i) #6
  %18 = ptrtoint ptr %pmr.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pmr.i.i, align 1
  %20 = and i8 %19, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp.i.i = icmp eq i8 %20, 0
  %add5.i.i = add nuw nsw i32 %mul.i.i, 208
  %spec.select.i.i = select i1 %cmp.i.i, i32 %add5.i.i, i32 %add.i.i
  br label %get_scr_cfg_addr.exit.i

sw.bb6.i.i:                                       ; preds = %if.then.i.i.sw.bb6.i.i_crit_edge, %if.then.i.i.sw.bb6.i.i_crit_edge15, %if.then.i.i.sw.bb6.i.i_crit_edge16
  %add7.i.i = add nuw nsw i32 %mul.i.i, 224
  br label %get_scr_cfg_addr.exit.i

get_scr_cfg_addr.exit.i:                          ; preds = %sw.bb6.i.i, %sw.bb.i.i, %if.then.i.i.get_scr_cfg_addr.exit.i_crit_edge, %if.then2.get_scr_cfg_addr.exit.i_crit_edge
  %addr.0.i.i = phi i32 [ %add.i.i, %if.then.i.i.get_scr_cfg_addr.exit.i_crit_edge ], [ %add7.i.i, %sw.bb6.i.i ], [ %add.i.i, %if.then2.get_scr_cfg_addr.exit.i_crit_edge ], [ %spec.select.i.i, %sw.bb.i.i ]
  %21 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pmp, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pmr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sc_reg)
  %cmp.i = icmp eq i32 %sc_reg, 1
  br i1 %cmp.i, label %get_scr_cfg_addr.exit.i.cleanup_crit_edge, label %if.end.i

get_scr_cfg_addr.exit.i.cleanup_crit_edge:        ; preds = %get_scr_cfg_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %get_scr_cfg_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool9.not.i.i = icmp eq i32 %22, 0
  %add11.i.i = add nuw nsw i32 %addr.0.i.i, 16
  %spec.select19.i.i = select i1 %tobool9.not.i.i, i32 %addr.0.i.i, i32 %add11.i.i
  %call1.i = call i32 @pci_read_config_dword(ptr noundef %add.ptr.i.i, i32 noundef %spec.select19.i.i, ptr noundef %val) #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mul4 = shl nuw nsw i32 %sc_reg, 2
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %mul4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !66
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.i, %get_scr_cfg_addr.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.i ], [ -22, %get_scr_cfg_addr.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis_scr_write(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, i32 noundef %val) #2 align 64 {
entry:
  %pmr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 14
  %2 = ptrtoint ptr %scr_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scr_addr, align 8
  %pmp = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %4 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pmp, align 4
  %mul = shl i32 %5, 4
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sc_reg)
  %cmp = icmp ugt i32 %sc_reg, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host.i, align 4
  %dev.i = getelementptr inbounds %struct.ata_host, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 -136
  %mul.i.i = shl nuw nsw i32 %sc_reg, 2
  %add.i.i = add nuw nsw i32 %mul.i.i, 192
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pmr.i.i) #6
  %12 = ptrtoint ptr %pmr.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %pmr.i.i, align 1, !annotation !65
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_no.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %if.then2.sis_scr_cfg_write.exit_crit_edge, label %if.then.i.i

if.then2.sis_scr_cfg_write.exit_crit_edge:        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sis_scr_cfg_write.exit

if.then.i.i:                                      ; preds = %if.then2
  %device.i.i = getelementptr i8, ptr %11, i32 -102
  %15 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %device.i.i, align 2
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.25)
  switch i16 %16, label %if.then.i.i.sis_scr_cfg_write.exit_crit_edge [
    i16 384, label %if.then.i.i.sw.bb.i.i_crit_edge
    i16 385, label %if.then.i.i.sw.bb.i.i_crit_edge13
    i16 386, label %if.then.i.i.sw.bb6.i.i_crit_edge
    i16 387, label %if.then.i.i.sw.bb6.i.i_crit_edge14
    i16 4482, label %if.then.i.i.sw.bb6.i.i_crit_edge15
  ]

if.then.i.i.sw.bb6.i.i_crit_edge15:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i.i

if.then.i.i.sw.bb6.i.i_crit_edge14:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i.i

if.then.i.i.sw.bb6.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6.i.i

if.then.i.i.sw.bb.i.i_crit_edge13:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

if.then.i.i.sw.bb.i.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

if.then.i.i.sis_scr_cfg_write.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sis_scr_cfg_write.exit

sw.bb.i.i:                                        ; preds = %if.then.i.i.sw.bb.i.i_crit_edge, %if.then.i.i.sw.bb.i.i_crit_edge13
  %call.i.i = call i32 @pci_read_config_byte(ptr noundef %add.ptr.i, i32 noundef 144, ptr noundef nonnull %pmr.i.i) #6
  %18 = ptrtoint ptr %pmr.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pmr.i.i, align 1
  %20 = and i8 %19, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp.i.i = icmp eq i8 %20, 0
  %add5.i.i = add nuw nsw i32 %mul.i.i, 208
  %spec.select.i.i = select i1 %cmp.i.i, i32 %add5.i.i, i32 %add.i.i
  br label %sis_scr_cfg_write.exit

sw.bb6.i.i:                                       ; preds = %if.then.i.i.sw.bb6.i.i_crit_edge, %if.then.i.i.sw.bb6.i.i_crit_edge14, %if.then.i.i.sw.bb6.i.i_crit_edge15
  %add7.i.i = add nuw nsw i32 %mul.i.i, 224
  br label %sis_scr_cfg_write.exit

sis_scr_cfg_write.exit:                           ; preds = %sw.bb6.i.i, %sw.bb.i.i, %if.then.i.i.sis_scr_cfg_write.exit_crit_edge, %if.then2.sis_scr_cfg_write.exit_crit_edge
  %addr.0.i.i = phi i32 [ %add.i.i, %if.then.i.i.sis_scr_cfg_write.exit_crit_edge ], [ %add7.i.i, %sw.bb6.i.i ], [ %add.i.i, %if.then2.sis_scr_cfg_write.exit_crit_edge ], [ %spec.select.i.i, %sw.bb.i.i ]
  %21 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool9.not.i.i = icmp eq i32 %22, 0
  %add11.i.i = add nuw nsw i32 %addr.0.i.i, 16
  %spec.select19.i.i = select i1 %tobool9.not.i.i, i32 %addr.0.i.i, i32 %add11.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pmr.i.i) #6
  %call1.i = call i32 @pci_write_config_dword(ptr noundef %add.ptr.i, i32 noundef %spec.select19.i.i, i32 noundef %val) #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mul4 = shl nuw nsw i32 %sc_reg, 2
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %mul4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %val) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %23) #6, !srcloc !69
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %sis_scr_cfg_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sis_scr_cfg_write.exit ], [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_queuecmd(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_ioctl(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_slave_config(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_slave_destroy(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_unlock_native_capacity(ptr noundef) #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__UNIQUE_ID_author289, !1, !"__UNIQUE_ID_author289", i1 false, i1 false}
!1 = !{!"../drivers/ata/sata_sis.c", i32 93, i32 1}
!2 = !{ptr @__UNIQUE_ID_description290, !3, !"__UNIQUE_ID_description290", i1 false, i1 false}
!3 = !{!"../drivers/ata/sata_sis.c", i32 94, i32 1}
!4 = !{ptr @__UNIQUE_ID_file291, !5, !"__UNIQUE_ID_file291", i1 false, i1 false}
!5 = !{!"../drivers/ata/sata_sis.c", i32 95, i32 1}
!6 = !{ptr @__UNIQUE_ID_license292, !5, !"__UNIQUE_ID_license292", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version293, !8, !"__UNIQUE_ID_version293", i1 false, i1 false}
!8 = !{!"../drivers/ata/sata_sis.c", i32 97, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__initcall__kmod_sata_sis__294_298_sis_pci_driver_init6, !14, !"__initcall__kmod_sata_sis__294_298_sis_pci_driver_init6", i1 false, i1 false}
!14 = !{!"../drivers/ata/sata_sis.c", i32 298, i32 1}
!15 = !{ptr @__exitcall_sis_pci_driver_exit, !14, !"__exitcall_sis_pci_driver_exit", i1 false, i1 false}
!16 = !{ptr @sis_pci_driver, !17, !"sis_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/sata_sis.c", i32 64, i32 26}
!18 = !{ptr @sis_pci_tbl, !19, !"sis_pci_tbl", i1 false, i1 false}
!19 = !{!"../drivers/ata/sata_sis.c", i32 53, i32 35}
!20 = distinct !{null, !21, !"__print_once", i1 false, i1 false}
!21 = !{!"../drivers/ata/sata_sis.c", i32 191, i32 2}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/ata/sata_sis.c", i32 229, i32 4}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @sis_init_one._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @sis_init_one._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ata/sata_sis.c", i32 233, i32 4}
!32 = !{ptr @sis_init_one._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sis_init_one._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/ata/sata_sis.c", i32 244, i32 4}
!36 = !{ptr @sis_init_one._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sis_init_one._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/ata/sata_sis.c", i32 247, i32 4}
!40 = !{ptr @sis_init_one._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sis_init_one._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/ata/sata_sis.c", i32 252, i32 3}
!44 = !{ptr @sis_init_one._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @sis_init_one._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/ata/sata_sis.c", i32 258, i32 3}
!48 = !{ptr @sis_init_one._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @sis_init_one._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @sis_port_info, !51, !"sis_port_info", i1 false, i1 false}
!51 = !{!"../drivers/ata/sata_sis.c", i32 85, i32 35}
!52 = !{ptr @sis_ops, !53, !"sis_ops", i1 false, i1 false}
!53 = !{!"../drivers/ata/sata_sis.c", i32 79, i32 35}
!54 = !{ptr @sis_sht, !55, !"sis_sht", i1 false, i1 false}
!55 = !{!"../drivers/ata/sata_sis.c", i32 75, i32 34}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
!66 = !{i64 4985913}
!67 = !{i64 2152526262}
!68 = !{i64 2152527617}
!69 = !{i64 4985495}
