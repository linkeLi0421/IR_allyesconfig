; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_platform.c_pt.bc'
source_filename = "../drivers/ata/pata_platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__pata_platform_probe\22, \22a\22\09"
module asm "\09.weak\09__crc___pata_platform_probe\09\09\09\09"
module asm "\09.long\09__crc___pata_platform_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pata_platform_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22__pata_platform_probe\22\09\09\09\09\09"
module asm "__kstrtabns___pata_platform_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
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
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pm_message = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__param_str_pio_mask = internal constant [23 x i8] c"pata_platform.pio_mask\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@pio_mask = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_pio_mask = internal constant %struct.kernel_param { ptr @__param_str_pio_mask, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @pio_mask } }, section "__param", align 4
@__UNIQUE_ID_pio_masktype287 = internal constant [36 x i8] c"pata_platform.parmtype=pio_mask:int\00", section ".modinfo", align 1
@__UNIQUE_ID_pio_mask288 = internal constant [72 x i8] c"pata_platform.parm=pio_mask:PIO modes supported, mode 0 only by default\00", section ".modinfo", align 1
@ata_sff_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no IRQ, using PIO polling\00", [38 x i8] zeroinitializer }, align 32
@__pata_platform_probe._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 167, ptr @.str.4, ptr @.str.5 }, align 1
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to map IO/CTL base\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__pata_platform_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/ata/pata_platform.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__pata_platform_probe._entry_ptr = internal global ptr @__pata_platform_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s cmd 0x%llx ctl 0x%llx\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmio\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ioport\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab___pata_platform_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns___pata_platform_probe = external dso_local constant [0 x i8], align 1
@__ksymtab___pata_platform_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pata_platform_probe to i32), ptr @__kstrtab___pata_platform_probe, ptr @__kstrtabns___pata_platform_probe }, section "___ksymtab_gpl+__pata_platform_probe", align 4
@__initcall__kmod_pata_platform__289_238_pata_platform_driver_init6 = internal global ptr @pata_platform_driver_init, section ".initcall6.init", align 4
@pata_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pata_platform_probe, ptr @ata_platform_remove_one, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pata_platform_driver_exit = internal global ptr @pata_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [32 x i8] c"pata_platform.author=Paul Mundt\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [67 x i8] c"pata_platform.description=low-level driver for platform device ATA\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [45 x i8] c"pata_platform.file=drivers/ata/pata_platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [26 x i8] c"pata_platform.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version294 = internal constant [26 x i8] c"pata_platform.version=1.2\00", section ".modinfo", align 1
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pata_platform\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.2\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.10, ptr @.str.11 }, section "__modver", align 4
@__UNIQUE_ID_alias295 = internal constant [43 x i8] c"pata_platform.alias=platform:pata_platform\00", section ".modinfo", align 1
@pata_platform_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ata%u.%02u: configured for PIO\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pata_platform_set_mode\00", [41 x i8] zeroinitializer }, align 32
@pata_platform_set_mode._entry_ptr = internal global ptr @pata_platform_set_mode._entry, section ".printk_index", align 4
@pata_platform_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 196, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid number of resources\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pata_platform_probe\00", [44 x i8] zeroinitializer }, align 32
@pata_platform_probe._entry_ptr = internal global ptr @pata_platform_probe._entry, section ".printk_index", align 4
@pata_platform_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.10, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.10, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@___asan_gen_.16 = private unnamed_addr constant [9 x i8] c"pio_mask\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 26, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 149, i32 21 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 167, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 175, i32 20 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 175, i32 55 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 175, i32 64 }
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"pata_platform_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 230, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 243, i32 1 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 43, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 196, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"pata_platform_sht\00", align 1
@___asan_gen_.77 = private constant [31 x i8] c"../drivers/ata/pata_platform.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 48, i32 34 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_alias295, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_pio_mask288, ptr @__UNIQUE_ID_pio_masktype287, ptr @__UNIQUE_ID_version294, ptr @__exitcall_pata_platform_driver_exit, ptr @__initcall__kmod_pata_platform__289_238_pata_platform_driver_init6, ptr @__ksymtab___pata_platform_probe, ptr @__modver_attr, ptr @__param_pio_mask, ptr @__pata_platform_probe._entry, ptr @__pata_platform_probe._entry_ptr, ptr @pata_platform_driver_exit, ptr @pata_platform_probe._entry, ptr @pata_platform_probe._entry_ptr, ptr @pata_platform_set_mode._entry, ptr @pata_platform_set_mode._entry_ptr, ptr @pio_mask, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @pata_platform_driver, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @pata_platform_sht], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pio_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_platform_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_platform_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_platform_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__pata_platform_probe(ptr noundef %dev, ptr nocapture noundef readonly %io_res, ptr nocapture noundef readonly %ctl_res, ptr noundef readonly %irq_res, i32 noundef %ioport_shift, i32 noundef %__pio_mask, ptr noundef %sht, i1 noundef zeroext %use16bit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.resource, ptr %io_res, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %1)
  %cmp = icmp eq i32 %1, 512
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %flags1 = getelementptr inbounds %struct.resource, ptr %ctl_res, i32 0, i32 3
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %3)
  %cmp2 = icmp eq i32 %3, 512
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp2, %land.rhs ]
  %tobool.not = icmp eq ptr %irq_res, null
  br i1 %tobool.not, label %land.end.if.end_crit_edge, label %land.lhs.true

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %land.end
  %5 = ptrtoint ptr %irq_res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq_res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3.not = icmp eq i32 %6, 0
  br i1 %cmp3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %flags5 = getelementptr inbounds %struct.resource, ptr %irq_res, i32 0, i32 3
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags5, align 4
  %and = and i32 %8, 15
  %or = or i32 %and, 128
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %land.end.if.end_crit_edge
  %irq.0 = phi i32 [ %6, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %land.end.if.end_crit_edge ]
  %irq_flags.0 = phi i32 [ %or, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %land.end.if.end_crit_edge ]
  %call = tail call ptr @ata_host_alloc(ptr noundef %dev, i32 noundef 1) #4
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %ports = getelementptr inbounds %struct.ata_host, ptr %call, i32 0, i32 12
  %9 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ports, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 244, i32 noundef 3520) #4
  %ops = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %ops, align 4
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %inherits = getelementptr inbounds %struct.ata_port_operations, ptr %call.i, i32 0, i32 60
  %12 = ptrtoint ptr %inherits to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ata_sff_port_ops, ptr %inherits, align 4
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %cable_detect = getelementptr inbounds %struct.ata_port_operations, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %cable_detect to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ata_cable_unknown, ptr %cable_detect, align 4
  %16 = load ptr, ptr %ops, align 4
  %set_mode = getelementptr inbounds %struct.ata_port_operations, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %set_mode to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @pata_platform_set_mode, ptr %set_mode, align 4
  %18 = load ptr, ptr %ops, align 4
  %sff_data_xfer = getelementptr inbounds %struct.ata_port_operations, ptr %18, i32 0, i32 44
  %ata_sff_data_xfer.ata_sff_data_xfer32 = select i1 %use16bit, ptr @ata_sff_data_xfer, ptr @ata_sff_data_xfer32
  %19 = ptrtoint ptr %sff_data_xfer to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ata_sff_data_xfer.ata_sff_data_xfer32, ptr %sff_data_xfer, align 4
  %pio_mask = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 15
  %20 = ptrtoint ptr %pio_mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %__pio_mask, ptr %pio_mask, align 16
  %flags23 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 3
  %21 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags23, align 4
  %or24 = or i32 %22, 1
  store i32 %or24, ptr %flags23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq.0)
  %tobool25.not = icmp eq i32 %irq.0, 0
  br i1 %tobool25.not, label %if.then26, label %if.end13.if.end29_crit_edge

if.end13.if.end29_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then26:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %or28 = or i32 %22, 513
  %23 = ptrtoint ptr %flags23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or28, ptr %flags23, align 4
  tail call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %10, ptr noundef nonnull @.str) #4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end13.if.end29_crit_edge
  br i1 %4, label %if.then31, label %if.else39

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %io_res to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %io_res, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %io_res, i32 0, i32 1
  %26 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %25
  %add.i = add i32 %sub.i, %27
  %call34 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %25, i32 noundef %add.i) #4
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8
  %28 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call34, ptr %ioaddr, align 32
  %29 = ptrtoint ptr %ctl_res to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ctl_res, align 4
  %end.i119 = getelementptr inbounds %struct.resource, ptr %ctl_res, i32 0, i32 1
  %31 = ptrtoint ptr %end.i119 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %end.i119, align 4
  %sub.i120 = sub i32 1, %30
  %add.i121 = add i32 %sub.i120, %32
  %call37 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %30, i32 noundef %add.i121) #4
  br label %if.end50

if.else39:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %ioaddr43 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8
  %33 = ptrtoint ptr %ioaddr43 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %ioaddr43, align 32
  br label %if.end50

if.end50:                                         ; preds = %if.else39, %if.then31
  %.sink = phi ptr [ %call37, %if.then31 ], [ null, %if.else39 ]
  %34 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 12
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %.sink, ptr %34, align 16
  %ioaddr51 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8
  %36 = ptrtoint ptr %ioaddr51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr51, align 32
  %tobool53.not = icmp eq ptr %37, null
  br i1 %tobool53.not, label %if.end50.do.end_crit_edge, label %lor.lhs.false

if.end50.do.end_crit_edge:                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end50
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %34, align 16
  %tobool56.not = icmp eq ptr %39, null
  br i1 %tobool56.not, label %lor.lhs.false.do.end_crit_edge, label %if.end58

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end50.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end58:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %altstatus_addr = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 11
  %40 = ptrtoint ptr %altstatus_addr to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %altstatus_addr, align 4
  %data_addr.i = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 1
  %41 = ptrtoint ptr %data_addr.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %37, ptr %data_addr.i, align 4
  %shl2.i = shl nuw i32 1, %ioport_shift
  %add.ptr3.i = getelementptr i8, ptr %37, i32 %shl2.i
  %error_addr.i = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 2
  %42 = ptrtoint ptr %error_addr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr3.i, ptr %error_addr.i, align 4
  %feature_addr.i = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 3
  %43 = ptrtoint ptr %feature_addr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr3.i, ptr %feature_addr.i, align 4
  %shl8.i = shl i32 2, %ioport_shift
  %add.ptr9.i = getelementptr i8, ptr %37, i32 %shl8.i
  %nsect_addr.i = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 4
  %44 = ptrtoint ptr %nsect_addr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr9.i, ptr %nsect_addr.i, align 4
  %shl11.i = shl i32 3, %ioport_shift
  %add.ptr12.i = getelementptr i8, ptr %37, i32 %shl11.i
  %lbal_addr.i = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 5
  %45 = ptrtoint ptr %lbal_addr.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr12.i, ptr %lbal_addr.i, align 4
  %shl14.i = shl i32 4, %ioport_shift
  %add.ptr15.i = getelementptr i8, ptr %37, i32 %shl14.i
  %lbam_addr.i = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 6
  %46 = ptrtoint ptr %lbam_addr.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr15.i, ptr %lbam_addr.i, align 4
  %shl17.i = shl i32 5, %ioport_shift
  %add.ptr18.i = getelementptr i8, ptr %37, i32 %shl17.i
  %lbah_addr.i = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 7
  %47 = ptrtoint ptr %lbah_addr.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr18.i, ptr %lbah_addr.i, align 4
  %shl20.i = shl i32 6, %ioport_shift
  %add.ptr21.i = getelementptr i8, ptr %37, i32 %shl20.i
  %device_addr.i = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 8
  %48 = ptrtoint ptr %device_addr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr21.i, ptr %device_addr.i, align 4
  %shl23.i = shl i32 7, %ioport_shift
  %add.ptr24.i = getelementptr i8, ptr %37, i32 %shl23.i
  %status_addr.i = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 9
  %49 = ptrtoint ptr %status_addr.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr24.i, ptr %status_addr.i, align 4
  %command_addr.i = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 10
  %50 = ptrtoint ptr %command_addr.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr24.i, ptr %command_addr.i, align 4
  %cond = select i1 %4, ptr @.str.7, ptr @.str.8
  %51 = ptrtoint ptr %io_res to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %io_res, align 4
  %conv = zext i32 %52 to i64
  %53 = ptrtoint ptr %ctl_res to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ctl_res, align 4
  %conv66 = zext i32 %54 to i64
  tail call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond, i64 noundef %conv, i64 noundef %conv66) #4
  %cond68 = select i1 %tobool25.not, ptr null, ptr @ata_sff_interrupt
  %call69 = tail call i32 @ata_host_activate(ptr noundef nonnull %call, i32 noundef %irq.0, ptr noundef %cond68, i32 noundef %irq_flags.0, ptr noundef %sht) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %do.end, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call69, %if.end58 ], [ -12, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_unknown(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pata_platform_set_mode(ptr noundef %link, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %link, i32 noundef 0) #4
  %tobool.not14 = icmp eq ptr %call, null
  br i1 %tobool.not14, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %dev.015 = phi ptr [ %call4, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %xfer_mode = getelementptr inbounds %struct.ata_device, ptr %dev.015, i32 0, i32 13
  %0 = ptrtoint ptr %xfer_mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %xfer_mode, align 2
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %dev.015, i32 0, i32 11
  %1 = ptrtoint ptr %pio_mode to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 8, ptr %pio_mode, align 16
  %xfer_shift = getelementptr inbounds %struct.ata_device, ptr %dev.015, i32 0, i32 14
  %2 = ptrtoint ptr %xfer_shift to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %xfer_shift, align 4
  %flags = getelementptr inbounds %struct.ata_device, ptr %dev.015, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %or = or i32 %4, 4096
  store i32 %or, ptr %flags, align 4
  %5 = ptrtoint ptr %dev.015 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.015, align 128
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pmp, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %dev.015, i32 0, i32 1
  %13 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devno, align 4
  %add = add i32 %14, %12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %10, i32 noundef %add) #7
  %call4 = tail call ptr @ata_dev_next(ptr noundef nonnull %dev.015, ptr noundef %link, i32 noundef 0) #4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_data_xfer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_data_xfer32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pata_platform_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pata_platform_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pata_platform_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @pata_platform_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pata_platform_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 6
  %2 = ptrtoint ptr %num_resources to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_resources, align 4
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp eq i32 %4, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 0) #4
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %if.then6, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then6:                                         ; preds = %if.end
  %call7 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.then6.cleanup_crit_edge, label %if.then6.if.end12_crit_edge, !prof !67

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %io_res.0 = phi ptr [ %call7, %if.then6.if.end12_crit_edge ], [ %call4, %if.end.if.end12_crit_edge ]
  %call13 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 1) #4
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %if.then15, label %if.end12.if.end26_crit_edge

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then15:                                        ; preds = %if.end12
  %call16 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #4
  %cmp17 = icmp eq ptr %call16, null
  br i1 %cmp17, label %if.then15.cleanup_crit_edge, label %if.then15.if.end26_crit_edge, !prof !67

if.then15.if.end26_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %if.then15.if.end26_crit_edge, %if.end12.if.end26_crit_edge
  %ctl_res.0 = phi ptr [ %call16, %if.then15.if.end26_crit_edge ], [ %call13, %if.end12.if.end26_crit_edge ]
  %call27 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #4
  %tobool29.not = icmp eq ptr %1, null
  br i1 %tobool29.not, label %if.end26.cond.end_crit_edge, label %cond.true

if.end26.cond.end_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end26.cond.end_crit_edge
  %cond = phi i32 [ %6, %cond.true ], [ 0, %if.end26.cond.end_crit_edge ]
  %7 = load i32, ptr @pio_mask, align 4
  %call30 = tail call i32 @__pata_platform_probe(ptr noundef %dev, ptr noundef nonnull %io_res.0, ptr noundef nonnull %ctl_res.0, ptr noundef %call27, i32 noundef %cond, i32 noundef %7, ptr noundef nonnull @pata_platform_sht, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then15.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call30, %cond.end ], [ -22, %if.then6.cleanup_crit_edge ], [ -22, %if.then15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_platform_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !14, !15, !17, !19, !21, !23, !25, !26, !28, !30, !32, !33, !35, !36, !37, !38, !39, !41, !42, !44, !46, !47, !48, !49, !51, !53, !54, !55, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__param_pio_mask, !1, !"__param_pio_mask", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_platform.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_pio_masktype287, !1, !"__UNIQUE_ID_pio_masktype287", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_pio_mask288, !4, !"__UNIQUE_ID_pio_mask288", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_platform.c", i32 28, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_platform.c", i32 149, i32 21}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_platform.c", i32 167, i32 3}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__pata_platform_probe._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @__pata_platform_probe._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/ata/pata_platform.c", i32 175, i32 20}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/ata/pata_platform.c", i32 175, i32 55}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/ata/pata_platform.c", i32 175, i32 64}
!21 = !{ptr @__ksymtab___pata_platform_probe, !22, !"__ksymtab___pata_platform_probe", i1 false, i1 false}
!22 = !{!"../drivers/ata/pata_platform.c", i32 183, i32 1}
!23 = !{ptr @__initcall__kmod_pata_platform__289_238_pata_platform_driver_init6, !24, !"__initcall__kmod_pata_platform__289_238_pata_platform_driver_init6", i1 false, i1 false}
!24 = !{!"../drivers/ata/pata_platform.c", i32 238, i32 1}
!25 = !{ptr @__exitcall_pata_platform_driver_exit, !24, !"__exitcall_pata_platform_driver_exit", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_author290, !27, !"__UNIQUE_ID_author290", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_platform.c", i32 240, i32 1}
!28 = !{ptr @__UNIQUE_ID_description291, !29, !"__UNIQUE_ID_description291", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_platform.c", i32 241, i32 1}
!30 = !{ptr @__UNIQUE_ID_file292, !31, !"__UNIQUE_ID_file292", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_platform.c", i32 242, i32 1}
!32 = !{ptr @__UNIQUE_ID_license293, !31, !"__UNIQUE_ID_license293", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_version294, !34, !"__UNIQUE_ID_version294", i1 false, i1 false}
!34 = !{!"../drivers/ata/pata_platform.c", i32 243, i32 1}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @__modver_attr, !34, !"__modver_attr", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_alias295, !40, !"__UNIQUE_ID_alias295", i1 false, i1 false}
!40 = !{!"../drivers/ata/pata_platform.c", i32 244, i32 1}
!41 = !{ptr @__param_str_pio_mask, !1, !"__param_str_pio_mask", i1 false, i1 false}
!42 = !{ptr @pio_mask, !43, !"pio_mask", i1 false, i1 false}
!43 = !{!"../drivers/ata/pata_platform.c", i32 26, i32 12}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/ata/pata_platform.c", i32 43, i32 3}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @pata_platform_set_mode._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @pata_platform_set_mode._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @pata_platform_driver, !50, !"pata_platform_driver", i1 false, i1 false}
!50 = !{!"../drivers/ata/pata_platform.c", i32 230, i32 31}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/ata/pata_platform.c", i32 196, i32 3}
!53 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @pata_platform_probe._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @pata_platform_probe._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @pata_platform_sht, !57, !"pata_platform_sht", i1 false, i1 false}
!57 = !{!"../drivers/ata/pata_platform.c", i32 48, i32 34}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"branch_weights", i32 1, i32 2000}
