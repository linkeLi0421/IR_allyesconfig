; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_hpt37x.c_pt.bc'
source_filename = "../drivers/ata/pata_hpt37x.c"
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
%struct.hpt_chip = type { ptr, i32, [4 x ptr] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.hpt_clock = type { i8, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pci_bits = type { i32, i32, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
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
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }

@__initcall__kmod_pata_hpt37x__289_1074_hpt37x_pci_driver_init6 = internal global ptr @hpt37x_pci_driver_init, section ".initcall6.init", align 4
@hpt37x_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @hpt37x, ptr @hpt37x_init_one, ptr @ata_pci_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_hpt37x_pci_driver_exit = internal global ptr @hpt37x_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [28 x i8] c"pata_hpt37x.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [70 x i8] c"pata_hpt37x.description=low-level driver for the Highpoint HPT37x/30x\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [41 x i8] c"pata_hpt37x.file=drivers/ata/pata_hpt37x\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"pata_hpt37x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version294 = internal constant [27 x i8] c"pata_hpt37x.version=0.6.23\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pata_hpt37x\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.6.23\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@hpt37x = internal constant { [6 x %struct.pci_device_id], [32 x i8] } { [6 x %struct.pci_device_id] [%struct.pci_device_id { i32 4355, i32 4, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4355, i32 7, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4355, i32 5, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4355, i32 8, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4355, i32 6, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@hpt37x_init_one.info_hpt370 = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 63, ptr @hpt370_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@hpt370_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hpt37x_cable_detect, ptr @hpt370_filter, ptr @hpt370_set_piomode, ptr @hpt370_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hpt37x_pre_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hpt370_bmdma_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@hpt37x_init_one.info_hpt370a = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 63, ptr @hpt370a_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@hpt370a_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hpt370a_filter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hpt370_port_ops }, [44 x i8] zeroinitializer }, align 32
@hpt37x_init_one.info_hpt370_33 = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 31, ptr @hpt370_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@hpt37x_init_one.info_hpt370a_33 = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 31, ptr @hpt370a_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@hpt37x_init_one.info_hpt372 = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 127, ptr @hpt372_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@hpt372_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hpt372_filter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hpt302_port_ops }, [44 x i8] zeroinitializer }, align 32
@hpt37x_init_one.info_hpt302 = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 127, ptr @hpt302_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@hpt302_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hpt37x_cable_detect, ptr null, ptr @hpt372_set_piomode, ptr @hpt372_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hpt37x_pre_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hpt37x_bmdma_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@hpt37x_init_one.info_hpt374_fn0 = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 63, ptr @hpt372_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@hpt37x_init_one.info_hpt374_fn1 = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 63, ptr @hpt374_fn1_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@hpt374_fn1_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hpt374_fn1_cable_detect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hpt372_port_ops }, [44 x i8] zeroinitializer }, align 32
@hpt37x_init_one.MHz = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 33, i32 40, i32 50, i32 66], [16 x i8] zeroinitializer }, align 32
@hpt370 = internal constant { %struct.hpt_chip, [40 x i8] } { %struct.hpt_chip { ptr @.str.82, i32 48, [4 x ptr] [ptr @hpt37x_timings_33, ptr null, ptr null, ptr null] }, [40 x i8] zeroinitializer }, align 32
@hpt370a = internal constant { %struct.hpt_chip, [40 x i8] } { %struct.hpt_chip { ptr @.str.83, i32 48, [4 x ptr] [ptr @hpt37x_timings_33, ptr null, ptr @hpt37x_timings_50, ptr null] }, [40 x i8] zeroinitializer }, align 32
@hpt372 = internal constant { %struct.hpt_chip, [40 x i8] } { %struct.hpt_chip { ptr @.str.84, i32 55, [4 x ptr] [ptr @hpt37x_timings_33, ptr null, ptr @hpt37x_timings_50, ptr @hpt37x_timings_66] }, [40 x i8] zeroinitializer }, align 32
@hpt37x_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 867, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unknown HPT366 subtype, please report (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hpt37x_init_one\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/ata/pata_hpt37x.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hpt37x_init_one._entry_ptr = internal global ptr @hpt37x_init_one._entry, section ".printk_index", align 4
@hpt372a = internal constant { %struct.hpt_chip, [40 x i8] } { %struct.hpt_chip { ptr @.str.85, i32 66, [4 x ptr] [ptr @hpt37x_timings_33, ptr null, ptr @hpt37x_timings_50, ptr @hpt37x_timings_66] }, [40 x i8] zeroinitializer }, align 32
@hpt302 = internal constant { %struct.hpt_chip, [40 x i8] } { %struct.hpt_chip { ptr @.str.86, i32 66, [4 x ptr] [ptr @hpt37x_timings_33, ptr null, ptr @hpt37x_timings_50, ptr @hpt37x_timings_66] }, [40 x i8] zeroinitializer }, align 32
@hpt371 = internal constant { %struct.hpt_chip, [40 x i8] } { %struct.hpt_chip { ptr @.str.87, i32 66, [4 x ptr] [ptr @hpt37x_timings_33, ptr null, ptr @hpt37x_timings_50, ptr @hpt37x_timings_66] }, [40 x i8] zeroinitializer }, align 32
@hpt374 = internal constant { %struct.hpt_chip, [40 x i8] } { %struct.hpt_chip { ptr @.str.88, i32 48, [4 x ptr] [ptr @hpt37x_timings_33, ptr null, ptr null, ptr null] }, [40 x i8] zeroinitializer }, align 32
@hpt37x_init_one._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 908, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"PCI table is bogus, please report (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@hpt37x_init_one._entry_ptr.10 = internal global ptr @hpt37x_init_one._entry.8, section ".printk_index", align 4
@hpt37x_init_one._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 970, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"BIOS has not set timing clocks\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hpt37x_init_one._entry_ptr.14 = internal global ptr @hpt37x_init_one._entry.11, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hpt37x_init_one._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 1026, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DPLL did not stabilize!\0A\00", [39 x i8] zeroinitializer }, align 32
@hpt37x_init_one._entry_ptr.17 = internal global ptr @hpt37x_init_one._entry.15, section ".printk_index", align 4
@hpt37x_timings_66 = internal global { [15 x %struct.hpt_clock], [40 x i8] } { [15 x %struct.hpt_clock] [%struct.hpt_clock { i8 70, i32 478583906 }, %struct.hpt_clock { i8 69, i32 481205346 }, %struct.hpt_clock { i8 68, i32 478846050 }, %struct.hpt_clock { i8 67, i32 479108194 }, %struct.hpt_clock { i8 66, i32 479370338 }, %struct.hpt_clock { i8 65, i32 479894626 }, %struct.hpt_clock { i8 64, i32 478321762 }, %struct.hpt_clock { i8 34, i32 746757218 }, %struct.hpt_clock { i8 33, i32 746757222 }, %struct.hpt_clock { i8 32, i32 746757422 }, %struct.hpt_clock { i8 12, i32 209886306 }, %struct.hpt_clock { i8 11, i32 209886340 }, %struct.hpt_clock { i8 10, i32 209886374 }, %struct.hpt_clock { i8 9, i32 218275110 }, %struct.hpt_clock { i8 8, i32 218275166 }], [40 x i8] zeroinitializer }, align 32
@hpt37x_timings_50 = internal global { [15 x %struct.hpt_clock], [40 x i8] } { [15 x %struct.hpt_clock] [%struct.hpt_clock { i8 70, i32 310673986 }, %struct.hpt_clock { i8 69, i32 310673986 }, %struct.hpt_clock { i8 68, i32 313295426 }, %struct.hpt_clock { i8 67, i32 311198274 }, %struct.hpt_clock { i8 66, i32 302809666 }, %struct.hpt_clock { i8 65, i32 303333972 }, %struct.hpt_clock { i8 64, i32 303596266 }, %struct.hpt_clock { i8 34, i32 578847298 }, %struct.hpt_clock { i8 33, i32 578847316 }, %struct.hpt_clock { i8 32, i32 578847466 }, %struct.hpt_clock { i8 12, i32 176288834 }, %struct.hpt_clock { i8 11, i32 176288835 }, %struct.hpt_clock { i8 10, i32 176288852 }, %struct.hpt_clock { i8 9, i32 180483173 }, %struct.hpt_clock { i8 8, i32 180483210 }], [40 x i8] zeroinitializer }, align 32
@hpt37x_init_one._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 1035, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bus clock %dMHz, using %dMHz DPLL\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hpt37x_init_one._entry_ptr.21 = internal global ptr @hpt37x_init_one._entry.18, section ".printk_index", align 4
@hpt37x_init_one._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 1050, ptr @.str.20, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s using %dMHz bus clock\0A\00", [38 x i8] zeroinitializer }, align 32
@hpt37x_init_one._entry_ptr.24 = internal global ptr @hpt37x_init_one._entry.22, section ".printk_index", align 4
@hpt37x_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UDMA\00", [27 x i8] zeroinitializer }, align 32
@bad_ata33 = internal constant { [40 x ptr], [32 x i8] } { [40 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.39, ptr @.str.65, ptr @.str.66, ptr null], [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UDMA100\00", [24 x i8] zeroinitializer }, align 32
@bad_ata100_5 = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr null], [32 x i8] zeroinitializer }, align 32
@hpt_dma_blacklisted._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014ata%u.%02u: %s is not supported for %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hpt_dma_blacklisted\00", [44 x i8] zeroinitializer }, align 32
@hpt_dma_blacklisted._entry_ptr = internal global ptr @hpt_dma_blacklisted._entry, section ".printk_index", align 4
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 92720U8\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 92040U6\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91360U4\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91020U3\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90845U3\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90650U2\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91360D8\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91190D7\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91020D6\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90845D5\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90680D4\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90510D3\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90340D2\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91152D8\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91008D7\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90845D6\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90840D6\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90720D5\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90648D5\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90576D4\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90510D4\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90432D3\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90288D2\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90256D2\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91000D8\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90910D8\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90875D7\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90840D7\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90750D6\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90625D5\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90500D4\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91728D8\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91512D7\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91303D6\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 91080D5\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90845D4\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90648D3\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtor 90432D2\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IBM-DTLA-307075\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IBM-DTLA-307060\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IBM-DTLA-307045\00", [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IBM-DTLA-307030\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IBM-DTLA-307020\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IBM-DTLA-307015\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IBM-DTLA-305040\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IBM-DTLA-305030\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IBM-DTLA-305020\00", [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IC35L010AVER07-0\00", [47 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IC35L020AVER07-0\00", [47 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IC35L030AVER07-0\00", [47 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IC35L040AVER07-0\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IC35L060AVER07-0\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"WDC AC310200R\00", [18 x i8] zeroinitializer }, align 32
@hpt37x_pre_reset.hpt37x_enable_bits = internal constant { [2 x %struct.pci_bits], [32 x i8] } { [2 x %struct.pci_bits] [%struct.pci_bits { i32 80, i32 1, i32 4, i32 4 }, %struct.pci_bits { i32 84, i32 1, i32 4, i32 4 }], [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPT370\00", [25 x i8] zeroinitializer }, align 32
@hpt37x_timings_33 = internal global { [15 x %struct.hpt_clock], [40 x i8] } { [15 x %struct.hpt_clock] [%struct.hpt_clock { i8 70, i32 306471473 }, %struct.hpt_clock { i8 69, i32 306471473 }, %struct.hpt_clock { i8 68, i32 306471473 }, %struct.hpt_clock { i8 67, i32 309092913 }, %struct.hpt_clock { i8 66, i32 306733617 }, %struct.hpt_clock { i8 65, i32 306995763 }, %struct.hpt_clock { i8 64, i32 307258007 }, %struct.hpt_clock { i8 34, i32 574647345 }, %struct.hpt_clock { i8 33, i32 574647347 }, %struct.hpt_clock { i8 32, i32 574647447 }, %struct.hpt_clock { i8 12, i32 104943153 }, %struct.hpt_clock { i8 11, i32 104943170 }, %struct.hpt_clock { i8 10, i32 104943187 }, %struct.hpt_clock { i8 9, i32 109137555 }, %struct.hpt_clock { i8 8, i32 109137575 }], [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPT370A\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPT372\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPT372A\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPT302\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPT371\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPT374\00", [25 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 16, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.89 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.90 = private unnamed_addr constant [18 x i8] c"hpt37x_pci_driver\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1067, i32 26 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1080, i32 1 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"hpt37x\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1057, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant [12 x i8] c"info_hpt370\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 757, i32 36 }
@___asan_gen_.108 = private unnamed_addr constant [16 x i8] c"hpt370_port_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 589, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant [13 x i8] c"info_hpt370a\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 765, i32 36 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"hpt370a_port_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 605, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant [15 x i8] c"info_hpt370_33\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 773, i32 36 }
@___asan_gen_.120 = private unnamed_addr constant [16 x i8] c"info_hpt370a_33\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 781, i32 36 }
@___asan_gen_.123 = private unnamed_addr constant [12 x i8] c"info_hpt372\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 789, i32 36 }
@___asan_gen_.126 = private unnamed_addr constant [16 x i8] c"hpt372_port_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 631, i32 35 }
@___asan_gen_.129 = private unnamed_addr constant [12 x i8] c"info_hpt302\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 797, i32 36 }
@___asan_gen_.132 = private unnamed_addr constant [16 x i8] c"hpt302_port_ops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 615, i32 35 }
@___asan_gen_.135 = private unnamed_addr constant [16 x i8] c"info_hpt374_fn0\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 805, i32 36 }
@___asan_gen_.138 = private unnamed_addr constant [16 x i8] c"info_hpt374_fn1\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 812, i32 36 }
@___asan_gen_.141 = private unnamed_addr constant [20 x i8] c"hpt374_fn1_port_ops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 641, i32 35 }
@___asan_gen_.144 = private unnamed_addr constant [4 x i8] c"MHz\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 820, i32 19 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"hpt370\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 122, i32 30 }
@___asan_gen_.150 = private unnamed_addr constant [8 x i8] c"hpt370a\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 133, i32 30 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"hpt372\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 144, i32 30 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 865, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant [8 x i8] c"hpt372a\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 177, i32 30 }
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"hpt302\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 155, i32 30 }
@___asan_gen_.180 = private unnamed_addr constant [7 x i8] c"hpt371\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 166, i32 30 }
@___asan_gen_.183 = private unnamed_addr constant [7 x i8] c"hpt374\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 188, i32 30 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 907, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 970, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1026, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant [18 x i8] c"hpt37x_timings_66\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 101, i32 25 }
@___asan_gen_.210 = private unnamed_addr constant [18 x i8] c"hpt37x_timings_50\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 81, i32 25 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1034, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 1049, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [11 x i8] c"hpt37x_sht\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 581, i32 34 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 284, i32 33 }
@___asan_gen_.234 = private unnamed_addr constant [10 x i8] c"bad_ata33\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 238, i32 27 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 286, i32 33 }
@___asan_gen_.240 = private unnamed_addr constant [13 x i8] c"bad_ata100_5\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 254, i32 27 }
@___asan_gen_.243 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 231, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 239, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 239, i32 20 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 239, i32 38 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 239, i32 56 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 240, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 240, i32 20 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 241, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 241, i32 20 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 241, i32 38 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 241, i32 56 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 242, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 242, i32 20 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 242, i32 38 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 243, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 243, i32 20 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 243, i32 38 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 243, i32 56 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 244, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 244, i32 20 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 244, i32 38 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 245, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 246, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 246, i32 20 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 246, i32 38 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 247, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 247, i32 20 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 247, i32 38 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 247, i32 56 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 248, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 248, i32 20 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 248, i32 38 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 249, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 249, i32 20 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 249, i32 38 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 249, i32 56 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 250, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 250, i32 38 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 250, i32 56 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 255, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 256, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 257, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 258, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 259, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 260, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 261, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 262, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 263, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 264, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 265, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 266, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 267, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 268, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 269, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant [19 x i8] c"hpt37x_enable_bits\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 393, i32 31 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 123, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant [18 x i8] c"hpt37x_timings_33\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 61, i32 25 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 134, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 145, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 178, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 156, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 167, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.436 = private constant [29 x i8] c"../drivers/ata/pata_hpt37x.c\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.436, i32 189, i32 2 }
@llvm.compiler.used = appending global [132 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_version294, ptr @__exitcall_hpt37x_pci_driver_exit, ptr @__initcall__kmod_pata_hpt37x__289_1074_hpt37x_pci_driver_init6, ptr @__modver_attr, ptr @hpt37x_init_one._entry, ptr @hpt37x_init_one._entry.11, ptr @hpt37x_init_one._entry.15, ptr @hpt37x_init_one._entry.18, ptr @hpt37x_init_one._entry.22, ptr @hpt37x_init_one._entry.8, ptr @hpt37x_init_one._entry_ptr, ptr @hpt37x_init_one._entry_ptr.10, ptr @hpt37x_init_one._entry_ptr.14, ptr @hpt37x_init_one._entry_ptr.17, ptr @hpt37x_init_one._entry_ptr.21, ptr @hpt37x_init_one._entry_ptr.24, ptr @hpt37x_pci_driver_exit, ptr @hpt_dma_blacklisted._entry, ptr @hpt_dma_blacklisted._entry_ptr, ptr @hpt37x_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hpt37x, ptr @hpt37x_init_one.info_hpt370, ptr @hpt370_port_ops, ptr @hpt37x_init_one.info_hpt370a, ptr @hpt370a_port_ops, ptr @hpt37x_init_one.info_hpt370_33, ptr @hpt37x_init_one.info_hpt370a_33, ptr @hpt37x_init_one.info_hpt372, ptr @hpt372_port_ops, ptr @hpt37x_init_one.info_hpt302, ptr @hpt302_port_ops, ptr @hpt37x_init_one.info_hpt374_fn0, ptr @hpt37x_init_one.info_hpt374_fn1, ptr @hpt374_fn1_port_ops, ptr @hpt37x_init_one.MHz, ptr @hpt370, ptr @hpt370a, ptr @hpt372, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @hpt372a, ptr @hpt302, ptr @hpt371, ptr @hpt374, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @hpt37x_timings_66, ptr @hpt37x_timings_50, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @hpt37x_sht, ptr @.str.25, ptr @bad_ata33, ptr @.str.26, ptr @bad_ata100_5, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @hpt37x_pre_reset.hpt37x_enable_bits, ptr @.str.82, ptr @hpt37x_timings_33, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88], section "llvm.metadata"
@0 = internal global [116 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt37x_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt37x to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt37x_init_one.info_hpt370 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt370_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt37x_init_one.info_hpt370a to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt370a_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt37x_init_one.info_hpt370_33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt37x_init_one.info_hpt370a_33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt37x_init_one.info_hpt372 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt372_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt37x_init_one.info_hpt302 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt302_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt37x_init_one.info_hpt374_fn0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt37x_init_one.info_hpt374_fn1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt374_fn1_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt37x_init_one.MHz to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt370 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt370a to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt372 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt37x_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt372a to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt302 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt371 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt374 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt37x_init_one._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt37x_init_one._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt37x_init_one._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt37x_timings_66 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt37x_timings_50 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt37x_init_one._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt37x_init_one._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt37x_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bad_ata33 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bad_ata100_5 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt_dma_blacklisted._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt37x_pre_reset.hpt37x_enable_bits to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpt37x_timings_33 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hpt37x_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @hpt37x_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hpt37x_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @hpt37x_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpt37x_init_one(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %reg5b.i = alloca i8, align 1
  %reg5c.i = alloca i32, align 4
  %ppi = alloca [2 x ptr], align 8
  %irqmask = alloca i8, align 1
  %mcr1 = alloca i8, align 1
  %mcr173 = alloca i8, align 1
  %sr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #7
  %0 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %ppi, align 8
  %revision = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 12
  %1 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %revision, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %irqmask) #7
  %3 = ptrtoint ptr %irqmask to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %irqmask, align 1, !annotation !244
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mcr1) #7
  %4 = ptrtoint ptr %mcr1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %mcr1, align 1, !annotation !244
  %arrayidx = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 8
  %call = tail call i32 @pcim_enable_device(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup215_crit_edge

entry.cleanup215_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup215

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device, align 2
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %do.end54 [
    i16 4, label %sw.bb
    i16 5, label %sw.bb19
    i16 6, label %sw.bb26
    i16 7, label %sw.bb33
    i16 8, label %sw.bb44
  ]

sw.bb:                                            ; preds = %if.end
  %conv1 = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %2)
  %cmp = icmp ult i8 %2, 3
  br i1 %cmp, label %sw.bb.cleanup215_crit_edge, label %if.end4

sw.bb.cleanup215_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup215

if.end4:                                          ; preds = %sw.bb
  %10 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %2, label %do.end [
    i8 6, label %if.end4.cleanup215_crit_edge
    i8 3, label %sw.bb11
    i8 4, label %sw.bb13
    i8 5, label %sw.bb15
  ]

if.end4.cleanup215_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup215

sw.bb11:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @hpt37x_init_one.info_hpt370, ptr %ppi, align 8
  br label %sw.epilog58

sw.bb13:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @hpt37x_init_one.info_hpt370a, ptr %ppi, align 8
  br label %sw.epilog58

sw.bb15:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @hpt37x_init_one.info_hpt372, ptr %ppi, align 8
  br label %sw.epilog58

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.3, i32 noundef %conv1) #10
  br label %cleanup215

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp21 = icmp ugt i8 %2, 1
  br i1 %cmp21, label %sw.bb19.cleanup215_crit_edge, label %if.end24

sw.bb19.cleanup215_crit_edge:                     ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup215

if.end24:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @hpt37x_init_one.info_hpt372, ptr %ppi, align 8
  br label %sw.epilog58

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp28 = icmp ugt i8 %2, 1
  br i1 %cmp28, label %sw.bb26.cleanup215_crit_edge, label %if.end31

sw.bb26.cleanup215_crit_edge:                     ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup215

if.end31:                                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @hpt37x_init_one.info_hpt302, ptr %ppi, align 8
  br label %sw.epilog58

sw.bb33:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cmp35 = icmp ugt i8 %2, 1
  br i1 %cmp35, label %sw.bb33.cleanup215_crit_edge, label %if.end38

sw.bb33.cleanup215_crit_edge:                     ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup215

if.end38:                                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @hpt37x_init_one.info_hpt302, ptr %ppi, align 8
  %call40 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 80, ptr noundef nonnull %mcr1) #7
  %17 = ptrtoint ptr %mcr1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mcr1, align 1
  %19 = and i8 %18, -5
  store i8 %19, ptr %mcr1, align 1
  %call43 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 80, i8 noundef zeroext %19) #7
  br label %sw.epilog58

sw.bb44:                                          ; preds = %if.end
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %20 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %devfn, align 4
  %and46 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.then48, label %if.else

if.then48:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @hpt37x_init_one.info_hpt374_fn0, ptr %ppi, align 8
  br label %sw.epilog58

if.else:                                          ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @hpt37x_init_one.info_hpt374_fn1, ptr %ppi, align 8
  br label %sw.epilog58

do.end54:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %8 to i32
  %dev55 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull @.str.9, i32 noundef %conv) #10
  br label %cleanup215

sw.epilog58:                                      ; preds = %if.else, %if.then48, %if.end38, %if.end31, %if.end24, %sw.bb15, %sw.bb13, %sw.bb11
  %tobool125.not = phi i1 [ true, %if.then48 ], [ true, %if.else ], [ false, %sw.bb11 ], [ false, %sw.bb13 ], [ true, %sw.bb15 ], [ true, %if.end38 ], [ true, %if.end31 ], [ true, %if.end24 ]
  %cmp81 = phi i1 [ false, %if.then48 ], [ false, %if.else ], [ false, %sw.bb11 ], [ false, %sw.bb13 ], [ false, %sw.bb15 ], [ false, %if.end38 ], [ false, %if.end31 ], [ true, %if.end24 ]
  %cmp91 = phi i1 [ true, %if.then48 ], [ true, %if.else ], [ false, %sw.bb11 ], [ false, %sw.bb13 ], [ false, %sw.bb15 ], [ false, %if.end38 ], [ false, %if.end31 ], [ false, %if.end24 ]
  %chip_table.0 = phi ptr [ @hpt374, %if.then48 ], [ @hpt374, %if.else ], [ @hpt370, %sw.bb11 ], [ @hpt370a, %sw.bb13 ], [ @hpt372, %sw.bb15 ], [ @hpt371, %if.end38 ], [ @hpt302, %if.end31 ], [ @hpt372a, %if.end24 ]
  %call59 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 12, i8 noundef zeroext 32) #7
  %call60 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 13, i8 noundef zeroext 120) #7
  %call61 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 62, i8 noundef zeroext 8) #7
  %call62 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 63, i8 noundef zeroext 8) #7
  %call63 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 90, ptr noundef nonnull %irqmask) #7
  %24 = ptrtoint ptr %irqmask to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %irqmask, align 1
  %26 = and i8 %25, -17
  store i8 %26, ptr %irqmask, align 1
  %call67 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 90, i8 noundef zeroext %26) #7
  %27 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %28)
  %cmp70 = icmp eq i16 %28, 7
  br i1 %cmp70, label %if.then72, label %sw.epilog58.if.end79_crit_edge

sw.epilog58.if.end79_crit_edge:                   ; preds = %sw.epilog58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then72:                                        ; preds = %sw.epilog58
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mcr173) #7
  %29 = ptrtoint ptr %mcr173 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %mcr173, align 1, !annotation !244
  %call74 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 80, ptr noundef nonnull %mcr173) #7
  %30 = ptrtoint ptr %mcr173 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mcr173, align 1
  %32 = and i8 %31, -5
  store i8 %32, ptr %mcr173, align 1
  %call78 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 80, i8 noundef zeroext %32) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mcr173) #7
  br label %if.end79

if.end79:                                         ; preds = %if.then72, %sw.epilog58.if.end79_crit_edge
  %call80 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 91, i8 noundef zeroext 35) #7
  br i1 %cmp81, label %do.body84, label %if.end79.if.end90_crit_edge

if.end79.if.end90_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

do.body84:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  call void @arm_heavy_mb() #7
  %add = add i32 %6, 156
  %and87 = and i32 %add, 1048575
  %add88 = or i32 %and87, -18874368
  %33 = inttoptr i32 %add88 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 14) #7, !srcloc !246
  br label %if.end90

if.end90:                                         ; preds = %do.body84, %if.end79.if.end90_crit_edge
  br i1 %cmp91, label %if.then93, label %if.else99

if.then93:                                        ; preds = %if.end90
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %34 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %devfn.i, align 4
  %and1.i = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then93
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %36 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i, align 8
  %sub.i = add i32 %35, -1
  %call.i = call ptr @pci_get_slot(ptr noundef %37, i32 noundef %sub.i) #7
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then.i.cleanup215_crit_edge, label %cleanup.i

if.then.i.cleanup215_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup215

cleanup.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5.i = getelementptr %struct.pci_dev, ptr %call.i, i32 0, i32 47, i32 4
  %38 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx5.i, align 8
  %add.i = add i32 %39, 144
  %and7.i = and i32 %add.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %40 = inttoptr i32 %add8.i to ptr
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %40) #7, !srcloc !247
  %42 = call i32 @llvm.bswap.i32(i32 %41) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !248
  call void @pci_dev_put(ptr noundef nonnull %call.i) #7
  br label %hpt374_read_freq.exit

if.else.i:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 8
  %add12.i = add i32 %44, 144
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %45 = inttoptr i32 %add14.i to ptr
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %45) #7, !srcloc !247
  %47 = call i32 @llvm.bswap.i32(i32 %46) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !249
  br label %hpt374_read_freq.exit

hpt374_read_freq.exit:                            ; preds = %if.else.i, %cleanup.i
  %retval.1.i = phi i32 [ %42, %cleanup.i ], [ %47, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %cmp95 = icmp eq i32 %retval.1.i, 0
  br i1 %cmp95, label %hpt374_read_freq.exit.cleanup215_crit_edge, label %hpt374_read_freq.exit.if.end105_crit_edge

hpt374_read_freq.exit.if.end105_crit_edge:        ; preds = %hpt374_read_freq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

hpt374_read_freq.exit.cleanup215_crit_edge:       ; preds = %hpt374_read_freq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup215

if.else99:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %add100 = add i32 %6, 144
  %and101 = and i32 %add100, 1048575
  %add102 = or i32 %and101, -18874368
  %48 = inttoptr i32 %add102 to ptr
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %48) #7, !srcloc !247
  %50 = call i32 @llvm.bswap.i32(i32 %49)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !250
  br label %if.end105

if.end105:                                        ; preds = %if.else99, %hpt374_read_freq.exit.if.end105_crit_edge
  %freq.0 = phi i32 [ %retval.1.i, %hpt374_read_freq.exit.if.end105_crit_edge ], [ %50, %if.else99 ]
  %shr.mask = and i32 %freq.0, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1412571136, i32 %shr.mask)
  %cmp106.not = icmp eq i32 %shr.mask, -1412571136
  br i1 %cmp106.not, label %if.end105.if.end119_crit_edge, label %if.then108

if.end105.if.end119_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

if.then108:                                       ; preds = %if.end105
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sr) #7
  %51 = ptrtoint ptr %sr to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -1, ptr %sr, align 2, !annotation !244
  %dev112 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev112, ptr noundef nonnull @.str.12) #10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then108
  %total.0313 = phi i32 [ 0, %if.then108 ], [ %add118, %for.body.for.body_crit_edge ]
  %i.0312 = phi i32 [ 0, %if.then108 ], [ %inc, %for.body.for.body_crit_edge ]
  %call115 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 120, ptr noundef nonnull %sr) #7
  %52 = ptrtoint ptr %sr to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %sr, align 2
  %54 = and i16 %53, 511
  %and117 = zext i16 %54 to i32
  %add118 = add i32 %total.0313, %and117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %55(i32 noundef 3221220) #7
  %inc = add nuw nsw i32 %i.0312, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %div295 = lshr i32 %add118, 7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sr) #7
  br label %if.end119

if.end119:                                        ; preds = %for.end, %if.end105.if.end119_crit_edge
  %freq.1 = phi i32 [ %div295, %for.end ], [ %freq.0, %if.end105.if.end119_crit_edge ]
  %and120 = and i32 %freq.1, 511
  %base = getelementptr inbounds %struct.hpt_chip, ptr %chip_table.0, i32 0, i32 1
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %base, align 4
  %mul.i = mul i32 %57, %and120
  call void @__sanitizer_cov_trace_const_cmp4(i32 7680, i32 %mul.i)
  %cmp.i297 = icmp ult i32 %mul.i, 7680
  br i1 %cmp.i297, label %if.end119.hpt37x_clock_slot.exit_crit_edge, label %if.end.i

if.end119.hpt37x_clock_slot.exit_crit_edge:       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %hpt37x_clock_slot.exit

if.end.i:                                         ; preds = %if.end119
  call void @__sanitizer_cov_trace_const_cmp4(i32 8640, i32 %mul.i)
  %cmp1.i = icmp ult i32 %mul.i, 8640
  br i1 %cmp1.i, label %if.end.i.hpt37x_clock_slot.exit_crit_edge, label %if.end3.i

if.end.i.hpt37x_clock_slot.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hpt37x_clock_slot.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10560, i32 %mul.i)
  %cmp4.i = icmp ult i32 %mul.i, 10560
  %..i = select i1 %cmp4.i, i32 2, i32 3
  br label %hpt37x_clock_slot.exit

hpt37x_clock_slot.exit:                           ; preds = %if.end3.i, %if.end.i.hpt37x_clock_slot.exit_crit_edge, %if.end119.hpt37x_clock_slot.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end119.hpt37x_clock_slot.exit_crit_edge ], [ 1, %if.end.i.hpt37x_clock_slot.exit_crit_edge ], [ %..i, %if.end3.i ]
  %arrayidx122 = getelementptr %struct.hpt_chip, ptr %chip_table.0, i32 0, i32 2, i32 %retval.0.i
  %58 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx122, align 4
  %cmp123 = icmp eq ptr %59, null
  %brmerge = or i1 %tobool125.not, %cmp123
  br i1 %brmerge, label %if.then126, label %if.else187

if.then126:                                       ; preds = %hpt37x_clock_slot.exit
  %60 = ptrtoint ptr %ppi to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ppi, align 8
  %udma_mask = getelementptr inbounds %struct.ata_port_info, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %udma_mask to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %udma_mask, align 4
  %and128 = and i32 %63, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  %cond = select i1 %tobool129.not, i32 2, i32 3
  %arrayidx130 = getelementptr [4 x i32], ptr @hpt37x_init_one.MHz, i32 0, i32 %retval.0.i
  %64 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx130, align 4
  %mul = mul i32 %65, 48
  %arrayidx131 = getelementptr [4 x i32], ptr @hpt37x_init_one.MHz, i32 0, i32 %cond
  %66 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx131, align 4
  %div132 = sdiv i32 %mul, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i)
  %cmp134.inv = icmp ult i32 %retval.0.i, 2
  %spec.select.v = select i1 %cmp134.inv, i32 2, i32 4
  %spec.select = add i32 %div132, %spec.select.v
  %call139 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 91, i8 noundef zeroext 33) #7
  %shl = shl i32 %spec.select, 16
  %or = or i32 %div132, %shl
  %or140 = or i32 %or, 256
  %call141 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 92, i32 noundef %or140) #7
  br label %for.body145

for.body145:                                      ; preds = %if.end149.for.body145_crit_edge, %if.then126
  %adjust.0316 = phi i32 [ 0, %if.then126 ], [ %inc163, %if.end149.for.body145_crit_edge ]
  %f_high.1315 = phi i32 [ %spec.select, %if.then126 ], [ %f_high.2, %if.end149.for.body145_crit_edge ]
  %f_low.0314 = phi i32 [ %div132, %if.then126 ], [ %f_low.1, %if.end149.for.body145_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg5b.i) #7
  %68 = ptrtoint ptr %reg5b.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -1, ptr %reg5b.i, align 1, !annotation !244
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg5c.i) #7
  %69 = ptrtoint ptr %reg5c.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %reg5c.i, align 4, !annotation !244
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc16.i = add nuw nsw i32 %tries.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc16.i, 20480
  br i1 %exitcond.not.i, label %for.cond.i.if.end149_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.if.end149_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body145
  %tries.027.i = phi i32 [ 0, %for.body145 ], [ %inc16.i, %for.cond.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %70(i32 noundef 10737400) #7
  %call.i299 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 91, ptr noundef nonnull %reg5b.i) #7
  %71 = ptrtoint ptr %reg5b.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %reg5b.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %72)
  %tobool.not.i300 = icmp sgt i8 %72, -1
  br i1 %tobool.not.i300, label %for.cond.i, label %for.body.i.for.body4.i_crit_edge

for.body.i.for.body4.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body4.i

for.cond1.i:                                      ; preds = %for.body4.i
  %inc.i = add nuw nsw i32 %tries.128.i, 1
  %exitcond30.not.i = icmp eq i32 %inc.i, 4096
  br i1 %exitcond30.not.i, label %for.end164, label %for.cond1.i.for.body4.i_crit_edge

for.cond1.i.for.body4.i_crit_edge:                ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.cond1.i.for.body4.i_crit_edge, %for.body.i.for.body4.i_crit_edge
  %tries.128.i = phi i32 [ %inc.i, %for.cond1.i.for.body4.i_crit_edge ], [ 0, %for.body.i.for.body4.i_crit_edge ]
  %call5.i = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 91, ptr noundef nonnull %reg5b.i) #7
  %73 = ptrtoint ptr %reg5b.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %reg5b.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %74)
  %cmp8.i = icmp sgt i8 %74, -1
  br i1 %cmp8.i, label %for.body4.i.if.end149_crit_edge, label %for.cond1.i

for.body4.i.if.end149_crit_edge:                  ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149

if.end149:                                        ; preds = %for.body4.i.if.end149_crit_edge, %for.cond.i.if.end149_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg5c.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg5b.i) #7
  %and150 = and i32 %adjust.0316, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  %75 = lshr i32 %adjust.0316, 1
  %sub = select i1 %tobool151.not, i32 0, i32 %75
  %f_low.1 = sub i32 %f_low.0314, %sub
  %add156 = select i1 %tobool151.not, i32 %75, i32 0
  %f_high.2 = add i32 %add156, %f_high.1315
  %shl158 = shl i32 %f_high.2, 16
  %or159 = or i32 %f_low.1, %shl158
  %or160 = or i32 %or159, 256
  %call161 = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 92, i32 noundef %or160) #7
  %inc163 = add nuw nsw i32 %adjust.0316, 1
  %exitcond320.not = icmp eq i32 %inc163, 8
  br i1 %exitcond320.not, label %if.end149.cleanup.thread_crit_edge, label %if.end149.for.body145_crit_edge

if.end149.for.body145_crit_edge:                  ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body145

if.end149.cleanup.thread_crit_edge:               ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

for.end164:                                       ; preds = %for.cond1.i
  %call11.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 92, ptr noundef nonnull %reg5c.i) #7
  %76 = ptrtoint ptr %reg5c.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %reg5c.i, align 4
  %and12.i = and i32 %77, -257
  %call13.i = call i32 @pci_write_config_dword(ptr noundef %dev, i32 noundef 92, i32 noundef %and12.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg5c.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg5b.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %adjust.0316)
  %cmp165 = icmp eq i32 %adjust.0316, 8
  br i1 %cmp165, label %for.end164.cleanup.thread_crit_edge, label %cleanup

for.end164.cleanup.thread_crit_edge:              ; preds = %for.end164
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %for.end164.cleanup.thread_crit_edge, %if.end149.cleanup.thread_crit_edge
  %dev171 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev171, ptr noundef nonnull @.str.16) #10
  br label %cleanup215

cleanup:                                          ; preds = %for.end164
  call void @__sanitizer_cov_trace_pc() #9
  %hpt37x_timings_50.hpt37x_timings_66 = select i1 %tobool129.not, ptr @hpt37x_timings_50, ptr @hpt37x_timings_66
  %dev181 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev181, ptr noundef nonnull @.str.19, i32 noundef %65, i32 noundef %67) #10
  br label %if.end212

if.else187:                                       ; preds = %hpt37x_clock_slot.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i)
  %cmp190 = icmp ult i32 %retval.0.i, 2
  br i1 %cmp190, label %land.lhs.true, label %if.else187.do.end209_crit_edge

if.else187.do.end209_crit_edge:                   ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end209

land.lhs.true:                                    ; preds = %if.else187
  %78 = ptrtoint ptr %ppi to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ppi, align 8
  %cmp193 = icmp eq ptr %79, @hpt37x_init_one.info_hpt370
  br i1 %cmp193, label %land.lhs.true200.thread, label %land.lhs.true200

land.lhs.true200.thread:                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @hpt37x_init_one.info_hpt370_33, ptr %ppi, align 8
  br label %do.end209

land.lhs.true200:                                 ; preds = %land.lhs.true
  %cmp202 = icmp eq ptr %79, @hpt37x_init_one.info_hpt370a
  br i1 %cmp202, label %if.then204, label %land.lhs.true200.do.end209_crit_edge

land.lhs.true200.do.end209_crit_edge:             ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end209

if.then204:                                       ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @hpt37x_init_one.info_hpt370a_33, ptr %ppi, align 8
  br label %do.end209

do.end209:                                        ; preds = %if.then204, %land.lhs.true200.do.end209_crit_edge, %land.lhs.true200.thread, %if.else187.do.end209_crit_edge
  %dev210 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %82 = ptrtoint ptr %chip_table.0 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %chip_table.0, align 4
  %arrayidx211 = getelementptr [4 x i32], ptr @hpt37x_init_one.MHz, i32 0, i32 %retval.0.i
  %84 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx211, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev210, ptr noundef nonnull @.str.23, ptr noundef %83, i32 noundef %85) #10
  br label %if.end212

if.end212:                                        ; preds = %do.end209, %cleanup
  %private_data.2 = phi ptr [ %hpt37x_timings_50.hpt37x_timings_66, %cleanup ], [ %59, %do.end209 ]
  %call214 = call i32 @ata_pci_bmdma_init_one(ptr noundef %dev, ptr noundef nonnull %ppi, ptr noundef nonnull @hpt37x_sht, ptr noundef %private_data.2, i32 noundef 0) #7
  br label %cleanup215

cleanup215:                                       ; preds = %if.end212, %cleanup.thread, %hpt374_read_freq.exit.cleanup215_crit_edge, %if.then.i.cleanup215_crit_edge, %do.end54, %sw.bb33.cleanup215_crit_edge, %sw.bb26.cleanup215_crit_edge, %sw.bb19.cleanup215_crit_edge, %do.end, %if.end4.cleanup215_crit_edge, %sw.bb.cleanup215_crit_edge, %entry.cleanup215_crit_edge
  %retval.1 = phi i32 [ -19, %do.end54 ], [ %call214, %if.end212 ], [ -19, %do.end ], [ %call, %entry.cleanup215_crit_edge ], [ -19, %sw.bb.cleanup215_crit_edge ], [ -19, %if.end4.cleanup215_crit_edge ], [ -19, %sw.bb19.cleanup215_crit_edge ], [ -19, %sw.bb26.cleanup215_crit_edge ], [ -19, %sw.bb33.cleanup215_crit_edge ], [ -19, %hpt374_read_freq.exit.cleanup215_crit_edge ], [ -19, %cleanup.thread ], [ -19, %if.then.i.cleanup215_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mcr1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %irqmask) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_init_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpt37x_cable_detect(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  %scr2 = alloca i8, align 1
  %ata66 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %scr2) #7
  %4 = ptrtoint ptr %scr2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %scr2, align 1, !annotation !244
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ata66) #7
  %5 = ptrtoint ptr %ata66 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %ata66, align 1, !annotation !244
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 91, ptr noundef nonnull %scr2) #7
  %6 = ptrtoint ptr %scr2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %scr2, align 1
  %8 = and i8 %7, -2
  %call2 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 91, i8 noundef zeroext %8) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 2147480) #7
  %call3 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 90, ptr noundef nonnull %ata66) #7
  %10 = ptrtoint ptr %scr2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %scr2, align 1
  %call4 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 91, i8 noundef zeroext %11) #7
  %12 = ptrtoint ptr %ata66 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ata66, align 1
  %conv5 = zext i8 %13 to i32
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %14 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_no, align 4
  %shr = lshr i32 2, %15
  %and6 = and i32 %shr, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ata66) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %scr2) #7
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpt370_filter(ptr noundef %adev, i32 noundef %mask) #2 align 64 {
entry:
  %model_num.i13 = alloca [41 x i8], align 1
  %model_num.i = alloca [41 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 9
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %model_num.i) #7
  %2 = call ptr @memset(ptr %model_num.i, i32 255, i32 41)
  %3 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 25
  call void @ata_id_c_string(ptr noundef %3, ptr noundef nonnull %model_num.i, i32 noundef 27, i32 noundef 41) #7
  %call.i = call i32 @match_string(ptr noundef nonnull @bad_ata33, i32 noundef -1, ptr noundef nonnull %model_num.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %hpt_dma_blacklisted.exit, label %16

hpt_dma_blacklisted.exit:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 128
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %print_id.i, align 4
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pmp.i, align 4
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %12 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devno.i, align 4
  %add.i = add i32 %13, %11
  %arrayidx.i = getelementptr ptr, ptr @bad_ata33, i32 %call.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %9, i32 noundef %add.i, ptr noundef nonnull @.str.25, ptr noundef %15) #10
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %model_num.i) #7
  %and = and i32 %mask, -1044481
  br label %17

16:                                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %model_num.i) #7
  br label %17

17:                                               ; preds = %16, %hpt_dma_blacklisted.exit
  %18 = phi i32 [ %mask, %16 ], [ %and, %hpt_dma_blacklisted.exit ]
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %model_num.i13) #7
  %19 = call ptr @memset(ptr %model_num.i13, i32 255, i32 41)
  call void @ata_id_c_string(ptr noundef %3, ptr noundef nonnull %model_num.i13, i32 noundef 27, i32 noundef 41) #7
  %call.i14 = call i32 @match_string(ptr noundef nonnull @bad_ata100_5, i32 noundef -1, ptr noundef nonnull %model_num.i13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i14)
  %cmp.i15 = icmp sgt i32 %call.i14, -1
  br i1 %cmp.i15, label %hpt_dma_blacklisted.exit24, label %32

hpt_dma_blacklisted.exit24:                       ; preds = %17
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adev, align 128
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 128
  %print_id.i16 = getelementptr inbounds %struct.ata_port, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %print_id.i16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %print_id.i16, align 4
  %pmp.i17 = getelementptr inbounds %struct.ata_link, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %pmp.i17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pmp.i17, align 4
  %devno.i18 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %28 = ptrtoint ptr %devno.i18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %devno.i18, align 4
  %add.i19 = add i32 %29, %27
  %arrayidx.i20 = getelementptr ptr, ptr @bad_ata100_5, i32 %call.i14
  %30 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i20, align 4
  %call4.i21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %25, i32 noundef %add.i19, ptr noundef nonnull @.str.26, ptr noundef %31) #10
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %model_num.i13) #7
  %and5 = and i32 %18, -917505
  br label %if.end7

32:                                               ; preds = %17
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %model_num.i13) #7
  br label %if.end7

if.end7:                                          ; preds = %32, %hpt_dma_blacklisted.exit24, %entry.if.end7_crit_edge
  %mask.addr.1 = phi i32 [ %mask, %entry.if.end7_crit_edge ], [ %18, %32 ], [ %and5, %hpt_dma_blacklisted.exit24 ]
  ret i32 %mask.addr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hpt370_set_piomode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pio_mode, align 16
  tail call fastcc void @hpt370_set_mode(ptr noundef %ap, ptr noundef %adev, i8 noundef zeroext %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hpt370_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %0 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma_mode, align 1
  tail call fastcc void @hpt370_set_mode(ptr noundef %ap, ptr noundef %adev, i8 noundef zeroext %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpt37x_pre_reset(ptr noundef %link, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %arrayidx = getelementptr [2 x %struct.pci_bits], ptr @hpt37x_pre_reset.hpt37x_enable_bits, i32 0, i32 %7
  %call = tail call i32 @pci_test_config_bits(ptr noundef %add.ptr, ptr noundef %arrayidx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no, align 4
  %mul = shl i32 %9, 2
  %add = add i32 %mul, 80
  %call3 = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add, i8 noundef zeroext 55) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 21474800) #7
  %call4 = tail call i32 @ata_sff_prereset(ptr noundef %link, i32 noundef %deadline) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hpt370_bmdma_stop(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 13
  %6 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmdma_addr, align 4
  %add.ptr2 = getelementptr i8, ptr %7, i32 2
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #7, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !252
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end26_crit_edge, label %if.end

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 4294960) #7
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #7, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !252
  %.pre = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pre)
  %tobool7.not = icmp eq i8 %.pre, 0
  br i1 %tobool7.not, label %if.end.if.end26_crit_edge, label %if.then8

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_no, align 4
  %mul = shl i32 %13, 2
  %add = add i32 %mul, 80
  %call9 = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add, i8 noundef zeroext 55) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #7
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %7) #7, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !252
  %16 = and i8 %15, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !253
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %16) #7, !srcloc !246
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #7, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !252
  %18 = or i8 %17, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !253
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2, i8 %18) #7, !srcloc !246
  %19 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_no, align 4
  %mul23 = shl i32 %20, 2
  %add24 = add i32 %mul23, 80
  %call25 = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add24, i8 noundef zeroext 55) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then8, %if.end.if.end26_crit_edge, %entry.if.end26_crit_edge
  tail call void @ata_bmdma_stop(ptr noundef %qc) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_id_c_string(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hpt370_set_mode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev, i8 noundef zeroext %mode) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  %fast = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg, align 4, !annotation !244
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fast) #7
  %5 = ptrtoint ptr %fast to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %fast, align 1, !annotation !244
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %6 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devno, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %8 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no, align 4
  %mul4 = shl i32 %9, 2
  %add5 = add i32 %mul4, 81
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add5, ptr noundef nonnull %fast) #7
  %10 = ptrtoint ptr %fast to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fast, align 1
  %12 = and i8 %11, -4
  %13 = or i8 %12, 1
  store i8 %13, ptr %fast, align 1
  %call9 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add5, i8 noundef zeroext %13) #7
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private_data.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not10.i = icmp eq i8 %19, 0
  br i1 %tobool.not10.i, label %entry.do.body.i_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %20 = phi i8 [ %22, %if.end.i.while.body.i_crit_edge ], [ %19, %entry.while.body.i_crit_edge ]
  %clocks.011.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %17, %entry.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %mode)
  %cmp.i = icmp eq i8 %20, %mode
  br i1 %cmp.i, label %hpt37x_find_mode.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.hpt_clock, ptr %clocks.011.i, i32 1
  %21 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/pata_hpt37x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #7, !srcloc !254
  unreachable

hpt37x_find_mode.exit:                            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %9, 1
  %add = add i32 %mul, %7
  %mul1 = shl i32 %add, 2
  %add2 = add i32 %mul1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %mode)
  %cmp = icmp ult i8 %mode, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %mode)
  %cmp13 = icmp ult i8 %mode, 64
  %. = select i1 %cmp13, i32 834667007, i32 809238528
  %mask.0 = select i1 %cmp, i32 -809238529, i32 %.
  %timing.i = getelementptr inbounds %struct.hpt_clock, ptr %clocks.011.i, i32 0, i32 1
  %23 = ptrtoint ptr %timing.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %timing.i, align 4
  %call20 = call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef %add2, ptr noundef nonnull %reg) #7
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg, align 4
  %neg = xor i32 %mask.0, -1
  %and21 = and i32 %26, %neg
  %and22 = and i32 %24, %mask.0
  %or23 = or i32 %and21, %and22
  store i32 %or23, ptr %reg, align 4
  %call24 = call i32 @pci_write_config_dword(ptr noundef %add.ptr, i32 noundef %add2, i32 noundef %or23) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fast) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_test_config_bits(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_prereset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_bmdma_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpt370a_filter(ptr noundef %adev, i32 noundef %mask) #2 align 64 {
entry:
  %model_num.i = alloca [41 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 9
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %model_num.i) #7
  %2 = call ptr @memset(ptr %model_num.i, i32 255, i32 41)
  %3 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 25
  call void @ata_id_c_string(ptr noundef %3, ptr noundef nonnull %model_num.i, i32 noundef 27, i32 noundef 41) #7
  %call.i = call i32 @match_string(ptr noundef nonnull @bad_ata100_5, i32 noundef -1, ptr noundef nonnull %model_num.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %hpt_dma_blacklisted.exit, label %16

hpt_dma_blacklisted.exit:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adev, align 128
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %print_id.i, align 4
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pmp.i, align 4
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %12 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devno.i, align 4
  %add.i = add i32 %13, %11
  %arrayidx.i = getelementptr ptr, ptr @bad_ata100_5, i32 %call.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %9, i32 noundef %add.i, ptr noundef nonnull @.str.26, ptr noundef %15) #10
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %model_num.i) #7
  %and = and i32 %mask, -917505
  br label %if.end2

16:                                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %model_num.i) #7
  br label %if.end2

if.end2:                                          ; preds = %16, %hpt_dma_blacklisted.exit, %entry.if.end2_crit_edge
  %mask.addr.0 = phi i32 [ %mask, %entry.if.end2_crit_edge ], [ %mask, %16 ], [ %and, %hpt_dma_blacklisted.exit ]
  ret i32 %mask.addr.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hpt372_filter(ptr nocapture noundef readonly %adev, i32 noundef %mask) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 25
  %arrayidx.i = getelementptr i16, ptr %0, i32 93
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp.i = icmp eq i16 %2, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.ata_id_is_sata.exit_crit_edge

entry.ata_id_is_sata.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ata_id_is_sata.exit

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx2.i = getelementptr %struct.ata_device, ptr %adev, i32 0, i32 25, i32 0, i32 40
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %4)
  %cmp4.i = icmp sgt i16 %4, 31
  %and3 = and i32 %mask, -61313
  %spec.select = select i1 %cmp4.i, i32 %and3, i32 %mask
  br label %ata_id_is_sata.exit

ata_id_is_sata.exit:                              ; preds = %land.lhs.true.i, %entry.ata_id_is_sata.exit_crit_edge
  %5 = phi i32 [ %mask, %entry.ata_id_is_sata.exit_crit_edge ], [ %spec.select, %land.lhs.true.i ]
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hpt372_set_piomode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pio_mode, align 16
  tail call fastcc void @hpt372_set_mode(ptr noundef %ap, ptr noundef %adev, i8 noundef zeroext %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hpt372_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %0 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma_mode, align 1
  tail call fastcc void @hpt372_set_mode(ptr noundef %ap, ptr noundef %adev, i8 noundef zeroext %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hpt37x_bmdma_stop(ptr noundef %qc) #2 align 64 {
entry:
  %bwsr_stat = alloca i8, align 1
  %msc_stat = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
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
  %mul = shl i32 %7, 2
  %add = add i32 %mul, 80
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bwsr_stat) #7
  %8 = ptrtoint ptr %bwsr_stat to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %bwsr_stat, align 1, !annotation !244
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %msc_stat) #7
  %9 = ptrtoint ptr %msc_stat to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %msc_stat, align 1, !annotation !244
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 106, ptr noundef nonnull %bwsr_stat) #7
  %call2 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add, ptr noundef nonnull %msc_stat) #7
  %10 = ptrtoint ptr %bwsr_stat to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bwsr_stat, align 1
  %conv = zext i8 %11 to i32
  %12 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_no, align 4
  %shl = shl nuw i32 1, %13
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %msc_stat to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %msc_stat, align 1
  %16 = or i8 %15, 48
  %call6 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add, i8 noundef zeroext %16) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @ata_bmdma_stop(ptr noundef %qc) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %msc_stat) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bwsr_stat) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hpt372_set_mode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev, i8 noundef zeroext %mode) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  %fast = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg, align 4, !annotation !244
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fast) #7
  %5 = ptrtoint ptr %fast to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %fast, align 1, !annotation !244
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %6 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devno, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %8 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no, align 4
  %mul4 = shl i32 %9, 2
  %add5 = add i32 %mul4, 81
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add5, ptr noundef nonnull %fast) #7
  %10 = ptrtoint ptr %fast to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fast, align 1
  %12 = and i8 %11, -8
  store i8 %12, ptr %fast, align 1
  %call7 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add5, i8 noundef zeroext %12) #7
  %13 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private_data.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not10.i = icmp eq i8 %18, 0
  br i1 %tobool.not10.i, label %entry.do.body.i_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %19 = phi i8 [ %21, %if.end.i.while.body.i_crit_edge ], [ %18, %entry.while.body.i_crit_edge ]
  %clocks.011.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %16, %entry.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %mode)
  %cmp.i = icmp eq i8 %19, %mode
  br i1 %cmp.i, label %hpt37x_find_mode.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.hpt_clock, ptr %clocks.011.i, i32 1
  %20 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/pata_hpt37x.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #7, !srcloc !254
  unreachable

hpt37x_find_mode.exit:                            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %9, 1
  %add = add i32 %mul, %7
  %mul1 = shl i32 %add, 2
  %add2 = add i32 %mul1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %mode)
  %cmp = icmp ult i8 %mode, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %mode)
  %cmp11 = icmp ult i8 %mode, 64
  %. = select i1 %cmp11, i32 834667007, i32 809238528
  %mask.0 = select i1 %cmp, i32 -809238529, i32 %.
  %timing.i = getelementptr inbounds %struct.hpt_clock, ptr %clocks.011.i, i32 0, i32 1
  %22 = ptrtoint ptr %timing.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %timing.i, align 4
  %call18 = call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef %add2, ptr noundef nonnull %reg) #7
  %24 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg, align 4
  %neg = xor i32 %mask.0, -1
  %and19 = and i32 %25, %neg
  %and20 = and i32 %23, %mask.0
  %or = or i32 %and19, %and20
  store i32 %or, ptr %reg, align 4
  %call21 = call i32 @pci_write_config_dword(ptr noundef %add.ptr, i32 noundef %add2, i32 noundef %or) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fast) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hpt374_fn1_cable_detect(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  %mcr3 = alloca i16, align 2
  %ata66 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
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
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %4 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no, align 4
  %mul = shl i32 %5, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mcr3) #7
  %6 = ptrtoint ptr %mcr3 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %mcr3, align 2, !annotation !244
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ata66) #7
  %7 = ptrtoint ptr %ata66 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %ata66, align 1, !annotation !244
  %add1 = add i32 %mul, 82
  %call = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef %add1, ptr noundef nonnull %mcr3) #7
  %8 = ptrtoint ptr %mcr3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mcr3, align 2
  %10 = or i16 %9, -32768
  %call4 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef %add1, i16 noundef zeroext %10) #7
  %call5 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 90, ptr noundef nonnull %ata66) #7
  %11 = ptrtoint ptr %mcr3 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mcr3, align 2
  %call7 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef %add1, i16 noundef zeroext %12) #7
  %13 = ptrtoint ptr %ata66 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ata66, align 1
  %conv8 = zext i8 %14 to i32
  %15 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_no, align 4
  %shr = lshr i32 2, %16
  %and = and i32 %shr, %conv8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ata66) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mcr3) #7
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72, !74, !76, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233}
!llvm.module.flags = !{!235, !236, !237, !238, !239, !240, !241, !242}
!llvm.ident = !{!243}

!0 = !{ptr @__initcall__kmod_pata_hpt37x__289_1074_hpt37x_pci_driver_init6, !1, !"__initcall__kmod_pata_hpt37x__289_1074_hpt37x_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_hpt37x.c", i32 1074, i32 1}
!2 = !{ptr @__exitcall_hpt37x_pci_driver_exit, !1, !"__exitcall_hpt37x_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_hpt37x.c", i32 1076, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_hpt37x.c", i32 1077, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_hpt37x.c", i32 1078, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version294, !11, !"__UNIQUE_ID_version294", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_hpt37x.c", i32 1080, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @hpt37x_pci_driver, !17, !"hpt37x_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_hpt37x.c", i32 1067, i32 26}
!18 = !{ptr @hpt37x, !19, !"hpt37x", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_hpt37x.c", i32 1057, i32 35}
!20 = !{ptr @hpt37x_init_one.info_hpt370, !21, !"info_hpt370", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_hpt37x.c", i32 757, i32 36}
!22 = !{ptr @hpt37x_init_one.info_hpt370a, !23, !"info_hpt370a", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_hpt37x.c", i32 765, i32 36}
!24 = !{ptr @hpt37x_init_one.info_hpt370_33, !25, !"info_hpt370_33", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_hpt37x.c", i32 773, i32 36}
!26 = !{ptr @hpt37x_init_one.info_hpt370a_33, !27, !"info_hpt370a_33", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_hpt37x.c", i32 781, i32 36}
!28 = !{ptr @hpt37x_init_one.info_hpt372, !29, !"info_hpt372", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_hpt37x.c", i32 789, i32 36}
!30 = !{ptr @hpt37x_init_one.info_hpt302, !31, !"info_hpt302", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_hpt37x.c", i32 797, i32 36}
!32 = !{ptr @hpt37x_init_one.info_hpt374_fn0, !33, !"info_hpt374_fn0", i1 false, i1 false}
!33 = !{!"../drivers/ata/pata_hpt37x.c", i32 805, i32 36}
!34 = !{ptr @hpt37x_init_one.info_hpt374_fn1, !35, !"info_hpt374_fn1", i1 false, i1 false}
!35 = !{!"../drivers/ata/pata_hpt37x.c", i32 812, i32 36}
!36 = !{ptr @hpt37x_init_one.MHz, !37, !"MHz", i1 false, i1 false}
!37 = !{!"../drivers/ata/pata_hpt37x.c", i32 820, i32 19}
!38 = !{ptr @.str.3, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/ata/pata_hpt37x.c", i32 865, i32 4}
!40 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @hpt37x_init_one._entry, !39, !"_entry", i1 false, i1 false}
!45 = !{ptr @hpt37x_init_one._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/ata/pata_hpt37x.c", i32 907, i32 3}
!48 = !{ptr @hpt37x_init_one._entry.8, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @hpt37x_init_one._entry_ptr.10, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/ata/pata_hpt37x.c", i32 970, i32 3}
!52 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @hpt37x_init_one._entry.11, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @hpt37x_init_one._entry_ptr.14, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/ata/pata_hpt37x.c", i32 1026, i32 4}
!57 = !{ptr @hpt37x_init_one._entry.15, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @hpt37x_init_one._entry_ptr.17, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/ata/pata_hpt37x.c", i32 1034, i32 3}
!61 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @hpt37x_init_one._entry.18, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @hpt37x_init_one._entry_ptr.21, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/ata/pata_hpt37x.c", i32 1049, i32 3}
!66 = !{ptr @hpt37x_init_one._entry.22, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @hpt37x_init_one._entry_ptr.24, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @hpt370_port_ops, !69, !"hpt370_port_ops", i1 false, i1 false}
!69 = !{!"../drivers/ata/pata_hpt37x.c", i32 589, i32 35}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/ata/pata_hpt37x.c", i32 284, i32 33}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/ata/pata_hpt37x.c", i32 286, i32 33}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/ata/pata_hpt37x.c", i32 231, i32 3}
!76 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @hpt_dma_blacklisted._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @hpt_dma_blacklisted._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/ata/pata_hpt37x.c", i32 239, i32 2}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/ata/pata_hpt37x.c", i32 239, i32 20}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/ata/pata_hpt37x.c", i32 239, i32 38}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/ata/pata_hpt37x.c", i32 239, i32 56}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/ata/pata_hpt37x.c", i32 240, i32 2}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/ata/pata_hpt37x.c", i32 240, i32 20}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/ata/pata_hpt37x.c", i32 241, i32 2}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/ata/pata_hpt37x.c", i32 241, i32 20}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/ata/pata_hpt37x.c", i32 241, i32 38}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/ata/pata_hpt37x.c", i32 241, i32 56}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/ata/pata_hpt37x.c", i32 242, i32 2}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/ata/pata_hpt37x.c", i32 242, i32 20}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/ata/pata_hpt37x.c", i32 242, i32 38}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/ata/pata_hpt37x.c", i32 243, i32 2}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/ata/pata_hpt37x.c", i32 243, i32 20}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/ata/pata_hpt37x.c", i32 243, i32 38}
!111 = !{ptr @.str.45, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/ata/pata_hpt37x.c", i32 243, i32 56}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/ata/pata_hpt37x.c", i32 244, i32 2}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/ata/pata_hpt37x.c", i32 244, i32 20}
!117 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/ata/pata_hpt37x.c", i32 244, i32 38}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/ata/pata_hpt37x.c", i32 245, i32 2}
!121 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/ata/pata_hpt37x.c", i32 246, i32 2}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/ata/pata_hpt37x.c", i32 246, i32 20}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/ata/pata_hpt37x.c", i32 246, i32 38}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/ata/pata_hpt37x.c", i32 247, i32 2}
!129 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/ata/pata_hpt37x.c", i32 247, i32 20}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/ata/pata_hpt37x.c", i32 247, i32 38}
!133 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/ata/pata_hpt37x.c", i32 247, i32 56}
!135 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/ata/pata_hpt37x.c", i32 248, i32 2}
!137 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/ata/pata_hpt37x.c", i32 248, i32 20}
!139 = !{ptr @.str.59, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/ata/pata_hpt37x.c", i32 248, i32 38}
!141 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/ata/pata_hpt37x.c", i32 249, i32 2}
!143 = !{ptr @.str.61, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/ata/pata_hpt37x.c", i32 249, i32 20}
!145 = !{ptr @.str.62, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/ata/pata_hpt37x.c", i32 249, i32 38}
!147 = !{ptr @.str.63, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/ata/pata_hpt37x.c", i32 249, i32 56}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/ata/pata_hpt37x.c", i32 250, i32 2}
!151 = !{ptr @.str.65, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/ata/pata_hpt37x.c", i32 250, i32 38}
!153 = !{ptr @.str.66, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/ata/pata_hpt37x.c", i32 250, i32 56}
!155 = !{ptr @bad_ata33, !156, !"bad_ata33", i1 false, i1 false}
!156 = !{!"../drivers/ata/pata_hpt37x.c", i32 238, i32 27}
!157 = !{ptr @.str.67, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/ata/pata_hpt37x.c", i32 255, i32 2}
!159 = !{ptr @.str.68, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/ata/pata_hpt37x.c", i32 256, i32 2}
!161 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/ata/pata_hpt37x.c", i32 257, i32 2}
!163 = !{ptr @.str.70, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/ata/pata_hpt37x.c", i32 258, i32 2}
!165 = !{ptr @.str.71, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/ata/pata_hpt37x.c", i32 259, i32 2}
!167 = !{ptr @.str.72, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/ata/pata_hpt37x.c", i32 260, i32 2}
!169 = !{ptr @.str.73, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/ata/pata_hpt37x.c", i32 261, i32 2}
!171 = !{ptr @.str.74, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/ata/pata_hpt37x.c", i32 262, i32 2}
!173 = !{ptr @.str.75, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/ata/pata_hpt37x.c", i32 263, i32 2}
!175 = !{ptr @.str.76, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/ata/pata_hpt37x.c", i32 264, i32 2}
!177 = !{ptr @.str.77, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/ata/pata_hpt37x.c", i32 265, i32 2}
!179 = !{ptr @.str.78, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/ata/pata_hpt37x.c", i32 266, i32 2}
!181 = !{ptr @.str.79, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/ata/pata_hpt37x.c", i32 267, i32 2}
!183 = !{ptr @.str.80, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/ata/pata_hpt37x.c", i32 268, i32 2}
!185 = !{ptr @.str.81, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/ata/pata_hpt37x.c", i32 269, i32 2}
!187 = !{ptr @bad_ata100_5, !188, !"bad_ata100_5", i1 false, i1 false}
!188 = !{!"../drivers/ata/pata_hpt37x.c", i32 254, i32 27}
!189 = !{ptr @hpt37x_pre_reset.hpt37x_enable_bits, !190, !"hpt37x_enable_bits", i1 false, i1 false}
!190 = !{!"../drivers/ata/pata_hpt37x.c", i32 393, i32 31}
!191 = !{ptr @hpt370a_port_ops, !192, !"hpt370a_port_ops", i1 false, i1 false}
!192 = !{!"../drivers/ata/pata_hpt37x.c", i32 605, i32 35}
!193 = !{ptr @hpt372_port_ops, !194, !"hpt372_port_ops", i1 false, i1 false}
!194 = !{!"../drivers/ata/pata_hpt37x.c", i32 631, i32 35}
!195 = !{ptr @hpt302_port_ops, !196, !"hpt302_port_ops", i1 false, i1 false}
!196 = !{!"../drivers/ata/pata_hpt37x.c", i32 615, i32 35}
!197 = !{ptr @hpt374_fn1_port_ops, !198, !"hpt374_fn1_port_ops", i1 false, i1 false}
!198 = !{!"../drivers/ata/pata_hpt37x.c", i32 641, i32 35}
!199 = !{ptr @.str.82, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/ata/pata_hpt37x.c", i32 123, i32 2}
!201 = !{ptr @hpt370, !202, !"hpt370", i1 false, i1 false}
!202 = !{!"../drivers/ata/pata_hpt37x.c", i32 122, i32 30}
!203 = !{ptr @hpt37x_timings_33, !204, !"hpt37x_timings_33", i1 false, i1 false}
!204 = !{!"../drivers/ata/pata_hpt37x.c", i32 61, i32 25}
!205 = !{ptr @.str.83, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/ata/pata_hpt37x.c", i32 134, i32 2}
!207 = !{ptr @hpt370a, !208, !"hpt370a", i1 false, i1 false}
!208 = !{!"../drivers/ata/pata_hpt37x.c", i32 133, i32 30}
!209 = !{ptr @.str.84, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/ata/pata_hpt37x.c", i32 145, i32 2}
!211 = !{ptr @hpt372, !212, !"hpt372", i1 false, i1 false}
!212 = !{!"../drivers/ata/pata_hpt37x.c", i32 144, i32 30}
!213 = !{ptr @.str.85, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/ata/pata_hpt37x.c", i32 178, i32 2}
!215 = !{ptr @hpt372a, !216, !"hpt372a", i1 false, i1 false}
!216 = !{!"../drivers/ata/pata_hpt37x.c", i32 177, i32 30}
!217 = !{ptr @.str.86, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/ata/pata_hpt37x.c", i32 156, i32 2}
!219 = !{ptr @hpt302, !220, !"hpt302", i1 false, i1 false}
!220 = !{!"../drivers/ata/pata_hpt37x.c", i32 155, i32 30}
!221 = !{ptr @.str.87, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/ata/pata_hpt37x.c", i32 167, i32 2}
!223 = !{ptr @hpt371, !224, !"hpt371", i1 false, i1 false}
!224 = !{!"../drivers/ata/pata_hpt37x.c", i32 166, i32 30}
!225 = !{ptr @.str.88, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/ata/pata_hpt37x.c", i32 189, i32 2}
!227 = !{ptr @hpt374, !228, !"hpt374", i1 false, i1 false}
!228 = !{!"../drivers/ata/pata_hpt37x.c", i32 188, i32 30}
!229 = !{ptr @hpt37x_timings_66, !230, !"hpt37x_timings_66", i1 false, i1 false}
!230 = !{!"../drivers/ata/pata_hpt37x.c", i32 101, i32 25}
!231 = !{ptr @hpt37x_timings_50, !232, !"hpt37x_timings_50", i1 false, i1 false}
!232 = !{!"../drivers/ata/pata_hpt37x.c", i32 81, i32 25}
!233 = !{ptr @hpt37x_sht, !234, !"hpt37x_sht", i1 false, i1 false}
!234 = !{!"../drivers/ata/pata_hpt37x.c", i32 581, i32 34}
!235 = !{i32 1, !"wchar_size", i32 2}
!236 = !{i32 1, !"min_enum_size", i32 4}
!237 = !{i32 8, !"branch-target-enforcement", i32 0}
!238 = !{i32 8, !"sign-return-address", i32 0}
!239 = !{i32 8, !"sign-return-address-all", i32 0}
!240 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!241 = !{i32 7, !"uwtable", i32 1}
!242 = !{i32 7, !"frame-pointer", i32 2}
!243 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!244 = !{!"auto-init"}
!245 = !{i64 2155733283}
!246 = !{i64 5004317}
!247 = !{i64 5004932}
!248 = !{i64 2155728630}
!249 = !{i64 2155729296}
!250 = !{i64 2155734070}
!251 = !{i64 5004712}
!252 = !{i64 2152544057}
!253 = !{i64 2152545662}
!254 = !{i64 2155711203, i64 2155711693, i64 2155711240, i64 2155711296, i64 2155711330, i64 2155711354, i64 2155711395, i64 2155711416, i64 2155711444, i64 2155711478}
