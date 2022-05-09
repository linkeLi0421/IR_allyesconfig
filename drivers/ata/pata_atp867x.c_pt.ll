; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_atp867x.c_pt.bc'
source_filename = "../drivers/ata/pata_atp867x.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.atomic_t = type { i32 }
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
%struct.atp867x_priv = type { ptr, ptr, ptr, ptr, i32 }
%struct.ata_timing = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }

@__initcall__kmod_pata_atp867x__293_545_atp867x_driver_init6 = internal global ptr @atp867x_driver_init, section ".initcall6.init", align 4
@atp867x_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @atp867x_pci_tbl, ptr @atp867x_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @atp867x_reinit_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_atp867x_driver_exit = internal global ptr @atp867x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [51 x i8] c"pata_atp867x.author=John(Jung-Ik) Lee, Google Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [78 x i8] c"pata_atp867x.description=low level driver for Artop/Acard 867x ATA controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [43 x i8] c"pata_atp867x.file=drivers/ata/pata_atp867x\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [25 x i8] c"pata_atp867x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version298 = internal constant [27 x i8] c"pata_atp867x.version=0.7.5\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pata_atp867x\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.7.5\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@atp867x_pci_tbl = internal global { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4497, i32 10, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4497, i32 11, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@atp867x_init_one.info_867x = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 0, i32 127, ptr @atp867x_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@atp867x_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atp867x_cable_detect, ptr null, ptr @atp867x_set_piomode, ptr @atp867x_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@__const.atp867x_init_one.ppi = private unnamed_addr constant [2 x ptr] [ptr @atp867x_init_one.info_867x, ptr null], align 8
@atp867x_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@atp867x_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 485, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ATP867X: ATP867 ATA UDMA133 controller (rev %02X)\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atp867x_init_one\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/ata/pata_atp867x.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atp867x_init_one._entry_ptr = internal global ptr @atp867x_init_one._entry, section ".printk_index", align 4
@atp867x_init_one._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 489, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to allocate ATA host\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@atp867x_init_one._entry_ptr.11 = internal global ptr @atp867x_init_one._entry.8, section ".printk_index", align 4
@atp867x_init_one._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 496, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to init host\0A\00", [43 x i8] zeroinitializer }, align 32
@atp867x_init_one._entry_ptr.14 = internal global ptr @atp867x_init_one._entry.12, section ".printk_index", align 4
@atp867x_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@atp867x_init_one._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 505, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to activate host\0A\00", [39 x i8] zeroinitializer }, align 32
@atp867x_init_one._entry_ptr.17 = internal global ptr @atp867x_init_one._entry.15, section ".printk_index", align 4
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@atp867x_get_active_clocks_shifted._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014ata%u: ATP867X: active %dclk is invalid. Using 12clk.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"atp867x_get_active_clocks_shifted\00", [62 x i8] zeroinitializer }, align 32
@atp867x_get_active_clocks_shifted._entry_ptr = internal global ptr @atp867x_get_active_clocks_shifted._entry, section ".printk_index", align 4
@atp867x_get_recover_clocks_shifted._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014ata%u: ATP867X: recover %dclk is invalid. Using default 12clk.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"atp867x_get_recover_clocks_shifted\00", [61 x i8] zeroinitializer }, align 32
@atp867x_get_recover_clocks_shifted._entry_ptr = internal global ptr @atp867x_get_recover_clocks_shifted._entry, section ".printk_index", align 4
@atp867x_ata_pci_sff_init_host.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.5, ptr @.str.23, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"atp867x_ata_pci_sff_init_host\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ATP867X: iomap[%d]=0x%p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cmd 0x%lx ctl 0x%lx\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bmdma 0x%lx\00", [20 x i8] zeroinitializer }, align 32
@atp867x_ata_pci_sff_init_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.5, i32 455, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no available native port\0A\00", [38 x i8] zeroinitializer }, align 32
@atp867x_ata_pci_sff_init_host._entry_ptr = internal global ptr @atp867x_ata_pci_sff_init_host._entry, section ".printk_index", align 4
@atp867x_check_res.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.5, ptr @.str.28, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atp867x_check_res\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ATP867X: resource start:len=%lx:%lx\0A\00", [59 x i8] zeroinitializer }, align 32
@atp867x_check_ports.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.5, ptr @.str.30, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atp867x_check_ports\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [438 x i8], [106 x i8] } { [438 x i8] c"ata%u: ATP867X: port[%d] addresses\0A  cmd_addr\09=0x%lx, 0x%lx\0A  ctl_addr\09=0x%lx, 0x%lx\0A  bmdma_addr\09=0x%lx, 0x%lx\0A  data_addr\09=0x%lx\0A  error_addr\09=0x%lx\0A  feature_addr\09=0x%lx\0A  nsect_addr\09=0x%lx\0A  lbal_addr\09=0x%lx\0A  lbam_addr\09=0x%lx\0A  lbah_addr\09=0x%lx\0A  device_addr\09=0x%lx\0A  status_addr\09=0x%lx\0A  command_addr\09=0x%lx\0A  dp->dma_mode\09=0x%lx\0A  dp->mstr_piospd\09=0x%lx\0A  dp->slave_piospd\09=0x%lx\0A  dp->eightb_piospd\09=0x%lx\0A  dp->pci66mhz\09\09=0x%lx\0A\00", [106 x i8] zeroinitializer }, align 32
@atp867x_fixup.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.5, ptr @.str.32, i8 0, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atp867x_fixup\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ATP867X: set latency timer to %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@switch.table.atp867x_set_piomode = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01\01\02\03\04\05\06\00\00\07\07\07\07", [19 x i8] zeroinitializer }, align 32
@switch.table.atp867x_set_piomode.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01\01\02\03\04\05\06\00\00\07\07\07\07", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.34 = internal global [18 x i64] [i64 16, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.35 = internal global [18 x i64] [i64 16, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"atp867x_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 534, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 551, i32 1 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"atp867x_pci_tbl\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 528, i32 29 }
@___asan_gen_.51 = private unnamed_addr constant [10 x i8] c"info_867x\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 467, i32 36 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"atp867x_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 266, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [30 x i8] c"atp867x_init_one.__print_once\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 484, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 489, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 496, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [12 x i8] c"atp867x_sht\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 262, i32 34 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 505, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 158, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 192, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 423, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 445, i32 21 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 448, i32 21 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 455, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 283, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 293, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [30 x i8] c"../drivers/ata/pata_atp867x.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 372, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [33 x i8] c"switch.table.atp867x_set_piomode\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [36 x i8] c"switch.table.atp867x_set_piomode.33\00", align 1
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__UNIQUE_ID_version298, ptr @__exitcall_atp867x_driver_exit, ptr @__initcall__kmod_pata_atp867x__293_545_atp867x_driver_init6, ptr @__modver_attr, ptr @atp867x_ata_pci_sff_init_host._entry, ptr @atp867x_ata_pci_sff_init_host._entry_ptr, ptr @atp867x_driver_exit, ptr @atp867x_get_active_clocks_shifted._entry, ptr @atp867x_get_active_clocks_shifted._entry_ptr, ptr @atp867x_get_recover_clocks_shifted._entry, ptr @atp867x_get_recover_clocks_shifted._entry_ptr, ptr @atp867x_init_one._entry, ptr @atp867x_init_one._entry.12, ptr @atp867x_init_one._entry.15, ptr @atp867x_init_one._entry.8, ptr @atp867x_init_one._entry_ptr, ptr @atp867x_init_one._entry_ptr.11, ptr @atp867x_init_one._entry_ptr.14, ptr @atp867x_init_one._entry_ptr.17, ptr @atp867x_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @atp867x_pci_tbl, ptr @atp867x_init_one.info_867x, ptr @atp867x_ops, ptr @atp867x_init_one.__print_once, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @atp867x_sht, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @switch.table.atp867x_set_piomode, ptr @switch.table.atp867x_set_piomode.33], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp867x_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp867x_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp867x_init_one.info_867x to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp867x_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp867x_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp867x_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp867x_init_one._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp867x_init_one._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp867x_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp867x_init_one._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp867x_get_active_clocks_shifted._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp867x_get_recover_clocks_shifted._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atp867x_ata_pci_sff_init_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 438, i32 544, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atp867x_set_piomode to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atp867x_set_piomode.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atp867x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @atp867x_driver, ptr noundef null, ptr noundef nonnull @.str.1) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atp867x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @atp867x_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atp867x_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #6
  %0 = load i64, ptr @__const.atp867x_init_one.ppi, align 8
  %1 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %ppi, align 8
  %.b47 = load i1, ptr @atp867x_init_one.__print_once, align 1
  br i1 %.b47, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @atp867x_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4, ptr noundef nonnull @.str.3, i32 noundef %conv) #9
  %call6 = call ptr @ata_host_alloc_pinfo(ptr noundef %dev4, ptr noundef nonnull %ppi, i32 noundef 4) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end.cleanup.sink.split_crit_edge, label %if.end13

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end13:                                         ; preds = %do.end
  %call14 = call fastcc i32 @atp867x_ata_pci_sff_init_host(ptr noundef nonnull %call6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end21, label %if.end13.cleanup.sink.split_crit_edge

if.end13.cleanup.sink.split_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end21:                                         ; preds = %if.end13
  call void @pci_set_master(ptr noundef %pdev) #6
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call22 = call i32 @ata_host_activate(ptr noundef nonnull %call6, i32 noundef %5, ptr noundef nonnull @ata_bmdma_interrupt, i32 noundef 128, ptr noundef nonnull @atp867x_sht) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.end21.cleanup.sink.split_crit_edge

if.end21.cleanup.sink.split_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end21.cleanup.sink.split_crit_edge, %if.end13.cleanup.sink.split_crit_edge, %do.end.cleanup.sink.split_crit_edge
  %.str.9.sink = phi ptr [ @.str.9, %do.end.cleanup.sink.split_crit_edge ], [ @.str.13, %if.end13.cleanup.sink.split_crit_edge ], [ @.str.16, %if.end21.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -12, %do.end.cleanup.sink.split_crit_edge ], [ %call14, %if.end13.cleanup.sink.split_crit_edge ], [ %call22, %if.end21.cleanup.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull %.str.9.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end21.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atp867x_reinit_one(ptr noundef %pdev) #2 align 64 {
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
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @atp867x_fixup(ptr noundef %1)
  tail call void @ata_host_resume(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atp867x_ata_pci_sff_init_host(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  %call = tail call i32 @pcim_iomap_regions(ptr noundef %add.ptr, i32 noundef 1, ptr noundef nonnull @.str.1) #6
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.cleanup56_crit_edge [
    i32 -16, label %if.then
    i32 0, label %if.end2
  ]

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup56

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pcim_pin_device(ptr noundef %add.ptr) #6
  br label %cleanup56

if.end2:                                          ; preds = %entry
  %call3 = tail call ptr @pcim_iomap_table(ptr noundef %add.ptr) #6
  %iomap = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 2
  %3 = ptrtoint ptr %iomap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %iomap, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end2
  %i.023.i = phi i32 [ 0, %if.end2 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %add.ptr, i32 0, i32 47, i32 %i.023.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 8
  %end.i = getelementptr %struct.pci_dev, ptr %add.ptr, i32 0, i32 47, i32 %i.023.i, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atp867x_check_res.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atp867x_ata_pci_sff_init_host, %if.then.i)) #6
          to label %for.inc.i [label %if.then.i], !srcloc !92

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.i = icmp eq i32 %7, 0
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  %cond.i = select i1 %cmp4.i, i32 0, i32 %add.i
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atp867x_check_res.__UNIQUE_ID_ddebug289, ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %5, i32 noundef %cond.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 17
  br i1 %exitcond.not.i, label %for.inc.i.do.body_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.body_crit_edge:                      ; preds = %for.inc.i
  br label %do.body

for.cond13.preheader:                             ; preds = %for.inc
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 3
  %8 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp14120.not = icmp eq i32 %9, 0
  br i1 %cmp14120.not, label %for.cond13.preheader.do.end52_crit_edge, label %for.cond13.preheader.for.body15_crit_edge

for.cond13.preheader.for.body15_crit_edge:        ; preds = %for.cond13.preheader
  br label %for.body15

for.cond13.preheader.do.end52_crit_edge:          ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end52

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %for.inc.i.do.body_crit_edge
  %i.0118 = phi i32 [ %inc, %for.inc.do.body_crit_edge ], [ 0, %for.inc.i.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atp867x_ata_pci_sff_init_host.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atp867x_ata_pci_sff_init_host, %if.then10)) #6
          to label %for.inc [label %if.then10], !srcloc !92

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %i.0118
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atp867x_ata_pci_sff_init_host.__UNIQUE_ID_ddebug292, ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %i.0118, ptr noundef %13) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %do.body
  %inc = add nuw nsw i32 %i.0118, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.cond13.preheader, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.body15:                                       ; preds = %for.inc45.for.body15_crit_edge, %for.cond13.preheader.for.body15_crit_edge
  %i.1122 = phi i32 [ %inc46, %for.inc45.for.body15_crit_edge ], [ 0, %for.cond13.preheader.for.body15_crit_edge ]
  %arrayidx16 = getelementptr %struct.ata_host, ptr %host, i32 0, i32 12, i32 %i.1122
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx16, align 4
  %ioaddr17 = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8
  %host18 = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 31
  %16 = ptrtoint ptr %host18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host18, align 4
  %iomap19 = getelementptr inbounds %struct.ata_host, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %iomap19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iomap19, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %mul = shl i32 %i.1122, 4
  %add.ptr22 = getelementptr i8, ptr %21, i32 %mul
  %22 = ptrtoint ptr %ioaddr17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr22, ptr %ioaddr17, align 4
  %23 = load ptr, ptr %iomap19, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %add.ptr28 = getelementptr i8, ptr %25, i32 14
  %add.ptr29 = getelementptr i8, ptr %add.ptr28, i32 %mul
  %altstatus_addr = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8, i32 11
  %26 = ptrtoint ptr %altstatus_addr to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr29, ptr %altstatus_addr, align 4
  %ctl_addr = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8, i32 12
  %27 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr29, ptr %ctl_addr, align 4
  %28 = load ptr, ptr %iomap19, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %add.ptr35 = getelementptr i8, ptr %30, i32 64
  %add.ptr36 = getelementptr i8, ptr %add.ptr35, i32 %mul
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8, i32 13
  %31 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr36, ptr %bmdma_addr, align 4
  tail call void @ata_sff_std_ports(ptr noundef %ioaddr17) #6
  %32 = ptrtoint ptr %host18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %host18, align 4
  %dev.i102 = getelementptr inbounds %struct.ata_host, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %dev.i102 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i102, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 7
  %36 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port_no.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %35, i32 noundef 20, i32 noundef 3520) #6
  %private_data.i = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 48
  %38 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i.i, ptr %private_data.i, align 4
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %for.body15.cleanup56_crit_edge, label %for.inc45

for.body15.cleanup56_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup56

for.inc45:                                        ; preds = %for.body15
  %39 = ptrtoint ptr %host18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %host18, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iomap.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %mul.i = shl i32 %37, 4
  %add.ptr5.i = getelementptr i8, ptr %44, i32 75
  %add.ptr6.i = getelementptr i8, ptr %add.ptr5.i, i32 %mul.i
  %45 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr6.i, ptr %call.i.i, align 4
  %46 = load ptr, ptr %iomap.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %add.ptr13.i = getelementptr i8, ptr %48, i32 72
  %add.ptr14.i = getelementptr i8, ptr %add.ptr13.i, i32 %mul.i
  %mstr_piospd.i = getelementptr inbounds %struct.atp867x_priv, ptr %call.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %mstr_piospd.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr14.i, ptr %mstr_piospd.i, align 4
  %50 = load ptr, ptr %iomap.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %add.ptr21.i = getelementptr i8, ptr %52, i32 73
  %add.ptr22.i = getelementptr i8, ptr %add.ptr21.i, i32 %mul.i
  %slave_piospd.i = getelementptr inbounds %struct.atp867x_priv, ptr %call.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %slave_piospd.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr22.i, ptr %slave_piospd.i, align 4
  %54 = load ptr, ptr %iomap.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %add.ptr29.i = getelementptr i8, ptr %56, i32 74
  %add.ptr30.i = getelementptr i8, ptr %add.ptr29.i, i32 %mul.i
  %eightb_piospd.i = getelementptr inbounds %struct.atp867x_priv, ptr %call.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %eightb_piospd.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr30.i, ptr %eightb_piospd.i, align 4
  %58 = load ptr, ptr %iomap.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %add.ptr34.i = getelementptr i8, ptr %60, i32 63
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr34.i) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %62 = and i8 %61, 4
  %and.i = zext i8 %62 to i32
  %pci66mhz.i = getelementptr inbounds %struct.atp867x_priv, ptr %call.i.i, i32 0, i32 4
  %63 = ptrtoint ptr %pci66mhz.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %and.i, ptr %pci66mhz.i, align 4
  tail call fastcc void @atp867x_check_ports(ptr noundef %15, i32 noundef %i.1122)
  %64 = ptrtoint ptr %ioaddr17 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ioaddr17, align 4
  %66 = ptrtoint ptr %65 to i32
  %67 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ctl_addr, align 4
  %69 = ptrtoint ptr %68 to i32
  tail call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %15, ptr noundef nonnull @.str.24, i32 noundef %66, i32 noundef %69) #6
  %70 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %bmdma_addr, align 4
  %72 = ptrtoint ptr %71 to i32
  tail call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %15, ptr noundef nonnull @.str.25, i32 noundef %72) #6
  %inc46 = add nuw i32 %i.1122, 1
  %73 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %n_ports, align 4
  %cmp14 = icmp ult i32 %inc46, %74
  br i1 %cmp14, label %for.inc45.for.body15_crit_edge, label %for.end47

for.inc45.for.body15_crit_edge:                   ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body15

for.end47:                                        ; preds = %for.inc45
  br i1 %cmp14120.not, label %for.end47.do.end52_crit_edge, label %if.end53

for.end47.do.end52_crit_edge:                     ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end52

do.end52:                                         ; preds = %for.end47.do.end52_crit_edge, %for.cond13.preheader.do.end52_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.26) #9
  br label %cleanup56

if.end53:                                         ; preds = %for.end47
  tail call fastcc void @atp867x_fixup(ptr noundef %host)
  %call.i = tail call i32 @dma_set_mask(ptr noundef %1, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i104 = icmp eq i32 %call.i, 0
  br i1 %cmp.i104, label %if.then.i105, label %if.end53.cleanup56_crit_edge

if.end53.cleanup56_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup56

if.then.i105:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %1, i64 noundef 4294967295) #6
  br label %cleanup56

cleanup56:                                        ; preds = %if.then.i105, %if.end53.cleanup56_crit_edge, %do.end52, %for.body15.cleanup56_crit_edge, %if.then, %entry.cleanup56_crit_edge
  %retval.2 = phi i32 [ -19, %do.end52 ], [ %call, %entry.cleanup56_crit_edge ], [ -16, %if.then ], [ %call.i, %if.end53.cleanup56_crit_edge ], [ 0, %if.then.i105 ], [ -12, %for.body15.cleanup56_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atp867x_cable_detect(ptr nocapture noundef readonly %ap) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %subsystem_vendor.i = getelementptr i8, ptr %3, i32 -100
  %4 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subsystem_vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4497, i16 %5)
  %cmp.i = icmp eq i16 %5, 4497
  br i1 %cmp.i, label %land.lhs.true.i, label %entry._crit_edge

entry._crit_edge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %9

land.lhs.true.i:                                  ; preds = %entry
  %subsystem_device.i = getelementptr i8, ptr %3, i32 -98
  %6 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsystem_device.i, align 2
  %8 = and i16 %7, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %8)
  %switch.i = icmp eq i16 %8, 10
  br i1 %switch.i, label %land.lhs.true.i.atp867x_cable_override.exit_crit_edge, label %land.lhs.true.i._crit_edge

land.lhs.true.i._crit_edge:                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %9

land.lhs.true.i.atp867x_cable_override.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_cable_override.exit

9:                                                ; preds = %land.lhs.true.i._crit_edge, %entry._crit_edge
  br label %atp867x_cable_override.exit

atp867x_cable_override.exit:                      ; preds = %9, %land.lhs.true.i.atp867x_cable_override.exit_crit_edge
  %10 = phi i32 [ 4, %9 ], [ 3, %land.lhs.true.i.atp867x_cable_override.exit_crit_edge ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atp867x_set_piomode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  %t = alloca %struct.ata_timing, align 2
  %p = alloca %struct.ata_timing, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ata_dev_pair(ptr noundef %adev) #6
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %2 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pio_mode, align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %t) #6
  %4 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 2
  %5 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 3
  %6 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 5
  %7 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 6
  %8 = call ptr @memset(ptr %t, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %p) #6
  %conv = zext i8 %3 to i16
  %9 = call ptr @memset(ptr %p, i32 255, i32 20)
  %call1 = call i32 @ata_timing_compute(ptr noundef %adev, i16 noundef zeroext %conv, ptr noundef nonnull %t, i32 noundef 30000, i32 noundef 7500) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %pio_mode2 = getelementptr inbounds %struct.ata_device, ptr %call, i32 0, i32 11
  %10 = ptrtoint ptr %pio_mode2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pio_mode2, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %conv6 = zext i8 %11 to i16
  %call7 = call i32 @ata_timing_compute(ptr noundef nonnull %call, i16 noundef zeroext %conv6, ptr noundef nonnull %p, i32 noundef 30000, i32 noundef 7500) #6
  call void @ata_timing_merge(ptr noundef nonnull %p, ptr noundef nonnull %t, ptr noundef nonnull %t, i32 noundef 14) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #6, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %15 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devno, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %b.0.v = select i1 %tobool9.not, i8 -8, i8 -113
  %b.0 = and i8 %b.0.v, %14
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 %b.0) #6, !srcloc !96
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %6, align 2
  %21 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private_data, align 4
  %conv.i = trunc i16 %20 to i8
  %pci66mhz.i = getelementptr inbounds %struct.atp867x_priv, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %pci66mhz.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pci66mhz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp ne i32 %24, 0
  %inc.i = zext i1 %tobool.not.i to i8
  %spec.select.i = add i8 %inc.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %spec.select.i)
  %25 = icmp ult i8 %spec.select.i, 13
  br i1 %25, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv19 = zext i16 %20 to i32
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %26 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %print_id.i, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %27, i32 noundef %conv19) #9
  br label %atp867x_get_active_clocks_shifted.exit

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %28 = sext i8 %spec.select.i to i32
  %switch.gep = getelementptr inbounds [13 x i8], ptr @switch.table.atp867x_set_piomode, i32 0, i32 %28
  %29 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %29)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %atp867x_get_active_clocks_shifted.exit

atp867x_get_active_clocks_shifted.exit:           ; preds = %switch.lookup, %do.end.i
  %clocks.1.i = phi i8 [ 7, %do.end.i ], [ %switch.load, %switch.lookup ]
  %conv5.i = zext i8 %clocks.1.i to i16
  %shl.i = shl nuw nsw i16 %conv5.i, 4
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %7, align 2
  %trunc.i = trunc i16 %31 to i8
  %32 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %trunc.i, label %do.end.i63 [
    i8 0, label %sw.bb.i59
    i8 1, label %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge
    i8 2, label %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge96
    i8 3, label %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge97
    i8 4, label %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge98
    i8 5, label %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge99
    i8 6, label %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge100
    i8 7, label %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge101
    i8 8, label %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge102
    i8 9, label %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge103
    i8 10, label %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge104
    i8 11, label %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge105
    i8 13, label %atp867x_get_active_clocks_shifted.exit.sw.bb3.i60_crit_edge
    i8 14, label %atp867x_get_active_clocks_shifted.exit.sw.bb3.i60_crit_edge106
    i8 15, label %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge107
    i8 12, label %atp867x_get_active_clocks_shifted.exit.sw.bb4.i64_crit_edge
  ]

atp867x_get_active_clocks_shifted.exit.sw.bb4.i64_crit_edge: ; preds = %atp867x_get_active_clocks_shifted.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i64

atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge107: ; preds = %atp867x_get_active_clocks_shifted.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit

atp867x_get_active_clocks_shifted.exit.sw.bb3.i60_crit_edge106: ; preds = %atp867x_get_active_clocks_shifted.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i60

atp867x_get_active_clocks_shifted.exit.sw.bb3.i60_crit_edge: ; preds = %atp867x_get_active_clocks_shifted.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i60

atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge105: ; preds = %atp867x_get_active_clocks_shifted.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit

atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge104: ; preds = %atp867x_get_active_clocks_shifted.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit

atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge103: ; preds = %atp867x_get_active_clocks_shifted.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit

atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge102: ; preds = %atp867x_get_active_clocks_shifted.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit

atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge101: ; preds = %atp867x_get_active_clocks_shifted.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit

atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge100: ; preds = %atp867x_get_active_clocks_shifted.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit

atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge99: ; preds = %atp867x_get_active_clocks_shifted.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit

atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge98: ; preds = %atp867x_get_active_clocks_shifted.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit

atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge97: ; preds = %atp867x_get_active_clocks_shifted.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit

atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge96: ; preds = %atp867x_get_active_clocks_shifted.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit

atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge: ; preds = %atp867x_get_active_clocks_shifted.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit

sw.bb.i59:                                        ; preds = %atp867x_get_active_clocks_shifted.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit

sw.bb3.i60:                                       ; preds = %atp867x_get_active_clocks_shifted.exit.sw.bb3.i60_crit_edge, %atp867x_get_active_clocks_shifted.exit.sw.bb3.i60_crit_edge106
  %dec.i = add i16 %31, 255
  br label %atp867x_get_recover_clocks_shifted.exit

do.end.i63:                                       ; preds = %atp867x_get_active_clocks_shifted.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv21 = zext i16 %31 to i32
  %print_id.i61 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %33 = ptrtoint ptr %print_id.i61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %print_id.i61, align 4
  %call.i62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %34, i32 noundef %conv21) #9
  br label %sw.bb4.i64

sw.bb4.i64:                                       ; preds = %do.end.i63, %atp867x_get_active_clocks_shifted.exit.sw.bb4.i64_crit_edge
  br label %atp867x_get_recover_clocks_shifted.exit

atp867x_get_recover_clocks_shifted.exit:          ; preds = %sw.bb4.i64, %sw.bb3.i60, %sw.bb.i59, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge96, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge97, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge98, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge99, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge100, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge101, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge102, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge103, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge104, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge105, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge107
  %clocks.0.i = phi i16 [ 0, %sw.bb4.i64 ], [ %dec.i, %sw.bb3.i60 ], [ %31, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge ], [ %31, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge96 ], [ %31, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge97 ], [ %31, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge98 ], [ %31, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge99 ], [ %31, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge100 ], [ %31, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge101 ], [ %31, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge102 ], [ %31, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge103 ], [ %31, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge104 ], [ %31, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge105 ], [ %31, %atp867x_get_active_clocks_shifted.exit.atp867x_get_recover_clocks_shifted.exit_crit_edge107 ], [ 1, %sw.bb.i59 ]
  %or = or i16 %clocks.0.i, %shl.i
  %conv23 = trunc i16 %or to i8
  %35 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %devno, align 4
  %and25 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else28, label %if.then27

if.then27:                                        ; preds = %atp867x_get_recover_clocks_shifted.exit
  call void @__sanitizer_cov_trace_pc() #8
  %slave_piospd = getelementptr inbounds %struct.atp867x_priv, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %slave_piospd to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %slave_piospd, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 %conv23) #6, !srcloc !96
  br label %if.end29

if.else28:                                        ; preds = %atp867x_get_recover_clocks_shifted.exit
  call void @__sanitizer_cov_trace_pc() #8
  %mstr_piospd = getelementptr inbounds %struct.atp867x_priv, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %mstr_piospd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mstr_piospd, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %40, i8 %conv23) #6, !srcloc !96
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then27
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %4, align 2
  %43 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %private_data, align 4
  %conv.i67 = trunc i16 %42 to i8
  %pci66mhz.i68 = getelementptr inbounds %struct.atp867x_priv, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %pci66mhz.i68 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pci66mhz.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i69 = icmp ne i32 %46, 0
  %inc.i70 = zext i1 %tobool.not.i69 to i8
  %spec.select.i71 = add i8 %inc.i70, %conv.i67
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %spec.select.i71)
  %47 = icmp ult i8 %spec.select.i71, 13
  br i1 %47, label %switch.lookup93, label %do.end.i75

do.end.i75:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %conv30 = zext i16 %42 to i32
  %print_id.i73 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %48 = ptrtoint ptr %print_id.i73 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %print_id.i73, align 4
  %call.i74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %49, i32 noundef %conv30) #9
  br label %atp867x_get_active_clocks_shifted.exit81

switch.lookup93:                                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %50 = sext i8 %spec.select.i71 to i32
  %switch.gep94 = getelementptr inbounds [13 x i8], ptr @switch.table.atp867x_set_piomode.33, i32 0, i32 %50
  %51 = ptrtoint ptr %switch.gep94 to i32
  call void @__asan_load1_noabort(i32 %51)
  %switch.load95 = load i8, ptr %switch.gep94, align 1
  br label %atp867x_get_active_clocks_shifted.exit81

atp867x_get_active_clocks_shifted.exit81:         ; preds = %switch.lookup93, %do.end.i75
  %clocks.1.i78 = phi i8 [ 7, %do.end.i75 ], [ %switch.load95, %switch.lookup93 ]
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %5, align 2
  %trunc.i82 = trunc i16 %53 to i8
  %54 = zext i8 %trunc.i82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %trunc.i82, label %do.end.i88 [
    i8 0, label %sw.bb.i83
    i8 1, label %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge
    i8 2, label %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge108
    i8 3, label %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge109
    i8 4, label %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge110
    i8 5, label %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge111
    i8 6, label %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge112
    i8 7, label %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge113
    i8 8, label %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge114
    i8 9, label %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge115
    i8 10, label %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge116
    i8 11, label %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge117
    i8 13, label %atp867x_get_active_clocks_shifted.exit81.sw.bb3.i85_crit_edge
    i8 14, label %atp867x_get_active_clocks_shifted.exit81.sw.bb3.i85_crit_edge118
    i8 15, label %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge119
    i8 12, label %atp867x_get_active_clocks_shifted.exit81.sw.bb4.i89_crit_edge
  ]

atp867x_get_active_clocks_shifted.exit81.sw.bb4.i89_crit_edge: ; preds = %atp867x_get_active_clocks_shifted.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4.i89

atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge119: ; preds = %atp867x_get_active_clocks_shifted.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit92

atp867x_get_active_clocks_shifted.exit81.sw.bb3.i85_crit_edge118: ; preds = %atp867x_get_active_clocks_shifted.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i85

atp867x_get_active_clocks_shifted.exit81.sw.bb3.i85_crit_edge: ; preds = %atp867x_get_active_clocks_shifted.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3.i85

atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge117: ; preds = %atp867x_get_active_clocks_shifted.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit92

atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge116: ; preds = %atp867x_get_active_clocks_shifted.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit92

atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge115: ; preds = %atp867x_get_active_clocks_shifted.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit92

atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge114: ; preds = %atp867x_get_active_clocks_shifted.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit92

atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge113: ; preds = %atp867x_get_active_clocks_shifted.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit92

atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge112: ; preds = %atp867x_get_active_clocks_shifted.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit92

atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge111: ; preds = %atp867x_get_active_clocks_shifted.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit92

atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge110: ; preds = %atp867x_get_active_clocks_shifted.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit92

atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge109: ; preds = %atp867x_get_active_clocks_shifted.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit92

atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge108: ; preds = %atp867x_get_active_clocks_shifted.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit92

atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge: ; preds = %atp867x_get_active_clocks_shifted.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit92

sw.bb.i83:                                        ; preds = %atp867x_get_active_clocks_shifted.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %atp867x_get_recover_clocks_shifted.exit92

sw.bb3.i85:                                       ; preds = %atp867x_get_active_clocks_shifted.exit81.sw.bb3.i85_crit_edge, %atp867x_get_active_clocks_shifted.exit81.sw.bb3.i85_crit_edge118
  %dec.i84 = add i16 %53, 255
  br label %atp867x_get_recover_clocks_shifted.exit92

do.end.i88:                                       ; preds = %atp867x_get_active_clocks_shifted.exit81
  call void @__sanitizer_cov_trace_pc() #8
  %conv32 = zext i16 %53 to i32
  %print_id.i86 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %55 = ptrtoint ptr %print_id.i86 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %print_id.i86, align 4
  %call.i87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %56, i32 noundef %conv32) #9
  br label %sw.bb4.i89

sw.bb4.i89:                                       ; preds = %do.end.i88, %atp867x_get_active_clocks_shifted.exit81.sw.bb4.i89_crit_edge
  br label %atp867x_get_recover_clocks_shifted.exit92

atp867x_get_recover_clocks_shifted.exit92:        ; preds = %sw.bb4.i89, %sw.bb3.i85, %sw.bb.i83, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge108, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge109, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge110, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge111, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge112, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge113, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge114, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge115, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge116, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge117, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge119
  %clocks.0.i90 = phi i16 [ 0, %sw.bb4.i89 ], [ %dec.i84, %sw.bb3.i85 ], [ %53, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge ], [ %53, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge108 ], [ %53, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge109 ], [ %53, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge110 ], [ %53, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge111 ], [ %53, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge112 ], [ %53, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge113 ], [ %53, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge114 ], [ %53, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge115 ], [ %53, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge116 ], [ %53, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge117 ], [ %53, %atp867x_get_active_clocks_shifted.exit81.atp867x_get_recover_clocks_shifted.exit92_crit_edge119 ], [ 1, %sw.bb.i83 ]
  %conv5.i79 = zext i8 %clocks.1.i78 to i16
  %shl.i80 = shl nuw nsw i16 %conv5.i79, 4
  %or34 = or i16 %clocks.0.i90, %shl.i80
  %conv35 = trunc i16 %or34 to i8
  %eightb_piospd = getelementptr inbounds %struct.atp867x_priv, ptr %1, i32 0, i32 3
  %57 = ptrtoint ptr %eightb_piospd to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %eightb_piospd, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %58, i8 %conv35) #6, !srcloc !96
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %p) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %t) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atp867x_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %2 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dma_mode, align 1
  %add = add i8 %3, -63
  %pci66mhz = getelementptr inbounds %struct.atp867x_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %pci66mhz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pci66mhz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp ne i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %add)
  %cmp = icmp ugt i8 %add, 1
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %land.lhs.true4, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true4:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %device = getelementptr i8, ptr %9, i32 -102
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %11)
  %cmp6 = icmp eq i16 %11, 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %add)
  %cmp9 = icmp ult i8 %add, 6
  %or.cond37 = select i1 %cmp6, i1 true, i1 %cmp9
  %dec = add i8 %3, -64
  %spec.select = select i1 %or.cond37, i8 %dec, i8 %add
  br label %if.end

if.end:                                           ; preds = %land.lhs.true4, %entry.if.end_crit_edge
  %mode.0 = phi i8 [ %add, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true4 ]
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %15 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devno, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %17 = and i8 %14, -113
  %shl = shl i8 %mode.0, 4
  %or = or i8 %17, %shl
  %18 = and i8 %14, -8
  %or2236 = or i8 %18, %mode.0
  %b.0 = select i1 %tobool12.not, i8 %or2236, i8 %or
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 %b.0) #6, !srcloc !96
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_pair(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_timing_compute(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_timing_merge(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcim_pin_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_std_ports(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atp867x_check_ports(ptr nocapture noundef readonly %ap, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atp867x_check_ports.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atp867x_check_ports, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !92

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ioaddr1 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %2 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %print_id, align 4
  %4 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr1, align 4
  %6 = ptrtoint ptr %5 to i32
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iomap, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %mul = shl i32 %port, 4
  %add.ptr4 = getelementptr i8, ptr %12, i32 %mul
  %13 = ptrtoint ptr %add.ptr4 to i32
  %ctl_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 12
  %14 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctl_addr, align 4
  %16 = ptrtoint ptr %15 to i32
  %add.ptr11 = getelementptr i8, ptr %add.ptr4, i32 14
  %17 = ptrtoint ptr %add.ptr11 to i32
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 13
  %18 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bmdma_addr, align 4
  %20 = ptrtoint ptr %19 to i32
  %add.ptr18 = getelementptr i8, ptr %add.ptr4, i32 64
  %21 = ptrtoint ptr %add.ptr18 to i32
  %data_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %data_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data_addr, align 4
  %24 = ptrtoint ptr %23 to i32
  %error_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 2
  %25 = ptrtoint ptr %error_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %error_addr, align 4
  %27 = ptrtoint ptr %26 to i32
  %feature_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 3
  %28 = ptrtoint ptr %feature_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %feature_addr, align 4
  %30 = ptrtoint ptr %29 to i32
  %nsect_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 4
  %31 = ptrtoint ptr %nsect_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nsect_addr, align 4
  %33 = ptrtoint ptr %32 to i32
  %lbal_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 5
  %34 = ptrtoint ptr %lbal_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lbal_addr, align 4
  %36 = ptrtoint ptr %35 to i32
  %lbam_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 6
  %37 = ptrtoint ptr %lbam_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lbam_addr, align 4
  %39 = ptrtoint ptr %38 to i32
  %lbah_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 7
  %40 = ptrtoint ptr %lbah_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lbah_addr, align 4
  %42 = ptrtoint ptr %41 to i32
  %device_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 8
  %43 = ptrtoint ptr %device_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device_addr, align 4
  %45 = ptrtoint ptr %44 to i32
  %status_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 9
  %46 = ptrtoint ptr %status_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %status_addr, align 4
  %48 = ptrtoint ptr %47 to i32
  %command_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 10
  %49 = ptrtoint ptr %command_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %command_addr, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %54 = ptrtoint ptr %53 to i32
  %mstr_piospd = getelementptr inbounds %struct.atp867x_priv, ptr %1, i32 0, i32 1
  %55 = ptrtoint ptr %mstr_piospd to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mstr_piospd, align 4
  %57 = ptrtoint ptr %56 to i32
  %slave_piospd = getelementptr inbounds %struct.atp867x_priv, ptr %1, i32 0, i32 2
  %58 = ptrtoint ptr %slave_piospd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %slave_piospd, align 4
  %60 = ptrtoint ptr %59 to i32
  %eightb_piospd = getelementptr inbounds %struct.atp867x_priv, ptr %1, i32 0, i32 3
  %61 = ptrtoint ptr %eightb_piospd to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %eightb_piospd, align 4
  %63 = ptrtoint ptr %62 to i32
  %pci66mhz = getelementptr inbounds %struct.atp867x_priv, ptr %1, i32 0, i32 4
  %64 = ptrtoint ptr %pci66mhz to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pci66mhz, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atp867x_check_ports.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.30, i32 noundef %3, i32 noundef %port, i32 noundef %6, i32 noundef %13, i32 noundef %16, i32 noundef %17, i32 noundef %20, i32 noundef %21, i32 noundef %24, i32 noundef %27, i32 noundef %30, i32 noundef %33, i32 noundef %36, i32 noundef %39, i32 noundef %42, i32 noundef %45, i32 noundef %48, i32 noundef %51, i32 noundef %54, i32 noundef %57, i32 noundef %60, i32 noundef %63, i32 noundef %65) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atp867x_fixup(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  %v = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  %ports = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 12
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v) #6
  %4 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %v, align 1, !annotation !97
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 13, ptr noundef nonnull %v) #6
  %5 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %v, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp = icmp sgt i8 %6, -1
  br i1 %cmp, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -128, ptr %v, align 1
  %call2 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 13, i8 noundef zeroext -128) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atp867x_fixup.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atp867x_fixup, %if.then7)) #6
          to label %if.end10 [label %if.then7], !srcloc !92

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %v, align 1
  %conv9 = zext i8 %9 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atp867x_fixup.__UNIQUE_ID_ddebug291, ptr noundef %1, ptr noundef nonnull @.str.32, i32 noundef %conv9) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then, %entry.if.end10_crit_edge
  %host13 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 31
  %10 = ptrtoint ptr %host13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host13, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iomap, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %add.ptr16 = getelementptr i8, ptr %15, i32 74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr16, i16 17169) #6, !srcloc !99
  %16 = ptrtoint ptr %host13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host13, align 4
  %iomap.1 = getelementptr inbounds %struct.ata_host, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %iomap.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iomap.1, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %add.ptr17.1 = getelementptr i8, ptr %21, i32 90
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr17.1, i16 17169) #6, !srcloc !99
  %22 = ptrtoint ptr %host13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host13, align 4
  %iomap.2 = getelementptr inbounds %struct.ata_host, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %iomap.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iomap.2, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %add.ptr17.2 = getelementptr i8, ptr %27, i32 106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr17.2, i16 17169) #6, !srcloc !99
  %28 = ptrtoint ptr %host13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %host13, align 4
  %iomap.3 = getelementptr inbounds %struct.ata_host, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %iomap.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iomap.3, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %add.ptr17.3 = getelementptr i8, ptr %33, i32 122
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr17.3, i16 17169) #6, !srcloc !99
  %34 = ptrtoint ptr %host13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %host13, align 4
  %iomap23 = getelementptr inbounds %struct.ata_host, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %iomap23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iomap23, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %add.ptr27 = getelementptr i8, ptr %39, i32 76
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr27, i16 2) #6, !srcloc !99
  %40 = ptrtoint ptr %host13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %host13, align 4
  %iomap23.1 = getelementptr inbounds %struct.ata_host, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %iomap23.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iomap23.1, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %add.ptr28.1 = getelementptr i8, ptr %45, i32 92
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr28.1, i16 2) #6, !srcloc !99
  %46 = ptrtoint ptr %host13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %host13, align 4
  %iomap23.2 = getelementptr inbounds %struct.ata_host, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %iomap23.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iomap23.2, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %add.ptr28.2 = getelementptr i8, ptr %51, i32 108
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr28.2, i16 2) #6, !srcloc !99
  %52 = ptrtoint ptr %host13 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %host13, align 4
  %iomap23.3 = getelementptr inbounds %struct.ata_host, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %iomap23.3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %iomap23.3, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %add.ptr28.3 = getelementptr i8, ptr %57, i32 124
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr28.3, i16 2) #6, !srcloc !99
  %58 = ptrtoint ptr %host13 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %host13, align 4
  %iomap33 = getelementptr inbounds %struct.ata_host, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %iomap33 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %iomap33, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %add.ptr35 = getelementptr i8, ptr %63, i32 40
  %64 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr35) #6, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %65 = and i8 %64, 15
  %66 = or i8 %65, -64
  %67 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %v, align 1
  %68 = ptrtoint ptr %host13 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %host13, align 4
  %iomap42 = getelementptr inbounds %struct.ata_host, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %iomap42 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %iomap42, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %add.ptr44 = getelementptr i8, ptr %73, i32 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr44, i8 %66) #6, !srcloc !96
  %74 = ptrtoint ptr %host13 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %host13, align 4
  %iomap46 = getelementptr inbounds %struct.ata_host, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %iomap46 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %iomap46, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %add.ptr48 = getelementptr i8, ptr %79, i32 63
  %80 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr48) #6, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %81 = and i8 %80, 14
  %82 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %v, align 1
  %device = getelementptr i8, ptr %1, i32 -102
  %83 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %84)
  %cmp54 = icmp eq i16 %84, 11
  br i1 %cmp54, label %if.then56, label %if.end10.if.end60_crit_edge

if.end10.if.end60_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then56:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %85 = or i8 %81, 2
  %86 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %v, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.end10.if.end60_crit_edge
  %87 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %v, align 1
  %89 = ptrtoint ptr %host13 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %host13, align 4
  %iomap62 = getelementptr inbounds %struct.ata_host, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %iomap62 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %iomap62, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %add.ptr64 = getelementptr i8, ptr %94, i32 63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr64, i8 %88) #6, !srcloc !96
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_pata_atp867x__293_545_atp867x_driver_init6, !1, !"__initcall__kmod_pata_atp867x__293_545_atp867x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_atp867x.c", i32 545, i32 1}
!2 = !{ptr @__exitcall_atp867x_driver_exit, !1, !"__exitcall_atp867x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_atp867x.c", i32 547, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_atp867x.c", i32 548, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_atp867x.c", i32 549, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version298, !11, !"__UNIQUE_ID_version298", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_atp867x.c", i32 551, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @atp867x_driver, !17, !"atp867x_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_atp867x.c", i32 534, i32 26}
!18 = !{ptr @atp867x_pci_tbl, !19, !"atp867x_pci_tbl", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_atp867x.c", i32 528, i32 29}
!20 = !{ptr @atp867x_init_one.info_867x, !21, !"info_867x", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_atp867x.c", i32 467, i32 36}
!22 = distinct !{null, !23, !"__print_once", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_atp867x.c", i32 478, i32 2}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_atp867x.c", i32 484, i32 2}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @atp867x_init_one._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @atp867x_init_one._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/ata/pata_atp867x.c", i32 489, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @atp867x_init_one._entry.8, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @atp867x_init_one._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/ata/pata_atp867x.c", i32 496, i32 3}
!39 = !{ptr @atp867x_init_one._entry.12, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @atp867x_init_one._entry_ptr.14, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/ata/pata_atp867x.c", i32 505, i32 3}
!43 = !{ptr @atp867x_init_one._entry.15, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @atp867x_init_one._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @atp867x_ops, !46, !"atp867x_ops", i1 false, i1 false}
!46 = !{!"../drivers/ata/pata_atp867x.c", i32 266, i32 35}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/ata/pata_atp867x.c", i32 158, i32 3}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @atp867x_get_active_clocks_shifted._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @atp867x_get_active_clocks_shifted._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/ata/pata_atp867x.c", i32 192, i32 3}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @atp867x_get_recover_clocks_shifted._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @atp867x_get_recover_clocks_shifted._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/ata/pata_atp867x.c", i32 423, i32 3}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @atp867x_ata_pci_sff_init_host.__UNIQUE_ID_ddebug292, !58, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/ata/pata_atp867x.c", i32 445, i32 21}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/ata/pata_atp867x.c", i32 448, i32 21}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/ata/pata_atp867x.c", i32 455, i32 3}
!67 = !{ptr @atp867x_ata_pci_sff_init_host._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @atp867x_ata_pci_sff_init_host._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/ata/pata_atp867x.c", i32 283, i32 3}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @atp867x_check_res.__UNIQUE_ID_ddebug289, !70, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/ata/pata_atp867x.c", i32 293, i32 2}
!75 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @atp867x_check_ports.__UNIQUE_ID_ddebug290, !74, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/ata/pata_atp867x.c", i32 372, i32 3}
!79 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @atp867x_fixup.__UNIQUE_ID_ddebug291, !78, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!81 = !{ptr @atp867x_sht, !82, !"atp867x_sht", i1 false, i1 false}
!82 = !{!"../drivers/ata/pata_atp867x.c", i32 262, i32 34}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2148703310, i64 2148703315, i64 2148703328, i64 2148703372, i64 2148703406, i64 2148703427}
!93 = !{i64 4991810}
!94 = !{i64 2152531155}
!95 = !{i64 2152532760}
!96 = !{i64 4991415}
!97 = !{!"auto-init"}
!98 = !{i64 2152533184}
!99 = !{i64 4990992}
