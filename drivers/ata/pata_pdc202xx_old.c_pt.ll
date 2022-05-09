; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_pdc202xx_old.c_pt.bc'
source_filename = "../drivers/ata/pata_pdc202xx_old.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.84, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.84 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }

@__initcall__kmod_pata_pdc202xx_old__289_385_pdc202xx_pci_driver_init6 = internal global ptr @pdc202xx_pci_driver_init, section ".initcall6.init", align 4
@pdc202xx_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @pdc202xx, ptr @pdc202xx_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @ata_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pdc202xx_pci_driver_exit = internal global ptr @pdc202xx_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [34 x i8] c"pata_pdc202xx_old.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [81 x i8] c"pata_pdc202xx_old.description=low-level driver for Promise 2024x and 20262-20267\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [53 x i8] c"pata_pdc202xx_old.file=drivers/ata/pata_pdc202xx_old\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [30 x i8] c"pata_pdc202xx_old.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version294 = internal constant [32 x i8] c"pata_pdc202xx_old.version=0.4.3\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pata_pdc202xx_old\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.4.3\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@pdc202xx = internal constant { [6 x %struct.pci_device_id], [32 x i8] } { [6 x %struct.pci_device_id] [%struct.pci_device_id { i32 4186, i32 19763, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4186, i32 19768, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4186, i32 3384, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4186, i32 3376, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4186, i32 19760, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pdc202xx_init_one.info = internal constant { [3 x %struct.ata_port_info], [44 x i8] } { [3 x %struct.ata_port_info] [%struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 7, ptr @pdc2024x_port_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 31, ptr @pdc2026x_port_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 63, ptr @pdc2026x_port_ops, ptr null }], [44 x i8] zeroinitializer }, align 32
@pdc2024x_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_cable_40wire, ptr null, ptr @pdc202xx_set_piomode, ptr @pdc202xx_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc202xx_exec_command, ptr null, ptr null, ptr @pdc202xx_irq_check, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@pdc2026x_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr @pdc2026x_check_atapi_dma, ptr null, ptr null, ptr null, ptr @pdc2026x_cable_detect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc2026x_dev_config, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc2026x_port_start, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc202xx_exec_command, ptr null, ptr null, ptr @pdc202xx_irq_check, ptr null, ptr null, ptr null, ptr @pdc2026x_bmdma_start, ptr @pdc2026x_bmdma_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pdc2024x_port_ops }, [44 x i8] zeroinitializer }, align 32
@pdc202xx_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@pdc202xx_configure_piomode.pio_timing = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 2323, i16 1292, i16 776, i16 518, i16 260], [22 x i8] zeroinitializer }, align 32
@pdc202xx_set_dmamode.udma_timing = internal constant { [6 x [2 x i8]], [20 x i8] } { [6 x [2 x i8]] [[2 x i8] c"`\03", [2 x i8] c"@\02", [2 x i8] c" \01", [2 x i8] c"@\02", [2 x i8] c" \01", [2 x i8] c" \01"], [20 x i8] zeroinitializer }, align 32
@pdc202xx_set_dmamode.mdma_timing = internal constant { [3 x [2 x i8]], [26 x i8] } { [3 x [2 x i8]] [[2 x i8] c"\E0\0F", [2 x i8] c"`\04", [2 x i8] c"`\03"], [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2400, i64 2402]
@___asan_gen_.3 = private unnamed_addr constant [20 x i8] c"pdc202xx_pci_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 374, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 391, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant [9 x i8] c"pdc202xx\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 364, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 325, i32 36 }
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"pdc2024x_port_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 296, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [18 x i8] c"pdc2026x_port_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 307, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"pdc202xx_sht\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 292, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [11 x i8] c"pio_timing\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 81, i32 13 }
@___asan_gen_.33 = private unnamed_addr constant [12 x i8] c"udma_timing\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 128, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"mdma_timing\00", align 1
@___asan_gen_.37 = private constant [35 x i8] c"../drivers/ata/pata_pdc202xx_old.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 136, i32 12 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_version294, ptr @__exitcall_pdc202xx_pci_driver_exit, ptr @__initcall__kmod_pata_pdc202xx_old__289_385_pdc202xx_pci_driver_init6, ptr @__modver_attr, ptr @pdc202xx_pci_driver_exit, ptr @pdc202xx_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @pdc202xx, ptr @pdc202xx_init_one.info, ptr @pdc2024x_port_ops, ptr @pdc2026x_port_ops, ptr @pdc202xx_sht, ptr @pdc202xx_configure_piomode.pio_timing, ptr @pdc202xx_set_dmamode.udma_timing, ptr @pdc202xx_set_dmamode.mdma_timing], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc202xx_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc202xx to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc202xx_init_one.info to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc2024x_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc2026x_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc202xx_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc202xx_configure_piomode.pio_timing to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc202xx_set_dmamode.udma_timing to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdc202xx_set_dmamode.mdma_timing to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc202xx_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pdc202xx_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pdc202xx_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @pdc202xx_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc202xx_init_one(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #7
  %0 = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [3 x %struct.ata_port_info], ptr @pdc202xx_init_one.info, i32 0, i32 %2
  %3 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %ppi, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %0, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3376, i16 %6)
  %cmp = icmp eq i16 %6, 3376
  br i1 %cmp, label %if.then, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then:                                          ; preds = %entry
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 8
  %self = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %self, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.then.if.end18_crit_edge, label %land.lhs.true

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true:                                    ; preds = %if.then
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %12)
  %cmp3 = icmp eq i16 %12, -32634
  br i1 %cmp3, label %if.then5, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then5:                                         ; preds = %land.lhs.true
  %device6 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 8
  %13 = ptrtoint ptr %device6 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device6, align 2
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i16 %14, label %if.then5.if.end18_crit_edge [
    i16 2400, label %if.then5.cleanup19_crit_edge
    i16 2402, label %if.then5.cleanup19_crit_edge25
  ]

if.then5.cleanup19_crit_edge25:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup19

if.then5.cleanup19_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup19

if.then5.if.end18_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end18:                                         ; preds = %if.then5.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %if.then.if.end18_crit_edge, %entry.if.end18_crit_edge
  %call = call i32 @ata_pci_bmdma_init_one(ptr noundef %dev, ptr noundef nonnull %ppi, ptr noundef nonnull @pdc202xx_sht, ptr noundef null, i32 noundef 0) #7
  br label %cleanup19

cleanup19:                                        ; preds = %if.end18, %if.then5.cleanup19_crit_edge, %if.then5.cleanup19_crit_edge25
  %retval.1 = phi i32 [ %call, %if.end18 ], [ -19, %if.then5.cleanup19_crit_edge ], [ -19, %if.then5.cleanup19_crit_edge25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_resume(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_init_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_40wire(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc202xx_set_piomode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  %r_ap.i = alloca i8, align 1
  %r_bp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %1 to i32
  %sub = add nsw i32 %conv, -8
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %dev.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 -136
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %7, 3
  %add.i = add i32 %mul.i, 96
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %8 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devno.i, align 4
  %mul1.i = shl i32 %9, 2
  %add2.i = add i32 %add.i, %mul1.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r_ap.i) #7
  %10 = ptrtoint ptr %r_ap.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %r_ap.i, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r_bp.i) #7
  %11 = ptrtoint ptr %r_bp.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %r_bp.i, align 1, !annotation !43
  %call.i = call i32 @pci_read_config_byte(ptr noundef %add.ptr.i, i32 noundef %add2.i, ptr noundef nonnull %r_ap.i) #7
  %add3.i = or i32 %add2.i, 1
  %call4.i = call i32 @pci_read_config_byte(ptr noundef %add.ptr.i, i32 noundef %add3.i, ptr noundef nonnull %r_bp.i) #7
  %12 = ptrtoint ptr %r_ap.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %r_ap.i, align 1
  %14 = and i8 %13, -64
  %15 = ptrtoint ptr %r_bp.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %r_bp.i, align 1
  %17 = and i8 %16, -32
  %arrayidx.i = getelementptr [5 x i16], ptr @pdc202xx_configure_piomode.pio_timing, i32 0, i32 %sub
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i, align 2
  %20 = lshr i16 %19, 8
  %21 = trunc i16 %20 to i8
  %or.i = or i8 %14, %21
  store i8 %or.i, ptr %r_ap.i, align 1
  %and14.i = trunc i16 %19 to i8
  %or16.i = or i8 %17, %and14.i
  store i8 %or16.i, ptr %r_bp.i, align 1
  %call18.i = call i32 @ata_pio_need_iordy(ptr noundef %adev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %r_ap.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %r_ap.i, align 1
  %24 = or i8 %23, 32
  store i8 %24, ptr %r_ap.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %class.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 9
  %25 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %class.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i = icmp eq i32 %26, 1
  br i1 %cmp.i, label %if.then23.i, label %if.end.i.pdc202xx_configure_piomode.exit_crit_edge

if.end.i.pdc202xx_configure_piomode.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pdc202xx_configure_piomode.exit

if.then23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %r_ap.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %r_ap.i, align 1
  %29 = or i8 %28, 16
  store i8 %29, ptr %r_ap.i, align 1
  br label %pdc202xx_configure_piomode.exit

pdc202xx_configure_piomode.exit:                  ; preds = %if.then23.i, %if.end.i.pdc202xx_configure_piomode.exit_crit_edge
  %30 = ptrtoint ptr %r_ap.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %r_ap.i, align 1
  %call28.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i, i32 noundef %add2.i, i8 noundef zeroext %31) #7
  %32 = ptrtoint ptr %r_bp.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %r_bp.i, align 1
  %call30.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i, i32 noundef %add3.i, i8 noundef zeroext %33) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r_bp.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r_ap.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc202xx_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %r_bp = alloca i8, align 1
  %r_cp = alloca i8, align 1
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
  %mul = shl i32 %5, 3
  %add = add i32 %mul, 96
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %6 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devno, align 4
  %mul1 = shl i32 %7, 2
  %add2 = add i32 %add, %mul1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r_bp) #7
  %8 = ptrtoint ptr %r_bp to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %r_bp, align 1, !annotation !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r_cp) #7
  %9 = ptrtoint ptr %r_cp to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %r_cp, align 1, !annotation !43
  %add3 = or i32 %add2, 1
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add3, ptr noundef nonnull %r_bp) #7
  %add4 = or i32 %add2, 2
  %call5 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add4, ptr noundef nonnull %r_cp) #7
  %10 = ptrtoint ptr %r_bp to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %r_bp, align 1
  %12 = and i8 %11, 31
  %13 = ptrtoint ptr %r_cp to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %r_cp, align 1
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %15 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dma_mode, align 1
  %conv10 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %16)
  %cmp = icmp ugt i8 %16, 63
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add nsw i32 %conv10, -64
  %arrayidx = getelementptr [6 x [2 x i8]], ptr @pdc202xx_set_dmamode.udma_timing, i32 0, i32 %sub
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %or58 = or i8 %18, %12
  %19 = ptrtoint ptr %r_bp to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %or58, ptr %r_bp, align 1
  %arrayidx19 = getelementptr [6 x [2 x i8]], ptr @pdc202xx_set_dmamode.udma_timing, i32 0, i32 %sub, i32 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub27 = add nsw i32 %conv10, -32
  %arrayidx28 = getelementptr [3 x [2 x i8]], ptr @pdc202xx_set_dmamode.mdma_timing, i32 0, i32 %sub27
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx28, align 1
  %or3256 = or i8 %21, %12
  %22 = ptrtoint ptr %r_bp to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or3256, ptr %r_bp, align 1
  %arrayidx35 = getelementptr [3 x [2 x i8]], ptr @pdc202xx_set_dmamode.mdma_timing, i32 0, i32 %sub27, i32 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.pn.in = phi ptr [ %arrayidx35, %if.else ], [ %arrayidx19, %if.then ]
  %23 = and i8 %14, -16
  %24 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load1_noabort(i32 %24)
  %.pn = load i8, ptr %.pn.in, align 1
  %storemerge = or i8 %.pn, %23
  %25 = ptrtoint ptr %r_cp to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %storemerge, ptr %r_cp, align 1
  %26 = ptrtoint ptr %r_bp to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %r_bp, align 1
  %call41 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add3, i8 noundef zeroext %27) #7
  %28 = ptrtoint ptr %r_cp to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %r_cp, align 1
  %call43 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add4, i8 noundef zeroext %29) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r_cp) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r_bp) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc202xx_exec_command(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %tf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %command = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 14
  %0 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %command, align 1
  %command_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 10
  %2 = ptrtoint ptr %command_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %command_addr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 %1) #7, !srcloc !45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @pdc202xx_irq_check(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
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
  %arrayidx = getelementptr i8, ptr %3, i32 1064
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 8
  %add = add i32 %5, 29
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %8 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %retval.0.in.v = select i1 %tobool.not, i8 4, i8 64
  %retval.0.in = and i8 %retval.0.in.v, %7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in)
  %retval.0 = icmp ne i8 %retval.0.in, 0
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pio_need_iordy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pdc2026x_check_atapi_dma(ptr nocapture noundef readnone %qc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc2026x_cable_detect(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  %cis = alloca i16, align 2
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cis) #7
  %4 = ptrtoint ptr %cis to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %cis, align 2, !annotation !43
  %call = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef 80, ptr noundef nonnull %cis) #7
  %5 = ptrtoint ptr %cis to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cis, align 2
  %conv = zext i16 %6 to i32
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %7 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port_no, align 4
  %add = add i32 %8, 10
  %shl = shl nuw i32 1, %add
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cis) #7
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @pdc2026x_dev_config(ptr nocapture noundef writeonly %adev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %max_sectors = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 16
  %0 = ptrtoint ptr %max_sectors to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 256, ptr %max_sectors, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdc2026x_port_start(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 13
  %0 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bmdma_addr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %1, i32 31
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %3 = or i8 %2, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %3) #7, !srcloc !45
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call i32 @ata_bmdma_port_start(ptr noundef %ap) #7
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc2026x_bmdma_start(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tf2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %ports = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ports, align 4
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 8, i32 13
  %10 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bmdma_addr, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 17
  %add.ptr3 = getelementptr i8, ptr %11, i32 32
  %mul = shl i32 %5, 2
  %add.ptr5 = getelementptr i8, ptr %add.ptr3, i32 %mul
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 12
  %12 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dma_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %13)
  %cmp = icmp ugt i8 %13, 66
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  %15 = select i1 %tobool.not, i8 2, i8 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv8 = or i8 %14, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv8) #7, !srcloc !45
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = xor i8 %15, -1
  %conv11 = and i8 %14, %16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv11) #7, !srcloc !45
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void @pdc202xx_set_dmamode(ptr noundef %1, ptr noundef %18)
  %19 = ptrtoint ptr %tf2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tf2, align 4
  %and13 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %lor.lhs.false, label %if.end.if.then18_crit_edge

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.end
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %22)
  %cmp16 = icmp eq i8 %22, 10
  br i1 %cmp16, label %lor.lhs.false.if.then18_crit_edge, label %lor.lhs.false.if.end27_crit_edge

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %if.end.if.then18_crit_edge
  %nbytes = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 13
  %23 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nbytes, align 4
  %div45 = lshr i32 %24, 1
  %and20 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %len.0.v = select i1 %tobool21.not, i32 83886080, i32 100663296
  %len.0 = or i32 %div45, %len.0.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %len.0) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %25) #7, !srcloc !50
  br label %if.end27

if.end27:                                         ; preds = %if.then18, %lor.lhs.false.if.end27_crit_edge
  tail call void @ata_bmdma_start(ptr noundef %qc) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pdc2026x_bmdma_stop(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 2, i32 8
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %ports = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ports, align 4
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 8, i32 13
  %10 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bmdma_addr, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 17
  %add.ptr3 = getelementptr i8, ptr %11, i32 32
  %mul = shl i32 %5, 2
  %add.ptr5 = getelementptr i8, ptr %add.ptr3, i32 %mul
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %13)
  %cmp = icmp eq i8 %13, 10
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %tf2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %14 = ptrtoint ptr %tf2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tf2, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #7, !srcloc !50
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %17 = trunc i32 %cond to i8
  %18 = xor i8 %17, -1
  %conv10 = and i8 %16, %18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv10) #7, !srcloc !45
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 12
  %19 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dma_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %20)
  %cmp12 = icmp ugt i8 %20, 66
  br i1 %cmp12, label %if.then14, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %22 = trunc i32 %cond to i8
  %23 = xor i8 %22, -1
  %conv19 = and i8 %21, %23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv19) #7, !srcloc !45
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.end.if.end20_crit_edge
  tail call void @ata_bmdma_stop(ptr noundef %qc) #7
  tail call void @pdc202xx_set_piomode(ptr noundef %1, ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_port_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_bmdma_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_bmdma_stop(ptr noundef) local_unnamed_addr #1

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_pata_pdc202xx_old__289_385_pdc202xx_pci_driver_init6, !1, !"__initcall__kmod_pata_pdc202xx_old__289_385_pdc202xx_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_pdc202xx_old.c", i32 385, i32 1}
!2 = !{ptr @__exitcall_pdc202xx_pci_driver_exit, !1, !"__exitcall_pdc202xx_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_pdc202xx_old.c", i32 387, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_pdc202xx_old.c", i32 388, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_pdc202xx_old.c", i32 389, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version294, !11, !"__UNIQUE_ID_version294", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_pdc202xx_old.c", i32 391, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @pdc202xx_pci_driver, !17, !"pdc202xx_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_pdc202xx_old.c", i32 374, i32 26}
!18 = !{ptr @pdc202xx, !19, !"pdc202xx", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_pdc202xx_old.c", i32 364, i32 35}
!20 = !{ptr @pdc202xx_init_one.info, !21, !"info", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_pdc202xx_old.c", i32 325, i32 36}
!22 = !{ptr @pdc2024x_port_ops, !23, !"pdc2024x_port_ops", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_pdc202xx_old.c", i32 296, i32 35}
!24 = !{ptr @pdc202xx_configure_piomode.pio_timing, !25, !"pio_timing", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_pdc202xx_old.c", i32 81, i32 13}
!26 = !{ptr @pdc202xx_set_dmamode.udma_timing, !27, !"udma_timing", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_pdc202xx_old.c", i32 128, i32 12}
!28 = !{ptr @pdc202xx_set_dmamode.mdma_timing, !29, !"mdma_timing", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_pdc202xx_old.c", i32 136, i32 12}
!30 = !{ptr @pdc2026x_port_ops, !31, !"pdc2026x_port_ops", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_pdc202xx_old.c", i32 307, i32 35}
!32 = !{ptr @pdc202xx_sht, !33, !"pdc202xx_sht", i1 false, i1 false}
!33 = !{!"../drivers/ata/pata_pdc202xx_old.c", i32 292, i32 34}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
!44 = !{i64 2152529226}
!45 = !{i64 4987881}
!46 = !{i64 4988276}
!47 = !{i64 2155697275}
!48 = !{i64 2152527621}
!49 = !{i64 2152530200}
!50 = !{i64 4988078}
