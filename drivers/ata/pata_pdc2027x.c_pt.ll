; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_pdc2027x.c_pt.bc'
source_filename = "../drivers/ata/pata_pdc2027x.c"
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
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pdc2027x_pio_timing = type { i8, i8, i8 }
%struct.pdc2027x_udma_timing = type { i8, i8, i8 }
%struct.pdc2027x_mdma_timing = type { i8, i8 }
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
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author290 = internal constant [62 x i8] c"pata_pdc2027x.author=Andre Hedrick, Frank Tiernan, Albert Lee\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [80 x i8] c"pata_pdc2027x.description=libata driver module for Promise PDC20268 to PDC20277\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [45 x i8] c"pata_pdc2027x.file=drivers/ata/pata_pdc2027x\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [26 x i8] c"pata_pdc2027x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version294 = internal constant [26 x i8] c"pata_pdc2027x.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pata_pdc2027x\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__initcall__kmod_pata_pdc2027x__315_760_pdc2027x_pci_driver_init6 = internal global ptr @pdc2027x_pci_driver_init, section ".initcall6.init", align 4
@pdc2027x_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @pdc2027x_pci_tbl, ptr @pdc2027x_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @pdc2027x_reinit_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pdc2027x_pci_driver_exit = internal global ptr @pdc2027x_pci_driver_exit, section ".exitcall.exit", align 4
@pdc2027x_pci_tbl = internal constant { [8 x %struct.pci_device_id], [64 x i8] } { [8 x %struct.pci_device_id] [%struct.pci_device_id { i32 4186, i32 19816, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4186, i32 19817, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4186, i32 25192, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4186, i32 25193, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4186, i32 4725, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4186, i32 21109, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4186, i32 29301, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@pdc2027x_port_info = internal global { [2 x %struct.ata_port_info], [40 x i8] } { [2 x %struct.ata_port_info] [%struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 63, ptr @pdc2027x_pata100_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 127, ptr @pdc2027x_pata133_ops, ptr null }], [40 x i8] zeroinitializer }, align 32
@pdc2027x_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmio\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmd\00", [28 x i8] zeroinitializer }, align 32
@pdc2027x_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@pdc2027x_pata100_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr @pdc2027x_check_atapi_dma, ptr null, ptr null, ptr null, ptr @pdc2027x_cable_detect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc2027x_prereset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@pdc2027x_pata133_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc2027x_mode_filter, ptr @pdc2027x_set_piomode, ptr @pdc2027x_set_dmamode, ptr @pdc2027x_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc2027x_pata100_ops }, [44 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@pdc2027x_cable_detect.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pdc2027x_cable_detect\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/ata/pata_pdc2027x.c\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ata%u: No cable or 80-conductor cable\0A\00", [57 x i8] zeroinitializer }, align 32
@pdc2027x_cable_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016ata%u: pata_pdc2027x:40-conductor cable detected\0A\00", [44 x i8] zeroinitializer }, align 32
@pdc2027x_cable_detect._entry_ptr = internal global ptr @pdc2027x_cable_detect._entry, section ".printk_index", align 4
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Maxtor\00", [25 x i8] zeroinitializer }, align 32
@pdc2027x_set_piomode.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.6, ptr @.str.11, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pdc2027x_set_piomode\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ata%u: adev->pio_mode[%X]\0A\00", [37 x i8] zeroinitializer }, align 32
@pdc2027x_set_piomode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.6, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ata%u: Unknown pio mode [%d] ignored\0A\00", [56 x i8] zeroinitializer }, align 32
@pdc2027x_set_piomode._entry_ptr = internal global ptr @pdc2027x_set_piomode._entry, section ".printk_index", align 4
@pdc2027x_set_piomode.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.6, ptr @.str.13, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ata%u: Set pio regs... \0A\00", [39 x i8] zeroinitializer }, align 32
@pdc2027x_pio_timing_tbl = internal constant { [5 x %struct.pdc2027x_pio_timing], [17 x i8] } { [5 x %struct.pdc2027x_pio_timing] [%struct.pdc2027x_pio_timing { i8 -5, i8 43, i8 -84 }, %struct.pdc2027x_pio_timing { i8 70, i8 41, i8 -92 }, %struct.pdc2027x_pio_timing { i8 35, i8 38, i8 100 }, %struct.pdc2027x_pio_timing { i8 39, i8 13, i8 53 }, %struct.pdc2027x_pio_timing { i8 35, i8 9, i8 37 }], [17 x i8] zeroinitializer }, align 32
@pdc2027x_set_piomode.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.6, ptr @.str.14, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ata%u: Set to pio mode[%u] \0A\00", [35 x i8] zeroinitializer }, align 32
@pdc2027x_set_dmamode.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.6, ptr @.str.16, i8 0, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pdc2027x_set_dmamode\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ata%u: Set udma regs... \0A\00", [38 x i8] zeroinitializer }, align 32
@pdc2027x_udma_timing_tbl = internal constant { [7 x %struct.pdc2027x_udma_timing], [43 x i8] } { [7 x %struct.pdc2027x_udma_timing] [%struct.pdc2027x_udma_timing { i8 74, i8 15, i8 -43 }, %struct.pdc2027x_udma_timing { i8 58, i8 10, i8 -48 }, %struct.pdc2027x_udma_timing { i8 42, i8 7, i8 -51 }, %struct.pdc2027x_udma_timing { i8 26, i8 5, i8 -51 }, %struct.pdc2027x_udma_timing { i8 26, i8 3, i8 -51 }, %struct.pdc2027x_udma_timing { i8 26, i8 2, i8 -53 }, %struct.pdc2027x_udma_timing { i8 26, i8 1, i8 -53 }], [43 x i8] zeroinitializer }, align 32
@pdc2027x_set_dmamode.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.6, ptr @.str.17, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ata%u: Set to udma mode[%u] \0A\00", [34 x i8] zeroinitializer }, align 32
@pdc2027x_set_dmamode.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.6, ptr @.str.18, i8 0, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ata%u: Set mdma regs... \0A\00", [38 x i8] zeroinitializer }, align 32
@pdc2027x_mdma_timing_tbl = internal constant { [3 x %struct.pdc2027x_mdma_timing], [26 x i8] } { [3 x %struct.pdc2027x_mdma_timing] [%struct.pdc2027x_mdma_timing { i8 -33, i8 95 }, %struct.pdc2027x_mdma_timing { i8 107, i8 39 }, %struct.pdc2027x_mdma_timing { i8 105, i8 37 }], [26 x i8] zeroinitializer }, align 32
@pdc2027x_set_dmamode.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.6, ptr @.str.19, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ata%u: Set to mdma mode[%u] \0A\00", [34 x i8] zeroinitializer }, align 32
@pdc2027x_set_dmamode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.6, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ata%u: Unknown dma mode [%u] ignored\0A\00", [56 x i8] zeroinitializer }, align 32
@pdc2027x_set_dmamode._entry_ptr = internal global ptr @pdc2027x_set_dmamode._entry, section ".printk_index", align 4
@pdc2027x_set_mode.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.6, ptr @.str.22, i8 0, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pdc2027x_set_mode\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ata%u.%02u: Turn on prefetch\0A\00", [34 x i8] zeroinitializer }, align 32
@pdc_hardware_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.6, i32 643, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PLL input clock %ld kHz\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pdc_hardware_init\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pdc_hardware_init._entry_ptr = internal global ptr @pdc_hardware_init._entry, section ".printk_index", align 4
@pdc_detect_pll_input_clock.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.6, ptr @.str.28, i8 0, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pdc_detect_pll_input_clock\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"scr[%X]\0A\00", [23 x i8] zeroinitializer }, align 32
@pdc_detect_pll_input_clock.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.6, ptr @.str.28, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@pdc_detect_pll_input_clock.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.6, ptr @.str.29, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"start[%ld] end[%ld] PLL input clock[%ld]HZ\0A\00", [52 x i8] zeroinitializer }, align 32
@pdc_read_counter.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.6, ptr @.str.31, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pdc_read_counter\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bccrh [%X] bccrl [%X]\0A\00", [41 x i8] zeroinitializer }, align 32
@pdc_read_counter.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.6, ptr @.str.32, i8 0, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bccrhv[%X] bccrlv[%X]\0A\00", [41 x i8] zeroinitializer }, align 32
@pdc_read_counter.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.6, ptr @.str.33, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rereading counter\0A\00", [45 x i8] zeroinitializer }, align 32
@pdc_adjust_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.6, i32 512, ptr @.str.36, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Invalid PLL input clock %ldkHz, give up!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pdc_adjust_pll\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pdc_adjust_pll._entry_ptr = internal global ptr @pdc_adjust_pll._entry, section ".printk_index", align 4
@pdc_adjust_pll.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.6, ptr @.str.37, i8 0, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pout_required is %ld\0A\00", [42 x i8] zeroinitializer }, align 32
@pdc_adjust_pll.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.6, ptr @.str.38, i8 0, i8 -126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pll_ctl[%X]\0A\00", [19 x i8] zeroinitializer }, align 32
@pdc_adjust_pll._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.6, i32 542, ptr @.str.36, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid ratio %ld, give up!\0A\00", [35 x i8] zeroinitializer }, align 32
@pdc_adjust_pll._entry_ptr.41 = internal global ptr @pdc_adjust_pll._entry.39, section ".printk_index", align 4
@pdc_adjust_pll._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.6, i32 550, ptr @.str.36, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"F[%d] invalid!\0A\00", [16 x i8] zeroinitializer }, align 32
@pdc_adjust_pll._entry_ptr.44 = internal global ptr @pdc_adjust_pll._entry.42, section ".printk_index", align 4
@pdc_adjust_pll.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.6, ptr @.str.45, i8 0, i8 -118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"F[%d] R[%d] ratio*1000[%ld]\0A\00", [35 x i8] zeroinitializer }, align 32
@pdc_adjust_pll.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.6, ptr @.str.46, i8 0, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Writing pll_ctl[%X]\0A\00", [43 x i8] zeroinitializer }, align 32
@pdc_adjust_pll.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.6, ptr @.str.38, i8 0, i8 -113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 8, i64 10, i64 40, i64 42, i64 168, i64 170, i64 173, i64 190]
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 166, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"pdc2027x_pci_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 114, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"pdc2027x_pci_tbl\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 102, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant [19 x i8] c"pdc2027x_port_info\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 144, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant [31 x i8] c"pdc2027x_init_one.__print_once\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 722, i32 44 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 723, i32 55 }
@___asan_gen_.72 = private unnamed_addr constant [13 x i8] c"pdc2027x_sht\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 125, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant [21 x i8] c"pdc2027x_pata100_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 129, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant [21 x i8] c"pdc2027x_pata133_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 136, i32 35 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 210, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 214, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 266, i32 24 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 288, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 292, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 298, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [24 x i8] c"pdc2027x_pio_timing_tbl\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 74, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 311, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 344, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [25 x i8] c"pdc2027x_udma_timing_tbl\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 92, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 353, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 360, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [25 x i8] c"pdc2027x_mdma_timing_tbl\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 84, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 369, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 371, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 405, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 643, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 593, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 620, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 476, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 477, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 486, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 511, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 516, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 523, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 542, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 550, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 554, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.223 = private constant [31 x i8] c"../drivers/ata/pata_pdc2027x.c\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 558, i32 2 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_version294, ptr @__exitcall_pdc2027x_pci_driver_exit, ptr @__initcall__kmod_pata_pdc2027x__315_760_pdc2027x_pci_driver_init6, ptr @__modver_attr, ptr @pdc2027x_cable_detect._entry, ptr @pdc2027x_cable_detect._entry_ptr, ptr @pdc2027x_pci_driver_exit, ptr @pdc2027x_set_dmamode._entry, ptr @pdc2027x_set_dmamode._entry_ptr, ptr @pdc2027x_set_piomode._entry, ptr @pdc2027x_set_piomode._entry_ptr, ptr @pdc_adjust_pll._entry, ptr @pdc_adjust_pll._entry.39, ptr @pdc_adjust_pll._entry.42, ptr @pdc_adjust_pll._entry_ptr, ptr @pdc_adjust_pll._entry_ptr.41, ptr @pdc_adjust_pll._entry_ptr.44, ptr @pdc_hardware_init._entry, ptr @pdc_hardware_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @pdc2027x_pci_driver, ptr @pdc2027x_pci_tbl, ptr @pdc2027x_port_info, ptr @pdc2027x_init_one.__print_once, ptr @.str.3, ptr @.str.4, ptr @pdc2027x_sht, ptr @pdc2027x_pata100_ops, ptr @pdc2027x_pata133_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @pdc2027x_pio_timing_tbl, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @pdc2027x_udma_timing_tbl, ptr @.str.17, ptr @.str.18, ptr @pdc2027x_mdma_timing_tbl, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc2027x_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc2027x_pci_tbl to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc2027x_port_info to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc2027x_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc2027x_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc2027x_pata100_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc2027x_pata133_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc2027x_cable_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc2027x_set_piomode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc2027x_pio_timing_tbl to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc2027x_udma_timing_tbl to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc2027x_mdma_timing_tbl to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc2027x_set_dmamode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_hardware_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_adjust_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_adjust_pll._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc_adjust_pll._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc2027x_pci_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pdc2027x_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pdc2027x_pci_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @pdc2027x_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc2027x_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #8
  %2 = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %arrayidx = getelementptr [2 x %struct.ata_port_info], ptr @pdc2027x_port_info, i32 0, i32 %1
  %3 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %ppi, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %2, align 4
  %.b60 = load i1, ptr @pdc2027x_init_one.__print_once, align 1
  br i1 %.b60, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @pdc2027x_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = call ptr @ata_host_alloc_pinfo(ptr noundef %dev1, ptr noundef nonnull %ppi, i32 noundef 2) #8
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @pcim_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 32, ptr noundef nonnull @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = call ptr @pcim_iomap_table(ptr noundef %pdev) #8
  %iomap = getelementptr inbounds %struct.ata_host, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %iomap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %iomap, align 4
  %call.i = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end18, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #8
  %6 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomap, align 4
  %arrayidx20 = getelementptr ptr, ptr %7, i32 5
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx20, align 4
  %arrayidx21 = getelementptr %struct.ata_host, ptr %call, i32 0, i32 12, i32 0
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx21, align 4
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8
  %add.ptr = getelementptr i8, ptr %9, i32 6080
  %data_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %data_addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %data_addr.i, align 4
  %13 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %ioaddr, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 6085
  %error_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 2
  %14 = ptrtoint ptr %error_addr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i, ptr %error_addr.i, align 4
  %feature_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 3
  %15 = ptrtoint ptr %feature_addr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i, ptr %feature_addr.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %9, i32 6090
  %nsect_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 4
  %16 = ptrtoint ptr %nsect_addr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr1.i, ptr %nsect_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %9, i32 6095
  %lbal_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 5
  %17 = ptrtoint ptr %lbal_addr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr2.i, ptr %lbal_addr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %9, i32 6096
  %lbam_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 6
  %18 = ptrtoint ptr %lbam_addr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr3.i, ptr %lbam_addr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %9, i32 6101
  %lbah_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 7
  %19 = ptrtoint ptr %lbah_addr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr4.i, ptr %lbah_addr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %9, i32 6106
  %device_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 8
  %20 = ptrtoint ptr %device_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr5.i, ptr %device_addr.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %9, i32 6111
  %status_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 9
  %21 = ptrtoint ptr %status_addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr6.i, ptr %status_addr.i, align 4
  %command_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 10
  %22 = ptrtoint ptr %command_addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr6.i, ptr %command_addr.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %9, i32 8154
  %ctl_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 12
  %23 = ptrtoint ptr %ctl_addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr7.i, ptr %ctl_addr.i, align 4
  %altstatus_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 11
  %24 = ptrtoint ptr %altstatus_addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr7.i, ptr %altstatus_addr.i, align 4
  %add.ptr24 = getelementptr i8, ptr %9, i32 4096
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 13
  %25 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr24, ptr %bmdma_addr, align 4
  call void @ata_port_pbar_desc(ptr noundef %11, i32 noundef 5, i32 noundef -1, ptr noundef nonnull @.str.3) #8
  call void @ata_port_pbar_desc(ptr noundef %11, i32 noundef 5, i32 noundef 6080, ptr noundef nonnull @.str.4) #8
  %arrayidx21.1 = getelementptr %struct.ata_host, ptr %call, i32 0, i32 12, i32 1
  %26 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx21.1, align 4
  %ioaddr.1 = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 8
  %add.ptr.1 = getelementptr i8, ptr %9, i32 5568
  %data_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %data_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.1, ptr %data_addr.i.1, align 4
  %29 = ptrtoint ptr %ioaddr.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr.1, ptr %ioaddr.1, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %9, i32 5573
  %error_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 8, i32 2
  %30 = ptrtoint ptr %error_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i.1, ptr %error_addr.i.1, align 4
  %feature_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 8, i32 3
  %31 = ptrtoint ptr %feature_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr.i.1, ptr %feature_addr.i.1, align 4
  %add.ptr1.i.1 = getelementptr i8, ptr %9, i32 5578
  %nsect_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 8, i32 4
  %32 = ptrtoint ptr %nsect_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr1.i.1, ptr %nsect_addr.i.1, align 4
  %add.ptr2.i.1 = getelementptr i8, ptr %9, i32 5583
  %lbal_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 8, i32 5
  %33 = ptrtoint ptr %lbal_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr2.i.1, ptr %lbal_addr.i.1, align 4
  %add.ptr3.i.1 = getelementptr i8, ptr %9, i32 5584
  %lbam_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 8, i32 6
  %34 = ptrtoint ptr %lbam_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr3.i.1, ptr %lbam_addr.i.1, align 4
  %add.ptr4.i.1 = getelementptr i8, ptr %9, i32 5589
  %lbah_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 8, i32 7
  %35 = ptrtoint ptr %lbah_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr4.i.1, ptr %lbah_addr.i.1, align 4
  %add.ptr5.i.1 = getelementptr i8, ptr %9, i32 5594
  %device_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 8, i32 8
  %36 = ptrtoint ptr %device_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr5.i.1, ptr %device_addr.i.1, align 4
  %add.ptr6.i.1 = getelementptr i8, ptr %9, i32 5599
  %status_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 8, i32 9
  %37 = ptrtoint ptr %status_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr6.i.1, ptr %status_addr.i.1, align 4
  %command_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 8, i32 10
  %38 = ptrtoint ptr %command_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr6.i.1, ptr %command_addr.i.1, align 4
  %add.ptr7.i.1 = getelementptr i8, ptr %9, i32 7642
  %ctl_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 8, i32 12
  %39 = ptrtoint ptr %ctl_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr7.i.1, ptr %ctl_addr.i.1, align 4
  %altstatus_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 8, i32 11
  %40 = ptrtoint ptr %altstatus_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr7.i.1, ptr %altstatus_addr.i.1, align 4
  %add.ptr24.1 = getelementptr i8, ptr %9, i32 4104
  %bmdma_addr.1 = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 8, i32 13
  %41 = ptrtoint ptr %bmdma_addr.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr24.1, ptr %bmdma_addr.1, align 4
  call void @ata_port_pbar_desc(ptr noundef %27, i32 noundef 5, i32 noundef -1, ptr noundef nonnull @.str.3) #8
  call void @ata_port_pbar_desc(ptr noundef %27, i32 noundef 5, i32 noundef 5568, ptr noundef nonnull @.str.4) #8
  %call.i61 = call fastcc i32 @pdc_detect_pll_input_clock(ptr noundef nonnull %call) #8
  %dev.i = getelementptr inbounds %struct.ata_host, ptr %call, i32 0, i32 1
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  %div.i = sdiv i32 %call.i61, 1000
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.23, i32 noundef %div.i) #11
  call fastcc void @pdc_adjust_pll(ptr noundef nonnull %call, i32 noundef %call.i61, i32 noundef %1) #8
  call void @pci_set_master(ptr noundef %pdev) #8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq, align 4
  %call27 = call i32 @ata_host_activate(ptr noundef nonnull %call, i32 noundef %45, ptr noundef nonnull @ata_bmdma_interrupt, i32 noundef 128, ptr noundef nonnull @pdc2027x_sht) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.end18 ], [ -12, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call.i, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc2027x_reinit_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @ata_pci_device_do_resume(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 19816, i16 %3)
  %switch.selectcmp.case1 = icmp ne i16 %3, 19816
  call void @__sanitizer_cov_trace_const_cmp2(i16 25192, i16 %3)
  %switch.selectcmp.case2 = icmp ne i16 %3, 25192
  %not.switch.selectcmp = and i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %4 = zext i1 %not.switch.selectcmp to i32
  %call.i = tail call fastcc i32 @pdc_detect_pll_input_clock(ptr noundef %1) #8
  %dev.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %div.i = sdiv i32 %call.i, 1000
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.23, i32 noundef %div.i) #11
  tail call fastcc void @pdc_adjust_pll(ptr noundef %1, i32 noundef %call.i, i32 noundef %4) #8
  tail call void @ata_host_resume(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_pbar_desc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_interrupt(i32 noundef, ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pdc2027x_check_atapi_dma(ptr nocapture noundef readonly %qc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %scsicmd = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 2
  %0 = ptrtoint ptr %scsicmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scsicmd, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmnd, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %entry.sw.epilog_crit_edge [
    i8 40, label %entry.sw.bb_crit_edge
    i8 42, label %entry.sw.bb_crit_edge2
    i8 -88, label %entry.sw.bb_crit_edge3
    i8 -86, label %entry.sw.bb_crit_edge4
    i8 8, label %entry.sw.bb_crit_edge5
    i8 10, label %entry.sw.bb_crit_edge6
    i8 -83, label %entry.sw.bb_crit_edge7
    i8 -66, label %entry.sw.bb_crit_edge8
  ]

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge5:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge4:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge3:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge2:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge2, %entry.sw.bb_crit_edge3, %entry.sw.bb_crit_edge4, %entry.sw.bb_crit_edge5, %entry.sw.bb_crit_edge6, %entry.sw.bb_crit_edge7, %entry.sw.bb_crit_edge8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ 1, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc2027x_cable_detect(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 5
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %7, 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 4360
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.body, label %do.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc2027x_cable_detect.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc2027x_cable_detect, %if.then6)) #8
          to label %cleanup [label %if.then6], !srcloc !155

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %10 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %print_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc2027x_cable_detect.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.7, i32 noundef %11) #8
  br label %cleanup

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %print_id12 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %12 = ptrtoint ptr %print_id12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %print_id12, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %13) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.then6, %do.body
  %retval.0 = phi i32 [ 1, %do.end10 ], [ 2, %if.then6 ], [ 2, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc2027x_prereset(ptr noundef %link, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i.i, align 4
  %iomap.i.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomap.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %5, i32 5
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i = shl i32 %9, 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %mul.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4356
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i.i) #8, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  %11 = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @ata_sff_prereset(ptr noundef %link, i32 noundef %deadline) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_prereset(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc2027x_mode_filter(ptr noundef %adev, i32 noundef %mask) #2 align 64 {
entry:
  %model_num = alloca [41 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %model_num) #8
  %0 = call ptr @memset(ptr %model_num, i32 255, i32 41)
  %call = tail call ptr @ata_dev_pair(ptr noundef %adev) #8
  %class = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 9
  %1 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %3 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp eq i32 %4, 0
  %cmp3 = icmp eq ptr %call, null
  %or.cond = select i1 %cmp1, i1 true, i1 %cmp3
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = getelementptr inbounds %struct.ata_device, ptr %call, i32 0, i32 25
  call void @ata_id_c_string(ptr noundef %5, ptr noundef nonnull %model_num, i32 noundef 27, i32 noundef 41) #8
  %call6 = call ptr @strstr(ptr noundef nonnull %model_num, ptr noundef nonnull @.str.9)
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %call, i32 0, i32 12
  %6 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dma_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 70, i8 %7)
  %cmp8 = icmp eq i8 %7, 70
  %and = and i32 %mask, -262145
  %spec.select = select i1 %cmp8, i32 %and, i32 %mask
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mask, %lor.lhs.false.cleanup_crit_edge ], [ %mask, %entry.cleanup_crit_edge ], [ %mask, %if.end.cleanup_crit_edge ], [ %spec.select, %land.lhs.true ]
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %model_num) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc2027x_set_piomode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %1 to i32
  %sub = add nsw i32 %conv, -8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc2027x_set_piomode.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc2027x_set_piomode, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !155

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %2 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %print_id, align 4
  %4 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pio_mode, align 16
  %conv4 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc2027x_set_piomode.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.11, i32 noundef %3, i32 noundef %conv4) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp = icmp ugt i32 %sub, 4
  br i1 %cmp, label %do.end9, label %do.body14

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %print_id11 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %6 = ptrtoint ptr %print_id11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %print_id11, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %7, i32 noundef %sub) #11
  br label %cleanup

do.body14:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc2027x_set_piomode.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc2027x_set_piomode, %if.then26)) #8
          to label %do.end30 [label %if.then26], !srcloc !155

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %print_id27 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %8 = ptrtoint ptr %print_id27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %print_id27, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc2027x_set_piomode.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.13, i32 noundef %9) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.body14
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %10 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %12 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host.i.i, align 4
  %iomap.i.i = getelementptr inbounds %struct.ata_host, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iomap.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %15, i32 5
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %18 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i = shl i32 %19, 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %mul.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4364
  %conv1.i = select i1 %tobool.not.i, i32 0, i32 8
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %conv1.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %21 = and i32 %20, 65535
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %arrayidx = getelementptr [5 x %struct.pdc2027x_pio_timing], ptr @pdc2027x_pio_timing_tbl, i32 0, i32 %sub
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  %conv33 = zext i8 %24 to i32
  %value1 = getelementptr [5 x %struct.pdc2027x_pio_timing], ptr @pdc2027x_pio_timing_tbl, i32 0, i32 %sub, i32 1
  %25 = ptrtoint ptr %value1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %value1, align 1
  %conv35 = zext i8 %26 to i32
  %shl = shl nuw nsw i32 %conv35, 8
  %or = or i32 %22, %conv33
  %or36 = or i32 %or, %shl
  %27 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %devno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i93 = icmp eq i32 %28, 0
  %29 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host.i.i, align 4
  %iomap.i.i95 = getelementptr inbounds %struct.ata_host, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %iomap.i.i95 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iomap.i.i95, align 4
  %arrayidx.i.i96 = getelementptr ptr, ptr %32, i32 5
  %33 = ptrtoint ptr %arrayidx.i.i96 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i96, align 4
  %35 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i98 = shl i32 %36, 8
  %add.ptr.i.i99 = getelementptr i8, ptr %34, i32 %mul.i.i98
  %add.ptr1.i.i100 = getelementptr i8, ptr %add.ptr.i.i99, i32 4364
  %conv1.i101 = select i1 %tobool.not.i93, i32 0, i32 8
  %add.ptr.i102 = getelementptr i8, ptr %add.ptr1.i.i100, i32 %conv1.i101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  %37 = tail call i32 @llvm.bswap.i32(i32 %or36) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %37) #8, !srcloc !159
  %38 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %devno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i104 = icmp eq i32 %39, 0
  %40 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %host.i.i, align 4
  %iomap.i.i106 = getelementptr inbounds %struct.ata_host, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %iomap.i.i106 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iomap.i.i106, align 4
  %arrayidx.i.i107 = getelementptr ptr, ptr %43, i32 5
  %44 = ptrtoint ptr %arrayidx.i.i107 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i107, align 4
  %46 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i109 = shl i32 %47, 8
  %add.ptr.i.i110 = getelementptr i8, ptr %45, i32 %mul.i.i109
  %add.ptr1.i.i111 = getelementptr i8, ptr %add.ptr.i.i110, i32 4368
  %conv1.i112 = select i1 %tobool.not.i104, i32 0, i32 8
  %add.ptr.i113 = getelementptr i8, ptr %add.ptr1.i.i111, i32 %conv1.i112
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %49 = and i32 %48, -256
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %value2 = getelementptr [5 x %struct.pdc2027x_pio_timing], ptr @pdc2027x_pio_timing_tbl, i32 0, i32 %sub, i32 2
  %51 = ptrtoint ptr %value2 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %value2, align 1
  %conv42 = zext i8 %52 to i32
  %shl43 = shl nuw i32 %conv42, 24
  %or44 = or i32 %shl43, %50
  %53 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %devno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i115 = icmp eq i32 %54, 0
  %55 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %host.i.i, align 4
  %iomap.i.i117 = getelementptr inbounds %struct.ata_host, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %iomap.i.i117 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %iomap.i.i117, align 4
  %arrayidx.i.i118 = getelementptr ptr, ptr %58, i32 5
  %59 = ptrtoint ptr %arrayidx.i.i118 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i118, align 4
  %61 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i120 = shl i32 %62, 8
  %add.ptr.i.i121 = getelementptr i8, ptr %60, i32 %mul.i.i120
  %add.ptr1.i.i122 = getelementptr i8, ptr %add.ptr.i.i121, i32 4368
  %conv1.i123 = select i1 %tobool.not.i115, i32 0, i32 8
  %add.ptr.i124 = getelementptr i8, ptr %add.ptr1.i.i122, i32 %conv1.i123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  %63 = tail call i32 @llvm.bswap.i32(i32 %or44) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 %63) #8, !srcloc !159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc2027x_set_piomode.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc2027x_set_piomode, %if.then58)) #8
          to label %cleanup [label %if.then58], !srcloc !155

if.then58:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  %print_id59 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %64 = ptrtoint ptr %print_id59 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %print_id59, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc2027x_set_piomode.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.14, i32 noundef %65, i32 noundef %sub) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %do.end30, %do.end9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc2027x_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_mode1 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %0 = ptrtoint ptr %dma_mode1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma_mode1, align 1
  %conv = zext i8 %1 to i32
  %2 = add i8 %1, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %2)
  %3 = icmp ult i8 %2, 7
  br i1 %3, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %and = and i32 %conv, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %1)
  %cmp5 = icmp eq i8 %1, 66
  br i1 %cmp5, label %if.then7, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %4 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %6 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host.i.i, align 4
  %iomap.i.i = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomap.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %9, i32 5
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %12 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i = shl i32 %13, 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %mul.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4368
  %conv1.i = select i1 %tobool.not.i, i32 0, i32 8
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %conv1.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %15 = and i32 %14, 2147483647
  %16 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %devno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i153 = icmp eq i32 %17, 0
  %18 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host.i.i, align 4
  %iomap.i.i155 = getelementptr inbounds %struct.ata_host, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %iomap.i.i155 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iomap.i.i155, align 4
  %arrayidx.i.i156 = getelementptr ptr, ptr %21, i32 5
  %22 = ptrtoint ptr %arrayidx.i.i156 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i156, align 4
  %24 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i158 = shl i32 %25, 8
  %add.ptr.i.i159 = getelementptr i8, ptr %23, i32 %mul.i.i158
  %add.ptr1.i.i160 = getelementptr i8, ptr %add.ptr.i.i159, i32 4368
  %conv1.i161 = select i1 %tobool.not.i153, i32 0, i32 8
  %add.ptr.i162 = getelementptr i8, ptr %add.ptr1.i.i160, i32 %conv1.i161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 %15) #8, !srcloc !159
  br label %do.body

do.body:                                          ; preds = %if.then7, %if.then.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc2027x_set_dmamode.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc2027x_set_dmamode, %if.then14)) #8
          to label %do.end [label %if.then14], !srcloc !155

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %26 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %print_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc2027x_set_dmamode.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.16, i32 noundef %27) #8
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %devno.i163 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %28 = ptrtoint ptr %devno.i163 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %devno.i163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i164 = icmp eq i32 %29, 0
  %host.i.i165 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %30 = ptrtoint ptr %host.i.i165 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %host.i.i165, align 4
  %iomap.i.i166 = getelementptr inbounds %struct.ata_host, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %iomap.i.i166 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iomap.i.i166, align 4
  %arrayidx.i.i167 = getelementptr ptr, ptr %33, i32 5
  %34 = ptrtoint ptr %arrayidx.i.i167 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i167, align 4
  %port_no.i.i168 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %36 = ptrtoint ptr %port_no.i.i168 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port_no.i.i168, align 4
  %mul.i.i169 = shl i32 %37, 8
  %add.ptr.i.i170 = getelementptr i8, ptr %35, i32 %mul.i.i169
  %add.ptr1.i.i171 = getelementptr i8, ptr %add.ptr.i.i170, i32 4368
  %conv1.i172 = select i1 %tobool.not.i164, i32 0, i32 8
  %add.ptr.i173 = getelementptr i8, ptr %add.ptr1.i.i171, i32 %conv1.i172
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i173) #8, !srcloc !153
  %39 = shl i32 %38, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %arrayidx = getelementptr [7 x %struct.pdc2027x_udma_timing], ptr @pdc2027x_udma_timing_tbl, i32 0, i32 %and
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx, align 1
  %conv19 = zext i8 %41 to i32
  %value1 = getelementptr [7 x %struct.pdc2027x_udma_timing], ptr @pdc2027x_udma_timing_tbl, i32 0, i32 %and, i32 1
  %42 = ptrtoint ptr %value1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %value1, align 1
  %conv21 = zext i8 %43 to i32
  %shl = shl nuw nsw i32 %conv21, 8
  %or = or i32 %shl, %conv19
  %value2 = getelementptr [7 x %struct.pdc2027x_udma_timing], ptr @pdc2027x_udma_timing_tbl, i32 0, i32 %and, i32 2
  %44 = ptrtoint ptr %value2 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %value2, align 1
  %conv23 = zext i8 %45 to i32
  %shl24 = shl nuw nsw i32 %conv23, 16
  %or25 = or i32 %or, %shl24
  %or26 = or i32 %or25, %39
  %46 = ptrtoint ptr %devno.i163 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %devno.i163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i175 = icmp eq i32 %47, 0
  %48 = ptrtoint ptr %host.i.i165 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %host.i.i165, align 4
  %iomap.i.i177 = getelementptr inbounds %struct.ata_host, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %iomap.i.i177 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iomap.i.i177, align 4
  %arrayidx.i.i178 = getelementptr ptr, ptr %51, i32 5
  %52 = ptrtoint ptr %arrayidx.i.i178 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.i178, align 4
  %54 = ptrtoint ptr %port_no.i.i168 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port_no.i.i168, align 4
  %mul.i.i180 = shl i32 %55, 8
  %add.ptr.i.i181 = getelementptr i8, ptr %53, i32 %mul.i.i180
  %add.ptr1.i.i182 = getelementptr i8, ptr %add.ptr.i.i181, i32 4368
  %conv1.i183 = select i1 %tobool.not.i175, i32 0, i32 8
  %add.ptr.i184 = getelementptr i8, ptr %add.ptr1.i.i182, i32 %conv1.i183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  %56 = tail call i32 @llvm.bswap.i32(i32 %or26) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184, i32 %56) #8, !srcloc !159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc2027x_set_dmamode.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc2027x_set_dmamode, %if.then40)) #8
          to label %if.end108 [label %if.then40], !srcloc !155

if.then40:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %print_id41 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %57 = ptrtoint ptr %print_id41 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %print_id41, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc2027x_set_dmamode.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.17, i32 noundef %58, i32 noundef %and) #8
  br label %if.end108

if.else:                                          ; preds = %entry
  %59 = add i8 %1, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %59)
  %60 = icmp ult i8 %59, 3
  br i1 %60, label %if.then50, label %do.end103

if.then50:                                        ; preds = %if.else
  %and51 = and i32 %conv, 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc2027x_set_dmamode.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc2027x_set_dmamode, %if.then64)) #8
          to label %do.end68 [label %if.then64], !srcloc !155

if.then64:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %print_id65 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %61 = ptrtoint ptr %print_id65 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %print_id65, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc2027x_set_dmamode.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.18, i32 noundef %62) #8
  br label %do.end68

do.end68:                                         ; preds = %if.then64, %if.then50
  %devno.i185 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %63 = ptrtoint ptr %devno.i185 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %devno.i185, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i186 = icmp eq i32 %64, 0
  %host.i.i187 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %65 = ptrtoint ptr %host.i.i187 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %host.i.i187, align 4
  %iomap.i.i188 = getelementptr inbounds %struct.ata_host, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %iomap.i.i188 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %iomap.i.i188, align 4
  %arrayidx.i.i189 = getelementptr ptr, ptr %68, i32 5
  %69 = ptrtoint ptr %arrayidx.i.i189 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i.i189, align 4
  %port_no.i.i190 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %71 = ptrtoint ptr %port_no.i.i190 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port_no.i.i190, align 4
  %mul.i.i191 = shl i32 %72, 8
  %add.ptr.i.i192 = getelementptr i8, ptr %70, i32 %mul.i.i191
  %add.ptr1.i.i193 = getelementptr i8, ptr %add.ptr.i.i192, i32 4364
  %conv1.i194 = select i1 %tobool.not.i186, i32 0, i32 8
  %add.ptr.i195 = getelementptr i8, ptr %add.ptr1.i.i193, i32 %conv1.i194
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i195) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %74 = and i32 %73, -65536
  %75 = tail call i32 @llvm.bswap.i32(i32 %74)
  %arrayidx72 = getelementptr [3 x %struct.pdc2027x_mdma_timing], ptr @pdc2027x_mdma_timing_tbl, i32 0, i32 %and51
  %76 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx72, align 1
  %conv74 = zext i8 %77 to i32
  %shl75 = shl nuw nsw i32 %conv74, 16
  %value177 = getelementptr [3 x %struct.pdc2027x_mdma_timing], ptr @pdc2027x_mdma_timing_tbl, i32 0, i32 %and51, i32 1
  %78 = ptrtoint ptr %value177 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %value177, align 1
  %conv78 = zext i8 %79 to i32
  %shl79 = shl nuw i32 %conv78, 24
  %or80 = or i32 %shl75, %75
  %or81 = or i32 %or80, %shl79
  %80 = ptrtoint ptr %devno.i185 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %devno.i185, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i197 = icmp eq i32 %81, 0
  %82 = ptrtoint ptr %host.i.i187 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %host.i.i187, align 4
  %iomap.i.i199 = getelementptr inbounds %struct.ata_host, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %iomap.i.i199 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %iomap.i.i199, align 4
  %arrayidx.i.i200 = getelementptr ptr, ptr %85, i32 5
  %86 = ptrtoint ptr %arrayidx.i.i200 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i.i200, align 4
  %88 = ptrtoint ptr %port_no.i.i190 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port_no.i.i190, align 4
  %mul.i.i202 = shl i32 %89, 8
  %add.ptr.i.i203 = getelementptr i8, ptr %87, i32 %mul.i.i202
  %add.ptr1.i.i204 = getelementptr i8, ptr %add.ptr.i.i203, i32 4364
  %conv1.i205 = select i1 %tobool.not.i197, i32 0, i32 8
  %add.ptr.i206 = getelementptr i8, ptr %add.ptr1.i.i204, i32 %conv1.i205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  %90 = tail call i32 @llvm.bswap.i32(i32 %or81) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 %90) #8, !srcloc !159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc2027x_set_dmamode.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc2027x_set_dmamode, %if.then95)) #8
          to label %if.end108 [label %if.then95], !srcloc !155

if.then95:                                        ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #10
  %print_id96 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %91 = ptrtoint ptr %print_id96 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %print_id96, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc2027x_set_dmamode.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.19, i32 noundef %92, i32 noundef %and51) #8
  br label %if.end108

do.end103:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %print_id105 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %93 = ptrtoint ptr %print_id105 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %print_id105, align 4
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %94, i32 noundef %conv) #11
  br label %if.end108

if.end108:                                        ; preds = %do.end103, %if.then95, %do.end68, %if.then40, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc2027x_set_mode(ptr noundef %link, ptr noundef %r_failed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %call = tail call i32 @ata_do_set_mode(ptr noundef %link, ptr noundef %r_failed) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %link, i32 noundef 0) #8
  %tobool.not50 = icmp eq ptr %call2, null
  br i1 %tobool.not50, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dev.051 = phi ptr [ %call2, %for.body.lr.ph ], [ %call18, %for.inc.for.body_crit_edge ]
  tail call void @pdc2027x_set_piomode(ptr noundef %1, ptr noundef nonnull %dev.051)
  %xfer_shift = getelementptr inbounds %struct.ata_device, ptr %dev.051, i32 0, i32 14
  %2 = ptrtoint ptr %xfer_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xfer_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3 = icmp eq i32 %3, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %dev.051, i32 0, i32 1
  %4 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %6 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host.i.i, align 4
  %iomap.i.i = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomap.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %9, i32 5
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %12 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i = shl i32 %13, 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4368
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %conv1.i = select i1 %tobool.not.i, i32 0, i32 8
  %add.ptr.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %conv1.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %15 = or i32 %14, 2
  %16 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %devno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i39 = icmp eq i32 %17, 0
  %18 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host.i.i, align 4
  %iomap.i.i41 = getelementptr inbounds %struct.ata_host, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %iomap.i.i41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iomap.i.i41, align 4
  %arrayidx.i.i42 = getelementptr ptr, ptr %21, i32 5
  %22 = ptrtoint ptr %arrayidx.i.i42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i42, align 4
  %24 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i44 = shl i32 %25, 8
  %add.ptr.i.i45 = getelementptr i8, ptr %23, i32 4368
  %add.ptr1.i.i46 = getelementptr i8, ptr %add.ptr.i.i45, i32 %mul.i.i44
  %conv1.i47 = select i1 %tobool.not.i39, i32 0, i32 8
  %add.ptr.i48 = getelementptr i8, ptr %add.ptr1.i.i46, i32 %conv1.i47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %15) #8, !srcloc !159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc2027x_set_mode.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc2027x_set_mode, %if.then12)) #8
          to label %for.inc [label %if.then12], !srcloc !155

if.then12:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %dev.051 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.051, align 128
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pmp, align 4
  %34 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %devno.i, align 4
  %add = add i32 %35, %33
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pdc2027x_set_mode.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.22, i32 noundef %31, i32 noundef %add) #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pdc2027x_set_dmamode(ptr noundef %1, ptr noundef nonnull %dev.051)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then12, %if.then4
  %call18 = tail call ptr @ata_dev_next(ptr noundef nonnull %dev.051, ptr noundef %link, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call18, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_pair(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_id_c_string(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_do_set_mode(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pdc_detect_pll_input_clock(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iomap = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4352
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !153
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_detect_pll_input_clock.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_detect_pll_input_clock, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !155

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_detect_pll_input_clock.__UNIQUE_ID_ddebug312, ptr noundef %7, ptr noundef nonnull @.str.28, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %or = or i32 %5, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #8, !srcloc !159
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %call7 = tail call fastcc i32 @pdc_read_counter(ptr noundef %host)
  %call8 = tail call i64 @ktime_get() #8
  tail call void @msleep(i32 noundef 100) #8
  %call9 = tail call fastcc i32 @pdc_read_counter(ptr noundef %host)
  %call10 = tail call i64 @ktime_get() #8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !153
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_detect_pll_input_clock.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_detect_pll_input_clock, %if.then25)) #8
          to label %do.end29 [label %if.then25], !srcloc !155

if.then25:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev26 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %12 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_detect_pll_input_clock.__UNIQUE_ID_ddebug313, ptr noundef %13, ptr noundef nonnull @.str.28, i32 noundef %11) #8
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.end
  %and = and i32 %11, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #8, !srcloc !159
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %sub.i = sub i64 %call10, %call8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %16 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #8
  %17 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %16, i32 0) #12, !srcloc !160
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %17, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %17, 1
  %18 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %16, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #12, !srcloc !161
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %18, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %conv = trunc i64 %cond213.i.i.i to i32
  %sub = sub i32 %call7, %call9
  %and34 = and i32 %sub, 1073741820
  %div = udiv i32 %and34, 100
  %div35 = sdiv i32 100000000, %conv
  %mul = mul i32 %div35, %div
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_detect_pll_input_clock.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_detect_pll_input_clock, %if.then48)) #8
          to label %do.end52 [label %if.then48], !srcloc !155

if.then48:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  %dev49 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %19 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_detect_pll_input_clock.__UNIQUE_ID_ddebug314, ptr noundef %20, ptr noundef nonnull @.str.29, i32 noundef %call7, i32 noundef %call9, i32 noundef %mul) #8
  br label %do.end52

do.end52:                                         ; preds = %if.then48, %do.end29
  ret i32 %mul
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pdc_adjust_pll(ptr nocapture noundef readonly %host, i32 noundef %pll_clock, i32 noundef %board_idx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iomap = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %div = sdiv i32 %pll_clock, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %board_idx)
  %tobool.not = icmp eq i32 %board_idx, 0
  %cond = select i1 %tobool.not, i32 100000000, i32 133333333
  %div1 = sdiv i32 %cond, %div
  %4 = add i32 %pll_clock, -70001000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65001000, i32 %4)
  %5 = icmp ult i32 %4, -65001000
  br i1 %5, label %do.end, label %do.body5, !prof !162

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.34, i32 noundef %div) #11
  br label %cleanup

do.body5:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_adjust_pll.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_adjust_pll, %if.then13)) #8
          to label %do.end17 [label %if.then13], !srcloc !155

if.then13:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  %dev14 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %8 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_adjust_pll.__UNIQUE_ID_ddebug307, ptr noundef %9, ptr noundef nonnull @.str.37, i32 noundef %cond) #8
  br label %do.end17

do.end17:                                         ; preds = %if.then13, %do.body5
  %add.ptr = getelementptr i8, ptr %3, i32 4610
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_adjust_pll.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_adjust_pll, %if.then31)) #8
          to label %do.end35 [label %if.then31], !srcloc !155

if.then31:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #8
  %dev32 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %12 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev32, align 4
  %conv = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_adjust_pll.__UNIQUE_ID_ddebug308, ptr noundef %13, ptr noundef nonnull @.str.38, i32 noundef %conv) #8
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %do.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 8600, i32 %div1)
  %cmp36 = icmp slt i32 %div1, 8600
  br i1 %cmp36, label %do.end35.if.end58_crit_edge, label %if.else

do.end35.if.end58_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.else:                                          ; preds = %do.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 12900, i32 %div1)
  %cmp39 = icmp ult i32 %div1, 12900
  br i1 %cmp39, label %if.else.if.end58_crit_edge, label %if.else42

if.else.if.end58_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.else42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 16100, i32 %div1)
  %cmp43 = icmp ult i32 %div1, 16100
  br i1 %cmp43, label %if.else42.if.end58_crit_edge, label %if.else46

if.else42.if.end58_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.else46:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %div1)
  %cmp47 = icmp ult i32 %div1, 64000
  br i1 %cmp47, label %if.else46.if.end58_crit_edge, label %do.end53

if.else46.if.end58_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

do.end53:                                         ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #10
  %dev54 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %14 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev54, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.40, i32 noundef %div1) #11
  br label %cleanup

if.end58:                                         ; preds = %if.else46.if.end58_crit_edge, %if.else42.if.end58_crit_edge, %if.else.if.end58_crit_edge, %do.end35.if.end58_crit_edge
  %R.0 = phi i32 [ 13, %do.end35.if.end58_crit_edge ], [ 8, %if.else.if.end58_crit_edge ], [ 6, %if.else42.if.end58_crit_edge ], [ 0, %if.else46.if.end58_crit_edge ]
  %add = add nuw nsw i32 %R.0, 2
  %mul = mul nsw i32 %add, %div1
  %div59 = sdiv i32 %mul, 1000
  %sub = add nsw i32 %div59, -2
  %16 = add nsw i32 %mul, -130000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128000, i32 %16)
  %17 = icmp ult i32 %16, -128000
  br i1 %17, label %do.end75, label %do.body78, !prof !162

do.end75:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %dev76 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %18 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev76, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.43, i32 noundef %sub) #11
  br label %cleanup

do.body78:                                        ; preds = %if.end58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_adjust_pll.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_adjust_pll, %if.then90)) #8
          to label %do.end94 [label %if.then90], !srcloc !155

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #10
  %dev91 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %20 = ptrtoint ptr %dev91 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev91, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_adjust_pll.__UNIQUE_ID_ddebug309, ptr noundef %21, ptr noundef nonnull @.str.45, i32 noundef %sub, i32 noundef %R.0, i32 noundef %div1) #8
  br label %do.end94

do.end94:                                         ; preds = %if.then90, %do.body78
  %shl = shl nuw nsw i32 %R.0, 8
  %or = or i32 %sub, %shl
  %conv95 = trunc i32 %or to i16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_adjust_pll.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_adjust_pll, %if.then108)) #8
          to label %do.end113 [label %if.then108], !srcloc !155

if.then108:                                       ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #10
  %dev109 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %22 = ptrtoint ptr %dev109 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev109, align 4
  %conv110 = and i32 %or, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_adjust_pll.__UNIQUE_ID_ddebug310, ptr noundef %23, ptr noundef nonnull @.str.46, i32 noundef %conv110) #8
  br label %do.end113

do.end113:                                        ; preds = %if.then108, %do.end94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv95) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %24) #8, !srcloc !166
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  tail call void @msleep(i32 noundef 30) #8
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_adjust_pll.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_adjust_pll, %if.then131)) #8
          to label %cleanup [label %if.then131], !srcloc !155

if.then131:                                       ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #10
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #8
  %dev132 = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %28 = ptrtoint ptr %dev132 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev132, align 4
  %conv133 = zext i16 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_adjust_pll.__UNIQUE_ID_ddebug311, ptr noundef %29, ptr noundef nonnull @.str.38, i32 noundef %conv133) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then131, %do.end113, %do.end75, %do.end53, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pdc_read_counter(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iomap = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4384
  %add.ptr3 = getelementptr i8, ptr %3, i32 4640
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  br label %retry1

retry1:                                           ; preds = %if.then49, %if.then36, %entry
  %tobool33.not = phi i1 [ false, %entry ], [ true, %if.then36 ], [ true, %if.then49 ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %5 = and i32 %4, -8454144
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %8 = and i32 %7, -8454144
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %11 = and i32 %10, -8454144
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %14 = and i32 %13, -8454144
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_read_counter.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_read_counter, %if.then)) #8
          to label %do.body16 [label %if.then], !srcloc !155

if.then:                                          ; preds = %retry1
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_read_counter.__UNIQUE_ID_ddebug304, ptr noundef %17, ptr noundef nonnull @.str.31, i32 noundef %9, i32 noundef %6) #8
  br label %do.body16

do.body16:                                        ; preds = %if.then, %retry1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_read_counter.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_read_counter, %if.then28)) #8
          to label %do.end32 [label %if.then28], !srcloc !155

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_read_counter.__UNIQUE_ID_ddebug305, ptr noundef %19, ptr noundef nonnull @.str.32, i32 noundef %15, i32 noundef %12) #8
  br label %do.end32

do.end32:                                         ; preds = %if.then28, %do.body16
  br i1 %tobool33.not, label %do.end32.if.end54_crit_edge, label %land.lhs.true

do.end32.if.end54_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

land.lhs.true:                                    ; preds = %do.end32
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %14)
  %cmp = icmp ne i32 %8, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %12)
  %cmp35.not = icmp ult i32 %6, %12
  %or.cond = select i1 %cmp, i1 true, i1 %cmp35.not
  br i1 %or.cond, label %if.then36, label %land.lhs.true.if.end54_crit_edge

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pdc_read_counter.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pdc_read_counter, %if.then49)) #8
          to label %retry1 [label %if.then49], !srcloc !155

if.then49:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pdc_read_counter.__UNIQUE_ID_ddebug306, ptr noundef %21, ptr noundef nonnull @.str.33) #8
  br label %retry1

if.end54:                                         ; preds = %land.lhs.true.if.end54_crit_edge, %do.end32.if.end54_crit_edge
  %shl = shl nuw nsw i32 %9, 15
  %or = or i32 %shl, %6
  ret i32 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_do_resume(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !63, !65, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !80, !82, !84, !86, !87, !88, !90, !91, !92, !93, !94, !95, !97, !98, !99, !101, !103, !104, !106, !107, !108, !110, !111, !113, !114, !116, !117, !118, !119, !120, !122, !123, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !139, !140, !142}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @__UNIQUE_ID_author290, !1, !"__UNIQUE_ID_author290", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_pdc2027x.c", i32 163, i32 1}
!2 = !{ptr @__UNIQUE_ID_description291, !3, !"__UNIQUE_ID_description291", i1 false, i1 false}
!3 = !{!"../drivers/ata/pata_pdc2027x.c", i32 164, i32 1}
!4 = !{ptr @__UNIQUE_ID_file292, !5, !"__UNIQUE_ID_file292", i1 false, i1 false}
!5 = !{!"../drivers/ata/pata_pdc2027x.c", i32 165, i32 1}
!6 = !{ptr @__UNIQUE_ID_license293, !5, !"__UNIQUE_ID_license293", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version294, !8, !"__UNIQUE_ID_version294", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_pdc2027x.c", i32 166, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__initcall__kmod_pata_pdc2027x__315_760_pdc2027x_pci_driver_init6, !14, !"__initcall__kmod_pata_pdc2027x__315_760_pdc2027x_pci_driver_init6", i1 false, i1 false}
!14 = !{!"../drivers/ata/pata_pdc2027x.c", i32 760, i32 1}
!15 = !{ptr @__exitcall_pdc2027x_pci_driver_exit, !14, !"__exitcall_pdc2027x_pci_driver_exit", i1 false, i1 false}
!16 = !{ptr @pdc2027x_pci_driver, !17, !"pdc2027x_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_pdc2027x.c", i32 114, i32 26}
!18 = !{ptr @pdc2027x_pci_tbl, !19, !"pdc2027x_pci_tbl", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_pdc2027x.c", i32 102, i32 35}
!20 = distinct !{null, !21, !"cmd_offset", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_pdc2027x.c", i32 684, i32 29}
!22 = distinct !{null, !23, !"bmdma_offset", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_pdc2027x.c", i32 685, i32 29}
!24 = distinct !{null, !25, !"__print_once", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_pdc2027x.c", i32 693, i32 2}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_pdc2027x.c", i32 722, i32 44}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_pdc2027x.c", i32 723, i32 55}
!30 = !{ptr @pdc2027x_port_info, !31, !"pdc2027x_port_info", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_pdc2027x.c", i32 144, i32 29}
!32 = !{ptr @pdc2027x_pata100_ops, !33, !"pdc2027x_pata100_ops", i1 false, i1 false}
!33 = !{!"../drivers/ata/pata_pdc2027x.c", i32 129, i32 35}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/ata/pata_pdc2027x.c", i32 210, i32 2}
!36 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @pdc2027x_cable_detect.__UNIQUE_ID_ddebug295, !35, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/ata/pata_pdc2027x.c", i32 214, i32 2}
!41 = !{ptr @pdc2027x_cable_detect._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @pdc2027x_cable_detect._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @pdc2027x_pata133_ops, !44, !"pdc2027x_pata133_ops", i1 false, i1 false}
!44 = !{!"../drivers/ata/pata_pdc2027x.c", i32 136, i32 35}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/ata/pata_pdc2027x.c", i32 266, i32 24}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/ata/pata_pdc2027x.c", i32 288, i32 2}
!49 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @pdc2027x_set_piomode.__UNIQUE_ID_ddebug296, !48, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/ata/pata_pdc2027x.c", i32 292, i32 3}
!53 = !{ptr @pdc2027x_set_piomode._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @pdc2027x_set_piomode._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/ata/pata_pdc2027x.c", i32 298, i32 2}
!57 = !{ptr @pdc2027x_set_piomode.__UNIQUE_ID_ddebug297, !56, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!58 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/ata/pata_pdc2027x.c", i32 311, i32 2}
!60 = !{ptr @pdc2027x_set_piomode.__UNIQUE_ID_ddebug298, !59, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!61 = !{ptr @pdc2027x_pio_timing_tbl, !62, !"pdc2027x_pio_timing_tbl", i1 false, i1 false}
!62 = !{!"../drivers/ata/pata_pdc2027x.c", i32 74, i32 3}
!63 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/ata/pata_pdc2027x.c", i32 344, i32 3}
!65 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @pdc2027x_set_dmamode.__UNIQUE_ID_ddebug299, !64, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!67 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/ata/pata_pdc2027x.c", i32 353, i32 3}
!69 = !{ptr @pdc2027x_set_dmamode.__UNIQUE_ID_ddebug300, !68, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!70 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/ata/pata_pdc2027x.c", i32 360, i32 3}
!72 = !{ptr @pdc2027x_set_dmamode.__UNIQUE_ID_ddebug301, !71, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!73 = !{ptr @.str.19, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/ata/pata_pdc2027x.c", i32 369, i32 3}
!75 = !{ptr @pdc2027x_set_dmamode.__UNIQUE_ID_ddebug302, !74, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!76 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/ata/pata_pdc2027x.c", i32 371, i32 3}
!78 = !{ptr @pdc2027x_set_dmamode._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @pdc2027x_set_dmamode._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @pdc2027x_udma_timing_tbl, !81, !"pdc2027x_udma_timing_tbl", i1 false, i1 false}
!81 = !{!"../drivers/ata/pata_pdc2027x.c", i32 92, i32 3}
!82 = !{ptr @pdc2027x_mdma_timing_tbl, !83, !"pdc2027x_mdma_timing_tbl", i1 false, i1 false}
!83 = !{!"../drivers/ata/pata_pdc2027x.c", i32 84, i32 3}
!84 = !{ptr @.str.21, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/ata/pata_pdc2027x.c", i32 405, i32 4}
!86 = !{ptr @.str.22, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @pdc2027x_set_mode.__UNIQUE_ID_ddebug303, !85, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!88 = !{ptr @.str.23, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/ata/pata_pdc2027x.c", i32 643, i32 2}
!90 = !{ptr @.str.24, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.26, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @pdc_hardware_init._entry, !89, !"_entry", i1 false, i1 false}
!94 = !{ptr @pdc_hardware_init._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.27, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/ata/pata_pdc2027x.c", i32 593, i32 2}
!97 = !{ptr @.str.28, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @pdc_detect_pll_input_clock.__UNIQUE_ID_ddebug312, !96, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!99 = !{ptr @pdc_detect_pll_input_clock.__UNIQUE_ID_ddebug313, !100, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!100 = !{!"../drivers/ata/pata_pdc2027x.c", i32 610, i32 2}
!101 = !{ptr @.str.29, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/ata/pata_pdc2027x.c", i32 620, i32 2}
!103 = !{ptr @pdc_detect_pll_input_clock.__UNIQUE_ID_ddebug314, !102, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!104 = !{ptr @.str.30, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/ata/pata_pdc2027x.c", i32 476, i32 2}
!106 = !{ptr @.str.31, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @pdc_read_counter.__UNIQUE_ID_ddebug304, !105, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!108 = !{ptr @.str.32, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/ata/pata_pdc2027x.c", i32 477, i32 2}
!110 = !{ptr @pdc_read_counter.__UNIQUE_ID_ddebug305, !109, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!111 = !{ptr @.str.33, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/ata/pata_pdc2027x.c", i32 486, i32 3}
!113 = !{ptr @pdc_read_counter.__UNIQUE_ID_ddebug306, !112, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!114 = !{ptr @.str.34, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/ata/pata_pdc2027x.c", i32 511, i32 3}
!116 = !{ptr @.str.35, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.36, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @pdc_adjust_pll._entry, !115, !"_entry", i1 false, i1 false}
!119 = !{ptr @pdc_adjust_pll._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.37, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/ata/pata_pdc2027x.c", i32 516, i32 2}
!122 = !{ptr @pdc_adjust_pll.__UNIQUE_ID_ddebug307, !121, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!123 = !{ptr @.str.38, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/ata/pata_pdc2027x.c", i32 523, i32 2}
!125 = !{ptr @pdc_adjust_pll.__UNIQUE_ID_ddebug308, !124, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!126 = !{ptr @.str.40, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/ata/pata_pdc2027x.c", i32 542, i32 3}
!128 = !{ptr @pdc_adjust_pll._entry.39, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @pdc_adjust_pll._entry_ptr.41, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.43, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/ata/pata_pdc2027x.c", i32 550, i32 3}
!132 = !{ptr @pdc_adjust_pll._entry.42, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @pdc_adjust_pll._entry_ptr.44, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.45, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/ata/pata_pdc2027x.c", i32 554, i32 2}
!136 = !{ptr @pdc_adjust_pll.__UNIQUE_ID_ddebug309, !135, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!137 = !{ptr @.str.46, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/ata/pata_pdc2027x.c", i32 558, i32 2}
!139 = !{ptr @pdc_adjust_pll.__UNIQUE_ID_ddebug310, !138, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!140 = !{ptr @pdc_adjust_pll.__UNIQUE_ID_ddebug311, !141, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!141 = !{!"../drivers/ata/pata_pdc2027x.c", i32 572, i32 2}
!142 = !{ptr @pdc2027x_sht, !143, !"pdc2027x_sht", i1 false, i1 false}
!143 = !{!"../drivers/ata/pata_pdc2027x.c", i32 125, i32 34}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{i64 4999378}
!154 = !{i64 2152539727}
!155 = !{i64 2148710658, i64 2148710663, i64 2148710676, i64 2148710720, i64 2148710754, i64 2148710775}
!156 = !{i64 4999158}
!157 = !{i64 2152538503}
!158 = !{i64 2152541082}
!159 = !{i64 4998960}
!160 = !{i64 1133833, i64 1133860, i64 1133882, i64 1133910}
!161 = !{i64 1134241, i64 1134268, i64 1134301, i64 1134322, i64 1134349, i64 1134375}
!162 = !{!"branch_weights", i32 1, i32 2000}
!163 = !{i64 4998540}
!164 = !{i64 2152539115}
!165 = !{i64 2152540532}
!166 = !{i64 4998340}
