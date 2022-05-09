; ModuleID = '/llk/IR_all_yes/drivers/ata/acard-ahci.c_pt.bc'
source_filename = "../drivers/ata/acard-ahci.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.85, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.85 = type { ptr }
%struct.ahci_host_priv = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [5 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.93, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.93 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.ahci_port_priv = type { ptr, ptr, i32, ptr, i32, ptr, i32, i8, %struct.spinlock, i32, i8, i8, i32, [8 x %struct.ahci_em_priv], ptr }
%struct.ahci_em_priv = type { i32, %struct.timer_list, i32, i32, i32, ptr }
%struct.acard_sg = type { i32, i32, i32, i32 }

@__initcall__kmod_acard_ahci__323_457_acard_ahci_pci_driver_init6 = internal global ptr @acard_ahci_pci_driver_init, section ".initcall6.init", align 4
@acard_ahci_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.3, ptr @acard_ahci_pci_tbl, ptr @acard_ahci_init_one, ptr @ata_pci_remove_one, ptr @acard_ahci_pci_device_suspend, ptr @acard_ahci_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_acard_ahci_pci_driver_exit = internal global ptr @acard_ahci_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author324 = internal constant [30 x i8] c"acard_ahci.author=Jeff Garzik\00", section ".modinfo", align 1
@__UNIQUE_ID_description325 = internal constant [56 x i8] c"acard_ahci.description=ACard AHCI SATA low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file326 = internal constant [39 x i8] c"acard_ahci.file=drivers/ata/acard-ahci\00", section ".modinfo", align 1
@__UNIQUE_ID_license327 = internal constant [23 x i8] c"acard_ahci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version328 = internal constant [23 x i8] c"acard_ahci.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"acard_ahci\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"acard-ahci\00", [21 x i8] zeroinitializer }, align 32
@acard_ahci_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4497, i32 13, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@acard_ahci_port_info = internal constant { [1 x %struct.ata_port_info], [36 x i8] } { [1 x %struct.ata_port_info] [%struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @acard_ops, ptr inttoptr (i32 1 to ptr) }], [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/ata/acard-ahci.c\00", [39 x i8] zeroinitializer }, align 32
@acard_ahci_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ahci_ignore_sss = external dso_local local_unnamed_addr global i32, align 4
@acard_ahci_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016ahci: SSS flag set, parallel bus scan disabled\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"acard_ahci_init_one\00", [44 x i8] zeroinitializer }, align 32
@acard_ahci_init_one._entry_ptr = internal global ptr @acard_ahci_init_one._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"abar\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@ata_dummy_port_ops = external dso_local global %struct.ata_port_operations, align 4
@acard_ahci_init_one._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.4, i32 442, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA enable failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@acard_ahci_init_one._entry_ptr.13 = internal global ptr @acard_ahci_init_one._entry.9, section ".printk_index", align 4
@acard_ahci_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.3, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.3, ptr null, i32 32, i32 -1, i16 168, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr @ahci_shost_groups, ptr @ahci_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@acard_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr @acard_ahci_qc_prep, ptr null, ptr @acard_ahci_qc_fill_rtf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @acard_ahci_port_start, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_ops }, [44 x i8] zeroinitializer }, align 32
@ahci_ops = external dso_local global %struct.ata_port_operations, align 4
@acard_ahci_port_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 296, ptr @.str.16, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"port %d can do FBS, forcing FBSCP\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"acard_ahci_port_start\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@acard_ahci_port_start._entry_ptr = internal global ptr @acard_ahci_port_start._entry, section ".printk_index", align 4
@acard_ahci_port_start._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.4, i32 300, ptr @.str.19, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"port %d is not capable of FBS\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@acard_ahci_port_start._entry_ptr.20 = internal global ptr @acard_ahci_port_start._entry.17, section ".printk_index", align 4
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IDE\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SATA\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RAID\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@ahci_shost_groups = external dso_local global [0 x ptr], align 4
@ahci_sdev_groups = external dso_local global [0 x ptr], align 4
@acard_ahci_pci_device_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 122, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"BIOS update required for suspend/resume\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"acard_ahci_pci_device_suspend\00", [34 x i8] zeroinitializer }, align 32
@acard_ahci_pci_device_suspend._entry_ptr = internal global ptr @acard_ahci_pci_device_suspend._entry, section ".printk_index", align 4
@switch.table.acard_ahci_pci_print_info = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.21, ptr @.str.24, ptr @.str.24, ptr @.str.23, ptr @.str.24, ptr @.str.22], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@___asan_gen_.27 = private unnamed_addr constant [22 x i8] c"acard_ahci_pci_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 100, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 463, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 101, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"acard_ahci_pci_tbl\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 93, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant [21 x i8] c"acard_ahci_port_info\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 82, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 363, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [33 x i8] c"acard_ahci_init_one.__print_once\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 420, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 425, i32 44 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 427, i32 36 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 442, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [15 x i8] c"acard_ahci_sht\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 69, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant [10 x i8] c"acard_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 73, i32 35 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 295, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 299, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 171, i32 11 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 173, i32 11 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 175, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 177, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [28 x i8] c"../drivers/ata/acard-ahci.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 121, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [39 x i8] c"switch.table.acard_ahci_pci_print_info\00", align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author324, ptr @__UNIQUE_ID_description325, ptr @__UNIQUE_ID_file326, ptr @__UNIQUE_ID_license327, ptr @__UNIQUE_ID_version328, ptr @__exitcall_acard_ahci_pci_driver_exit, ptr @__initcall__kmod_acard_ahci__323_457_acard_ahci_pci_driver_init6, ptr @__modver_attr, ptr @acard_ahci_init_one._entry, ptr @acard_ahci_init_one._entry.9, ptr @acard_ahci_init_one._entry_ptr, ptr @acard_ahci_init_one._entry_ptr.13, ptr @acard_ahci_pci_device_suspend._entry, ptr @acard_ahci_pci_device_suspend._entry_ptr, ptr @acard_ahci_pci_driver_exit, ptr @acard_ahci_port_start._entry, ptr @acard_ahci_port_start._entry.17, ptr @acard_ahci_port_start._entry_ptr, ptr @acard_ahci_port_start._entry_ptr.20, ptr @acard_ahci_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @acard_ahci_pci_tbl, ptr @acard_ahci_port_info, ptr @.str.4, ptr @acard_ahci_init_one.__print_once, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @acard_ahci_sht, ptr @acard_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @switch.table.acard_ahci_pci_print_info], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acard_ahci_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acard_ahci_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acard_ahci_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acard_ahci_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acard_ahci_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acard_ahci_init_one._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acard_ahci_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acard_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acard_ahci_port_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acard_ahci_port_start._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acard_ahci_pci_device_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.acard_ahci_pci_print_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @acard_ahci_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @acard_ahci_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @acard_ahci_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @acard_ahci_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acard_ahci_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %pi = alloca %struct.ata_port_info, align 4
  %ppi = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pi) #6
  %2 = getelementptr inbounds %struct.ata_port_info, ptr %pi, i32 0, i32 6
  %arrayidx = getelementptr [1 x %struct.ata_port_info], ptr @acard_ahci_port_info, i32 0, i32 %1
  %3 = call ptr @memcpy(ptr %pi, ptr %arrayidx, i32 28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #6
  %4 = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %5 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pi, ptr %ppi, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %4, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %.b175 = load i1, ptr @acard_ahci_init_one.__print_once, align 1
  br i1 %.b175, label %entry.if.end19_crit_edge, label %if.then17

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @acard_ahci_init_one.__print_once, align 1
  call void @ata_print_version(ptr noundef %dev1, ptr noundef nonnull @.str.2) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %entry.if.end19_crit_edge
  %call = call i32 @pcim_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool20.not = icmp eq i32 %call, 0
  br i1 %tobool20.not, label %if.end22, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  %call23 = call i32 @pcim_iomap_regions_request_all(ptr noundef %pdev, i32 noundef 32, ptr noundef nonnull @.str.3) #6
  %7 = zext i32 %call23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call23, label %if.end22.cleanup_crit_edge [
    i32 -16, label %if.then24
    i32 0, label %if.end28
  ]

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  call void @pcim_pin_device(ptr noundef %pdev) #6
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 132, i32 noundef 3520) #6
  %tobool30.not = icmp eq ptr %call.i, null
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %irq33 = getelementptr inbounds %struct.ahci_host_priv, ptr %call.i, i32 0, i32 24
  %10 = ptrtoint ptr %irq33 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %irq33, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i, align 4
  %or = or i32 %15, %13
  store i32 %or, ptr %call.i, align 4
  %and = and i32 %or, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %if.then36, label %if.end32.if.end38_crit_edge

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = call i32 @pci_enable_msi(ptr noundef %pdev) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end32.if.end38_crit_edge
  %call39 = call ptr @pcim_iomap_table(ptr noundef %pdev) #6
  %arrayidx40 = getelementptr ptr, ptr %call39, i32 5
  %16 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx40, align 4
  %mmio = getelementptr inbounds %struct.ahci_host_priv, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %mmio, align 4
  call void @ahci_save_initial_config(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  %cap = getelementptr inbounds %struct.ahci_host_priv, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cap, align 4
  %and42 = and i32 %20, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end38.if.end47_crit_edge, label %if.then44

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pi, align 4
  %or46 = or i32 %22, 1024
  store i32 %or46, ptr %pi, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end38.if.end47_crit_edge
  %and49 = and i32 %20, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end47.if.end54_crit_edge, label %if.then51

if.end47.if.end54_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pi, align 4
  %or53 = or i32 %24, 524288
  store i32 %or53, ptr %pi, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end47.if.end54_crit_edge
  call void @ahci_set_em_messages(ptr noundef nonnull %call.i, ptr noundef nonnull %pi) #6
  %25 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cap, align 4
  %and.i = and i32 %26, 31
  %add.i = add nuw nsw i32 %and.i, 1
  %port_map = getelementptr inbounds %struct.ahci_host_priv, ptr %call.i, i32 0, i32 7
  %27 = ptrtoint ptr %port_map to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  %29 = call i32 @llvm.ctlz.i32(i32 %28, i1 true) #6, !range !80
  %sub.i = sub nuw nsw i32 32, %29
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %30 = call i32 @llvm.umax.i32(i32 %add.i, i32 %cond.i)
  %call61 = call ptr @ata_host_alloc_pinfo(ptr noundef %dev1, ptr noundef nonnull %ppi, i32 noundef %30) #6
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %if.end54.cleanup_crit_edge, label %if.end64

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64:                                         ; preds = %if.end54
  %private_data65 = getelementptr inbounds %struct.ata_host, ptr %call61, i32 0, i32 5
  %31 = ptrtoint ptr %private_data65 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %private_data65, align 4
  %32 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cap, align 4
  %and67 = and i32 %33, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end64.if.then70_crit_edge, label %lor.lhs.false

if.end64.if.then70_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then70

lor.lhs.false:                                    ; preds = %if.end64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ahci_ignore_sss to i32))
  %34 = load i32, ptr @ahci_ignore_sss, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool69.not = icmp eq i32 %34, 0
  br i1 %tobool69.not, label %do.end75, label %lor.lhs.false.if.then70_crit_edge

lor.lhs.false.if.then70_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then70

if.then70:                                        ; preds = %lor.lhs.false.if.then70_crit_edge, %if.end64.if.then70_crit_edge
  %flags71 = getelementptr inbounds %struct.ata_host, ptr %call61, i32 0, i32 7
  %35 = ptrtoint ptr %flags71 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags71, align 4
  %or72 = or i32 %36, 4
  store i32 %or72, ptr %flags71, align 4
  br label %if.end78

do.end75:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %if.end78

if.end78:                                         ; preds = %do.end75, %if.then70
  %n_ports79 = getelementptr inbounds %struct.ata_host, ptr %call61, i32 0, i32 3
  %37 = ptrtoint ptr %n_ports79 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n_ports79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp80177.not = icmp eq i32 %38, 0
  br i1 %cmp80177.not, label %if.end78.for.end_crit_edge, label %if.end78.for.body_crit_edge

if.end78.for.body_crit_edge:                      ; preds = %if.end78
  br label %for.body

if.end78.for.end_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end86.for.body_crit_edge, %if.end78.for.body_crit_edge
  %i.0178 = phi i32 [ %inc, %if.end86.for.body_crit_edge ], [ 0, %if.end78.for.body_crit_edge ]
  %arrayidx81 = getelementptr %struct.ata_host, ptr %call61, i32 0, i32 12, i32 %i.0178
  %39 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx81, align 4
  call void @ata_port_pbar_desc(ptr noundef %40, i32 noundef 5, i32 noundef -1, ptr noundef nonnull @.str.7) #6
  %port_no = getelementptr inbounds %struct.ata_port, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port_no, align 4
  %mul = shl i32 %42, 7
  %add = add i32 %mul, 256
  call void @ata_port_pbar_desc(ptr noundef %40, i32 noundef 5, i32 noundef %add, ptr noundef nonnull @.str.8) #6
  %43 = ptrtoint ptr %port_map to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port_map, align 4
  %shl = shl nuw i32 1, %i.0178
  %and83 = and i32 %44, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.then85, label %for.body.if.end86_crit_edge

for.body.if.end86_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then85:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.ata_port, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @ata_dummy_port_ops, ptr %ops, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then85, %for.body.if.end86_crit_edge
  %inc = add nuw i32 %i.0178, 1
  %46 = ptrtoint ptr %n_ports79 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n_ports79, align 4
  %cmp80 = icmp ult i32 %inc, %47
  br i1 %cmp80, label %if.end86.for.body_crit_edge, label %if.end86.for.end_crit_edge

if.end86.for.end_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end86.for.body_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end86.for.end_crit_edge, %if.end78.for.end_crit_edge
  %48 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %tobool90.not = icmp sgt i32 %49, -1
  %spec.select = select i1 %tobool90.not, i64 4294967295, i64 -1
  %call.i176 = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef %spec.select) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %cmp.i = icmp eq i32 %call.i176, 0
  br i1 %cmp.i, label %if.end109, label %do.end107

do.end107:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end109:                                        ; preds = %for.end
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef %spec.select) #6
  %call110 = call i32 @ahci_reset_controller(ptr noundef nonnull %call61) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end109.cleanup_crit_edge

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end113:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  call void @ahci_init_controller(ptr noundef nonnull %call61) #6
  call fastcc void @acard_ahci_pci_print_info(ptr noundef nonnull %call61)
  call void @pci_set_master(ptr noundef %pdev) #6
  %call114 = call i32 @ahci_host_activate(ptr noundef nonnull %call61, ptr noundef nonnull @acard_ahci_sht) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %if.end109.cleanup_crit_edge, %do.end107, %if.end54.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then24, %if.end22.cleanup_crit_edge, %if.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i176, %do.end107 ], [ %call114, %if.end113 ], [ %call, %if.end19.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ -16, %if.then24 ], [ -12, %if.end28.cleanup_crit_edge ], [ -12, %if.end54.cleanup_crit_edge ], [ %call110, %if.end109.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pi) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acard_ahci_pci_device_suspend(ptr noundef %pdev, [1 x i32] %mesg.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mesg.coerce.fca.0.extract = extractvalue [1 x i32] %mesg.coerce, 0
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %mmio1 = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio1, align 4
  %and = and i32 %mesg.coerce.fca.0.extract, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %and2 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and5 = and i32 %mesg.coerce.fca.0.extract, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end21_crit_edge, label %if.then7

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %9 = and i32 %8, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #6, !srcloc !84
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  br label %if.end21

if.end21:                                         ; preds = %if.then7, %if.end.if.end21_crit_edge
  %call23 = tail call i32 @ata_pci_device_suspend(ptr noundef %pdev, [1 x i32] %mesg.coerce) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call23, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acard_ahci_pci_device_resume(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @ata_pci_device_do_resume(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %power = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 12
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @ahci_reset_controller(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ahci_init_controller(ptr noundef %1) #6
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end.if.end7_crit_edge
  tail call void @ata_host_resume(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions_request_all(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcim_pin_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_save_initial_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_set_em_messages(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_pbar_desc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_reset_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_init_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @acard_ahci_pci_print_info(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  %cc = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cc) #6
  %2 = ptrtoint ptr %cc to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %cc, align 2, !annotation !86
  %call = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef 10, ptr noundef nonnull %cc) #6
  %3 = ptrtoint ptr %cc to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cc, align 2
  %switch.tableidx = add i16 %4, -257
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %switch.tableidx)
  %5 = icmp ult i16 %switch.tableidx, 6
  br i1 %5, label %switch.lookup, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.acard_ahci_pci_print_info, i32 0, i32 %6
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %if.end13

if.end13:                                         ; preds = %switch.lookup, %entry.if.end13_crit_edge
  %scc_s.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.24, %entry.if.end13_crit_edge ]
  call void @ahci_print_info(ptr noundef %host, ptr noundef nonnull %scc_s.0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cc) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_host_activate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acard_ahci_qc_prep(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %protocol, align 4
  %6 = and i8 %5, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not = icmp eq i8 %6, 0
  %cmd_tbl2 = getelementptr inbounds %struct.ahci_port_priv, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %cmd_tbl2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd_tbl2, align 4
  %hw_tag = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %9 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_tag, align 4
  %mul = mul i32 %10, 2816
  %add.ptr = getelementptr i8, ptr %8, i32 %mul
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 128
  %pmp = getelementptr inbounds %struct.ata_link, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pmp, align 4
  %conv4 = trunc i32 %16 to i8
  tail call void @ata_tf_to_fis(ptr noundef %tf, i8 noundef zeroext %conv4, i32 noundef 1, ptr noundef %add.ptr) #6
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 64
  %17 = call ptr @memset(ptr %add.ptr5, i32 0, i32 32)
  %cdb = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 5
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %cdb_len = getelementptr inbounds %struct.ata_device, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %cdb_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cdb_len, align 32
  %22 = call ptr @memcpy(ptr %add.ptr5, ptr %cdb, i32 %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 128
  %n_elem.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 9
  %25 = ptrtoint ptr %n_elem.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %n_elem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1.not.i = icmp eq i32 %26, 0
  br i1 %cmp1.not.i, label %if.then9.acard_ahci_fill_sg.exit_crit_edge, label %for.body.preheader.i

if.then9.acard_ahci_fill_sg.exit_crit_edge:       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %acard_ahci_fill_sg.exit

for.body.preheader.i:                             ; preds = %if.then9
  %sg1.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 17
  %27 = ptrtoint ptr %sg1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sg1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %sg.03.i = phi ptr [ %call.i, %for.body.i.for.body.i_crit_edge ], [ %28, %for.body.preheader.i ]
  %si.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.03.i, i32 0, i32 3
  %29 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_address.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.03.i, i32 0, i32 4
  %31 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_length.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  %arrayidx.i = getelementptr %struct.acard_sg, ptr %add.ptr.i, i32 %si.02.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx.i, align 4
  %addr_hi.i = getelementptr inbounds %struct.acard_sg, ptr %arrayidx.i, i32 0, i32 1
  %35 = ptrtoint ptr %addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %addr_hi.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %32) #6
  %size.i = getelementptr inbounds %struct.acard_sg, ptr %arrayidx.i, i32 0, i32 3
  %37 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %size.i, align 4
  %inc.i = add nuw i32 %si.02.i, 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg.03.i) #6
  %38 = ptrtoint ptr %n_elem.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_elem.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %39
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.acard_ahci_fill_sg.exit_crit_edge

for.body.i.acard_ahci_fill_sg.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %acard_ahci_fill_sg.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

acard_ahci_fill_sg.exit:                          ; preds = %for.body.i.acard_ahci_fill_sg.exit_crit_edge, %if.then9.acard_ahci_fill_sg.exit_crit_edge
  %last_si.0.lcssa.i = phi i32 [ 0, %if.then9.acard_ahci_fill_sg.exit_crit_edge ], [ %si.02.i, %for.body.i.acard_ahci_fill_sg.exit_crit_edge ]
  %arrayidx6.i = getelementptr %struct.acard_sg, ptr %add.ptr.i, i32 %last_si.0.lcssa.i
  %size7.i = getelementptr inbounds %struct.acard_sg, ptr %arrayidx6.i, i32 0, i32 3
  %40 = ptrtoint ptr %size7.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size7.i, align 4
  %or.i = or i32 %41, 128
  store i32 %or.i, ptr %size7.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %acard_ahci_fill_sg.exit, %if.end.if.end11_crit_edge
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 128
  %pmp14 = getelementptr inbounds %struct.ata_link, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %pmp14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pmp14, align 4
  %shl = shl i32 %47, 12
  %48 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tf, align 4
  %and17 = and i32 %49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %spec.select.v = select i1 %tobool18.not, i32 5, i32 69
  %spec.select = or i32 %spec.select.v, %shl
  %or24 = or i32 %spec.select, 160
  %opts.1 = select i1 %tobool.i.not, i32 %spec.select, i32 %or24
  %50 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hw_tag, align 4
  tail call void @ahci_fill_cmd_slot(ptr noundef %3, i32 noundef %51, i32 noundef %opts.1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @acard_ahci_qc_fill_rtf(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %rx_fis1 = getelementptr inbounds %struct.ahci_port_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %rx_fis1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_fis1, align 4
  %fbs_enabled = getelementptr inbounds %struct.ahci_port_priv, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %fbs_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fbs_enabled, align 1, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  %pmp = getelementptr inbounds %struct.ata_link, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pmp, align 4
  %mul = shl i32 %13, 7
  %add.ptr = getelementptr i8, ptr %5, i32 %mul
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_fis.0 = phi ptr [ %add.ptr, %if.then ], [ %5, %entry.if.end_crit_edge ]
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp = icmp eq i8 %15, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %dma_dir = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 11
  %16 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp3 = icmp eq i32 %17, 2
  br i1 %cmp3, label %land.lhs.true5, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true5:                                   ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true5.if.else_crit_edge

land.lhs.true5.if.else_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr8 = getelementptr i8, ptr %rx_fis.0, i32 32
  %result_tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 21
  tail call void @ata_tf_from_fis(ptr noundef %add.ptr8, ptr noundef %result_tf) #6
  %arrayidx = getelementptr i8, ptr %rx_fis.0, i32 47
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %command = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 21, i32 14
  %22 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %command, align 1
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true5.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %add.ptr11 = getelementptr i8, ptr %rx_fis.0, i32 64
  %result_tf12 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 21
  tail call void @ata_tf_from_fis(ptr noundef %add.ptr11, ptr noundef %result_tf12) #6
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then7
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @acard_ahci_port_start(ptr noundef %ap) #2 align 64 {
entry:
  %mem_dma = alloca i32, align 4
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
  %dev2 = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem_dma) #6
  %6 = ptrtoint ptr %mem_dma to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %mem_dma, align 4, !annotation !86
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 636, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cap = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cap, align 4
  %and = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end23_crit_edge, label %land.lhs.true

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 3
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %10, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end23_crit_edge, label %if.then5

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then5:                                         ; preds = %land.lhs.true
  %11 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %13 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_no.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %12, i32 0, i32 5
  %15 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 256
  %mul.i.i = shl i32 %14, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 24
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  %20 = and i32 %19, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool10.not = icmp eq i32 %20, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %fbs_supported = getelementptr inbounds %struct.ahci_port_priv, ptr %call.i, i32 0, i32 10
  %21 = ptrtoint ptr %fbs_supported to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %fbs_supported, align 4
  br label %if.end23

if.else:                                          ; preds = %if.then5
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 4
  %and12 = and i32 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %24 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port_no.i, align 4
  br i1 %tobool13.not, label %do.end19, label %do.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.14, i32 noundef %25) #9
  %fbs_supported15 = getelementptr inbounds %struct.ahci_port_priv, ptr %call.i, i32 0, i32 10
  %26 = ptrtoint ptr %fbs_supported15 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %fbs_supported15, align 4
  br label %if.end23

do.end19:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.18, i32 noundef %25) #9
  br label %if.end23

if.end23:                                         ; preds = %do.end19, %do.end, %if.then11, %land.lhs.true.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %fbs_supported24 = getelementptr inbounds %struct.ahci_port_priv, ptr %call.i, i32 0, i32 10
  %27 = ptrtoint ptr %fbs_supported24 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fbs_supported24, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool25.not = icmp eq i8 %28, 0
  %.72 = select i1 %tobool25.not, i32 91392, i32 95232
  %call.i73 = call ptr @dmam_alloc_attrs(ptr noundef %5, i32 noundef %.72, ptr noundef nonnull %mem_dma, i32 noundef 3264, i32 noundef 0) #6
  %tobool30.not = icmp eq ptr %call.i73, null
  br i1 %tobool30.not, label %if.end23.cleanup_crit_edge, label %if.end32

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %. = select i1 %tobool25.not, i32 128, i32 2048
  %cmd_slot = getelementptr inbounds %struct.ahci_port_priv, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %cmd_slot to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i73, ptr %cmd_slot, align 4
  %30 = ptrtoint ptr %mem_dma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mem_dma, align 4
  %cmd_slot_dma = getelementptr inbounds %struct.ahci_port_priv, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %cmd_slot_dma to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %cmd_slot_dma, align 4
  %add.ptr33 = getelementptr i8, ptr %call.i73, i32 1024
  %add = add i32 %31, 1024
  %rx_fis = getelementptr inbounds %struct.ahci_port_priv, ptr %call.i, i32 0, i32 5
  %33 = ptrtoint ptr %rx_fis to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr33, ptr %rx_fis, align 4
  %rx_fis_dma = getelementptr inbounds %struct.ahci_port_priv, ptr %call.i, i32 0, i32 6
  %34 = ptrtoint ptr %rx_fis_dma to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add, ptr %rx_fis_dma, align 4
  %add.ptr34 = getelementptr i8, ptr %add.ptr33, i32 %.
  %add35 = add i32 %add, %.
  store i32 %add35, ptr %mem_dma, align 4
  %cmd_tbl = getelementptr inbounds %struct.ahci_port_priv, ptr %call.i, i32 0, i32 3
  %35 = ptrtoint ptr %cmd_tbl to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr34, ptr %cmd_tbl, align 4
  %cmd_tbl_dma = getelementptr inbounds %struct.ahci_port_priv, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %cmd_tbl_dma to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add35, ptr %cmd_tbl_dma, align 4
  %intr_mask = getelementptr inbounds %struct.ahci_port_priv, ptr %call.i, i32 0, i32 9
  %37 = ptrtoint ptr %intr_mask to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2025848959, ptr %intr_mask, align 4
  %private_data36 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %38 = ptrtoint ptr %private_data36 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %private_data36, align 4
  %call37 = call i32 @ahci_port_resume(ptr noundef %ap) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %if.end32 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_dma) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tf_to_fis(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_fill_cmd_slot(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tf_from_fis(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_port_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_print_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_queuecmd(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_ioctl(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_slave_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_slave_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_change_queue_depth(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_unlock_native_capacity(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_do_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !33, !35, !37, !38, !39, !40, !41, !43, !45, !47, !48, !49, !50, !51, !53, !54, !55, !56, !58, !60, !62, !64, !66, !68, !69, !70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_acard_ahci__323_457_acard_ahci_pci_driver_init6, !1, !"__initcall__kmod_acard_ahci__323_457_acard_ahci_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/acard-ahci.c", i32 457, i32 1}
!2 = !{ptr @__exitcall_acard_ahci_pci_driver_exit, !1, !"__exitcall_acard_ahci_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author324, !4, !"__UNIQUE_ID_author324", i1 false, i1 false}
!4 = !{!"../drivers/ata/acard-ahci.c", i32 459, i32 1}
!5 = !{ptr @__UNIQUE_ID_description325, !6, !"__UNIQUE_ID_description325", i1 false, i1 false}
!6 = !{!"../drivers/ata/acard-ahci.c", i32 460, i32 1}
!7 = !{ptr @__UNIQUE_ID_file326, !8, !"__UNIQUE_ID_file326", i1 false, i1 false}
!8 = !{!"../drivers/ata/acard-ahci.c", i32 461, i32 1}
!9 = !{ptr @__UNIQUE_ID_license327, !8, !"__UNIQUE_ID_license327", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version328, !11, !"__UNIQUE_ID_version328", i1 false, i1 false}
!11 = !{!"../drivers/ata/acard-ahci.c", i32 463, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/ata/acard-ahci.c", i32 101, i32 12}
!18 = !{ptr @acard_ahci_pci_driver, !19, !"acard_ahci_pci_driver", i1 false, i1 false}
!19 = !{!"../drivers/ata/acard-ahci.c", i32 100, i32 26}
!20 = !{ptr @acard_ahci_pci_tbl, !21, !"acard_ahci_pci_tbl", i1 false, i1 false}
!21 = !{!"../drivers/ata/acard-ahci.c", i32 93, i32 35}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/ata/acard-ahci.c", i32 363, i32 2}
!24 = distinct !{null, !25, !"__print_once", i1 false, i1 false}
!25 = !{!"../drivers/ata/acard-ahci.c", i32 365, i32 2}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/ata/acard-ahci.c", i32 420, i32 3}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @acard_ahci_init_one._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @acard_ahci_init_one._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/ata/acard-ahci.c", i32 425, i32 44}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/ata/acard-ahci.c", i32 427, i32 36}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/ata/acard-ahci.c", i32 442, i32 3}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @acard_ahci_init_one._entry.9, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @acard_ahci_init_one._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @acard_ahci_port_info, !42, !"acard_ahci_port_info", i1 false, i1 false}
!42 = !{!"../drivers/ata/acard-ahci.c", i32 82, i32 35}
!43 = !{ptr @acard_ops, !44, !"acard_ops", i1 false, i1 false}
!44 = !{!"../drivers/ata/acard-ahci.c", i32 73, i32 35}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/ata/acard-ahci.c", i32 295, i32 4}
!47 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @acard_ahci_port_start._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @acard_ahci_port_start._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/ata/acard-ahci.c", i32 299, i32 4}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @acard_ahci_port_start._entry.17, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @acard_ahci_port_start._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/ata/acard-ahci.c", i32 171, i32 11}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/ata/acard-ahci.c", i32 173, i32 11}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/ata/acard-ahci.c", i32 175, i32 11}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/ata/acard-ahci.c", i32 177, i32 11}
!64 = !{ptr @acard_ahci_sht, !65, !"acard_ahci_sht", i1 false, i1 false}
!65 = !{!"../drivers/ata/acard-ahci.c", i32 69, i32 34}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/ata/acard-ahci.c", i32 121, i32 3}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @acard_ahci_pci_device_suspend._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @acard_ahci_pci_device_suspend._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i32 0, i32 33}
!81 = !{i64 4989835}
!82 = !{i64 2156434697}
!83 = !{i64 2156434909}
!84 = !{i64 4989417}
!85 = !{i64 2156435560}
!86 = !{!"auto-init"}
!87 = !{i8 0, i8 2}
!88 = !{i64 2156438097}
