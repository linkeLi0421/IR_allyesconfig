; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_imx.c_pt.bc'
source_filename = "../drivers/ata/pata_imx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.pata_imx_priv = type { ptr, ptr, i32 }
%struct.ata_timing = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }

@__initcall__kmod_pata_imx__287_280_pata_imx_driver_init6 = internal global ptr @pata_imx_driver_init, section ".initcall6.init", align 4
@pata_imx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pata_imx_probe, ptr @pata_imx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_pata_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pata_imx_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pata_imx_driver_exit = internal global ptr @pata_imx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author288 = internal constant [58 x i8] c"pata_imx.author=Arnaud Patard <arnaud.patard@rtp-net.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [51 x i8] c"pata_imx.description=low-level driver for iMX PATA\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [35 x i8] c"pata_imx.file=drivers/ata/pata_imx\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [21 x i8] c"pata_imx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias292 = internal constant [33 x i8] c"pata_imx.alias=platform:pata_imx\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pata_imx\00", [23 x i8] zeroinitializer }, align 32
@imx_pata_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx27-pata\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pata_imx_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pata_imx_suspend, ptr @pata_imx_resume, ptr @pata_imx_suspend, ptr @pata_imx_resume, ptr @pata_imx_suspend, ptr @pata_imx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pata_imx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 146, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pata_imx_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/ata/pata_imx.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pata_imx_probe._entry_ptr = internal global ptr @pata_imx_probe._entry, section ".printk_index", align 4
@pata_imx_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_cable_unknown, ptr null, ptr @pata_imx_set_piomode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_data_xfer32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_port_ops }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cmd 0x%llx ctl 0x%llx\00", [42 x i8] zeroinitializer }, align 32
@pata_imx_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_sff_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@pio_t4 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 30, i32 20, i32 15, i32 10, i32 10], [44 x i8] zeroinitializer }, align 32
@pio_t9 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 20, i32 15, i32 10, i32 10, i32 10], [44 x i8] zeroinitializer }, align 32
@pio_tA = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 35, i32 35, i32 35, i32 35, i32 35], [44 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"pata_imx_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 270, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 274, i32 12 }
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"imx_pata_dt_ids\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 261, i32 34 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"pata_imx_pm_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 259, i32 8 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 146, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"pata_imx_port_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 104, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 181, i32 20 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"pata_imx_sht\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 100, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"pio_t4\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 44, i32 12 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"pio_t9\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 45, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"pio_tA\00", align 1
@___asan_gen_.53 = private constant [26 x i8] c"../drivers/ata/pata_imx.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 46, i32 12 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_alias292, ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_pata_imx_driver_exit, ptr @__initcall__kmod_pata_imx__287_280_pata_imx_driver_init6, ptr @pata_imx_driver_exit, ptr @pata_imx_probe._entry, ptr @pata_imx_probe._entry_ptr, ptr @pata_imx_driver, ptr @.str, ptr @imx_pata_dt_ids, ptr @pata_imx_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pata_imx_port_ops, ptr @.str.6, ptr @pata_imx_sht, ptr @pio_t4, ptr @pio_t9, ptr @pio_tA], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_imx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pata_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_imx_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_imx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_imx_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_imx_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pio_t4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pio_t9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pio_tA to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pata_imx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pata_imx_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pata_imx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @pata_imx_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pata_imx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call5 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call5, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call.i, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end3
  %call.i94 = tail call i32 @clk_prepare(ptr noundef %call5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool.not.i = icmp eq i32 %call.i94, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end12
  %call1.i = tail call i32 @clk_enable(ptr noundef %call5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end17, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call5) #5
  br label %cleanup

if.end17:                                         ; preds = %if.end.i
  %call19 = tail call ptr @ata_host_alloc(ptr noundef %dev, i32 noundef 1) #5
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end17.err_crit_edge, label %if.end22

if.end17.err_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end22:                                         ; preds = %if.end17
  %private_data = getelementptr inbounds %struct.ata_host, ptr %call19, i32 0, i32 5
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %private_data, align 4
  %ports = getelementptr inbounds %struct.ata_host, ptr %call19, i32 0, i32 12
  %5 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ports, align 4
  %ops = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @pata_imx_port_ops, ptr %ops, align 4
  %pio_mask = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 15
  %8 = ptrtoint ptr %pio_mask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 31, ptr %pio_mask, align 16
  %flags = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %or = or i32 %10, 1
  store i32 %or, ptr %flags, align 4
  %call23 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call25 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call23) #5
  %host_regs = getelementptr inbounds %struct.pata_imx_priv, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %host_regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call25, ptr %host_regs, align 4
  %cmp.i95 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call25 to i32
  br label %err

if.end31:                                         ; preds = %if.end22
  %add.ptr = getelementptr i8, ptr %call25, i32 160
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8
  %13 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %ioaddr, align 32
  %14 = ptrtoint ptr %host_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host_regs, align 4
  %add.ptr34 = getelementptr i8, ptr %15, i32 216
  %ctl_addr = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 12
  %16 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr34, ptr %ctl_addr, align 16
  %altstatus_addr = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 11
  %17 = ptrtoint ptr %altstatus_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr34, ptr %altstatus_addr, align 4
  %data_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %data_addr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr, ptr %data_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %call25, i32 164
  %error_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 2
  %19 = ptrtoint ptr %error_addr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr2.i, ptr %error_addr.i, align 4
  %feature_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 3
  %20 = ptrtoint ptr %feature_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr2.i, ptr %feature_addr.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %call25, i32 168
  %nsect_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 4
  %21 = ptrtoint ptr %nsect_addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr6.i, ptr %nsect_addr.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %call25, i32 172
  %lbal_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 5
  %22 = ptrtoint ptr %lbal_addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr8.i, ptr %lbal_addr.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %call25, i32 176
  %lbam_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 6
  %23 = ptrtoint ptr %lbam_addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr10.i, ptr %lbam_addr.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %call25, i32 180
  %lbah_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 7
  %24 = ptrtoint ptr %lbah_addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr12.i, ptr %lbah_addr.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %call25, i32 184
  %device_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 8
  %25 = ptrtoint ptr %device_addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr14.i, ptr %device_addr.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %call25, i32 188
  %status_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 9
  %26 = ptrtoint ptr %status_addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr16.i, ptr %status_addr.i, align 4
  %command_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 10
  %27 = ptrtoint ptr %command_addr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr16.i, ptr %command_addr.i, align 4
  %28 = ptrtoint ptr %call23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call23, align 4
  %conv = zext i32 %29 to i64
  %add = add nuw nsw i64 %conv, 160
  %add42 = add nuw nsw i64 %conv, 216
  tail call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %6, ptr noundef nonnull @.str.6, i64 noundef %add, i64 noundef %add42) #5
  %30 = ptrtoint ptr %host_regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %host_regs, align 4
  %add.ptr44 = getelementptr i8, ptr %31, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 192) #5, !srcloc !49
  %32 = ptrtoint ptr %host_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %host_regs, align 4
  %add.ptr46 = getelementptr i8, ptr %33, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 8) #5, !srcloc !49
  %call47 = tail call i32 @ata_host_activate(ptr noundef nonnull %call19, i32 noundef %call, ptr noundef nonnull @ata_sff_interrupt, i32 noundef 0, ptr noundef nonnull @pata_imx_sht) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end31.cleanup_crit_edge, label %if.end31.err_crit_edge

if.end31.err_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err:                                              ; preds = %if.end31.err_crit_edge, %if.then28, %if.end17.err_crit_edge
  %ret.0 = phi i32 [ %12, %if.then28 ], [ %call47, %if.end31.err_crit_edge ], [ -12, %if.end17.err_crit_edge ]
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  tail call void @clk_disable(ptr noundef %35) #5
  tail call void @clk_unprepare(ptr noundef %35) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end31.cleanup_crit_edge, %if.then3.i, %if.end12.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %do.end ], [ %ret.0, %err ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i94, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pata_imx_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  tail call void @ata_host_detach(ptr noundef %1) #5
  %host_regs = getelementptr inbounds %struct.pata_imx_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %host_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !49
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_unknown(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pata_imx_set_piomode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  %timing.i = alloca %struct.ata_timing, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %timing.i) #5
  %4 = call ptr @memset(ptr %timing.i, i32 255, i32 20)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %6) #5
  %pio_mode.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %7 = ptrtoint ptr %pio_mode.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pio_mode.i, align 16
  %9 = add i8 %8, -13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %9)
  %10 = icmp ult i8 %9, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %or.cond88.i = select i1 %10, i1 true, i1 %tobool.not.i
  br i1 %or.cond88.i, label %entry.pata_imx_set_timing.exit_crit_edge, label %if.end.i

entry.pata_imx_set_timing.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pata_imx_set_timing.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = getelementptr inbounds %struct.ata_timing, ptr %timing.i, i32 0, i32 2
  %12 = getelementptr inbounds %struct.ata_timing, ptr %timing.i, i32 0, i32 1
  %div.i = udiv i32 1000000000, %call.i
  %conv8.i = zext i8 %8 to i16
  %mul.i = mul i32 %div.i, 1000
  %call9.i = call i32 @ata_timing_compute(ptr noundef %adev, i16 noundef zeroext %conv8.i, ptr noundef nonnull %timing.i, i32 noundef %mul.i, i32 noundef 0) #5
  %13 = ptrtoint ptr %pio_mode.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pio_mode.i, align 16
  %conv11.i = zext i8 %14 to i32
  %sub.i = add nsw i32 %conv11.i, -8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  call void @arm_heavy_mb() #5
  %host_regs.i = getelementptr inbounds %struct.pata_imx_priv, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %host_regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host_regs.i, align 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %16, i8 3) #5, !srcloc !51
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %host_regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host_regs.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %18, i32 1
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16.i, i8 3) #5, !srcloc !51
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %12, align 2
  %conv20.i = trunc i16 %20 to i8
  %21 = ptrtoint ptr %host_regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host_regs.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %22, i32 2
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22.i, i8 %conv20.i) #5, !srcloc !51
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %11, align 2
  %conv26.i = trunc i16 %24 to i8
  %25 = ptrtoint ptr %host_regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %host_regs.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %26, i32 3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i, i8 %conv26.i) #5, !srcloc !51
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %11, align 2
  %conv33.i = trunc i16 %28 to i8
  %29 = ptrtoint ptr %host_regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host_regs.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %30, i32 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr35.i, i8 %conv33.i) #5, !srcloc !51
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  call void @arm_heavy_mb() #5
  %31 = ptrtoint ptr %host_regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %host_regs.i, align 4
  %add.ptr40.i = getelementptr i8, ptr %32, i32 6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr40.i, i8 1) #5, !srcloc !51
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  call void @arm_heavy_mb() #5
  %arrayidx.i = getelementptr [5 x i32], ptr @pio_t4, i32 0, i32 %sub.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %div44.i = udiv i32 %34, %div.i
  %35 = trunc i32 %div44.i to i8
  %conv45.i = add i8 %35, 1
  %36 = ptrtoint ptr %host_regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %host_regs.i, align 4
  %add.ptr47.i = getelementptr i8, ptr %37, i32 7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr47.i, i8 %conv45.i) #5, !srcloc !51
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  call void @arm_heavy_mb() #5
  %arrayidx51.i = getelementptr [5 x i32], ptr @pio_t9, i32 0, i32 %sub.i
  %38 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx51.i, align 4
  %div52.i = udiv i32 %39, %div.i
  %40 = trunc i32 %div52.i to i8
  %conv54.i = add i8 %40, 1
  %41 = ptrtoint ptr %host_regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host_regs.i, align 4
  %add.ptr56.i = getelementptr i8, ptr %42, i32 8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr56.i, i8 %conv54.i) #5, !srcloc !51
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  call void @arm_heavy_mb() #5
  %arrayidx60.i = getelementptr [5 x i32], ptr @pio_tA, i32 0, i32 %sub.i
  %43 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx60.i, align 4
  %div61.i = udiv i32 %44, %div.i
  %45 = trunc i32 %div61.i to i8
  %conv63.i = add i8 %45, 1
  %46 = ptrtoint ptr %host_regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %host_regs.i, align 4
  %add.ptr65.i = getelementptr i8, ptr %47, i32 5
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr65.i, i8 %conv63.i) #5, !srcloc !51
  br label %pata_imx_set_timing.exit

pata_imx_set_timing.exit:                         ; preds = %if.end.i, %entry.pata_imx_set_timing.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %timing.i) #5
  %host_regs = getelementptr inbounds %struct.pata_imx_priv, ptr %3, i32 0, i32 1
  %48 = ptrtoint ptr %host_regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %host_regs, align 4
  %add.ptr = getelementptr i8, ptr %49, i32 36
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !60
  %call1 = call i32 @ata_pio_need_iordy(ptr noundef %adev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp ne i32 %call1, 0
  %and = and i32 %50, -2
  %masksel = zext i1 %tobool.not to i32
  %val.0 = or i32 %and, %masksel
  %51 = ptrtoint ptr %host_regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %host_regs, align 4
  %add.ptr3 = getelementptr i8, ptr %52, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %val.0) #5, !srcloc !49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_data_xfer32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pio_need_iordy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_timing_compute(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

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
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pata_imx_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call1 = tail call i32 @ata_host_suspend(ptr noundef %1, [1 x i32] [i32 2]) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %host_regs = getelementptr inbounds %struct.pata_imx_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %host_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_regs, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !49
  %6 = ptrtoint ptr %host_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host_regs, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !60
  %ata_ctl = getelementptr inbounds %struct.pata_imx_priv, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %ata_ctl to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %ata_ctl, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %11) #5
  tail call void @clk_unprepare(ptr noundef %11) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pata_imx_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %ata_ctl = getelementptr inbounds %struct.pata_imx_priv, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ata_ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ata_ctl, align 4
  %host_regs = getelementptr inbounds %struct.pata_imx_priv, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %host_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_regs, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #5, !srcloc !49
  %10 = ptrtoint ptr %host_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host_regs, align 4
  %add.ptr3 = getelementptr i8, ptr %11, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 8) #5, !srcloc !49
  tail call void @ata_host_resume(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_pata_imx__287_280_pata_imx_driver_init6, !1, !"__initcall__kmod_pata_imx__287_280_pata_imx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_imx.c", i32 280, i32 1}
!2 = !{ptr @__exitcall_pata_imx_driver_exit, !1, !"__exitcall_pata_imx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author288, !4, !"__UNIQUE_ID_author288", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_imx.c", i32 282, i32 1}
!5 = !{ptr @__UNIQUE_ID_description289, !6, !"__UNIQUE_ID_description289", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_imx.c", i32 283, i32 1}
!7 = !{ptr @__UNIQUE_ID_file290, !8, !"__UNIQUE_ID_file290", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_imx.c", i32 284, i32 1}
!9 = !{ptr @__UNIQUE_ID_license291, !8, !"__UNIQUE_ID_license291", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias292, !11, !"__UNIQUE_ID_alias292", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_imx.c", i32 285, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/ata/pata_imx.c", i32 274, i32 12}
!14 = !{ptr @pata_imx_driver, !15, !"pata_imx_driver", i1 false, i1 false}
!15 = !{!"../drivers/ata/pata_imx.c", i32 270, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_imx.c", i32 146, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pata_imx_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @pata_imx_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_imx.c", i32 181, i32 20}
!26 = !{ptr @pata_imx_port_ops, !27, !"pata_imx_port_ops", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_imx.c", i32 104, i32 35}
!28 = !{ptr @pio_t4, !29, !"pio_t4", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_imx.c", i32 44, i32 12}
!30 = !{ptr @pio_t9, !31, !"pio_t9", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_imx.c", i32 45, i32 12}
!32 = !{ptr @pio_tA, !33, !"pio_tA", i1 false, i1 false}
!33 = !{!"../drivers/ata/pata_imx.c", i32 46, i32 12}
!34 = !{ptr @pata_imx_sht, !35, !"pata_imx_sht", i1 false, i1 false}
!35 = !{!"../drivers/ata/pata_imx.c", i32 100, i32 34}
!36 = !{ptr @imx_pata_dt_ids, !37, !"imx_pata_dt_ids", i1 false, i1 false}
!37 = !{!"../drivers/ata/pata_imx.c", i32 261, i32 34}
!38 = !{ptr @pata_imx_pm_ops, !39, !"pata_imx_pm_ops", i1 false, i1 false}
!39 = !{!"../drivers/ata/pata_imx.c", i32 259, i32 8}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 4355240}
!50 = !{i64 2155428526}
!51 = !{i64 4355043}
!52 = !{i64 2155428804}
!53 = !{i64 2155429093}
!54 = !{i64 2155429393}
!55 = !{i64 2155429693}
!56 = !{i64 2155429982}
!57 = !{i64 2155430279}
!58 = !{i64 2155430595}
!59 = !{i64 2155430911}
!60 = !{i64 4355658}
