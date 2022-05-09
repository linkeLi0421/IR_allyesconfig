; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_sis.c_pt.bc'
source_filename = "../drivers/ata/pata_sis.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sis_info133_for_sata\22, \22a\22\09"
module asm "\09.weak\09__crc_sis_info133_for_sata\09\09\09\09"
module asm "\09.long\09__crc_sis_info133_for_sata\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sis_info133_for_sata:\09\09\09\09\09"
module asm "\09.asciz \09\22sis_info133_for_sata\22\09\09\09\09\09"
module asm "__kstrtabns_sis_info133_for_sata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.sis_chipset = type { i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pci_bits = type { i32, i32, i32, i32 }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.78, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.78 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pm_message = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }

@sis_133_for_sata_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sis_133_cable_detect, ptr null, ptr @sis_133_set_piomode, ptr @sis_133_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@sis_info133_for_sata = dso_local constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 0, i32 127, ptr @sis_133_for_sata_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_sis_info133_for_sata = external dso_local constant [0 x i8], align 1
@__kstrtabns_sis_info133_for_sata = external dso_local constant [0 x i8], align 1
@__ksymtab_sis_info133_for_sata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sis_info133_for_sata to i32), ptr @__kstrtab_sis_info133_for_sata, ptr @__kstrtabns_sis_info133_for_sata }, section "___ksymtab_gpl+sis_info133_for_sata", align 4
@__initcall__kmod_pata_sis__289_909_sis_pci_driver_init6 = internal global ptr @sis_pci_driver_init, section ".initcall6.init", align 4
@sis_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @sis_pci_tbl, ptr @sis_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @sis_reinit_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sis_pci_driver_exit = internal global ptr @sis_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [25 x i8] c"pata_sis.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [55 x i8] c"pata_sis.description=SCSI low-level driver for SiS ATA\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [35 x i8] c"pata_sis.file=drivers/ata/pata_sis\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [21 x i8] c"pata_sis.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version294 = internal constant [23 x i8] c"pata_sis.version=0.5.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pata_sis\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.5.2\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@sis_133_set_piomode.timing133 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 673615872, i32 203841536, i32 69611520, i32 201994240, i32 84488192], [44 x i8] zeroinitializer }, align 32
@sis_133_set_piomode.timing100 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 505176064, i32 152846336, i32 52174848, i32 151461888, i32 67510272], [44 x i8] zeroinitializer }, align 32
@sis_133_set_dmamode.timing_u100 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 420823040, i32 101130240, i32 67510272], [20 x i8] zeroinitializer }, align 32
@sis_133_set_dmamode.timing_u133 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 572284928, i32 201994240, i32 84488192], [20 x i8] zeroinitializer }, align 32
@sis_133_set_dmamode.timing_u100.3 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1712, i32 1136, i32 848, i32 320, i32 288, i32 272, i32 0], [36 x i8] zeroinitializer }, align 32
@sis_133_set_dmamode.timing_u133.4 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2544, i32 1696, i32 1136, i32 592, i32 560, i32 544, i32 528], [36 x i8] zeroinitializer }, align 32
@sis_pci_tbl = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 4153, i32 21779, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4153, i32 21784, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4153, i32 4480, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sis_init_one.sis_chipsets = internal global { [26 x %struct.sis_chipset], [48 x i8] } { [26 x %struct.sis_chipset] [%struct.sis_chipset { i16 2408, ptr @sis_info133 }, %struct.sis_chipset { i16 2406, ptr @sis_info133 }, %struct.sis_chipset { i16 2405, ptr @sis_info133 }, %struct.sis_chipset { i16 1861, ptr @sis_info100 }, %struct.sis_chipset { i16 1845, ptr @sis_info100 }, %struct.sis_chipset { i16 1843, ptr @sis_info100 }, %struct.sis_chipset { i16 1589, ptr @sis_info100 }, %struct.sis_chipset { i16 1587, ptr @sis_info100 }, %struct.sis_chipset { i16 1840, ptr @sis_info100_early }, %struct.sis_chipset { i16 1360, ptr @sis_info100_early }, %struct.sis_chipset { i16 1600, ptr @sis_info66 }, %struct.sis_chipset { i16 1584, ptr @sis_info66 }, %struct.sis_chipset { i16 1568, ptr @sis_info66 }, %struct.sis_chipset { i16 1344, ptr @sis_info66 }, %struct.sis_chipset { i16 1328, ptr @sis_info66 }, %struct.sis_chipset { i16 22016, ptr @sis_info33 }, %struct.sis_chipset { i16 21912, ptr @sis_info33 }, %struct.sis_chipset { i16 21911, ptr @sis_info33 }, %struct.sis_chipset { i16 21905, ptr @sis_info33 }, %struct.sis_chipset { i16 21890, ptr @sis_info33 }, %struct.sis_chipset { i16 21889, ptr @sis_info33 }, %struct.sis_chipset { i16 21910, ptr @sis_info }, %struct.sis_chipset { i16 21873, ptr @sis_info }, %struct.sis_chipset { i16 21783, ptr @sis_info }, %struct.sis_chipset { i16 21777, ptr @sis_info }, %struct.sis_chipset zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sis_info133 = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 127, ptr @sis_133_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@sis_info100 = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 0, i32 63, ptr @sis_100_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@sis_info100_early = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 0, i32 63, ptr @sis_66_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@sis_info66 = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 0, i32 31, ptr @sis_66_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@sis_info33 = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 7, ptr @sis_old_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@sis_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 0, ptr @sis_old_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@sis_init_one.sis133_early = internal global { %struct.sis_chipset, [24 x i8] } { %struct.sis_chipset { i16 0, ptr @sis_info133_early }, [24 x i8] zeroinitializer }, align 32
@sis_info133_early = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 0, i32 127, ptr @sis_133_early_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@sis_init_one.sis133 = internal global { %struct.sis_chipset, [24 x i8] } { %struct.sis_chipset { i16 0, ptr @sis_info133 }, [24 x i8] zeroinitializer }, align 32
@sis_init_one.sis100_early = internal global { %struct.sis_chipset, [24 x i8] } { %struct.sis_chipset { i16 0, ptr @sis_info100_early }, [24 x i8] zeroinitializer }, align 32
@sis_init_one.sis100 = internal global { %struct.sis_chipset, [24 x i8] } { %struct.sis_chipset { i16 0, ptr @sis_info100 }, [24 x i8] zeroinitializer }, align 32
@sis_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@sis_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 814, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"SiS 962/963 MuTIOL IDE UDMA133 controller\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sis_init_one\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/ata/pata_sis.c\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sis_init_one._entry_ptr = internal global ptr @sis_init_one._entry, section ".printk_index", align 4
@sis_init_one._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 819, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Switching to 5513 register mapping\0A\00", [60 x i8] zeroinitializer }, align 32
@sis_init_one._entry_ptr.12 = internal global ptr @sis_init_one._entry.10, section ".printk_index", align 4
@sis_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@sis_133_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sis_133_cable_detect, ptr @sis_133_mode_filter, ptr @sis_133_set_piomode, ptr @sis_133_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sis_base_ops }, [44 x i8] zeroinitializer }, align 32
@sis_base_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sis_pre_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@sis_pre_reset.sis_enable_bits = internal constant { [2 x %struct.pci_bits], [32 x i8] } { [2 x %struct.pci_bits] [%struct.pci_bits { i32 74, i32 1, i32 2, i32 2 }, %struct.pci_bits { i32 74, i32 1, i32 4, i32 4 }], [32 x i8] zeroinitializer }, align 32
@sis_100_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sis_66_cable_detect, ptr null, ptr @sis_100_set_piomode, ptr @sis_100_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sis_base_ops }, [44 x i8] zeroinitializer }, align 32
@sis_100_set_piomode.actrec = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00gD31", [27 x i8] zeroinitializer }, align 32
@sis_100_set_dmamode.udma_bits = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\8B\87\85\83\82\81", [26 x i8] zeroinitializer }, align 32
@sis_66_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sis_66_cable_detect, ptr null, ptr @sis_old_set_piomode, ptr @sis_66_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sis_base_ops }, [44 x i8] zeroinitializer }, align 32
@sis_old_set_piomode.active = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\07\04\03\01", [27 x i8] zeroinitializer }, align 32
@sis_old_set_piomode.recovery = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\06\04\03\03", [27 x i8] zeroinitializer }, align 32
@sis_66_set_dmamode.mwdma_bits = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 8, i16 770, i16 769], [26 x i8] zeroinitializer }, align 32
@sis_66_set_dmamode.udma_bits = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 -4096, i16 -12288, i16 -20480, i16 -24576, i16 -28672, i16 -32768], [20 x i8] zeroinitializer }, align 32
@sis_old_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_cable_40wire, ptr null, ptr @sis_old_set_piomode, ptr @sis_old_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sis_base_ops }, [44 x i8] zeroinitializer }, align 32
@sis_old_set_dmamode.mwdma_bits = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 8, i16 770, i16 769], [26 x i8] zeroinitializer }, align 32
@sis_old_set_dmamode.udma_bits = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 -8192, i16 -16384, i16 -24576], [26 x i8] zeroinitializer }, align 32
@sis_133_early_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sis_66_cable_detect, ptr null, ptr @sis_100_set_piomode, ptr @sis_133_early_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sis_base_ops }, [44 x i8] zeroinitializer }, align 32
@sis_133_early_set_dmamode.udma_bits = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\8F\8A\87\85\83\82\81", [25 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 4163, i64 4209, i64 5940]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 16, i64 384, i64 4480, i64 21784]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 16, i64 4163, i64 4209, i64 5940]
@___asan_gen_.15 = private unnamed_addr constant [21 x i8] c"sis_133_for_sata_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 546, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"sis_info133_for_sata\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 636, i32 28 }
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"sis_pci_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 898, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 915, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant [10 x i8] c"timing133\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 295, i32 19 }
@___asan_gen_.36 = private unnamed_addr constant [10 x i8] c"timing100\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 302, i32 19 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 492, i32 20 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 493, i32 20 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"timing_u100\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 505, i32 20 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"timing_u133\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 506, i32 20 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"sis_pci_tbl\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 890, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant [13 x i8] c"sis_chipsets\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 731, i32 28 }
@___asan_gen_.57 = private unnamed_addr constant [12 x i8] c"sis_info133\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 629, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant [12 x i8] c"sis_info100\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 615, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant [18 x i8] c"sis_info100_early\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 622, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant [11 x i8] c"sis_info66\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 608, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant [11 x i8] c"sis_info33\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 601, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant [9 x i8] c"sis_info\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 594, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant [13 x i8] c"sis133_early\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 765, i32 28 }
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"sis_info133_early\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 643, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"sis133\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 768, i32 28 }
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"sis100_early\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 771, i32 28 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"sis100\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 774, i32 28 }
@___asan_gen_.90 = private unnamed_addr constant [26 x i8] c"sis_init_one.__print_once\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 813, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 818, i32 5 }
@___asan_gen_.115 = private unnamed_addr constant [8 x i8] c"sis_sht\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 542, i32 34 }
@___asan_gen_.118 = private unnamed_addr constant [12 x i8] c"sis_133_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 558, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant [13 x i8] c"sis_base_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 553, i32 35 }
@___asan_gen_.124 = private unnamed_addr constant [16 x i8] c"sis_enable_bits\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 166, i32 31 }
@___asan_gen_.127 = private unnamed_addr constant [12 x i8] c"sis_100_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 573, i32 35 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"actrec\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 269, i32 18 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 421, i32 18 }
@___asan_gen_.136 = private unnamed_addr constant [11 x i8] c"sis_66_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 580, i32 35 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 233, i32 18 }
@___asan_gen_.142 = private unnamed_addr constant [9 x i8] c"recovery\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 234, i32 18 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 383, i32 19 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 384, i32 19 }
@___asan_gen_.151 = private unnamed_addr constant [12 x i8] c"sis_old_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 587, i32 35 }
@___asan_gen_.154 = private unnamed_addr constant [11 x i8] c"mwdma_bits\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 343, i32 19 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 344, i32 19 }
@___asan_gen_.160 = private unnamed_addr constant [18 x i8] c"sis_133_early_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 566, i32 35 }
@___asan_gen_.163 = private unnamed_addr constant [10 x i8] c"udma_bits\00", align 1
@___asan_gen_.164 = private constant [26 x i8] c"../drivers/ata/pata_sis.c\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 455, i32 18 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_version294, ptr @__exitcall_sis_pci_driver_exit, ptr @__initcall__kmod_pata_sis__289_909_sis_pci_driver_init6, ptr @__ksymtab_sis_info133_for_sata, ptr @__modver_attr, ptr @sis_init_one._entry, ptr @sis_init_one._entry.10, ptr @sis_init_one._entry_ptr, ptr @sis_init_one._entry_ptr.12, ptr @sis_pci_driver_exit, ptr @sis_133_for_sata_ops, ptr @sis_info133_for_sata, ptr @sis_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sis_133_set_piomode.timing133, ptr @sis_133_set_piomode.timing100, ptr @sis_133_set_dmamode.timing_u100, ptr @sis_133_set_dmamode.timing_u133, ptr @sis_133_set_dmamode.timing_u100.3, ptr @sis_133_set_dmamode.timing_u133.4, ptr @sis_pci_tbl, ptr @sis_init_one.sis_chipsets, ptr @sis_info133, ptr @sis_info100, ptr @sis_info100_early, ptr @sis_info66, ptr @sis_info33, ptr @sis_info, ptr @sis_init_one.sis133_early, ptr @sis_info133_early, ptr @sis_init_one.sis133, ptr @sis_init_one.sis100_early, ptr @sis_init_one.sis100, ptr @sis_init_one.__print_once, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @sis_sht, ptr @sis_133_ops, ptr @sis_base_ops, ptr @sis_pre_reset.sis_enable_bits, ptr @sis_100_ops, ptr @sis_100_set_piomode.actrec, ptr @sis_100_set_dmamode.udma_bits, ptr @sis_66_ops, ptr @sis_old_set_piomode.active, ptr @sis_old_set_piomode.recovery, ptr @sis_66_set_dmamode.mwdma_bits, ptr @sis_66_set_dmamode.udma_bits, ptr @sis_old_ops, ptr @sis_old_set_dmamode.mwdma_bits, ptr @sis_old_set_dmamode.udma_bits, ptr @sis_133_early_ops, ptr @sis_133_early_set_dmamode.udma_bits], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_133_for_sata_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_info133_for_sata to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_133_set_piomode.timing133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_133_set_piomode.timing100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_133_set_dmamode.timing_u100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_133_set_dmamode.timing_u133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_133_set_dmamode.timing_u100.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_133_set_dmamode.timing_u133.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_pci_tbl to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_init_one.sis_chipsets to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_info133 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_info100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_info100_early to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_info66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_info33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_init_one.sis133_early to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_info133_early to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_init_one.sis133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_init_one.sis100_early to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_init_one.sis100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_init_one._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_133_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_base_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_pre_reset.sis_enable_bits to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_100_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_100_set_piomode.actrec to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_100_set_dmamode.udma_bits to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_66_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_old_set_piomode.active to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_old_set_piomode.recovery to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_66_set_dmamode.mwdma_bits to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_66_set_dmamode.udma_bits to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_old_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_old_set_dmamode.mwdma_bits to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_old_set_dmamode.udma_bits to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_133_early_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis_133_early_set_dmamode.udma_bits to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sis_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @sis_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sis_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @sis_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis_133_cable_detect(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  %tmp1 = alloca i16, align 2
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp1) #5
  %4 = ptrtoint ptr %tmp1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %tmp1, align 2, !annotation !121
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %5 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port_no, align 4
  %mul = shl i32 %6, 1
  %add = add i32 %mul, 80
  %call = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef %add, ptr noundef nonnull %tmp1) #5
  %7 = ptrtoint ptr %tmp1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %tmp1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %8)
  %tobool.not = icmp sgt i16 %8, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %device2.i = getelementptr i8, ptr %3, i32 -102
  %9 = ptrtoint ptr %device2.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device2.i, align 2
  %subsystem_device.i = getelementptr i8, ptr %3, i32 -98
  call void @__sanitizer_cov_trace_const_cmp2(i16 21779, i16 %10)
  %cmp.i = icmp eq i16 %10, 21779
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %subsystem_vendor.i = getelementptr i8, ptr %3, i32 -100
  %11 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %subsystem_vendor.i, align 4
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i16 %12, label %land.lhs.true.i.cleanup_crit_edge [
    i16 4163, label %land.lhs.true9.i
    i16 5940, label %land.lhs.true9.1.i
    i16 4209, label %land.lhs.true9.2.i
  ]

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %14 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %subsystem_device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4359, i16 %15)
  %cmp12.i = icmp eq i16 %15, 4359
  br i1 %cmp12.i, label %land.lhs.true9.i.sis_short_ata40.exit.thread_crit_edge, label %land.lhs.true9.i.cleanup_crit_edge

land.lhs.true9.i.cleanup_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true9.i.sis_short_ata40.exit.thread_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sis_short_ata40.exit.thread

land.lhs.true9.1.i:                               ; preds = %land.lhs.true.i
  %16 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %subsystem_device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4191, i16 %17)
  %cmp12.1.i = icmp eq i16 %17, 4191
  br i1 %cmp12.1.i, label %land.lhs.true9.1.i.sis_short_ata40.exit.thread_crit_edge, label %land.lhs.true9.1.i.cleanup_crit_edge

land.lhs.true9.1.i.cleanup_crit_edge:             ; preds = %land.lhs.true9.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true9.1.i.sis_short_ata40.exit.thread_crit_edge: ; preds = %land.lhs.true9.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sis_short_ata40.exit.thread

land.lhs.true9.2.i:                               ; preds = %land.lhs.true.i
  %18 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %subsystem_device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31168, i16 %19)
  %cmp12.2.i = icmp eq i16 %19, -31168
  br i1 %cmp12.2.i, label %land.lhs.true9.2.i.sis_short_ata40.exit.thread_crit_edge, label %land.lhs.true9.2.i.cleanup_crit_edge

land.lhs.true9.2.i.cleanup_crit_edge:             ; preds = %land.lhs.true9.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true9.2.i.sis_short_ata40.exit.thread_crit_edge: ; preds = %land.lhs.true9.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sis_short_ata40.exit.thread

sis_short_ata40.exit.thread:                      ; preds = %land.lhs.true9.2.i.sis_short_ata40.exit.thread_crit_edge, %land.lhs.true9.1.i.sis_short_ata40.exit.thread_crit_edge, %land.lhs.true9.i.sis_short_ata40.exit.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sis_short_ata40.exit.thread, %land.lhs.true9.2.i.cleanup_crit_edge, %land.lhs.true9.1.i.cleanup_crit_edge, %land.lhs.true9.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %land.lhs.true9.2.i.cleanup_crit_edge ], [ 2, %sis_short_ata40.exit.thread ], [ 2, %entry.cleanup_crit_edge ], [ 1, %land.lhs.true9.1.i.cleanup_crit_edge ], [ 1, %land.lhs.true9.i.cleanup_crit_edge ], [ 1, %land.lhs.true.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp1) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis_133_set_piomode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %reg54.i = alloca i32, align 4
  %fifoctrl.i = alloca i8, align 1
  %t1 = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t1) #5
  %4 = ptrtoint ptr %t1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %t1, align 4, !annotation !121
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %5 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pio_mode, align 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fifoctrl.i) #5
  %7 = ptrtoint ptr %fifoctrl.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %fifoctrl.i, align 1, !annotation !121
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %9, 1
  %shl.i = shl i32 17, %mul.i
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %10 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devno.i, align 4
  %shl3.i = shl i32 %shl.i, %11
  %call.i = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 75, ptr noundef nonnull %fifoctrl.i) #5
  %12 = ptrtoint ptr %fifoctrl.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fifoctrl.i, align 1
  %14 = trunc i32 %shl3.i to i8
  %15 = xor i8 %14, -1
  %conv7.i = and i8 %13, %15
  store i8 %conv7.i, ptr %fifoctrl.i, align 1
  %class.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 9
  %16 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %class.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.i = icmp eq i32 %17, 1
  br i1 %cmp.i, label %if.then.i, label %entry.sis_set_fifo.exit_crit_edge

entry.sis_set_fifo.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sis_set_fifo.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv11.i = or i8 %13, %14
  %18 = ptrtoint ptr %fifoctrl.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv11.i, ptr %fifoctrl.i, align 1
  br label %sis_set_fifo.exit

sis_set_fifo.exit:                                ; preds = %if.then.i, %entry.sis_set_fifo.exit_crit_edge
  %19 = ptrtoint ptr %fifoctrl.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fifoctrl.i, align 1
  %call12.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 75, i8 noundef zeroext %20) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fifoctrl.i) #5
  %21 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adev, align 128
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 128
  %host.i13 = getelementptr inbounds %struct.ata_port, ptr %24, i32 0, i32 31
  %25 = ptrtoint ptr %host.i13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host.i13, align 4
  %dev.i14 = getelementptr inbounds %struct.ata_host, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %dev.i14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i14, align 4
  %add.ptr.i15 = getelementptr i8, ptr %28, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg54.i) #5
  %29 = ptrtoint ptr %reg54.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %reg54.i, align 4, !annotation !121
  %call.i16 = call i32 @pci_read_config_dword(ptr noundef %add.ptr.i15, i32 noundef 84, ptr noundef nonnull %reg54.i) #5
  %30 = ptrtoint ptr %reg54.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg54.i, align 4
  %and.i = and i32 %31, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 64, i32 112
  %port_no.i17 = getelementptr inbounds %struct.ata_port, ptr %24, i32 0, i32 7
  %32 = ptrtoint ptr %port_no.i17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port_no.i17, align 4
  %mul.i18 = shl i32 %33, 3
  %add.i = add i32 %spec.select.i, %mul.i18
  %34 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %devno.i, align 4
  %mul2.i = shl i32 %35, 2
  %add3.i = add i32 %add.i, %mul2.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg54.i) #5
  %call1 = call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef %add3.i, ptr noundef nonnull %t1) #5
  %36 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %t1, align 4
  %and = and i32 %37, -1061154817
  %and2 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  %sis_133_set_piomode.timing100.sis_133_set_piomode.timing133 = select i1 %tobool.not, ptr @sis_133_set_piomode.timing100, ptr @sis_133_set_piomode.timing133
  %conv = zext i8 %6 to i32
  %sub = add nsw i32 %conv, -8
  %.pn.in = getelementptr [5 x i32], ptr %sis_133_set_piomode.timing100.sis_133_set_piomode.timing133, i32 0, i32 %sub
  %38 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn = load i32, ptr %.pn.in, align 4
  %storemerge = or i32 %.pn, %and
  %39 = ptrtoint ptr %t1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %storemerge, ptr %t1, align 4
  %conv5 = trunc i32 %storemerge to i8
  %call6 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add3.i, i8 noundef zeroext %conv5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis_133_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %reg54.i = alloca i32, align 4
  %t1 = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t1) #5
  %4 = ptrtoint ptr %t1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %t1, align 4, !annotation !121
  %5 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adev, align 128
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 31
  %9 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host.i, align 4
  %dev.i = getelementptr inbounds %struct.ata_host, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg54.i) #5
  %13 = ptrtoint ptr %reg54.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %reg54.i, align 4, !annotation !121
  %call.i = call i32 @pci_read_config_dword(ptr noundef %add.ptr.i, i32 noundef 84, ptr noundef nonnull %reg54.i) #5
  %14 = ptrtoint ptr %reg54.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg54.i, align 4
  %and.i = and i32 %15, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 64, i32 112
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 7
  %16 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %17, 3
  %add.i = add i32 %spec.select.i, %mul.i
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %18 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %devno.i, align 4
  %mul2.i = shl i32 %19, 2
  %add3.i = add i32 %add.i, %mul2.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg54.i) #5
  %call1 = call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef %add3.i, ptr noundef nonnull %t1) #5
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %20 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dma_mode, align 1
  %conv = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %21)
  %cmp = icmp ult i8 %21, 64
  br i1 %cmp, label %if.then, label %if.else10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add nsw i32 %conv, -32
  %22 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %t1, align 4
  %and5 = and i32 %23, -1061154821
  %and6 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  %sis_133_set_dmamode.timing_u100.sis_133_set_dmamode.timing_u133 = select i1 %tobool.not, ptr @sis_133_set_dmamode.timing_u100, ptr @sis_133_set_dmamode.timing_u133
  %.pn36.in = getelementptr [3 x i32], ptr %sis_133_set_dmamode.timing_u100.sis_133_set_dmamode.timing_u133, i32 0, i32 %sub
  %24 = ptrtoint ptr %.pn36.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn36 = load i32, ptr %.pn36.in, align 4
  br label %if.end26

if.else10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sub14 = add nsw i32 %conv, -64
  %25 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %t1, align 4
  %and15 = and i32 %26, -4085
  %or16 = or i32 %and15, 4
  %and17 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %sis_133_set_dmamode.timing_u100.3.sis_133_set_dmamode.timing_u133.4 = select i1 %tobool18.not, ptr @sis_133_set_dmamode.timing_u100.3, ptr @sis_133_set_dmamode.timing_u133.4
  %.pn.in = getelementptr [7 x i32], ptr %sis_133_set_dmamode.timing_u100.3.sis_133_set_dmamode.timing_u133.4, i32 0, i32 %sub14
  %27 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load i32, ptr %.pn.in, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else10, %if.then
  %.pn.sink = phi i32 [ %.pn, %if.else10 ], [ %and5, %if.then ]
  %or16.sink = phi i32 [ %or16, %if.else10 ], [ %.pn36, %if.then ]
  %storemerge = or i32 %or16.sink, %.pn.sink
  %28 = ptrtoint ptr %t1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %storemerge, ptr %t1, align 4
  %call27 = call i32 @pci_write_config_dword(ptr noundef %add.ptr, i32 noundef %add3.i, i32 noundef %storemerge) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t1) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 8
  %idemisc = alloca i32, align 4
  %trueid = alloca i16, align 2
  %trueid46 = alloca i16, align 2
  %prefctl = alloca i8, align 1
  %idecfg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #5
  %0 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %ppi, align 8
  %.b112 = load i1, ptr @sis_init_one.__print_once, align 1
  br i1 %.b112, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @sis_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %1 = load i16, ptr @sis_init_one.sis_chipsets, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool4.not143 = icmp eq i16 %1, 0
  br i1 %tobool4.not143, label %for.cond.preheader.if.then23_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.then23_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %2 = phi i16 [ %8, %for.inc.for.body_crit_edge ], [ %1, %for.cond.preheader.for.body_crit_edge ]
  %sets.0144 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ @sis_init_one.sis_chipsets, %for.cond.preheader.for.body_crit_edge ]
  %conv = zext i16 %2 to i32
  %call6 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef %conv, ptr noundef null) #5
  %cmp.not = icmp eq ptr %call6, null
  br i1 %cmp.not, label %for.inc, label %if.then8

if.then8:                                         ; preds = %for.body
  %3 = ptrtoint ptr %sets.0144 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sets.0144, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1584, i16 %4)
  %cmp11 = icmp eq i16 %4, 1584
  br i1 %cmp11, label %if.then13, label %if.then8.for.end_crit_edge

if.then8.for.end_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then13:                                        ; preds = %if.then8
  %revision = getelementptr inbounds %struct.pci_dev, ptr %call6, i32 0, i32 12
  %5 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %6)
  %cmp15 = icmp ugt i8 %6, 47
  br i1 %cmp15, label %if.then13.if.end72.thread134_crit_edge, label %if.then13.for.end_crit_edge

if.then13.for.end_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then13.if.end72.thread134_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72.thread134

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.sis_chipset, ptr %sets.0144, i32 1
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %incdec.ptr, align 4
  %tobool4.not = icmp eq i16 %8, 0
  br i1 %tobool4.not, label %for.inc.if.then23_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.then23_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

for.end:                                          ; preds = %if.then13.for.end_crit_edge, %if.then8.for.end_crit_edge
  %cmp21 = icmp eq ptr %sets.0144, null
  br i1 %cmp21, label %for.end.if.then23_crit_edge, label %for.end.if.end72.thread134_crit_edge

for.end.if.end72.thread134_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72.thread134

for.end.if.then23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

if.then23:                                        ; preds = %for.end.if.then23_crit_edge, %for.inc.if.then23_crit_edge, %for.cond.preheader.if.then23_crit_edge
  %host.1117 = phi ptr [ %call6, %for.end.if.then23_crit_edge ], [ null, %for.cond.preheader.if.then23_crit_edge ], [ null, %for.inc.if.then23_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idemisc) #5
  %9 = ptrtoint ptr %idemisc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %idemisc, align 4, !annotation !121
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %trueid) #5
  %10 = ptrtoint ptr %trueid to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %trueid, align 2, !annotation !121
  %call24 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 84, ptr noundef nonnull %idemisc) #5
  %11 = ptrtoint ptr %idemisc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %idemisc, align 4
  %and = and i32 %12, 2147483647
  %call25 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 84, i32 noundef %and) #5
  %call26 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 2, ptr noundef nonnull %trueid) #5
  %13 = ptrtoint ptr %idemisc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idemisc, align 4
  %call27 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 84, i32 noundef %14) #5
  %15 = ptrtoint ptr %trueid to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %trueid, align 2
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %16, label %if.then45 [
    i16 21784, label %do.end
    i16 384, label %if.then23.if.end72.thread_crit_edge
    i16 4480, label %if.then23.if.end72.thread_crit_edge155
  ]

if.then23.if.end72.thread_crit_edge155:           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72.thread

if.then23.if.end72.thread_crit_edge:              ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72.thread

do.end:                                           ; preds = %if.then23
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev29, ptr noundef nonnull @.str.5) #8
  %18 = ptrtoint ptr %idemisc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idemisc, align 4
  %and30 = and i32 %19, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %cmp31 = icmp eq i32 %and30, 0
  br i1 %cmp31, label %if.then33, label %do.end.if.end72.thread_crit_edge

do.end.if.end72.thread_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72.thread

if.then33:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %19, 1073741824
  %call34 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 84, i32 noundef %or) #5
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev29, ptr noundef nonnull @.str.11) #8
  br label %if.end72.thread

if.end72.thread:                                  ; preds = %if.then33, %do.end.if.end72.thread_crit_edge, %if.then23.if.end72.thread_crit_edge, %if.then23.if.end72.thread_crit_edge155
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %trueid) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idemisc) #5
  call void @pci_dev_put(ptr noundef %host.1117) #5
  br label %if.end76

if.then45:                                        ; preds = %if.then23
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %trueid) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idemisc) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %trueid46) #5
  %20 = ptrtoint ptr %trueid46 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %trueid46, align 2, !annotation !121
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %prefctl) #5
  %21 = ptrtoint ptr %prefctl to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %prefctl, align 1, !annotation !121
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %idecfg) #5
  %22 = ptrtoint ptr %idecfg to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %idecfg, align 1, !annotation !121
  %call47 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 74, ptr noundef nonnull %idecfg) #5
  %23 = ptrtoint ptr %idecfg to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %idecfg, align 1
  %25 = or i8 %24, 16
  %call51 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 74, i8 noundef zeroext %25) #5
  %call52 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 2, ptr noundef nonnull %trueid46) #5
  %26 = ptrtoint ptr %idecfg to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %idecfg, align 1
  %call53 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 74, i8 noundef zeroext %27) #5
  %28 = ptrtoint ptr %trueid46 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %trueid46, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21783, i16 %29)
  %cond = icmp eq i16 %29, 21783
  br i1 %cond, label %sw.bb55, label %if.then45.if.end72.thread139_crit_edge

if.then45.if.end72.thread139_crit_edge:           ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72.thread139

sw.bb55:                                          ; preds = %if.then45
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %30 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus, align 8
  %call56 = call ptr @pci_get_slot(ptr noundef %31, i32 noundef 16) #5
  %cmp57 = icmp eq ptr %call56, null
  br i1 %cmp57, label %sw.bb55.if.end72.thread139_crit_edge, label %if.end60

sw.bb55.if.end72.thread139_crit_edge:             ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72.thread139

if.end60:                                         ; preds = %sw.bb55
  %call61 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 73, ptr noundef nonnull %prefctl) #5
  call void @pci_dev_put(ptr noundef nonnull %call56) #5
  %revision62 = getelementptr inbounds %struct.pci_dev, ptr %call56, i32 0, i32 12
  %32 = ptrtoint ptr %revision62 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %revision62, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %33)
  %cmp64 = icmp eq i8 %33, 16
  br i1 %cmp64, label %land.lhs.true, label %if.end60.if.end70_crit_edge

if.end60.if.end70_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

land.lhs.true:                                    ; preds = %if.end60
  %34 = ptrtoint ptr %prefctl to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %prefctl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %tobool68.not = icmp sgt i8 %35, -1
  br i1 %tobool68.not, label %land.lhs.true.if.end70_crit_edge, label %land.lhs.true.if.end72_crit_edge

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

land.lhs.true.if.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.end70:                                         ; preds = %land.lhs.true.if.end70_crit_edge, %if.end60.if.end70_crit_edge
  br label %if.end72

if.end72.thread134:                               ; preds = %for.end.if.end72.thread134_crit_edge, %if.then13.if.end72.thread134_crit_edge
  %chipset.4.ph = phi ptr [ @sis_init_one.sis100_early, %if.then13.if.end72.thread134_crit_edge ], [ %sets.0144, %for.end.if.end72.thread134_crit_edge ]
  tail call void @pci_dev_put(ptr noundef nonnull %call6) #5
  br label %if.end76

if.end72.thread139:                               ; preds = %sw.bb55.if.end72.thread139_crit_edge, %if.then45.if.end72.thread139_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %idecfg) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %prefctl) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %trueid46) #5
  call void @pci_dev_put(ptr noundef %host.1117) #5
  br label %cleanup

if.end72:                                         ; preds = %if.end70, %land.lhs.true.if.end72_crit_edge
  %chipset.3 = phi ptr [ @sis_init_one.sis100, %if.end70 ], [ @sis_init_one.sis133_early, %land.lhs.true.if.end72_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %idecfg) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %prefctl) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %trueid46) #5
  call void @pci_dev_put(ptr noundef %host.1117) #5
  br label %if.end76

if.end76:                                         ; preds = %if.end72, %if.end72.thread134, %if.end72.thread
  %chipset.4133 = phi ptr [ @sis_init_one.sis133, %if.end72.thread ], [ %chipset.3, %if.end72 ], [ %chipset.4.ph, %if.end72.thread134 ]
  %info = getelementptr inbounds %struct.sis_chipset, ptr %chipset.4133, i32 0, i32 1
  %36 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info, align 4
  %38 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %ppi, align 8
  call fastcc void @sis_fixup(ptr noundef %pdev, ptr noundef nonnull %chipset.4133)
  %call77 = call i32 @ata_pci_bmdma_init_one(ptr noundef %pdev, ptr noundef nonnull %ppi, ptr noundef nonnull @sis_sht, ptr noundef nonnull %chipset.4133, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.end72.thread139, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call77, %if.end76 ], [ %call, %if.end.cleanup_crit_edge ], [ -19, %if.end72.thread139 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis_reinit_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @ata_pci_device_do_resume(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  tail call fastcc void @sis_fixup(ptr noundef %pdev, ptr noundef %3)
  tail call void @ata_host_resume(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sis_fixup(ptr noundef %pdev, ptr nocapture noundef readonly %sis) unnamed_addr #2 align 64 {
entry:
  %regw = alloca i16, align 2
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regw) #5
  %0 = ptrtoint ptr %regw to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %regw, align 2, !annotation !121
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #5
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %reg, align 1, !annotation !121
  %info = getelementptr inbounds %struct.sis_chipset, ptr %sis, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %cmp = icmp eq ptr %3, @sis_info133
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %call = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 80, ptr noundef nonnull %regw) #5
  %4 = ptrtoint ptr %regw to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %regw, align 2
  %6 = and i16 %5, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %and3 = and i16 %5, -9
  %call5 = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef 80, i16 noundef zeroext %and3) #5
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %call6 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 82, ptr noundef nonnull %regw) #5
  %7 = ptrtoint ptr %regw to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %regw, align 2
  %9 = and i16 %8, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool9.not = icmp eq i16 %9, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.then10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %and12 = and i16 %8, -9
  %call14 = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef 82, i16 noundef zeroext %and12) #5
  br label %cleanup

if.end16:                                         ; preds = %entry
  %cmp18 = icmp eq ptr %3, @sis_info133_early
  %cmp21 = icmp eq ptr %3, @sis_info100
  %or.cond = or i1 %cmp18, %cmp21
  br i1 %or.cond, label %if.then23, label %if.end34

if.then23:                                        ; preds = %if.end16
  %call24 = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 13, i8 noundef zeroext -128) #5
  %call25 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 73, ptr noundef nonnull %reg) #5
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reg, align 1
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool28.not = icmp eq i8 %12, 0
  br i1 %tobool28.not, label %if.then29, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then29:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i8 %11, 1
  %call32 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 73, i8 noundef zeroext %or) #5
  br label %cleanup

if.end34:                                         ; preds = %if.end16
  %cmp36 = icmp eq ptr %3, @sis_info66
  %cmp40 = icmp eq ptr %3, @sis_info100_early
  %or.cond115 = or i1 %cmp36, %cmp40
  br i1 %or.cond115, label %if.then42, label %if.end54

if.then42:                                        ; preds = %if.end34
  %call43 = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 13, i8 noundef zeroext -128) #5
  %call44 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 82, ptr noundef nonnull %reg) #5
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reg, align 1
  %15 = and i8 %14, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool47.not = icmp eq i8 %15, 0
  br i1 %tobool47.not, label %if.then48, label %if.then42.cleanup_crit_edge

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then48:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  %or50 = or i8 %14, 4
  %call52 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 82, i8 noundef zeroext %or50) #5
  br label %cleanup

if.end54:                                         ; preds = %if.end34
  %cmp56 = icmp eq ptr %3, @sis_info33
  br i1 %cmp56, label %if.then58, label %if.end54.if.end70_crit_edge

if.end54.if.end70_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.then58:                                        ; preds = %if.end54
  %call59 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 9, ptr noundef nonnull %reg) #5
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg, align 1
  %18 = and i8 %17, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp62.not = icmp eq i8 %18, 0
  br i1 %cmp62.not, label %if.then58.if.end70_crit_edge, label %if.then64

if.then58.if.end70_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.then64:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  %and66 = and i8 %17, -16
  %call68 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 9, i8 noundef zeroext %and66) #5
  br label %if.end70

if.end70:                                         ; preds = %if.then64, %if.then58.if.end70_crit_edge, %if.end54.if.end70_crit_edge
  %19 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %info, align 4
  %cmp72 = icmp eq ptr %20, @sis_info
  %cmp76 = icmp eq ptr %20, @sis_info33
  %or.cond116 = or i1 %cmp72, %cmp76
  br i1 %or.cond116, label %if.then78, label %do.body

if.then78:                                        ; preds = %if.end70
  %call79 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 82, ptr noundef nonnull %reg) #5
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg, align 1
  %23 = and i8 %22, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool82.not = icmp eq i8 %23, 0
  br i1 %tobool82.not, label %if.then83, label %if.then78.cleanup_crit_edge

if.then78.cleanup_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then83:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  %or85 = or i8 %22, 8
  %call87 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 82, i8 noundef zeroext %or85) #5
  br label %cleanup

do.body:                                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/pata_sis.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 705, 0\0A.popsection", ""() #5, !srcloc !122
  unreachable

cleanup:                                          ; preds = %if.then83, %if.then78.cleanup_crit_edge, %if.then48, %if.then42.cleanup_crit_edge, %if.then29, %if.then23.cleanup_crit_edge, %if.then10, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regw) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_init_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis_133_mode_filter(ptr nocapture noundef readonly %adev, i32 noundef %mask) #2 align 64 {
entry:
  %reg54.i = alloca i32, align 4
  %t1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %host = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg54.i) #5
  %8 = ptrtoint ptr %reg54.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %reg54.i, align 4, !annotation !121
  %call.i = call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef 84, ptr noundef nonnull %reg54.i) #5
  %9 = ptrtoint ptr %reg54.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg54.i, align 4
  %and.i = and i32 %10, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 64, i32 112
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %12, 3
  %add.i = add i32 %spec.select.i, %mul.i
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %13 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devno.i, align 4
  %mul2.i = shl i32 %14, 2
  %add3.i = add i32 %add.i, %mul2.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg54.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t1) #5
  %15 = ptrtoint ptr %t1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %t1, align 4, !annotation !121
  %call2 = call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef %add3.i, ptr noundef nonnull %t1) #5
  %16 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %t1, align 4
  %and = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %mask, -786433
  %spec.select = select i1 %tobool.not, i32 %and3, i32 %mask
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t1) #5
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis_pre_reset(ptr noundef %link, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %arrayidx = getelementptr [2 x %struct.pci_bits], ptr @sis_pre_reset.sis_enable_bits, i32 0, i32 %7
  %call = tail call i32 @pci_test_config_bits(ptr noundef %add.ptr, ptr noundef %arrayidx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 75, i8 noundef zeroext 0) #5
  %call3 = tail call i32 @ata_sff_prereset(ptr noundef %link, i32 noundef %deadline) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_test_config_bits(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_prereset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis_66_cable_detect(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  %tmp1 = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp1) #5
  %4 = ptrtoint ptr %tmp1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %tmp1, align 1, !annotation !121
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 72, ptr noundef nonnull %tmp1) #5
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %5 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port_no, align 4
  %7 = ptrtoint ptr %tmp1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tmp1, align 1
  %conv = zext i8 %8 to i32
  %9 = shl i32 16, %6
  %10 = and i32 %9, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %device2.i = getelementptr i8, ptr %3, i32 -102
  %11 = ptrtoint ptr %device2.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device2.i, align 2
  %subsystem_device.i = getelementptr i8, ptr %3, i32 -98
  call void @__sanitizer_cov_trace_const_cmp2(i16 21779, i16 %12)
  %cmp.i = icmp eq i16 %12, 21779
  br i1 %cmp.i, label %land.lhs.true.i, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %subsystem_vendor.i = getelementptr i8, ptr %3, i32 -100
  %13 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %subsystem_vendor.i, align 4
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %14, label %land.lhs.true.i.cleanup_crit_edge [
    i16 4163, label %land.lhs.true9.i
    i16 5940, label %land.lhs.true9.1.i
    i16 4209, label %land.lhs.true9.2.i
  ]

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %16 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %subsystem_device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4359, i16 %17)
  %cmp12.i = icmp eq i16 %17, 4359
  br i1 %cmp12.i, label %land.lhs.true9.i.sis_short_ata40.exit.thread_crit_edge, label %land.lhs.true9.i.cleanup_crit_edge

land.lhs.true9.i.cleanup_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true9.i.sis_short_ata40.exit.thread_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sis_short_ata40.exit.thread

land.lhs.true9.1.i:                               ; preds = %land.lhs.true.i
  %18 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %subsystem_device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4191, i16 %19)
  %cmp12.1.i = icmp eq i16 %19, 4191
  br i1 %cmp12.1.i, label %land.lhs.true9.1.i.sis_short_ata40.exit.thread_crit_edge, label %land.lhs.true9.1.i.cleanup_crit_edge

land.lhs.true9.1.i.cleanup_crit_edge:             ; preds = %land.lhs.true9.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true9.1.i.sis_short_ata40.exit.thread_crit_edge: ; preds = %land.lhs.true9.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sis_short_ata40.exit.thread

land.lhs.true9.2.i:                               ; preds = %land.lhs.true.i
  %20 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %subsystem_device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31168, i16 %21)
  %cmp12.2.i = icmp eq i16 %21, -31168
  br i1 %cmp12.2.i, label %land.lhs.true9.2.i.sis_short_ata40.exit.thread_crit_edge, label %land.lhs.true9.2.i.cleanup_crit_edge

land.lhs.true9.2.i.cleanup_crit_edge:             ; preds = %land.lhs.true9.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true9.2.i.sis_short_ata40.exit.thread_crit_edge: ; preds = %land.lhs.true9.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sis_short_ata40.exit.thread

sis_short_ata40.exit.thread:                      ; preds = %land.lhs.true9.2.i.sis_short_ata40.exit.thread_crit_edge, %land.lhs.true9.1.i.sis_short_ata40.exit.thread_crit_edge, %land.lhs.true9.i.sis_short_ata40.exit.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sis_short_ata40.exit.thread, %land.lhs.true9.2.i.cleanup_crit_edge, %land.lhs.true9.1.i.cleanup_crit_edge, %land.lhs.true9.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %land.lhs.true9.2.i.cleanup_crit_edge ], [ 2, %sis_short_ata40.exit.thread ], [ 2, %entry.cleanup_crit_edge ], [ 1, %land.lhs.true9.1.i.cleanup_crit_edge ], [ 1, %land.lhs.true9.i.cleanup_crit_edge ], [ 1, %land.lhs.true.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp1) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis_100_set_piomode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %fifoctrl.i = alloca i8, align 1
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
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 128
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i, align 4
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %10 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devno.i, align 4
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %12 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pio_mode, align 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fifoctrl.i) #5
  %14 = ptrtoint ptr %fifoctrl.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %fifoctrl.i, align 1, !annotation !121
  %port_no.i5 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %15 = ptrtoint ptr %port_no.i5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_no.i5, align 4
  %mul.i6 = shl i32 %16, 1
  %shl.i = shl i32 17, %mul.i6
  %shl3.i = shl i32 %shl.i, %11
  %call.i = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 75, ptr noundef nonnull %fifoctrl.i) #5
  %17 = ptrtoint ptr %fifoctrl.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fifoctrl.i, align 1
  %19 = trunc i32 %shl3.i to i8
  %20 = xor i8 %19, -1
  %conv7.i = and i8 %18, %20
  store i8 %conv7.i, ptr %fifoctrl.i, align 1
  %class.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 9
  %21 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %class.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i = icmp eq i32 %22, 1
  br i1 %cmp.i, label %if.then.i, label %entry.sis_set_fifo.exit_crit_edge

entry.sis_set_fifo.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sis_set_fifo.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv11.i = or i8 %18, %19
  %23 = ptrtoint ptr %fifoctrl.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv11.i, ptr %fifoctrl.i, align 1
  br label %sis_set_fifo.exit

sis_set_fifo.exit:                                ; preds = %if.then.i, %entry.sis_set_fifo.exit_crit_edge
  %conv = zext i8 %13 to i32
  %sub = add nsw i32 %conv, -8
  %mul.i = shl i32 %9, 2
  %add.i = add i32 %mul.i, 64
  %mul1.i = shl i32 %11, 1
  %add2.i = add i32 %add.i, %mul1.i
  %24 = ptrtoint ptr %fifoctrl.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %fifoctrl.i, align 1
  %call12.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 75, i8 noundef zeroext %25) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fifoctrl.i) #5
  %arrayidx = getelementptr [5 x i8], ptr @sis_100_set_piomode.actrec, i32 0, i32 %sub
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  %call1 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add2.i, i8 noundef zeroext %27) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis_100_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %timing = alloca i8, align 1
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
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 128
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %9, 2
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %10 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devno.i, align 4
  %mul1.i = shl i32 %11, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %timing) #5
  %12 = ptrtoint ptr %timing to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %timing, align 1, !annotation !121
  %add2.i = add i32 %mul.i, 65
  %add = add i32 %add2.i, %mul1.i
  %call1 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add, ptr noundef nonnull %timing) #5
  %13 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dma_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %14)
  %cmp = icmp ult i8 %14, 64
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv3 = zext i8 %14 to i32
  %sub7 = add nsw i32 %conv3, -64
  %15 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %timing, align 1
  %17 = and i8 %16, 112
  %arrayidx = getelementptr [6 x i8], ptr @sis_100_set_dmamode.udma_bits, i32 0, i32 %sub7
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %or20 = or i8 %19, %17
  store i8 %or20, ptr %timing, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %timing, align 1
  %call14 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add, i8 noundef zeroext %21) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %timing) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis_old_set_piomode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %fifoctrl.i = alloca i8, align 1
  %t1 = alloca i8, align 1
  %t2 = alloca i8, align 1
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
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 128
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i, align 4
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %10 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devno.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t1) #5
  %12 = ptrtoint ptr %t1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %t1, align 1, !annotation !121
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t2) #5
  %13 = ptrtoint ptr %t2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %t2, align 1, !annotation !121
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %14 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pio_mode, align 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fifoctrl.i) #5
  %16 = ptrtoint ptr %fifoctrl.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %fifoctrl.i, align 1, !annotation !121
  %port_no.i31 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %17 = ptrtoint ptr %port_no.i31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port_no.i31, align 4
  %mul.i32 = shl i32 %18, 1
  %shl.i = shl i32 17, %mul.i32
  %shl3.i = shl i32 %shl.i, %11
  %call.i = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 75, ptr noundef nonnull %fifoctrl.i) #5
  %19 = ptrtoint ptr %fifoctrl.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fifoctrl.i, align 1
  %21 = trunc i32 %shl3.i to i8
  %22 = xor i8 %21, -1
  %conv7.i = and i8 %20, %22
  store i8 %conv7.i, ptr %fifoctrl.i, align 1
  %class.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 9
  %23 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %class.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.i = icmp eq i32 %24, 1
  br i1 %cmp.i, label %if.then.i, label %entry.sis_set_fifo.exit_crit_edge

entry.sis_set_fifo.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sis_set_fifo.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv11.i = or i8 %20, %21
  %25 = ptrtoint ptr %fifoctrl.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv11.i, ptr %fifoctrl.i, align 1
  br label %sis_set_fifo.exit

sis_set_fifo.exit:                                ; preds = %if.then.i, %entry.sis_set_fifo.exit_crit_edge
  %conv = zext i8 %15 to i32
  %sub = add nsw i32 %conv, -8
  %mul.i = shl i32 %9, 2
  %add.i = add i32 %mul.i, 64
  %mul1.i = shl i32 %11, 1
  %add2.i = add i32 %add.i, %mul1.i
  %26 = ptrtoint ptr %fifoctrl.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fifoctrl.i, align 1
  %call12.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 75, i8 noundef zeroext %27) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fifoctrl.i) #5
  %call1 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add2.i, ptr noundef nonnull %t1) #5
  %add = or i32 %add2.i, 1
  %call2 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add, ptr noundef nonnull %t2) #5
  %28 = ptrtoint ptr %t1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %t1, align 1
  %30 = and i8 %29, -16
  %31 = ptrtoint ptr %t2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %t2, align 1
  %33 = and i8 %32, -8
  %arrayidx = getelementptr [5 x i8], ptr @sis_old_set_piomode.active, i32 0, i32 %sub
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 1
  %or29 = or i8 %35, %30
  store i8 %or29, ptr %t1, align 1
  %arrayidx11 = getelementptr [5 x i8], ptr @sis_old_set_piomode.recovery, i32 0, i32 %sub
  %36 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx11, align 1
  %or1430 = or i8 %37, %33
  store i8 %or1430, ptr %t2, align 1
  %call16 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add2.i, i8 noundef zeroext %or29) #5
  %38 = ptrtoint ptr %t2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %t2, align 1
  %call18 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add, i8 noundef zeroext %39) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t2) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis_66_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %timing = alloca i16, align 2
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
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %4 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dma_mode, align 1
  %6 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adev, align 128
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %11, 2
  %add.i = add i32 %mul.i, 64
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %12 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devno.i, align 4
  %mul1.i = shl i32 %13, 1
  %add2.i = add i32 %add.i, %mul1.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %timing) #5
  %14 = ptrtoint ptr %timing to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %timing, align 2, !annotation !121
  %call1 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef %add2.i, ptr noundef nonnull %timing) #5
  %15 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dma_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %16)
  %cmp = icmp ult i8 %16, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %5 to i32
  %sub = add nsw i32 %conv, -32
  %17 = ptrtoint ptr %timing to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %timing, align 2
  %19 = and i16 %18, 30960
  %arrayidx = getelementptr [3 x i16], ptr @sis_66_set_dmamode.mwdma_bits, i32 0, i32 %sub
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv3 = zext i8 %16 to i32
  %sub12 = add nsw i32 %conv3, -64
  %20 = ptrtoint ptr %timing to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %timing, align 2
  %22 = and i16 %21, 4095
  %arrayidx16 = getelementptr [6 x i16], ptr @sis_66_set_dmamode.udma_bits, i32 0, i32 %sub12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx16.sink = phi ptr [ %arrayidx16, %if.else ], [ %arrayidx, %if.then ]
  %.sink30 = phi i16 [ %22, %if.else ], [ %19, %if.then ]
  %23 = ptrtoint ptr %arrayidx16.sink to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx16.sink, align 2
  %or1928 = or i16 %24, %.sink30
  %25 = ptrtoint ptr %timing to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %or1928, ptr %timing, align 2
  %call21 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef %add2.i, i16 noundef zeroext %or1928) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %timing) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_40wire(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis_old_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %timing = alloca i16, align 2
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
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %4 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dma_mode, align 1
  %6 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adev, align 128
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %11, 2
  %add.i = add i32 %mul.i, 64
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %12 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devno.i, align 4
  %mul1.i = shl i32 %13, 1
  %add2.i = add i32 %add.i, %mul1.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %timing) #5
  %14 = ptrtoint ptr %timing to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %timing, align 2, !annotation !121
  %call1 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef %add2.i, ptr noundef nonnull %timing) #5
  %15 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dma_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %16)
  %cmp = icmp ult i8 %16, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %5 to i32
  %sub = add nsw i32 %conv, -32
  %17 = ptrtoint ptr %timing to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %timing, align 2
  %19 = and i16 %18, 30960
  %arrayidx = getelementptr [3 x i16], ptr @sis_old_set_dmamode.mwdma_bits, i32 0, i32 %sub
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv3 = zext i8 %16 to i32
  %sub12 = add nsw i32 %conv3, -64
  %20 = ptrtoint ptr %timing to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %timing, align 2
  %22 = and i16 %21, -24577
  %arrayidx16 = getelementptr [3 x i16], ptr @sis_old_set_dmamode.udma_bits, i32 0, i32 %sub12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx16.sink = phi ptr [ %arrayidx16, %if.else ], [ %arrayidx, %if.then ]
  %.sink30 = phi i16 [ %22, %if.else ], [ %19, %if.then ]
  %23 = ptrtoint ptr %arrayidx16.sink to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx16.sink, align 2
  %or1928 = or i16 %24, %.sink30
  %25 = ptrtoint ptr %timing to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %or1928, ptr %timing, align 2
  %call21 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef %add2.i, i16 noundef zeroext %or1928) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %timing) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sis_133_early_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %timing = alloca i8, align 1
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
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 128
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %9, 2
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %10 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devno.i, align 4
  %mul1.i = shl i32 %11, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %timing) #5
  %12 = ptrtoint ptr %timing to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %timing, align 1, !annotation !121
  %add2.i = add i32 %mul.i, 65
  %add = add i32 %add2.i, %mul1.i
  %call1 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add, ptr noundef nonnull %timing) #5
  %13 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dma_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %14)
  %cmp = icmp ult i8 %14, 64
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv3 = zext i8 %14 to i32
  %sub7 = add nsw i32 %conv3, -64
  %15 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %timing, align 1
  %17 = and i8 %16, 112
  %arrayidx = getelementptr [7 x i8], ptr @sis_133_early_set_dmamode.udma_bits, i32 0, i32 %sub7
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %or20 = or i8 %19, %17
  store i8 %or20, ptr %timing, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %timing, align 1
  %call14 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add, i8 noundef zeroext %21) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %timing) #5
  ret void
}

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

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @sis_info133_for_sata, !1, !"sis_info133_for_sata", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_sis.c", i32 636, i32 28}
!2 = !{ptr @__ksymtab_sis_info133_for_sata, !3, !"__ksymtab_sis_info133_for_sata", i1 false, i1 false}
!3 = !{!"../drivers/ata/pata_sis.c", i32 652, i32 1}
!4 = !{ptr @__initcall__kmod_pata_sis__289_909_sis_pci_driver_init6, !5, !"__initcall__kmod_pata_sis__289_909_sis_pci_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/ata/pata_sis.c", i32 909, i32 1}
!6 = !{ptr @__exitcall_sis_pci_driver_exit, !5, !"__exitcall_sis_pci_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author290, !8, !"__UNIQUE_ID_author290", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_sis.c", i32 911, i32 1}
!9 = !{ptr @__UNIQUE_ID_description291, !10, !"__UNIQUE_ID_description291", i1 false, i1 false}
!10 = !{!"../drivers/ata/pata_sis.c", i32 912, i32 1}
!11 = !{ptr @__UNIQUE_ID_file292, !12, !"__UNIQUE_ID_file292", i1 false, i1 false}
!12 = !{!"../drivers/ata/pata_sis.c", i32 913, i32 1}
!13 = !{ptr @__UNIQUE_ID_license293, !12, !"__UNIQUE_ID_license293", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_version294, !15, !"__UNIQUE_ID_version294", i1 false, i1 false}
!15 = !{!"../drivers/ata/pata_sis.c", i32 915, i32 1}
!16 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__modver_attr, !15, !"__modver_attr", i1 false, i1 false}
!20 = !{ptr @sis_133_for_sata_ops, !21, !"sis_133_for_sata_ops", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_sis.c", i32 546, i32 35}
!22 = distinct !{null, !23, !"sis_laptop", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_sis.c", i32 54, i32 32}
!24 = !{ptr @sis_133_set_piomode.timing133, !25, !"timing133", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_sis.c", i32 295, i32 19}
!26 = !{ptr @sis_133_set_piomode.timing100, !27, !"timing100", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_sis.c", i32 302, i32 19}
!28 = !{ptr @sis_133_set_dmamode.timing_u100, !29, !"timing_u100", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_sis.c", i32 492, i32 20}
!30 = !{ptr @sis_133_set_dmamode.timing_u133, !31, !"timing_u133", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_sis.c", i32 493, i32 20}
!32 = !{ptr @sis_133_set_dmamode.timing_u100.3, !33, !"timing_u100", i1 false, i1 false}
!33 = !{!"../drivers/ata/pata_sis.c", i32 505, i32 20}
!34 = !{ptr @sis_133_set_dmamode.timing_u133.4, !35, !"timing_u133", i1 false, i1 false}
!35 = !{!"../drivers/ata/pata_sis.c", i32 506, i32 20}
!36 = !{ptr @sis_pci_driver, !37, !"sis_pci_driver", i1 false, i1 false}
!37 = !{!"../drivers/ata/pata_sis.c", i32 898, i32 26}
!38 = !{ptr @sis_pci_tbl, !39, !"sis_pci_tbl", i1 false, i1 false}
!39 = !{!"../drivers/ata/pata_sis.c", i32 890, i32 35}
!40 = !{ptr @sis_init_one.sis_chipsets, !41, !"sis_chipsets", i1 false, i1 false}
!41 = !{!"../drivers/ata/pata_sis.c", i32 731, i32 28}
!42 = !{ptr @sis_init_one.sis133_early, !43, !"sis133_early", i1 false, i1 false}
!43 = !{!"../drivers/ata/pata_sis.c", i32 765, i32 28}
!44 = !{ptr @sis_init_one.sis133, !45, !"sis133", i1 false, i1 false}
!45 = !{!"../drivers/ata/pata_sis.c", i32 768, i32 28}
!46 = !{ptr @sis_init_one.sis100_early, !47, !"sis100_early", i1 false, i1 false}
!47 = !{!"../drivers/ata/pata_sis.c", i32 771, i32 28}
!48 = !{ptr @sis_init_one.sis100, !49, !"sis100", i1 false, i1 false}
!49 = !{!"../drivers/ata/pata_sis.c", i32 774, i32 28}
!50 = distinct !{null, !51, !"__print_once", i1 false, i1 false}
!51 = !{!"../drivers/ata/pata_sis.c", i32 778, i32 2}
!52 = !{ptr @.str.5, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/ata/pata_sis.c", i32 813, i32 4}
!54 = !{ptr @.str.6, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.7, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.8, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sis_init_one._entry, !53, !"_entry", i1 false, i1 false}
!59 = !{ptr @sis_init_one._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.11, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/ata/pata_sis.c", i32 818, i32 5}
!62 = !{ptr @sis_init_one._entry.10, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @sis_init_one._entry_ptr.12, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @sis_info133, !65, !"sis_info133", i1 false, i1 false}
!65 = !{!"../drivers/ata/pata_sis.c", i32 629, i32 35}
!66 = !{ptr @sis_133_ops, !67, !"sis_133_ops", i1 false, i1 false}
!67 = !{!"../drivers/ata/pata_sis.c", i32 558, i32 35}
!68 = !{ptr @sis_base_ops, !69, !"sis_base_ops", i1 false, i1 false}
!69 = !{!"../drivers/ata/pata_sis.c", i32 553, i32 35}
!70 = !{ptr @sis_pre_reset.sis_enable_bits, !71, !"sis_enable_bits", i1 false, i1 false}
!71 = !{!"../drivers/ata/pata_sis.c", i32 166, i32 31}
!72 = !{ptr @sis_info100, !73, !"sis_info100", i1 false, i1 false}
!73 = !{!"../drivers/ata/pata_sis.c", i32 615, i32 35}
!74 = !{ptr @sis_100_ops, !75, !"sis_100_ops", i1 false, i1 false}
!75 = !{!"../drivers/ata/pata_sis.c", i32 573, i32 35}
!76 = !{ptr @sis_100_set_piomode.actrec, !77, !"actrec", i1 false, i1 false}
!77 = !{!"../drivers/ata/pata_sis.c", i32 269, i32 18}
!78 = !{ptr @sis_100_set_dmamode.udma_bits, !79, !"udma_bits", i1 false, i1 false}
!79 = !{!"../drivers/ata/pata_sis.c", i32 421, i32 18}
!80 = !{ptr @sis_info100_early, !81, !"sis_info100_early", i1 false, i1 false}
!81 = !{!"../drivers/ata/pata_sis.c", i32 622, i32 35}
!82 = !{ptr @sis_66_ops, !83, !"sis_66_ops", i1 false, i1 false}
!83 = !{!"../drivers/ata/pata_sis.c", i32 580, i32 35}
!84 = !{ptr @sis_old_set_piomode.active, !85, !"active", i1 false, i1 false}
!85 = !{!"../drivers/ata/pata_sis.c", i32 233, i32 18}
!86 = !{ptr @sis_old_set_piomode.recovery, !87, !"recovery", i1 false, i1 false}
!87 = !{!"../drivers/ata/pata_sis.c", i32 234, i32 18}
!88 = !{ptr @sis_66_set_dmamode.mwdma_bits, !89, !"mwdma_bits", i1 false, i1 false}
!89 = !{!"../drivers/ata/pata_sis.c", i32 383, i32 19}
!90 = !{ptr @sis_66_set_dmamode.udma_bits, !91, !"udma_bits", i1 false, i1 false}
!91 = !{!"../drivers/ata/pata_sis.c", i32 384, i32 19}
!92 = !{ptr @sis_info66, !93, !"sis_info66", i1 false, i1 false}
!93 = !{!"../drivers/ata/pata_sis.c", i32 608, i32 35}
!94 = !{ptr @sis_info33, !95, !"sis_info33", i1 false, i1 false}
!95 = !{!"../drivers/ata/pata_sis.c", i32 601, i32 35}
!96 = !{ptr @sis_old_ops, !97, !"sis_old_ops", i1 false, i1 false}
!97 = !{!"../drivers/ata/pata_sis.c", i32 587, i32 35}
!98 = !{ptr @sis_old_set_dmamode.mwdma_bits, !99, !"mwdma_bits", i1 false, i1 false}
!99 = !{!"../drivers/ata/pata_sis.c", i32 343, i32 19}
!100 = !{ptr @sis_old_set_dmamode.udma_bits, !101, !"udma_bits", i1 false, i1 false}
!101 = !{!"../drivers/ata/pata_sis.c", i32 344, i32 19}
!102 = !{ptr @sis_info, !103, !"sis_info", i1 false, i1 false}
!103 = !{!"../drivers/ata/pata_sis.c", i32 594, i32 35}
!104 = !{ptr @sis_info133_early, !105, !"sis_info133_early", i1 false, i1 false}
!105 = !{!"../drivers/ata/pata_sis.c", i32 643, i32 35}
!106 = !{ptr @sis_133_early_ops, !107, !"sis_133_early_ops", i1 false, i1 false}
!107 = !{!"../drivers/ata/pata_sis.c", i32 566, i32 35}
!108 = !{ptr @sis_133_early_set_dmamode.udma_bits, !109, !"udma_bits", i1 false, i1 false}
!109 = !{!"../drivers/ata/pata_sis.c", i32 455, i32 18}
!110 = !{ptr @sis_sht, !111, !"sis_sht", i1 false, i1 false}
!111 = !{!"../drivers/ata/pata_sis.c", i32 542, i32 34}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"auto-init"}
!122 = !{i64 2155728946, i64 2155729433, i64 2155728983, i64 2155729039, i64 2155729073, i64 2155729097, i64 2155729138, i64 2155729159, i64 2155729187, i64 2155729221}
