; ModuleID = '/llk/IR_all_yes/drivers/ata/sata_rcar.c_pt.bc'
source_filename = "../drivers/ata/sata_rcar.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.sata_rcar_priv = type { ptr, i32, i32 }
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
%struct.ata_bmdma_prd = type { i32, i32 }

@__initcall__kmod_sata_rcar__290_1036_sata_rcar_driver_init6 = internal global ptr @sata_rcar_driver_init, section ".initcall6.init", align 4
@sata_rcar_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sata_rcar_probe, ptr @sata_rcar_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sata_rcar_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sata_rcar_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sata_rcar_driver_exit = internal global ptr @sata_rcar_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file291 = internal constant [37 x i8] c"sata_rcar.file=drivers/ata/sata_rcar\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [22 x i8] c"sata_rcar.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [34 x i8] c"sata_rcar.author=Vladimir Barinov\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [69 x i8] c"sata_rcar.description=Renesas R-Car SATA controller low level driver\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sata_rcar\00", [22 x i8] zeroinitializer }, align 32
@sata_rcar_match = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-sata\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sata-r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sata-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sata-r8a7790-es1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sata-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sata-r8a7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sata-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-sata\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-sata\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@sata_rcar_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sata_rcar_suspend, ptr @sata_rcar_resume, ptr @sata_rcar_suspend, ptr @sata_rcar_resume, ptr @sata_rcar_suspend, ptr @sata_rcar_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sata_rcar_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 1, i32 -1, i16 256, i16 0, i32 0, i32 0, i32 536870911, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@sata_rcar_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr @sata_rcar_qc_prep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sata_rcar_freeze, ptr @sata_rcar_thaw, ptr null, ptr @sata_rcar_softreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sata_rcar_scr_read, ptr @sata_rcar_scr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sata_rcar_dev_select, ptr @sata_rcar_set_devctl, ptr @sata_rcar_check_status, ptr @sata_rcar_check_altstatus, ptr @sata_rcar_tf_load, ptr @sata_rcar_tf_read, ptr @sata_rcar_exec_command, ptr @sata_rcar_data_xfer, ptr null, ptr null, ptr null, ptr @sata_rcar_drain_fifo, ptr @sata_rcar_bmdma_setup, ptr @sata_rcar_bmdma_start, ptr @sata_rcar_bmdma_stop, ptr @sata_rcar_bmdma_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@sata_rcar_softreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ata%u.%02u: SRST failed (errno=%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sata_rcar_softreset\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/ata/sata_rcar.c\00", [40 x i8] zeroinitializer }, align 32
@sata_rcar_softreset._entry_ptr = internal global ptr @sata_rcar_softreset._entry, section ".printk_index", align 4
@sata_rcar_softreset._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013ata%u: SRST failed (errno=%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@sata_rcar_softreset._entry_ptr.6 = internal global ptr @sata_rcar_softreset._entry.4, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ata_wait_idle.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.8, ptr @.str.9, i8 1, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ata_wait_idle\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/libata.h\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ata%u: abnormal Status 0x%X\0A\00", [35 x i8] zeroinitializer }, align 32
@sata_rcar_drain_fifo.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sata_rcar_drain_fifo\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ata%u: drained %d bytes to clear DRQ\0A\00", [58 x i8] zeroinitializer }, align 32
@sata_rcar_init_controller._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 815, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SATA phy is not initialized\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sata_rcar_init_controller\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sata_rcar_init_controller._entry_ptr = internal global ptr @sata_rcar_init_controller._entry, section ".printk_index", align 4
@sata_rcar_gen1_phy_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\013%s timeout\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sata_rcar_gen1_phy_write\00", [39 x i8] zeroinitializer }, align 32
@sata_rcar_gen1_phy_write._entry_ptr = internal global ptr @sata_rcar_gen1_phy_write._entry, section ".printk_index", align 4
@sata_rcar_serr_interrupt.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 -90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sata_rcar_serr_interrupt\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ata%u: SError @host_intr: 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hotplug\00", [24 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"sata_rcar_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1024, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1028, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"sata_rcar_match\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 822, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"sata_rcar_pm_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 1014, i32 32 }
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"sata_rcar_sht\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 616, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"sata_rcar_port_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 627, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 354, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [26 x i8] c"../include/linux/libata.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 2045, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 483, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 815, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 194, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 666, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 674, i32 26 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [27 x i8] c"../drivers/ata/sata_rcar.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 674, i32 32 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_sata_rcar_driver_exit, ptr @__initcall__kmod_sata_rcar__290_1036_sata_rcar_driver_init6, ptr @sata_rcar_driver_exit, ptr @sata_rcar_gen1_phy_write._entry, ptr @sata_rcar_gen1_phy_write._entry_ptr, ptr @sata_rcar_init_controller._entry, ptr @sata_rcar_init_controller._entry_ptr, ptr @sata_rcar_softreset._entry, ptr @sata_rcar_softreset._entry.4, ptr @sata_rcar_softreset._entry_ptr, ptr @sata_rcar_softreset._entry_ptr.6, ptr @sata_rcar_driver, ptr @.str, ptr @sata_rcar_match, ptr @sata_rcar_pm_ops, ptr @sata_rcar_sht, ptr @sata_rcar_port_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_rcar_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_rcar_match to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_rcar_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_rcar_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_rcar_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_rcar_softreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_rcar_softreset._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_rcar_init_controller._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_rcar_gen1_phy_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_rcar_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sata_rcar_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sata_rcar_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sata_rcar_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_rcar_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #6
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %0 = ptrtoint ptr %call8 to i32
  %type = getelementptr inbounds %struct.sata_rcar_priv, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %type, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  %call.i58 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp10 = icmp slt i32 %call.i58, 0
  br i1 %cmp10, label %if.end7.err_pm_put_crit_edge, label %if.end12

if.end7.err_pm_put_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_pm_put

if.end12:                                         ; preds = %if.end7
  %call13 = tail call ptr @ata_host_alloc(ptr noundef %dev1, i32 noundef 1) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.err_pm_put_crit_edge, label %if.end16

if.end12.err_pm_put_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_pm_put

if.end16:                                         ; preds = %if.end12
  %private_data = getelementptr inbounds %struct.ata_host, ptr %call13, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %private_data, align 4
  %call17 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call18 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call17) #6
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call18, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call18 to i32
  br label %err_pm_put

if.end24:                                         ; preds = %if.end16
  %ports.i = getelementptr inbounds %struct.ata_host, ptr %call13, i32 0, i32 12
  %5 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ports.i, align 4
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sata_rcar_port_ops, ptr %ops.i, align 4
  %pio_mask.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 15
  %12 = ptrtoint ptr %pio_mask.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 31, ptr %pio_mask.i, align 16
  %udma_mask.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 17
  %13 = ptrtoint ptr %udma_mask.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 127, ptr %udma_mask.i, align 8
  %flags.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 3
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %15, 2
  store i32 %or.i, ptr %flags.i, align 4
  %type.i = getelementptr inbounds %struct.sata_rcar_priv, ptr %8, i32 0, i32 2
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp.i59 = icmp eq i32 %17, 3
  br i1 %cmp.i59, label %if.then.i, label %if.end24.sata_rcar_setup_port.exit_crit_edge

if.end24.sata_rcar_setup_port.exit_crit_edge:     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sata_rcar_setup_port.exit

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %or4.i = or i32 %15, 8388610
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or4.i, ptr %flags.i, align 4
  br label %sata_rcar_setup_port.exit

sata_rcar_setup_port.exit:                        ; preds = %if.then.i, %if.end24.sata_rcar_setup_port.exit_crit_edge
  %ioaddr1.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 4352
  %19 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %ioaddr1.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %10, i32 4612
  %ctl_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 12
  %20 = ptrtoint ptr %ctl_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr5.i, ptr %ctl_addr.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %10, i32 5120
  %scr_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 14
  %21 = ptrtoint ptr %scr_addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr6.i, ptr %scr_addr.i, align 4
  %altstatus_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 11
  %22 = ptrtoint ptr %altstatus_addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr5.i, ptr %altstatus_addr.i, align 4
  %data_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 1
  %23 = ptrtoint ptr %data_addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i, ptr %data_addr.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %10, i32 4356
  %error_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 2
  %24 = ptrtoint ptr %error_addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr11.i, ptr %error_addr.i, align 4
  %feature_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 3
  %25 = ptrtoint ptr %feature_addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr11.i, ptr %feature_addr.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %10, i32 4360
  %nsect_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 4
  %26 = ptrtoint ptr %nsect_addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr15.i, ptr %nsect_addr.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %10, i32 4364
  %lbal_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 5
  %27 = ptrtoint ptr %lbal_addr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr17.i, ptr %lbal_addr.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %10, i32 4368
  %lbam_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 6
  %28 = ptrtoint ptr %lbam_addr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr19.i, ptr %lbam_addr.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %10, i32 4372
  %lbah_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 7
  %29 = ptrtoint ptr %lbah_addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr21.i, ptr %lbah_addr.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %10, i32 4376
  %device_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 8
  %30 = ptrtoint ptr %device_addr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr23.i, ptr %device_addr.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %10, i32 4380
  %status_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 9
  %31 = ptrtoint ptr %status_addr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr25.i, ptr %status_addr.i, align 4
  %command_addr.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 8, i32 10
  %32 = ptrtoint ptr %command_addr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr25.i, ptr %command_addr.i, align 4
  tail call fastcc void @sata_rcar_init_controller(ptr noundef nonnull %call13)
  %call25 = tail call i32 @ata_host_activate(ptr noundef nonnull %call13, i32 noundef %call, ptr noundef nonnull @sata_rcar_interrupt, i32 noundef 0, ptr noundef nonnull @sata_rcar_sht) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %sata_rcar_setup_port.exit.cleanup_crit_edge, label %sata_rcar_setup_port.exit.err_pm_put_crit_edge

sata_rcar_setup_port.exit.err_pm_put_crit_edge:   ; preds = %sata_rcar_setup_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_pm_put

sata_rcar_setup_port.exit.cleanup_crit_edge:      ; preds = %sata_rcar_setup_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_pm_put:                                       ; preds = %sata_rcar_setup_port.exit.err_pm_put_crit_edge, %if.then21, %if.end12.err_pm_put_crit_edge, %if.end7.err_pm_put_crit_edge
  %ret.0 = phi i32 [ %call.i58, %if.end7.err_pm_put_crit_edge ], [ %4, %if.then21 ], [ %call25, %sata_rcar_setup_port.exit.err_pm_put_crit_edge ], [ -12, %if.end12.err_pm_put_crit_edge ]
  %call.i60 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %err_pm_put, %sata_rcar_setup_port.exit.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_pm_put ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ 0, %sata_rcar_setup_port.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_rcar_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @ata_host_detach(ptr noundef %1) #6
  %add.ptr = getelementptr i8, ptr %5, i32 392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !70
  %add.ptr2 = getelementptr i8, ptr %5, i32 5384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #6, !srcloc !70
  %sataint_mask = getelementptr inbounds %struct.sata_rcar_priv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %sataint_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sataint_mask, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 5388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %8) #6, !srcloc !70
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sata_rcar_init_controller(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %sataint_mask = getelementptr inbounds %struct.sata_rcar_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sataint_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4095, ptr %sataint_mask, align 4
  %type = getelementptr inbounds %struct.sata_rcar_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb2_crit_edge
    i32 3, label %entry.sw.bb2_crit_edge9
    i32 2, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.bb2_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %sataint_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2047, ptr %sataint_mask, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #6, !srcloc !70
  %add.ptr2.i.i = getelementptr i8, ptr %8, i32 524
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 33554432) #6, !srcloc !70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 0) #6, !srcloc !70
  tail call fastcc void @sata_rcar_gen1_phy_write(ptr noundef %1, i16 noundef zeroext 67, i32 noundef 2097544, i32 noundef 0) #6
  tail call fastcc void @sata_rcar_gen1_phy_write(ptr noundef %1, i16 noundef zeroext 67, i32 noundef 2097544, i32 noundef 1) #6
  tail call fastcc void @sata_rcar_gen1_phy_write(ptr noundef %1, i16 noundef zeroext 90, i32 noundef 41057, i32 noundef 0) #6
  tail call fastcc void @sata_rcar_gen1_phy_write(ptr noundef %1, i16 noundef zeroext 82, i32 noundef 536870912, i32 noundef 0) #6
  tail call fastcc void @sata_rcar_gen1_phy_write(ptr noundef %1, i16 noundef zeroext 82, i32 noundef 536870912, i32 noundef 1) #6
  tail call fastcc void @sata_rcar_gen1_phy_write(ptr noundef %1, i16 noundef zeroext 96, i32 noundef 686292992, i32 noundef 0) #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 5892
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33560628) #6, !srcloc !70
  %add.ptr2.i = getelementptr i8, ptr %11, i32 5900
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 52625408) #6, !srcloc !70
  %add.ptr3.i = getelementptr i8, ptr %11, i32 5916
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 -1811870976) #6, !srcloc !70
  %add.ptr4.i = getelementptr i8, ptr %11, i32 5924
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -1811348736) #6, !srcloc !70
  %add.ptr5.i = getelementptr i8, ptr %11, i32 5952
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 121634819) #6, !srcloc !70
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.12) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  tail call fastcc void @sata_rcar_init_module(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_rcar_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_instance) #6
  %add.ptr = getelementptr i8, ptr %3, i32 5384
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %and = and i32 %5, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end:                                           ; preds = %entry
  %neg = xor i32 %and, -1
  %sataint_mask = getelementptr inbounds %struct.sata_rcar_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %sataint_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sataint_mask, align 4
  %and7 = and i32 %7, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %and7) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #6, !srcloc !70
  %ports = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 12
  %9 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ports, align 4
  %and9 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end12_crit_edge, label %if.then11

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then11:                                        ; preds = %if.end
  %active_tag.i = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 25, i32 3
  %11 = ptrtoint ptr %active_tag.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %active_tag.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %13 = icmp ugt i32 %12, 32
  %arrayidx.i.i.i = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 %12
  %tobool.not11.i.i = icmp eq ptr %arrayidx.i.i.i, null
  %tobool.not.i.i = or i1 %13, %tobool.not11.i.i
  br i1 %tobool.not.i.i, label %if.then11.if.then3.i_crit_edge, label %lor.lhs.false.i.i, !prof !73

if.then11.if.then3.i_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

lor.lhs.false.i.i:                                ; preds = %if.then11
  %ops.i.i = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i, align 4
  %error_handler.i.i = getelementptr inbounds %struct.ata_port_operations, ptr %15, i32 0, i32 22
  %16 = ptrtoint ptr %error_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %error_handler.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %17, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false.i.i.if.then.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 %12, i32 6
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %19, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.i, label %if.end.i.i.if.then.i_crit_edge, label %if.end.i.i.if.then3.i_crit_edge

if.end.i.i.if.then3.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.i.i.if.then.i_crit_edge, %lor.lhs.false.i.i.if.then.i_crit_edge
  %call1.i = tail call i32 @ata_bmdma_port_intr(ptr noundef %10, ptr noundef nonnull %arrayidx.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %phi.cmp.i = icmp eq i32 %call1.i, 0
  br i1 %phi.cmp.i, label %if.then.i.if.then3.i_crit_edge, label %if.then.i.if.end12_crit_edge

if.then.i.if.end12_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then.i.if.then3.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i.if.then3.i_crit_edge, %if.end.i.i.if.then3.i_crit_edge, %if.then11.if.then3.i_crit_edge
  %status_addr.i.i = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 8, i32 9
  %20 = ptrtoint ptr %status_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %status_addr.i.i, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  br label %if.end12

if.end12:                                         ; preds = %if.then3.i, %if.then.i.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %and13 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.done_crit_edge, label %if.then15

if.end12.done_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @sata_rcar_serr_interrupt(ptr noundef %10)
  br label %done

done:                                             ; preds = %if.then15, %if.end12.done_crit_edge, %entry.done_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_instance, i32 noundef %call3) #6
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_rcar_qc_prep(ptr nocapture noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qc, align 4
  %bmdma_prd.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %bmdma_prd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmdma_prd.i, align 8
  %n_elem.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 9
  %6 = ptrtoint ptr %n_elem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_elem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp17.not.i = icmp eq i32 %7, 0
  br i1 %cmp17.not.i, label %if.end.sata_rcar_bmdma_fill_sg.exit_crit_edge, label %for.body.preheader.i

if.end.sata_rcar_bmdma_fill_sg.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sata_rcar_bmdma_fill_sg.exit

for.body.preheader.i:                             ; preds = %if.end
  %sg2.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 17
  %8 = ptrtoint ptr %sg2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg2.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %sg.019.i = phi ptr [ %call.i, %for.body.i.for.body.i_crit_edge ], [ %9, %for.body.preheader.i ]
  %si.018.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.019.i, i32 0, i32 3
  %10 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_address.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.019.i, i32 0, i32 4
  %12 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_length.i, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  %arrayidx.i = getelementptr %struct.ata_bmdma_prd, ptr %5, i32 %si.018.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %flags_len.i = getelementptr %struct.ata_bmdma_prd, ptr %5, i32 %si.018.i, i32 1
  %17 = ptrtoint ptr %flags_len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %flags_len.i, align 4
  %inc.i = add nuw i32 %si.018.i, 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg.019.i) #6
  %18 = ptrtoint ptr %n_elem.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_elem.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %19
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.sata_rcar_bmdma_fill_sg.exit_crit_edge

for.body.i.sata_rcar_bmdma_fill_sg.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sata_rcar_bmdma_fill_sg.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

sata_rcar_bmdma_fill_sg.exit:                     ; preds = %for.body.i.sata_rcar_bmdma_fill_sg.exit_crit_edge, %if.end.sata_rcar_bmdma_fill_sg.exit_crit_edge
  %si.0.lcssa.i = phi i32 [ -1, %if.end.sata_rcar_bmdma_fill_sg.exit_crit_edge ], [ %si.018.i, %for.body.i.sata_rcar_bmdma_fill_sg.exit_crit_edge ]
  %arrayidx5.i = getelementptr %struct.ata_bmdma_prd, ptr %5, i32 %si.0.lcssa.i
  %20 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx5.i, align 4
  %or.i = or i32 %21, 16777216
  store i32 %or.i, ptr %arrayidx5.i, align 4
  br label %return

return:                                           ; preds = %sata_rcar_bmdma_fill_sg.exit, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sata_rcar_freeze(ptr noundef %ap) #2 align 64 {
entry:
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
  %sataint_mask = getelementptr inbounds %struct.sata_rcar_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %sataint_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sataint_mask, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 5388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #6, !srcloc !70
  tail call void @ata_sff_freeze(ptr noundef %ap) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sata_rcar_thaw(ptr noundef %ap) #2 align 64 {
entry:
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 5384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -150994945) #6, !srcloc !70
  tail call void @ata_sff_thaw(ptr noundef %ap) #6
  %sataint_mask = getelementptr inbounds %struct.sata_rcar_priv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %sataint_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sataint_mask, align 4
  %and = and i32 %7, -10
  %add.ptr2 = getelementptr i8, ptr %5, i32 5388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %8) #6, !srcloc !70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_rcar_softreset(ptr noundef %link, ptr nocapture noundef writeonly %classes, i32 noundef %deadline) #2 align 64 {
entry:
  %err = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %err) #6
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %err, align 1, !annotation !74
  %device_addr.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 8
  %3 = ptrtoint ptr %device_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device_addr.i.i, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 -1610612736) #6, !srcloc !70
  tail call void @ata_sff_pause(ptr noundef %1) #6
  %nsect_addr.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 4
  %5 = ptrtoint ptr %nsect_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nsect_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 1426063360) #6, !srcloc !70
  %lbal_addr.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 5
  %7 = ptrtoint ptr %lbal_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lbal_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 -1442840576) #6, !srcloc !70
  %9 = ptrtoint ptr %nsect_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nsect_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 -1442840576) #6, !srcloc !70
  %11 = ptrtoint ptr %lbal_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lbal_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1426063360) #6, !srcloc !70
  %13 = ptrtoint ptr %nsect_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nsect_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 1426063360) #6, !srcloc !70
  %15 = ptrtoint ptr %lbal_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lbal_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 -1442840576) #6, !srcloc !70
  %17 = ptrtoint ptr %nsect_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nsect_addr.i, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %20 = ptrtoint ptr %lbal_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lbal_addr.i, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %.mask.i = and i32 %19, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 1426063360, i32 %.mask.i)
  %cmp.i = icmp eq i32 %.mask.i, 1426063360
  %.mask1.i = and i32 %22, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1442840576, i32 %.mask1.i)
  %cmp13.i = icmp eq i32 %.mask1.i, -1442840576
  %or.cond.i = select i1 %cmp.i, i1 %cmp13.i, i1 false
  %spec.select = zext i1 %or.cond.i to i32
  %ctl.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ctl.i, align 4
  %conv.i = zext i8 %24 to i32
  %ctl_addr.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 12
  %25 = ptrtoint ptr %ctl_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctl_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %27 = shl nuw i32 %conv.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %27) #6, !srcloc !70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 4294960) #6
  %29 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ctl.i, align 4
  %31 = or i8 %30, 4
  %or.i = zext i8 %31 to i32
  %32 = ptrtoint ptr %ctl_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctl_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %34 = shl nuw i32 %or.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %34) #6, !srcloc !70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 4294960) #6
  %36 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ctl.i, align 4
  %conv6.i = zext i8 %37 to i32
  %38 = ptrtoint ptr %ctl_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctl_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %40 = shl nuw i32 %conv6.i, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %40) #6, !srcloc !70
  %41 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ctl.i, align 4
  %last_ctl.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 10
  %43 = ptrtoint ptr %last_ctl.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %last_ctl.i, align 1
  %link.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25
  %44 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %link.i, align 128
  tail call void @ata_msleep(ptr noundef %45, i32 noundef 150) #6
  %call.i.i = tail call i32 @ata_sff_wait_ready(ptr noundef %link.i, i32 noundef %deadline) #6
  %46 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call.i.i, label %entry.do.body_crit_edge [
    i32 0, label %entry.if.end26_crit_edge
    i32 -19, label %lor.lhs.false
  ]

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %call4 = tail call i32 @sata_scr_valid(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.end26_crit_edge, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false.if.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  %47 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %link, align 128
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 27
  %49 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.i45.not = icmp eq i32 %50, 0
  br i1 %cmp.i45.not, label %lor.lhs.false9, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false9:                                   ; preds = %do.body
  %slave_link = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 26
  %51 = ptrtoint ptr %slave_link to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %slave_link, align 128
  %tobool11.not = icmp eq ptr %52, null
  br i1 %tobool11.not, label %do.end18, label %lor.lhs.false9.do.end_crit_edge

lor.lhs.false9.do.end_crit_edge:                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false9.do.end_crit_edge, %do.body.do.end_crit_edge
  %print_id = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 5
  %53 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %55 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pmp, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %54, i32 noundef %56, i32 noundef %call.i.i) #9
  br label %cleanup

do.end18:                                         ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #8
  %print_id21 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 5
  %57 = ptrtoint ptr %print_id21 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %print_id21, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %58, i32 noundef %call.i.i) #9
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false.if.end26_crit_edge, %entry.if.end26_crit_edge
  %device = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14
  %call27 = call i32 @ata_sff_dev_classify(ptr noundef %device, i32 noundef %spec.select, ptr noundef nonnull %err) #6
  %59 = ptrtoint ptr %classes to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call27, ptr %classes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end18, %do.end
  %retval.0 = phi i32 [ 0, %if.end26 ], [ %call.i.i, %do.end18 ], [ %call.i.i, %do.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %err) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_rcar_scr_read(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sc_reg)
  %cmp = icmp ugt i32 %sc_reg, 3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 14
  %2 = ptrtoint ptr %scr_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scr_addr, align 8
  %shl = shl nuw nsw i32 %sc_reg, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %shl
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %val, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_rcar_scr_write(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sc_reg)
  %cmp = icmp ugt i32 %sc_reg, 3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 14
  %2 = ptrtoint ptr %scr_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scr_addr, align 8
  %shl = shl nuw nsw i32 %sc_reg, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %val) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !70
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sata_rcar_dev_select(ptr noundef %ap, i32 noundef %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 8
  %0 = ptrtoint ptr %device_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 -1610612736) #6, !srcloc !70
  tail call void @ata_sff_pause(ptr noundef %ap) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sata_rcar_set_devctl(ptr nocapture noundef readonly %ap, i8 noundef zeroext %ctl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %ctl to i32
  %ctl_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 12
  %0 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl_addr, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %2 = shl nuw i32 %conv, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %2) #6, !srcloc !70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @sata_rcar_check_status(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %status_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 9
  %0 = ptrtoint ptr %status_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %status_addr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !71
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %conv = trunc i32 %3 to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @sata_rcar_check_altstatus(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %altstatus_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 11
  %0 = ptrtoint ptr %altstatus_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %altstatus_addr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !71
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %conv = trunc i32 %3 to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sata_rcar_tf_load(ptr noundef %ap, ptr nocapture noundef readonly %tf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tf, align 4
  %and = and i32 %1, 2
  %ctl = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 2
  %2 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctl, align 1
  %last_ctl = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 10
  %4 = ptrtoint ptr %last_ctl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %last_ctl, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp.not = icmp eq i8 %3, %5
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %conv = zext i8 %3 to i32
  %ctl_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 12
  %6 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctl_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %8 = shl nuw i32 %conv, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %8) #6, !srcloc !70
  %9 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctl, align 1
  %11 = ptrtoint ptr %last_ctl to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %last_ctl, align 1
  %ops.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then
  %max.addr.0.i.i = phi i32 [ 1000, %if.then ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #6
  %13 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i.i, align 4
  %sff_check_status.i.i = getelementptr inbounds %struct.ata_port_operations, ptr %14, i32 0, i32 39
  %15 = ptrtoint ptr %sff_check_status.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sff_check_status.i.i, align 4
  %call.i.i = tail call zeroext i8 %16(ptr noundef %ap) #6
  %dec.i.i = add nsw i32 %max.addr.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i)
  %cmp.not.i.i = icmp eq i8 %call.i.i, -1
  %17 = and i8 %call.i.i, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i = icmp eq i8 %17, 0
  %or.cond.i.i = or i1 %cmp.not.i.i, %tobool.not.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp3.not.i.i = icmp eq i32 %dec.i.i, 0
  %or.cond1.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp3.not.i.i
  br i1 %or.cond1.i.i, label %ata_sff_busy_wait.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

ata_sff_busy_wait.exit.i:                         ; preds = %do.body.i.i
  %conv.i = zext i8 %call.i.i to i32
  %and.i = and i32 %conv.i, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp.not.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %ata_sff_busy_wait.exit.i.if.end_crit_edge, label %do.body.i

ata_sff_busy_wait.exit.i.if.end_crit_edge:        ; preds = %ata_sff_busy_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body.i:                                        ; preds = %ata_sff_busy_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ata_wait_idle.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_rcar_tf_load, %if.then7.i)) #6
          to label %if.end [label %if.then7.i], !srcloc !75

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %18 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %print_id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ata_wait_idle.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.9, i32 noundef %19, i32 noundef %conv.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then7.i, %do.body.i, %ata_sff_busy_wait.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end30_crit_edge, label %land.lhs.true

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end
  %20 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tf, align 4
  %and9 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %land.lhs.true.if.then19_crit_edge, label %if.then11

land.lhs.true.if.then19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %hob_feature = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 3
  %22 = ptrtoint ptr %hob_feature to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hob_feature, align 2
  %conv12 = zext i8 %23 to i32
  %feature_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 3
  %24 = ptrtoint ptr %feature_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %feature_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %26 = shl nuw i32 %conv12, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %26) #6, !srcloc !70
  %hob_nsect = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 4
  %27 = ptrtoint ptr %hob_nsect to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hob_nsect, align 1
  %conv13 = zext i8 %28 to i32
  %nsect_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 4
  %29 = ptrtoint ptr %nsect_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nsect_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %31 = shl nuw i32 %conv13, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %31) #6, !srcloc !70
  %hob_lbal = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 5
  %32 = ptrtoint ptr %hob_lbal to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hob_lbal, align 4
  %conv14 = zext i8 %33 to i32
  %lbal_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 5
  %34 = ptrtoint ptr %lbal_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lbal_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %36 = shl nuw i32 %conv14, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %36) #6, !srcloc !70
  %hob_lbam = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 6
  %37 = ptrtoint ptr %hob_lbam to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hob_lbam, align 1
  %conv15 = zext i8 %38 to i32
  %lbam_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 6
  %39 = ptrtoint ptr %lbam_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lbam_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %41 = shl nuw i32 %conv15, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %41) #6, !srcloc !70
  %hob_lbah = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 7
  %42 = ptrtoint ptr %hob_lbah to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %hob_lbah, align 2
  %conv16 = zext i8 %43 to i32
  %lbah_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 7
  %44 = ptrtoint ptr %lbah_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lbah_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %46 = shl nuw i32 %conv16, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %46) #6, !srcloc !70
  br label %if.then19

if.then19:                                        ; preds = %if.then11, %land.lhs.true.if.then19_crit_edge
  %feature = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 8
  %47 = ptrtoint ptr %feature to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %feature, align 1
  %conv20 = zext i8 %48 to i32
  %feature_addr21 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 3
  %49 = ptrtoint ptr %feature_addr21 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %feature_addr21, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %51 = shl nuw i32 %conv20, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %51) #6, !srcloc !70
  %nsect = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 9
  %52 = ptrtoint ptr %nsect to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %nsect, align 4
  %conv22 = zext i8 %53 to i32
  %nsect_addr23 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 4
  %54 = ptrtoint ptr %nsect_addr23 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nsect_addr23, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %56 = shl nuw i32 %conv22, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %56) #6, !srcloc !70
  %lbal = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 10
  %57 = ptrtoint ptr %lbal to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %lbal, align 1
  %conv24 = zext i8 %58 to i32
  %lbal_addr25 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 5
  %59 = ptrtoint ptr %lbal_addr25 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lbal_addr25, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %61 = shl nuw i32 %conv24, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %61) #6, !srcloc !70
  %lbam = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 11
  %62 = ptrtoint ptr %lbam to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %lbam, align 2
  %conv26 = zext i8 %63 to i32
  %lbam_addr27 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 6
  %64 = ptrtoint ptr %lbam_addr27 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lbam_addr27, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %66 = shl nuw i32 %conv26, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %66) #6, !srcloc !70
  %lbah = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 12
  %67 = ptrtoint ptr %lbah to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %lbah, align 1
  %conv28 = zext i8 %68 to i32
  %lbah_addr29 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 7
  %69 = ptrtoint ptr %lbah_addr29 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lbah_addr29, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %71 = shl nuw i32 %conv28, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %71) #6, !srcloc !70
  br label %if.end30

if.end30:                                         ; preds = %if.then19, %if.end.if.end30_crit_edge
  %72 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tf, align 4
  %and32 = and i32 %73, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end36_crit_edge, label %if.then34

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 13
  %74 = ptrtoint ptr %device to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %device, align 4
  %conv35 = zext i8 %75 to i32
  %device_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 8
  %76 = ptrtoint ptr %device_addr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %device_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %78 = shl nuw i32 %conv35, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %78) #6, !srcloc !70
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end30.if.end36_crit_edge
  %ops.i.i71 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  br label %do.body.i.i81

do.body.i.i81:                                    ; preds = %do.body.i.i81.do.body.i.i81_crit_edge, %if.end36
  %max.addr.0.i.i72 = phi i32 [ 1000, %if.end36 ], [ %dec.i.i75, %do.body.i.i81.do.body.i.i81_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 2147480) #6
  %80 = ptrtoint ptr %ops.i.i71 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops.i.i71, align 4
  %sff_check_status.i.i73 = getelementptr inbounds %struct.ata_port_operations, ptr %81, i32 0, i32 39
  %82 = ptrtoint ptr %sff_check_status.i.i73 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sff_check_status.i.i73, align 4
  %call.i.i74 = tail call zeroext i8 %83(ptr noundef %ap) #6
  %dec.i.i75 = add nsw i32 %max.addr.0.i.i72, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i74)
  %cmp.not.i.i76 = icmp eq i8 %call.i.i74, -1
  %84 = and i8 %call.i.i74, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i.i77 = icmp eq i8 %84, 0
  %or.cond.i.i78 = or i1 %cmp.not.i.i76, %tobool.not.i.i77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i75)
  %cmp3.not.i.i79 = icmp eq i32 %dec.i.i75, 0
  %or.cond1.i.i80 = select i1 %or.cond.i.i78, i1 true, i1 %cmp3.not.i.i79
  br i1 %or.cond1.i.i80, label %ata_sff_busy_wait.exit.i86, label %do.body.i.i81.do.body.i.i81_crit_edge

do.body.i.i81.do.body.i.i81_crit_edge:            ; preds = %do.body.i.i81
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i81

ata_sff_busy_wait.exit.i86:                       ; preds = %do.body.i.i81
  %conv.i82 = zext i8 %call.i.i74 to i32
  %and.i83 = and i32 %conv.i82, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i83)
  %tobool.not.i84 = icmp eq i32 %and.i83, 0
  %or.cond.i85 = select i1 %cmp.not.i.i76, i1 true, i1 %tobool.not.i84
  br i1 %or.cond.i85, label %ata_sff_busy_wait.exit.i86.ata_wait_idle.exit90_crit_edge, label %do.body.i87

ata_sff_busy_wait.exit.i86.ata_wait_idle.exit90_crit_edge: ; preds = %ata_sff_busy_wait.exit.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_wait_idle.exit90

do.body.i87:                                      ; preds = %ata_sff_busy_wait.exit.i86
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ata_wait_idle.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_rcar_tf_load, %if.then7.i89)) #6
          to label %ata_wait_idle.exit90 [label %if.then7.i89], !srcloc !75

if.then7.i89:                                     ; preds = %do.body.i87
  call void @__sanitizer_cov_trace_pc() #8
  %print_id.i88 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %85 = ptrtoint ptr %print_id.i88 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %print_id.i88, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ata_wait_idle.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.9, i32 noundef %86, i32 noundef %conv.i82) #6
  br label %ata_wait_idle.exit90

ata_wait_idle.exit90:                             ; preds = %if.then7.i89, %do.body.i87, %ata_sff_busy_wait.exit.i86.ata_wait_idle.exit90_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sata_rcar_tf_read(ptr nocapture noundef %ap, ptr nocapture noundef %tf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %status_addr.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 9
  %0 = ptrtoint ptr %status_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %status_addr.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !71
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %conv.i = trunc i32 %3 to i8
  %command = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 14
  %4 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i, ptr %command, align 1
  %error_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 2
  %5 = ptrtoint ptr %error_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %error_addr, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !71
  %8 = lshr i32 %7, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %conv = trunc i32 %8 to i8
  %feature = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 8
  %9 = ptrtoint ptr %feature to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %feature, align 1
  %nsect_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 4
  %10 = ptrtoint ptr %nsect_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nsect_addr, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !71
  %13 = lshr i32 %12, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %conv4 = trunc i32 %13 to i8
  %nsect = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 9
  %14 = ptrtoint ptr %nsect to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv4, ptr %nsect, align 4
  %lbal_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 5
  %15 = ptrtoint ptr %lbal_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lbal_addr, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !71
  %18 = lshr i32 %17, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %conv6 = trunc i32 %18 to i8
  %lbal = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 10
  %19 = ptrtoint ptr %lbal to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv6, ptr %lbal, align 1
  %lbam_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 6
  %20 = ptrtoint ptr %lbam_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lbam_addr, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6, !srcloc !71
  %23 = lshr i32 %22, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %conv8 = trunc i32 %23 to i8
  %lbam = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 11
  %24 = ptrtoint ptr %lbam to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv8, ptr %lbam, align 2
  %lbah_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 7
  %25 = ptrtoint ptr %lbah_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lbah_addr, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !71
  %28 = lshr i32 %27, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %conv10 = trunc i32 %28 to i8
  %lbah = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 12
  %29 = ptrtoint ptr %lbah to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv10, ptr %lbah, align 1
  %device_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 8
  %30 = ptrtoint ptr %device_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device_addr, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #6, !srcloc !71
  %33 = lshr i32 %32, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %conv12 = trunc i32 %33 to i8
  %device = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 13
  %34 = ptrtoint ptr %device to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv12, ptr %device, align 4
  %35 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tf, align 4
  %and = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctl = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 2
  %37 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ctl, align 1
  %39 = or i8 %38, -128
  %or = zext i8 %39 to i32
  %ctl_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 12
  %40 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctl_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %42 = shl nuw i32 %or, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %42) #6, !srcloc !70
  %43 = ptrtoint ptr %error_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %error_addr, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #6, !srcloc !71
  %46 = lshr i32 %45, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %conv16 = trunc i32 %46 to i8
  %hob_feature = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 3
  %47 = ptrtoint ptr %hob_feature to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv16, ptr %hob_feature, align 2
  %48 = ptrtoint ptr %nsect_addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %nsect_addr, align 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #6, !srcloc !71
  %51 = lshr i32 %50, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %conv19 = trunc i32 %51 to i8
  %hob_nsect = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 4
  %52 = ptrtoint ptr %hob_nsect to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv19, ptr %hob_nsect, align 1
  %53 = ptrtoint ptr %lbal_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lbal_addr, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #6, !srcloc !71
  %56 = lshr i32 %55, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %conv22 = trunc i32 %56 to i8
  %hob_lbal = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 5
  %57 = ptrtoint ptr %hob_lbal to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv22, ptr %hob_lbal, align 4
  %58 = ptrtoint ptr %lbam_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lbam_addr, align 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #6, !srcloc !71
  %61 = lshr i32 %60, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %conv25 = trunc i32 %61 to i8
  %hob_lbam = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 6
  %62 = ptrtoint ptr %hob_lbam to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv25, ptr %hob_lbam, align 1
  %63 = ptrtoint ptr %lbah_addr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lbah_addr, align 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #6, !srcloc !71
  %66 = lshr i32 %65, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %conv28 = trunc i32 %66 to i8
  %hob_lbah = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 7
  %67 = ptrtoint ptr %hob_lbah to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv28, ptr %hob_lbah, align 2
  %68 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %ctl, align 1
  %conv30 = zext i8 %69 to i32
  %70 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctl_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %72 = shl nuw i32 %conv30, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %72) #6, !srcloc !70
  %73 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %ctl, align 1
  %last_ctl = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 10
  %75 = ptrtoint ptr %last_ctl to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %last_ctl, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sata_rcar_exec_command(ptr noundef %ap, ptr nocapture noundef readonly %tf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %command = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 14
  %0 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %command, align 1
  %conv = zext i8 %1 to i32
  %command_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 10
  %2 = ptrtoint ptr %command_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %command_addr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %4 = shl nuw i32 %conv, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %4) #6, !srcloc !70
  tail call void @ata_sff_pause(ptr noundef %ap) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_rcar_data_xfer(ptr nocapture noundef readonly %qc, ptr nocapture noundef %buf, i32 noundef %buflen, i32 noundef %rw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %data_addr2 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %data_addr2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data_addr2, align 4
  %shr = lshr i32 %buflen, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rw)
  %cmp = icmp eq i32 %rw, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %buflen)
  %tobool.not1.i = icmp ult i32 %buflen, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not1.i, label %if.end.thread53, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %count.addr.03.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %shr, %if.then.while.body.i_crit_edge ]
  %ptr.02.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %buf, %if.then.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %count.addr.03.i, -1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !71
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %conv.i = trunc i32 %9 to i16
  %incdec.ptr.i = getelementptr i16, ptr %ptr.02.i, i32 1
  %10 = ptrtoint ptr %ptr.02.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %ptr.02.i, align 2
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.if.end_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not1.i, label %if.end.thread, label %if.else.while.body.i31_crit_edge

if.else.while.body.i31_crit_edge:                 ; preds = %if.else
  br label %while.body.i31

while.body.i31:                                   ; preds = %while.body.i31.while.body.i31_crit_edge, %if.else.while.body.i31_crit_edge
  %ptr.03.i = phi ptr [ %incdec.ptr.i28, %while.body.i31.while.body.i31_crit_edge ], [ %buf, %if.else.while.body.i31_crit_edge ]
  %count.addr.02.i = phi i32 [ %dec.i27, %while.body.i31.while.body.i31_crit_edge ], [ %shr, %if.else.while.body.i31_crit_edge ]
  %dec.i27 = add nsw i32 %count.addr.02.i, -1
  %incdec.ptr.i28 = getelementptr i16, ptr %ptr.03.i, i32 1
  %11 = ptrtoint ptr %ptr.03.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ptr.03.i, align 2
  %conv.i29 = zext i16 %12 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %conv.i29) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %13) #6, !srcloc !70
  %tobool.not.i30 = icmp eq i32 %dec.i27, 0
  br i1 %tobool.not.i30, label %while.body.i31.if.end_crit_edge, label %while.body.i31.while.body.i31_crit_edge

while.body.i31.while.body.i31_crit_edge:          ; preds = %while.body.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i31

while.body.i31.if.end_crit_edge:                  ; preds = %while.body.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %while.body.i31.if.end_crit_edge, %while.body.i.if.end_crit_edge
  %and = and i32 %buflen, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %if.then5, !prof !76

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end.thread53:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %tobool.not55 = icmp eq i32 %buflen, 0
  br i1 %tobool.not55, label %if.end.thread53.if.end12_crit_edge, label %if.then5.thread56, !prof !76

if.end.thread53.if.end12_crit_edge:               ; preds = %if.end.thread53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then5.thread56:                                ; preds = %if.end.thread53
  call void @__sanitizer_cov_trace_pc() #8
  %sub57 = add nsw i32 %buflen, -1
  %add.ptr58 = getelementptr i8, ptr %buf, i32 %sub57
  br label %if.then7

if.end.thread:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %tobool.not49 = icmp eq i32 %buflen, 0
  br i1 %tobool.not49, label %if.end.thread.if.end12_crit_edge, label %if.then5.thread, !prof !76

if.end.thread.if.end12_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then5.thread:                                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  %sub50 = add nsw i32 %buflen, -1
  %add.ptr51 = getelementptr i8, ptr %buf, i32 %sub50
  br label %if.else8

if.then5:                                         ; preds = %if.end
  %sub = add i32 %buflen, -1
  %add.ptr = getelementptr i8, ptr %buf, i32 %sub
  br i1 %cmp, label %if.then5.if.then7_crit_edge, label %if.then5.if.else8_crit_edge

if.then5.if.else8_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else8

if.then5.if.then7_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.then7:                                         ; preds = %if.then5.if.then7_crit_edge, %if.then5.thread56
  %add.ptr59 = phi ptr [ %add.ptr58, %if.then5.thread56 ], [ %add.ptr, %if.then5.if.then7_crit_edge ]
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %sum.shift = lshr i32 %14, 16
  %pad.sroa.0.0.extract.shift64 = trunc i32 %sum.shift to i8
  %15 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %pad.sroa.0.0.extract.shift64, ptr %add.ptr59, align 1
  br label %if.end11

if.else8:                                         ; preds = %if.then5.if.else8_crit_edge, %if.then5.thread
  %add.ptr52 = phi ptr [ %add.ptr51, %if.then5.thread ], [ %add.ptr, %if.then5.if.else8_crit_edge ]
  %16 = ptrtoint ptr %add.ptr52 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr52, align 1
  %pad.sroa.0.0.insert.ext = zext i8 %17 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %18 = shl nuw nsw i32 %pad.sroa.0.0.insert.ext, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %18) #6, !srcloc !70
  br label %if.end11

if.end11:                                         ; preds = %if.else8, %if.then7
  %inc = add nuw i32 %shr, 1
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end.thread.if.end12_crit_edge, %if.end.thread53.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %words.0 = phi i32 [ %inc, %if.end11 ], [ %shr, %if.end.if.end12_crit_edge ], [ 0, %if.end.thread.if.end12_crit_edge ], [ 0, %if.end.thread53.if.end12_crit_edge ]
  %shl = shl i32 %words.0, 1
  ret i32 %shl
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sata_rcar_drain_fifo(ptr noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %qc, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dma_dir = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 11
  %0 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qc, align 4
  %ops = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %sff_check_status25 = getelementptr inbounds %struct.ata_port_operations, ptr %5, i32 0, i32 39
  %6 = ptrtoint ptr %sff_check_status25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sff_check_status25, align 4
  %call26 = tail call zeroext i8 %7(ptr noundef %3) #6
  %8 = and i8 %call26, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not27.not = icmp eq i8 %8, 0
  br i1 %tobool.not27.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %data_addr = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %count.028 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %data_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data_addr, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %add = add nuw nsw i32 %count.028, 2
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %sff_check_status = getelementptr inbounds %struct.ata_port_operations, ptr %13, i32 0, i32 39
  %14 = ptrtoint ptr %sff_check_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sff_check_status, align 4
  %call = tail call zeroext i8 %15(ptr noundef %3) #6
  %16 = and i8 %call, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp ne i8 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %count.028)
  %cmp3 = icmp ult i32 %count.028, 65534
  %or.cond = select i1 %tobool.not, i1 %cmp3, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %do.body

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_rcar_drain_fifo.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_rcar_drain_fifo, %if.then12)) #6
          to label %cleanup [label %if.then12], !srcloc !75

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %print_id = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %print_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_rcar_drain_fifo.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.11, i32 noundef %18, i32 noundef %add) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %do.body, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sata_rcar_bmdma_setup(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %2 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tf, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %bmdma_prd_dma = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %bmdma_prd_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bmdma_prd_dma, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 408
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #6, !srcloc !70
  %add.ptr3 = getelementptr i8, ptr %9, i32 384
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #6, !srcloc !71
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %and4 = and i32 %14, -7
  %and5 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  %and6 = and i32 %14, -8
  %or = or i32 %and6, 2
  %dmactl.0 = select i1 %tobool.not, i32 %and4, i32 %or
  %and = lshr i32 %3, 1
  %15 = and i32 %and, 4
  %16 = or i32 %dmactl.0, %15
  %17 = xor i32 %16, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %18) #6, !srcloc !70
  %ops = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %sff_exec_command = getelementptr inbounds %struct.ata_port_operations, ptr %20, i32 0, i32 43
  %21 = ptrtoint ptr %sff_exec_command to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sff_exec_command, align 4
  tail call void %22(ptr noundef %1, ptr noundef %tf) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sata_rcar_bmdma_start(ptr nocapture noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 384
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %9 = and i32 %8, -50331649
  %10 = or i32 %9, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #6, !srcloc !70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sata_rcar_bmdma_stop(ptr nocapture noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 384
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and3 = and i32 %9, -4
  %or = or i32 %and3, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #6, !srcloc !70
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @ata_sff_dma_pause(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @sata_rcar_bmdma_status(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 388
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %8 = trunc i32 %7 to i8
  %9 = lshr i8 %8, 2
  %10 = and i8 %9, 4
  %11 = and i8 %8, 1
  %12 = or i8 %10, %11
  ret i8 %12
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_freeze(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_thaw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_dev_classify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_msleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_wait_ready(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_dma_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sata_rcar_init_module(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 384
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %3 = or i32 %2, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #6, !srcloc !70
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %5 = or i32 %4, 134742272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #6, !srcloc !70
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %7 = and i32 %6, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #6, !srcloc !70
  %add.ptr12 = getelementptr i8, ptr %1, i32 5384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #6, !srcloc !70
  %sataint_mask = getelementptr inbounds %struct.sata_rcar_priv, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %sataint_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sataint_mask, align 4
  %add.ptr13 = getelementptr i8, ptr %1, i32 5388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %10) #6, !srcloc !70
  %add.ptr14 = getelementptr i8, ptr %1, i32 392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 524288) #6, !srcloc !70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sata_rcar_gen1_phy_write(ptr nocapture noundef readonly %priv, i16 noundef zeroext %reg, i32 noundef %val, i32 noundef %group) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 524
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !70
  %add.ptr2 = getelementptr i8, ptr %1, i32 520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 16777216) #6, !srcloc !70
  %add.ptr3 = getelementptr i8, ptr %1, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %val) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #6, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %group)
  %tobool.not = icmp eq i32 %group, 0
  %3 = or i16 %reg, 1024
  %spec.select = select i1 %tobool.not, i16 %reg, i16 %3
  %4 = or i16 %spec.select, 256
  %or6 = zext i16 %4 to i32
  %add.ptr7 = getelementptr i8, ptr %1, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %or6) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %5) #6, !srcloc !70
  %add.ptr9 = getelementptr i8, ptr %1, i32 532
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %timeout.029, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %do.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %timeout.029 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %7 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %for.cond, label %for.body.if.end17_crit_edge

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #9
  br label %if.end17

if.end17:                                         ; preds = %do.end, %for.body.if.end17_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #6, !srcloc !70
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sata_rcar_serr_interrupt(ptr noundef %ap) unnamed_addr #2 align 64 {
entry:
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
  %eh_info = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 5124
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sata_rcar_serr_interrupt.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sata_rcar_serr_interrupt, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !75

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %8 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %print_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sata_rcar_serr_interrupt.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.19, i32 noundef %9, i32 noundef %7) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  tail call void @ata_ehi_clear_desc(ptr noundef %eh_info) #6
  %and = and i32 %7, 67174400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.end.if.else_crit_edge, label %if.then8

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then8:                                         ; preds = %do.end
  %probe_mask.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 6
  %10 = ptrtoint ptr %probe_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %probe_mask.i, align 4
  %or.i = or i32 %11, 3
  store i32 %or.i, ptr %probe_mask.i, align 4
  %flags.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 5
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %or1.i = or i32 %13, 1
  store i32 %or1.i, ptr %flags.i, align 4
  %action.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 3
  %14 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %action.i, align 4
  %or2.i = or i32 %15, 14
  store i32 %or2.i, ptr %action.i, align 4
  %err_mask.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 2
  %16 = ptrtoint ptr %err_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %err_mask.i, align 4
  %or3.i = or i32 %17, 16
  store i32 %or3.i, ptr %err_mask.i, align 4
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #6
  %and9 = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then13, label %if.then8.if.else_crit_edge

if.then8.if.else_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 @ata_port_freeze(ptr noundef %ap) #6
  br label %cleanup

if.else:                                          ; preds = %if.then8.if.else_crit_edge, %do.end.if.else_crit_edge
  %call15 = tail call i32 @ata_port_abort(ptr noundef %ap) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then13, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_port_intr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_clear_desc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_push_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_freeze(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

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
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_rcar_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call2 = tail call i32 @ata_host_suspend(ptr noundef %1, [1 x i32] [i32 2]) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %5, i32 392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !70
  %sataint_mask = getelementptr inbounds %struct.sata_rcar_priv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %sataint_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sataint_mask, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 5388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %8) #6, !srcloc !70
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_rcar_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i21 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.sata_rcar_priv, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp4 = icmp eq i32 %7, 2
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @sata_rcar_init_module(ptr noundef %3)
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %5, i32 5384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !70
  %sataint_mask = getelementptr inbounds %struct.sata_rcar_priv, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %sataint_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sataint_mask, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 5388
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %10) #6, !srcloc !70
  %add.ptr7 = getelementptr i8, ptr %5, i32 392
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 524288) #6, !srcloc !70
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  tail call void @ata_host_resume(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_rcar_restore(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i9 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %ports.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports.i, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sata_rcar_port_ops, ptr %ops.i, align 4
  %pio_mask.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 15
  %9 = ptrtoint ptr %pio_mask.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 31, ptr %pio_mask.i, align 16
  %udma_mask.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 17
  %10 = ptrtoint ptr %udma_mask.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 127, ptr %udma_mask.i, align 8
  %flags.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %12, 2
  store i32 %or.i, ptr %flags.i, align 4
  %type.i = getelementptr inbounds %struct.sata_rcar_priv, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp.i = icmp eq i32 %14, 3
  br i1 %cmp.i, label %if.then.i, label %if.end.sata_rcar_setup_port.exit_crit_edge

if.end.sata_rcar_setup_port.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sata_rcar_setup_port.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or4.i = or i32 %12, 8388610
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or4.i, ptr %flags.i, align 4
  br label %sata_rcar_setup_port.exit

sata_rcar_setup_port.exit:                        ; preds = %if.then.i, %if.end.sata_rcar_setup_port.exit_crit_edge
  %ioaddr1.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 4352
  %16 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i, ptr %ioaddr1.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %7, i32 4612
  %ctl_addr.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8, i32 12
  %17 = ptrtoint ptr %ctl_addr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr5.i, ptr %ctl_addr.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %7, i32 5120
  %scr_addr.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8, i32 14
  %18 = ptrtoint ptr %scr_addr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr6.i, ptr %scr_addr.i, align 4
  %altstatus_addr.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8, i32 11
  %19 = ptrtoint ptr %altstatus_addr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr5.i, ptr %altstatus_addr.i, align 4
  %data_addr.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %data_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i, ptr %data_addr.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %7, i32 4356
  %error_addr.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8, i32 2
  %21 = ptrtoint ptr %error_addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr11.i, ptr %error_addr.i, align 4
  %feature_addr.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8, i32 3
  %22 = ptrtoint ptr %feature_addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr11.i, ptr %feature_addr.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %7, i32 4360
  %nsect_addr.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8, i32 4
  %23 = ptrtoint ptr %nsect_addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr15.i, ptr %nsect_addr.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %7, i32 4364
  %lbal_addr.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8, i32 5
  %24 = ptrtoint ptr %lbal_addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr17.i, ptr %lbal_addr.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %7, i32 4368
  %lbam_addr.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8, i32 6
  %25 = ptrtoint ptr %lbam_addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr19.i, ptr %lbam_addr.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %7, i32 4372
  %lbah_addr.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8, i32 7
  %26 = ptrtoint ptr %lbah_addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr21.i, ptr %lbah_addr.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %7, i32 4376
  %device_addr.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8, i32 8
  %27 = ptrtoint ptr %device_addr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr23.i, ptr %device_addr.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %7, i32 4380
  %status_addr.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8, i32 9
  %28 = ptrtoint ptr %status_addr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr25.i, ptr %status_addr.i, align 4
  %command_addr.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8, i32 10
  %29 = ptrtoint ptr %command_addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr25.i, ptr %command_addr.i, align 4
  tail call fastcc void @sata_rcar_init_controller(ptr noundef %1)
  tail call void @ata_host_resume(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %sata_rcar_setup_port.exit, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %sata_rcar_setup_port.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_sata_rcar__290_1036_sata_rcar_driver_init6, !1, !"__initcall__kmod_sata_rcar__290_1036_sata_rcar_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/sata_rcar.c", i32 1036, i32 1}
!2 = !{ptr @__exitcall_sata_rcar_driver_exit, !1, !"__exitcall_sata_rcar_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file291, !4, !"__UNIQUE_ID_file291", i1 false, i1 false}
!4 = !{!"../drivers/ata/sata_rcar.c", i32 1038, i32 1}
!5 = !{ptr @__UNIQUE_ID_license292, !4, !"__UNIQUE_ID_license292", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author293, !7, !"__UNIQUE_ID_author293", i1 false, i1 false}
!7 = !{!"../drivers/ata/sata_rcar.c", i32 1039, i32 1}
!8 = !{ptr @__UNIQUE_ID_description294, !9, !"__UNIQUE_ID_description294", i1 false, i1 false}
!9 = !{!"../drivers/ata/sata_rcar.c", i32 1040, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/ata/sata_rcar.c", i32 1028, i32 12}
!12 = !{ptr @sata_rcar_driver, !13, !"sata_rcar_driver", i1 false, i1 false}
!13 = !{!"../drivers/ata/sata_rcar.c", i32 1024, i32 31}
!14 = !{ptr @sata_rcar_port_ops, !15, !"sata_rcar_port_ops", i1 false, i1 false}
!15 = !{!"../drivers/ata/sata_rcar.c", i32 627, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/ata/sata_rcar.c", i32 354, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sata_rcar_softreset._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @sata_rcar_softreset._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sata_rcar_softreset._entry.4, !17, !"_entry", i1 false, i1 false}
!24 = !{ptr @sata_rcar_softreset._entry_ptr.6, !17, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/libata.h", i32 2045, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ata_wait_idle.__UNIQUE_ID_ddebug286, !26, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ata/sata_rcar.c", i32 483, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @sata_rcar_drain_fifo.__UNIQUE_ID_ddebug288, !31, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/ata/sata_rcar.c", i32 815, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sata_rcar_init_controller._entry, !35, !"_entry", i1 false, i1 false}
!40 = !{ptr @sata_rcar_init_controller._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/ata/sata_rcar.c", i32 194, i32 3}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @sata_rcar_gen1_phy_write._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @sata_rcar_gen1_phy_write._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/ata/sata_rcar.c", i32 666, i32 2}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @sata_rcar_serr_interrupt.__UNIQUE_ID_ddebug289, !47, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/ata/sata_rcar.c", i32 674, i32 26}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/ata/sata_rcar.c", i32 674, i32 32}
!54 = !{ptr @sata_rcar_sht, !55, !"sata_rcar_sht", i1 false, i1 false}
!55 = !{!"../drivers/ata/sata_rcar.c", i32 616, i32 34}
!56 = !{ptr @sata_rcar_match, !57, !"sata_rcar_match", i1 false, i1 false}
!57 = !{!"../drivers/ata/sata_rcar.c", i32 822, i32 34}
!58 = !{ptr @sata_rcar_pm_ops, !59, !"sata_rcar_pm_ops", i1 false, i1 false}
!59 = !{!"../drivers/ata/sata_rcar.c", i32 1014, i32 32}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2152302959}
!70 = !{i64 4760837}
!71 = !{i64 4761255}
!72 = !{i64 2152301604}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{!"auto-init"}
!75 = !{i64 2148716406, i64 2148716411, i64 2148716424, i64 2148716468, i64 2148716502, i64 2148716523}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 2155506446}
