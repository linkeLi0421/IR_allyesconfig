; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_samsung_cf.c_pt.bc'
source_filename = "../drivers/ata/pata_samsung_cf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.s3c_ide_info = type { ptr, ptr, ptr, i32, i32, i32 }
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
%struct.ata_timing = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }

@__initcall__kmod_pata_samsung_cf__287_657_pata_s3c_driver_init6 = internal global ptr @pata_s3c_driver_init, section ".initcall6.init", align 4
@pata_s3c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pata_s3c_pm_ops, ptr null, ptr null }, ptr @pata_s3c_driver_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pata_s3c_driver_exit = internal global ptr @pata_s3c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author288 = internal constant [65 x i8] c"pata_samsung_cf.author=Abhilash Kesavan, <a.kesavan@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [73 x i8] c"pata_samsung_cf.description=low-level driver for Samsung PATA controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [49 x i8] c"pata_samsung_cf.file=drivers/ata/pata_samsung_cf\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [28 x i8] c"pata_samsung_cf.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version292 = internal constant [28 x i8] c"pata_samsung_cf.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pata_samsung_cf\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cfcon\00", [26 x i8] zeroinitializer }, align 32
@pata_s3c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 519, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to get access to cf controller clock\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pata_s3c_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/ata/pata_samsung_cf.c\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pata_s3c_probe._entry_ptr = internal global ptr @pata_s3c_probe._entry, section ".printk_index", align 4
@pata_s3c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 530, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to allocate ide host\0A\00", [35 x i8] zeroinitializer }, align 32
@pata_s3c_probe._entry_ptr.11 = internal global ptr @pata_s3c_probe._entry.9, section ".printk_index", align 4
@pata_s3c_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pata_s3c_set_piomode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pata_s3c_softreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pata_s3c_dev_select, ptr @pata_s3c_set_devctl, ptr @pata_s3c_check_status, ptr @pata_s3c_check_altstatus, ptr @pata_s3c_tf_load, ptr @pata_s3c_tf_read, ptr @pata_s3c_exec_command, ptr @pata_s3c_data_xfer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_port_ops }, [44 x i8] zeroinitializer }, align 32
@pata_s5p_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pata_s3c_set_piomode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_port_ops }, [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no IRQ, using PIO polling\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mmio cmd 0x%llx \00", [47 x i8] zeroinitializer }, align 32
@pata_s3c_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_sff_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@pata_s3c_softreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.6, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013ata%u.%02u: SRST failed (errno=%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pata_s3c_softreset\00", [45 x i8] zeroinitializer }, align 32
@pata_s3c_softreset._entry_ptr = internal global ptr @pata_s3c_softreset._entry, section ".printk_index", align 4
@pata_s3c_softreset._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.6, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013ata%u: SRST failed (errno=%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@pata_s3c_softreset._entry_ptr.18 = internal global ptr @pata_s3c_softreset._entry.16, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ata_wait_idle.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.19, ptr @.str.20, ptr @.str.21, i8 1, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ata_wait_idle\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/libata.h\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ata%u: abnormal Status 0x%X\0A\00", [35 x i8] zeroinitializer }, align 32
@pata_s3c_data_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.6, i32 289, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unexpected trailing data\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pata_s3c_data_xfer\00", [45 x i8] zeroinitializer }, align 32
@pata_s3c_data_xfer._entry_ptr = internal global ptr @pata_s3c_data_xfer._entry, section ".printk_index", align 4
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@pata_s3c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pata_s3c_suspend, ptr @pata_s3c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pata_s3c_driver_ids = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s3c64xx-pata\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"s5pv210-pata\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"pata_s3c_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 646, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 662, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 517, i32 39 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 519, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 530, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"pata_s3c_port_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 422, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"pata_s5p_port_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 436, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 553, i32 21 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 570, i32 20 }
@___asan_gen_.76 = private unnamed_addr constant [13 x i8] c"pata_s3c_sht\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 418, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 399, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [26 x i8] c"../include/linux/libata.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 2045, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 289, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [16 x i8] c"pata_s3c_pm_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 626, i32 32 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c"pata_s3c_driver_ids\00", align 1
@___asan_gen_.116 = private constant [33 x i8] c"../drivers/ata/pata_samsung_cf.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 633, i32 40 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__UNIQUE_ID_version292, ptr @__exitcall_pata_s3c_driver_exit, ptr @__initcall__kmod_pata_samsung_cf__287_657_pata_s3c_driver_init6, ptr @__modver_attr, ptr @pata_s3c_data_xfer._entry, ptr @pata_s3c_data_xfer._entry_ptr, ptr @pata_s3c_driver_exit, ptr @pata_s3c_probe._entry, ptr @pata_s3c_probe._entry.9, ptr @pata_s3c_probe._entry_ptr, ptr @pata_s3c_probe._entry_ptr.11, ptr @pata_s3c_remove, ptr @pata_s3c_softreset._entry, ptr @pata_s3c_softreset._entry.16, ptr @pata_s3c_softreset._entry_ptr, ptr @pata_s3c_softreset._entry_ptr.18, ptr @pata_s3c_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @pata_s3c_port_ops, ptr @pata_s5p_port_ops, ptr @.str.12, ptr @.str.13, ptr @pata_s3c_sht, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @pata_s3c_pm_ops, ptr @pata_s3c_driver_ids], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_s3c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_s3c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_s3c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_s3c_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_s5p_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_s3c_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_s3c_softreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_s3c_softreset._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_s3c_data_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_s3c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pata_s3c_driver_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pata_s3c_remove(ptr nocapture noundef readonly %pdev) #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  tail call void @ata_host_detach(ptr noundef %1) #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pata_s3c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @pata_s3c_driver, ptr noundef nonnull @pata_s3c_probe, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pata_s3c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @pata_s3c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pata_s3c_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.s3c_ide_info, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call4, ptr %irq, align 4
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call6 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call5) #6
  %ide_addr = getelementptr inbounds %struct.s3c_ide_info, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %ide_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %ide_addr, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call14 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #6
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call14, ptr %call.i, align 4
  %cmp.i174 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i174, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  %12 = ptrtoint ptr %11 to i32
  store ptr null, ptr %call.i, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %call23 = tail call i32 @clk_enable(ptr noundef %call14) #6
  %call24 = tail call ptr @ata_host_alloc(ptr noundef %dev, i32 noundef 1) #6
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %do.end29, label %if.end30

do.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %stop_clk

if.end30:                                         ; preds = %if.end21
  %ports = getelementptr inbounds %struct.ata_host, ptr %call24, i32 0, i32 12
  %13 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ports, align 4
  %pio_mask = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %pio_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 31, ptr %pio_mask, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %ops = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 1
  br i1 %cmp, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @pata_s3c_port_ops, ptr %ops, align 4
  %17 = ptrtoint ptr %ide_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ide_addr, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 6144
  %sfr_addr = getelementptr inbounds %struct.s3c_ide_info, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %sfr_addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr, ptr %sfr_addr, align 4
  %add.ptr34 = getelementptr i8, ptr %18, i32 6400
  store ptr %add.ptr34, ptr %ide_addr, align 4
  br label %if.end37

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @pata_s5p_port_ops, ptr %ops, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then31
  %.sink = phi i32 [ 148, %if.then31 ], [ 132, %if.else ]
  %21 = getelementptr inbounds %struct.s3c_ide_info, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %21, align 4
  %cpu_type38 = getelementptr inbounds %struct.s3c_ide_info, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %cpu_type38 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %5, ptr %cpu_type38, align 4
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp40 = icmp slt i32 %25, 1
  br i1 %cmp40, label %if.then41, label %if.end37.if.end43_crit_edge

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 3
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  %or = or i32 %27, 512
  store i32 %or, ptr %flags, align 4
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %14, ptr noundef nonnull @.str.12) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end37.if.end43_crit_edge
  %29 = ptrtoint ptr %ide_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ide_addr, align 4
  %add.ptr45 = getelementptr i8, ptr %30, i32 8
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8
  %31 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr45, ptr %ioaddr, align 32
  %32 = load ptr, ptr %ide_addr, align 4
  %add.ptr47 = getelementptr i8, ptr %32, i32 84
  %data_addr = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %data_addr to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr47, ptr %data_addr, align 4
  %34 = load ptr, ptr %ide_addr, align 4
  %add.ptr50 = getelementptr i8, ptr %34, i32 88
  %error_addr = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 2
  %35 = ptrtoint ptr %error_addr to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr50, ptr %error_addr, align 8
  %36 = load ptr, ptr %ide_addr, align 4
  %add.ptr53 = getelementptr i8, ptr %36, i32 88
  %feature_addr = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 3
  %37 = ptrtoint ptr %feature_addr to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr53, ptr %feature_addr, align 4
  %38 = load ptr, ptr %ide_addr, align 4
  %add.ptr56 = getelementptr i8, ptr %38, i32 92
  %nsect_addr = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 4
  %39 = ptrtoint ptr %nsect_addr to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr56, ptr %nsect_addr, align 16
  %40 = load ptr, ptr %ide_addr, align 4
  %add.ptr59 = getelementptr i8, ptr %40, i32 96
  %lbal_addr = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 5
  %41 = ptrtoint ptr %lbal_addr to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr59, ptr %lbal_addr, align 4
  %42 = load ptr, ptr %ide_addr, align 4
  %add.ptr62 = getelementptr i8, ptr %42, i32 100
  %lbam_addr = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 6
  %43 = ptrtoint ptr %lbam_addr to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr62, ptr %lbam_addr, align 8
  %44 = load ptr, ptr %ide_addr, align 4
  %add.ptr65 = getelementptr i8, ptr %44, i32 104
  %lbah_addr = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 7
  %45 = ptrtoint ptr %lbah_addr to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr65, ptr %lbah_addr, align 4
  %46 = load ptr, ptr %ide_addr, align 4
  %add.ptr68 = getelementptr i8, ptr %46, i32 108
  %device_addr = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 8
  %47 = ptrtoint ptr %device_addr to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr68, ptr %device_addr, align 32
  %48 = load ptr, ptr %ide_addr, align 4
  %add.ptr71 = getelementptr i8, ptr %48, i32 112
  %status_addr = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 9
  %49 = ptrtoint ptr %status_addr to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr71, ptr %status_addr, align 4
  %50 = load ptr, ptr %ide_addr, align 4
  %add.ptr74 = getelementptr i8, ptr %50, i32 112
  %command_addr = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 10
  %51 = ptrtoint ptr %command_addr to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr74, ptr %command_addr, align 8
  %52 = load ptr, ptr %ide_addr, align 4
  %add.ptr77 = getelementptr i8, ptr %52, i32 116
  %altstatus_addr = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 11
  %53 = ptrtoint ptr %altstatus_addr to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr77, ptr %altstatus_addr, align 4
  %54 = load ptr, ptr %ide_addr, align 4
  %add.ptr80 = getelementptr i8, ptr %54, i32 116
  %ctl_addr = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 12
  %55 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr80, ptr %ctl_addr, align 16
  %56 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call5, align 4
  %conv = zext i32 %57 to i64
  tail call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %14, ptr noundef nonnull @.str.13, i64 noundef %conv) #6
  %private_data = getelementptr inbounds %struct.ata_host, ptr %call24, i32 0, i32 5
  %58 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i, ptr %private_data, align 4
  %tobool82.not = icmp eq ptr %1, null
  br i1 %tobool82.not, label %if.end43.if.end86_crit_edge, label %land.lhs.true

if.end43.if.end86_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

land.lhs.true:                                    ; preds = %if.end43
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %tobool83.not = icmp eq ptr %60, null
  br i1 %tobool83.not, label %land.lhs.true.if.end86_crit_edge, label %if.then84

land.lhs.true.if.end86_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then84:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %60() #6
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %land.lhs.true.if.end86_crit_edge, %if.end43.if.end86_crit_edge
  tail call fastcc void @pata_s3c_hwinit(ptr noundef nonnull %call.i)
  %61 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool89.not = icmp eq i32 %62, 0
  %cond = select i1 %tobool89.not, ptr null, ptr @pata_s3c_irq
  %call90 = tail call i32 @ata_host_activate(ptr noundef nonnull %call24, i32 noundef %62, ptr noundef %cond, i32 noundef 0, ptr noundef nonnull @pata_s3c_sht) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end86.cleanup_crit_edge, label %if.end86.stop_clk_crit_edge

if.end86.stop_clk_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %stop_clk

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

stop_clk:                                         ; preds = %if.end86.stop_clk_crit_edge, %do.end29
  %ret.0 = phi i32 [ %call90, %if.end86.stop_clk_crit_edge ], [ -12, %do.end29 ]
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 4
  tail call void @clk_disable(ptr noundef %64) #6
  br label %cleanup

cleanup:                                          ; preds = %stop_clk, %if.end86.cleanup_crit_edge, %do.end, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then9 ], [ %12, %do.end ], [ %ret.0, %stop_clk ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end86.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pata_s3c_hwinit(ptr nocapture noundef readonly %info) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu_type = getelementptr inbounds %struct.s3c_ide_info, ptr %info, i32 0, i32 4
  %0 = ptrtoint ptr %cpu_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body18 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sfr_addr = getelementptr inbounds %struct.s3c_ide_info, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %sfr_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sfr_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %6 = or i32 %5, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %6) #6, !srcloc !76
  %ide_addr = getelementptr inbounds %struct.s3c_ide_info, ptr %info, i32 0, i32 1
  %7 = ptrtoint ptr %ide_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ide_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %10 = and i32 %9, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #6, !srcloc !76
  %11 = ptrtoint ptr %ide_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ide_addr, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %14 = or i32 %13, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %14) #6, !srcloc !76
  tail call void @msleep(i32 noundef 100) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %ide_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ide_addr, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 520093696) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %ide_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ide_addr, align 4
  %add.ptr6 = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 452984832) #6, !srcloc !76
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ide_addr8 = getelementptr inbounds %struct.s3c_ide_info, ptr %info, i32 0, i32 1
  %19 = ptrtoint ptr %ide_addr8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ide_addr8, align 4
  %add.ptr.i1 = getelementptr i8, ptr %20, i32 24
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %22 = or i32 %21, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1, i32 %22) #6, !srcloc !76
  %23 = ptrtoint ptr %ide_addr8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ide_addr8, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %26 = or i32 %25, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %26) #6, !srcloc !76
  tail call void @msleep(i32 noundef 100) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %ide_addr8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ide_addr8, align 4
  %add.ptr13 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 1056964608) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %ide_addr8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ide_addr8, align 4
  %add.ptr17 = getelementptr i8, ptr %30, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 1056964608) #6, !srcloc !76
  br label %sw.epilog

do.body18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/pata_samsung_cf.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 488, 0\0A.popsection", ""() #6, !srcloc !85
  unreachable

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pata_s3c_irq(i32 noundef %irq, ptr noundef %dev_instance) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ide_addr = getelementptr inbounds %struct.s3c_ide_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ide_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ide_addr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %ide_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ide_addr, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #6, !srcloc !76
  %call4 = tail call i32 @ata_sff_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #6
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pata_s3c_set_piomode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #4 align 64 {
entry:
  %timing = alloca %struct.ata_timing, align 2
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
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %timing) #6
  %4 = getelementptr inbounds %struct.ata_timing, ptr %timing, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ata_timing, ptr %timing, i32 0, i32 2
  %6 = getelementptr inbounds %struct.ata_timing, ptr %timing, i32 0, i32 3
  %ide_addr = getelementptr inbounds %struct.s3c_ide_info, ptr %3, i32 0, i32 1
  %7 = call ptr @memset(ptr %timing, i32 255, i32 20)
  %8 = ptrtoint ptr %ide_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ide_addr, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  %call2 = tail call i32 @ata_pio_need_iordy(ptr noundef %adev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %11 = and i32 %10, -33554433
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %masksel = select i1 %tobool.not, i32 0, i32 2
  %ata_cfg.0 = or i32 %masksel, %12
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %call3 = tail call i32 @clk_get_rate(ptr noundef %14) #6
  %div = udiv i32 1000000000, %call3
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %15 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %16 to i16
  %mul = mul i32 %div, 1000
  %call4 = call i32 @ata_timing_compute(ptr noundef %adev, i16 noundef zeroext %conv, ptr noundef nonnull %timing, i32 noundef %mul, i32 noundef 0) #6
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %4, align 2
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %5, align 2
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %6, align 2
  %23 = and i16 %22, 255
  %and.i = zext i16 %23 to i32
  %shl.i = shl nuw nsw i32 %and.i, 12
  %24 = shl i16 %20, 4
  %25 = and i16 %24, 4080
  %shl4.i = zext i16 %25 to i32
  %or.i = or i32 %shl.i, %shl4.i
  %26 = and i16 %18, 15
  %and5.i = zext i16 %26 to i32
  %or6.i = or i32 %or.i, %and5.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  call void @arm_heavy_mb() #6
  %27 = call i32 @llvm.bswap.i32(i32 %ata_cfg.0)
  %28 = ptrtoint ptr %ide_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ide_addr, align 4
  %add.ptr7 = getelementptr i8, ptr %29, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %27) #6, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  call void @arm_heavy_mb() #6
  %30 = call i32 @llvm.bswap.i32(i32 %or6.i)
  %31 = ptrtoint ptr %ide_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ide_addr, align 4
  %add.ptr12 = getelementptr i8, ptr %32, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %30) #6, !srcloc !76
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %timing) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pata_s3c_softreset(ptr nocapture noundef readonly %link, ptr nocapture noundef writeonly %classes, i32 noundef %deadline) #4 align 64 {
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
  store i8 -1, ptr %err, align 1, !annotation !91
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %3 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host.i.i, align 4
  %device_addr.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 8
  %5 = ptrtoint ptr %device_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device_addr.i.i, align 32
  %private_data.i.i.i = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data.i.i.i, align 4
  %ide_addr.i.i.i.i = getelementptr inbounds %struct.s3c_ide_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ide_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ide_addr.i.i.i.i, align 4
  %fifo_status_reg.i.i.i.i = getelementptr inbounds %struct.s3c_ide_info, ptr %8, i32 0, i32 5
  %11 = ptrtoint ptr %fifo_status_reg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fifo_status_reg.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %10, i32 %12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i.i.i = sub i32 -2, %13
  br label %while.cond.i.i.i.i

while.cond.i.i.i.i:                               ; preds = %while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i.i = add i32 %add.neg.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %sub.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %while.body.i.i.i.i, label %while.cond.i.i.i.i.pata_s3c_dev_select.exit.i_crit_edge

while.cond.i.i.i.i.pata_s3c_dev_select.exit.i_crit_edge: ; preds = %while.cond.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pata_s3c_dev_select.exit.i

while.body.i.i.i.i:                               ; preds = %while.cond.i.i.i.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %16 = and i32 %15, 240
  %cmp3.i.i.i.i = icmp eq i32 %16, 0
  br i1 %cmp3.i.i.i.i, label %while.body.i.i.i.i.pata_s3c_dev_select.exit.i_crit_edge, label %while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge

while.body.i.i.i.i.while.cond.i.i.i.i_crit_edge:  ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i.i.i

while.body.i.i.i.i.pata_s3c_dev_select.exit.i_crit_edge: ; preds = %while.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pata_s3c_dev_select.exit.i

pata_s3c_dev_select.exit.i:                       ; preds = %while.body.i.i.i.i.pata_s3c_dev_select.exit.i_crit_edge, %while.cond.i.i.i.i.pata_s3c_dev_select.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 -96) #6, !srcloc !94
  tail call void @ata_sff_pause(ptr noundef %1) #6
  %17 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host.i.i, align 4
  %nsect_addr.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 4
  %19 = ptrtoint ptr %nsect_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nsect_addr.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %18, i32 0, i32 5
  %21 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private_data.i.i, align 4
  %ide_addr.i.i.i = getelementptr inbounds %struct.s3c_ide_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %ide_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ide_addr.i.i.i, align 4
  %fifo_status_reg.i.i.i = getelementptr inbounds %struct.s3c_ide_info, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %fifo_status_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fifo_status_reg.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 %26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i.i = sub i32 -2, %27
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %pata_s3c_dev_select.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = add i32 %add.neg.i.i.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %while.body.i.i.i, label %while.cond.i.i.i.ata_outb.exit.i_crit_edge

while.cond.i.i.i.ata_outb.exit.i_crit_edge:       ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %30 = and i32 %29, 240
  %cmp3.i.i.i = icmp eq i32 %30, 0
  br i1 %cmp3.i.i.i, label %while.body.i.i.i.ata_outb.exit.i_crit_edge, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i.i

while.body.i.i.i.ata_outb.exit.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit.i

ata_outb.exit.i:                                  ; preds = %while.body.i.i.i.ata_outb.exit.i_crit_edge, %while.cond.i.i.i.ata_outb.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 85) #6, !srcloc !94
  %31 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %host.i.i, align 4
  %lbal_addr.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 5
  %33 = ptrtoint ptr %lbal_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lbal_addr.i, align 4
  %private_data.i1.i = getelementptr inbounds %struct.ata_host, ptr %32, i32 0, i32 5
  %35 = ptrtoint ptr %private_data.i1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %private_data.i1.i, align 4
  %ide_addr.i.i2.i = getelementptr inbounds %struct.s3c_ide_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %ide_addr.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ide_addr.i.i2.i, align 4
  %fifo_status_reg.i.i3.i = getelementptr inbounds %struct.s3c_ide_info, ptr %36, i32 0, i32 5
  %39 = ptrtoint ptr %fifo_status_reg.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fifo_status_reg.i.i3.i, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %38, i32 %40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i5.i = sub i32 -2, %41
  br label %while.cond.i.i8.i

while.cond.i.i8.i:                                ; preds = %while.body.i.i10.i.while.cond.i.i8.i_crit_edge, %ata_outb.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i6.i = add i32 %add.neg.i.i5.i, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i6.i)
  %cmp.i.i7.i = icmp slt i32 %sub.i.i6.i, 0
  br i1 %cmp.i.i7.i, label %while.body.i.i10.i, label %while.cond.i.i8.i.ata_outb.exit11.i_crit_edge

while.cond.i.i8.i.ata_outb.exit11.i_crit_edge:    ; preds = %while.cond.i.i8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit11.i

while.body.i.i10.i:                               ; preds = %while.cond.i.i8.i
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i4.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %44 = and i32 %43, 240
  %cmp3.i.i9.i = icmp eq i32 %44, 0
  br i1 %cmp3.i.i9.i, label %while.body.i.i10.i.ata_outb.exit11.i_crit_edge, label %while.body.i.i10.i.while.cond.i.i8.i_crit_edge

while.body.i.i10.i.while.cond.i.i8.i_crit_edge:   ; preds = %while.body.i.i10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i8.i

while.body.i.i10.i.ata_outb.exit11.i_crit_edge:   ; preds = %while.body.i.i10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit11.i

ata_outb.exit11.i:                                ; preds = %while.body.i.i10.i.ata_outb.exit11.i_crit_edge, %while.cond.i.i8.i.ata_outb.exit11.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %34, i8 -86) #6, !srcloc !94
  %45 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %host.i.i, align 4
  %47 = ptrtoint ptr %nsect_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %nsect_addr.i, align 4
  %private_data.i12.i = getelementptr inbounds %struct.ata_host, ptr %46, i32 0, i32 5
  %49 = ptrtoint ptr %private_data.i12.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %private_data.i12.i, align 4
  %ide_addr.i.i13.i = getelementptr inbounds %struct.s3c_ide_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %ide_addr.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ide_addr.i.i13.i, align 4
  %fifo_status_reg.i.i14.i = getelementptr inbounds %struct.s3c_ide_info, ptr %50, i32 0, i32 5
  %53 = ptrtoint ptr %fifo_status_reg.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fifo_status_reg.i.i14.i, align 4
  %add.ptr.i.i15.i = getelementptr i8, ptr %52, i32 %54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i16.i = sub i32 -2, %55
  br label %while.cond.i.i19.i

while.cond.i.i19.i:                               ; preds = %while.body.i.i21.i.while.cond.i.i19.i_crit_edge, %ata_outb.exit11.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i17.i = add i32 %add.neg.i.i16.i, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i17.i)
  %cmp.i.i18.i = icmp slt i32 %sub.i.i17.i, 0
  br i1 %cmp.i.i18.i, label %while.body.i.i21.i, label %while.cond.i.i19.i.ata_outb.exit22.i_crit_edge

while.cond.i.i19.i.ata_outb.exit22.i_crit_edge:   ; preds = %while.cond.i.i19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit22.i

while.body.i.i21.i:                               ; preds = %while.cond.i.i19.i
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %58 = and i32 %57, 240
  %cmp3.i.i20.i = icmp eq i32 %58, 0
  br i1 %cmp3.i.i20.i, label %while.body.i.i21.i.ata_outb.exit22.i_crit_edge, label %while.body.i.i21.i.while.cond.i.i19.i_crit_edge

while.body.i.i21.i.while.cond.i.i19.i_crit_edge:  ; preds = %while.body.i.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i19.i

while.body.i.i21.i.ata_outb.exit22.i_crit_edge:   ; preds = %while.body.i.i21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit22.i

ata_outb.exit22.i:                                ; preds = %while.body.i.i21.i.ata_outb.exit22.i_crit_edge, %while.cond.i.i19.i.ata_outb.exit22.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %48, i8 -86) #6, !srcloc !94
  %59 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %host.i.i, align 4
  %61 = ptrtoint ptr %lbal_addr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lbal_addr.i, align 4
  %private_data.i23.i = getelementptr inbounds %struct.ata_host, ptr %60, i32 0, i32 5
  %63 = ptrtoint ptr %private_data.i23.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %private_data.i23.i, align 4
  %ide_addr.i.i24.i = getelementptr inbounds %struct.s3c_ide_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %ide_addr.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ide_addr.i.i24.i, align 4
  %fifo_status_reg.i.i25.i = getelementptr inbounds %struct.s3c_ide_info, ptr %64, i32 0, i32 5
  %67 = ptrtoint ptr %fifo_status_reg.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fifo_status_reg.i.i25.i, align 4
  %add.ptr.i.i26.i = getelementptr i8, ptr %66, i32 %68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i27.i = sub i32 -2, %69
  br label %while.cond.i.i30.i

while.cond.i.i30.i:                               ; preds = %while.body.i.i32.i.while.cond.i.i30.i_crit_edge, %ata_outb.exit22.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i28.i = add i32 %add.neg.i.i27.i, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i28.i)
  %cmp.i.i29.i = icmp slt i32 %sub.i.i28.i, 0
  br i1 %cmp.i.i29.i, label %while.body.i.i32.i, label %while.cond.i.i30.i.ata_outb.exit33.i_crit_edge

while.cond.i.i30.i.ata_outb.exit33.i_crit_edge:   ; preds = %while.cond.i.i30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit33.i

while.body.i.i32.i:                               ; preds = %while.cond.i.i30.i
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i26.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %72 = and i32 %71, 240
  %cmp3.i.i31.i = icmp eq i32 %72, 0
  br i1 %cmp3.i.i31.i, label %while.body.i.i32.i.ata_outb.exit33.i_crit_edge, label %while.body.i.i32.i.while.cond.i.i30.i_crit_edge

while.body.i.i32.i.while.cond.i.i30.i_crit_edge:  ; preds = %while.body.i.i32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i30.i

while.body.i.i32.i.ata_outb.exit33.i_crit_edge:   ; preds = %while.body.i.i32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit33.i

ata_outb.exit33.i:                                ; preds = %while.body.i.i32.i.ata_outb.exit33.i_crit_edge, %while.cond.i.i30.i.ata_outb.exit33.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %62, i8 85) #6, !srcloc !94
  %73 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %host.i.i, align 4
  %75 = ptrtoint ptr %nsect_addr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %nsect_addr.i, align 4
  %private_data.i34.i = getelementptr inbounds %struct.ata_host, ptr %74, i32 0, i32 5
  %77 = ptrtoint ptr %private_data.i34.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %private_data.i34.i, align 4
  %ide_addr.i.i35.i = getelementptr inbounds %struct.s3c_ide_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %ide_addr.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ide_addr.i.i35.i, align 4
  %fifo_status_reg.i.i36.i = getelementptr inbounds %struct.s3c_ide_info, ptr %78, i32 0, i32 5
  %81 = ptrtoint ptr %fifo_status_reg.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fifo_status_reg.i.i36.i, align 4
  %add.ptr.i.i37.i = getelementptr i8, ptr %80, i32 %82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %83 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i38.i = sub i32 -2, %83
  br label %while.cond.i.i41.i

while.cond.i.i41.i:                               ; preds = %while.body.i.i43.i.while.cond.i.i41.i_crit_edge, %ata_outb.exit33.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %84 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i39.i = add i32 %add.neg.i.i38.i, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i39.i)
  %cmp.i.i40.i = icmp slt i32 %sub.i.i39.i, 0
  br i1 %cmp.i.i40.i, label %while.body.i.i43.i, label %while.cond.i.i41.i.ata_outb.exit44.i_crit_edge

while.cond.i.i41.i.ata_outb.exit44.i_crit_edge:   ; preds = %while.cond.i.i41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit44.i

while.body.i.i43.i:                               ; preds = %while.cond.i.i41.i
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i37.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %86 = and i32 %85, 240
  %cmp3.i.i42.i = icmp eq i32 %86, 0
  br i1 %cmp3.i.i42.i, label %while.body.i.i43.i.ata_outb.exit44.i_crit_edge, label %while.body.i.i43.i.while.cond.i.i41.i_crit_edge

while.body.i.i43.i.while.cond.i.i41.i_crit_edge:  ; preds = %while.body.i.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i41.i

while.body.i.i43.i.ata_outb.exit44.i_crit_edge:   ; preds = %while.body.i.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit44.i

ata_outb.exit44.i:                                ; preds = %while.body.i.i43.i.ata_outb.exit44.i_crit_edge, %while.cond.i.i41.i.ata_outb.exit44.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %76, i8 85) #6, !srcloc !94
  %87 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %host.i.i, align 4
  %89 = ptrtoint ptr %lbal_addr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %lbal_addr.i, align 4
  %private_data.i45.i = getelementptr inbounds %struct.ata_host, ptr %88, i32 0, i32 5
  %91 = ptrtoint ptr %private_data.i45.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %private_data.i45.i, align 4
  %ide_addr.i.i46.i = getelementptr inbounds %struct.s3c_ide_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %ide_addr.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ide_addr.i.i46.i, align 4
  %fifo_status_reg.i.i47.i = getelementptr inbounds %struct.s3c_ide_info, ptr %92, i32 0, i32 5
  %95 = ptrtoint ptr %fifo_status_reg.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %fifo_status_reg.i.i47.i, align 4
  %add.ptr.i.i48.i = getelementptr i8, ptr %94, i32 %96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %97 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i49.i = sub i32 -2, %97
  br label %while.cond.i.i52.i

while.cond.i.i52.i:                               ; preds = %while.body.i.i54.i.while.cond.i.i52.i_crit_edge, %ata_outb.exit44.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %98 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i50.i = add i32 %add.neg.i.i49.i, %98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i50.i)
  %cmp.i.i51.i = icmp slt i32 %sub.i.i50.i, 0
  br i1 %cmp.i.i51.i, label %while.body.i.i54.i, label %while.cond.i.i52.i.ata_outb.exit55.i_crit_edge

while.cond.i.i52.i.ata_outb.exit55.i_crit_edge:   ; preds = %while.cond.i.i52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit55.i

while.body.i.i54.i:                               ; preds = %while.cond.i.i52.i
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i48.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %100 = and i32 %99, 240
  %cmp3.i.i53.i = icmp eq i32 %100, 0
  br i1 %cmp3.i.i53.i, label %while.body.i.i54.i.ata_outb.exit55.i_crit_edge, label %while.body.i.i54.i.while.cond.i.i52.i_crit_edge

while.body.i.i54.i.while.cond.i.i52.i_crit_edge:  ; preds = %while.body.i.i54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i52.i

while.body.i.i54.i.ata_outb.exit55.i_crit_edge:   ; preds = %while.body.i.i54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit55.i

ata_outb.exit55.i:                                ; preds = %while.body.i.i54.i.ata_outb.exit55.i_crit_edge, %while.cond.i.i52.i.ata_outb.exit55.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %90, i8 -86) #6, !srcloc !94
  %101 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %host.i.i, align 4
  %103 = ptrtoint ptr %nsect_addr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %nsect_addr.i, align 4
  %private_data.i56.i = getelementptr inbounds %struct.ata_host, ptr %102, i32 0, i32 5
  %105 = ptrtoint ptr %private_data.i56.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %private_data.i56.i, align 4
  %ide_addr.i.i57.i = getelementptr inbounds %struct.s3c_ide_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %ide_addr.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ide_addr.i.i57.i, align 4
  %fifo_status_reg.i.i58.i = getelementptr inbounds %struct.s3c_ide_info, ptr %106, i32 0, i32 5
  %109 = ptrtoint ptr %fifo_status_reg.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %fifo_status_reg.i.i58.i, align 4
  %add.ptr.i.i59.i = getelementptr i8, ptr %108, i32 %110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %111 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i60.i = sub i32 -2, %111
  br label %while.cond.i.i63.i

while.cond.i.i63.i:                               ; preds = %while.body.i.i65.i.while.cond.i.i63.i_crit_edge, %ata_outb.exit55.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %112 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i61.i = add i32 %add.neg.i.i60.i, %112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i61.i)
  %cmp.i.i62.i = icmp slt i32 %sub.i.i61.i, 0
  br i1 %cmp.i.i62.i, label %while.body.i.i65.i, label %while.cond.i.i63.i.wait_for_host_ready.exit.i.i_crit_edge

while.cond.i.i63.i.wait_for_host_ready.exit.i.i_crit_edge: ; preds = %while.cond.i.i63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i.i

while.body.i.i65.i:                               ; preds = %while.cond.i.i63.i
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i59.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %114 = and i32 %113, 240
  %cmp3.i.i64.i = icmp eq i32 %114, 0
  br i1 %cmp3.i.i64.i, label %while.body.i.i65.i.wait_for_host_ready.exit.i.i_crit_edge, label %while.body.i.i65.i.while.cond.i.i63.i_crit_edge

while.body.i.i65.i.while.cond.i.i63.i_crit_edge:  ; preds = %while.body.i.i65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i63.i

while.body.i.i65.i.wait_for_host_ready.exit.i.i_crit_edge: ; preds = %while.body.i.i65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i.i

wait_for_host_ready.exit.i.i:                     ; preds = %while.body.i.i65.i.wait_for_host_ready.exit.i.i_crit_edge, %while.cond.i.i63.i.wait_for_host_ready.exit.i.i_crit_edge
  %115 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %104) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %116 = ptrtoint ptr %ide_addr.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ide_addr.i.i57.i, align 4
  %118 = ptrtoint ptr %fifo_status_reg.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %fifo_status_reg.i.i58.i, align 4
  %add.ptr.i13.i.i = getelementptr i8, ptr %117, i32 %119
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %120 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i14.i.i = sub i32 -2, %120
  br label %while.cond.i17.i.i

while.cond.i17.i.i:                               ; preds = %while.body.i19.i.i.while.cond.i17.i.i_crit_edge, %wait_for_host_ready.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %121 = load volatile i32, ptr @jiffies, align 128
  %sub.i15.i.i = add i32 %add.neg.i14.i.i, %121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i15.i.i)
  %cmp.i16.i.i = icmp slt i32 %sub.i15.i.i, 0
  br i1 %cmp.i16.i.i, label %while.body.i19.i.i, label %while.cond.i17.i.i.ata_inb.exit.i_crit_edge

while.cond.i17.i.i.ata_inb.exit.i_crit_edge:      ; preds = %while.cond.i17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit.i

while.body.i19.i.i:                               ; preds = %while.cond.i17.i.i
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %123 = and i32 %122, 240
  %cmp3.i18.i.i = icmp eq i32 %123, 0
  br i1 %cmp3.i18.i.i, label %while.body.i19.i.i.ata_inb.exit.i_crit_edge, label %while.body.i19.i.i.while.cond.i17.i.i_crit_edge

while.body.i19.i.i.while.cond.i17.i.i_crit_edge:  ; preds = %while.body.i19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i17.i.i

while.body.i19.i.i.ata_inb.exit.i_crit_edge:      ; preds = %while.body.i19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit.i

ata_inb.exit.i:                                   ; preds = %while.body.i19.i.i.ata_inb.exit.i_crit_edge, %while.cond.i17.i.i.ata_inb.exit.i_crit_edge
  %124 = ptrtoint ptr %ide_addr.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ide_addr.i.i57.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %125, i32 124
  %126 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %127 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %host.i.i, align 4
  %129 = ptrtoint ptr %lbal_addr.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %lbal_addr.i, align 4
  %private_data.i66.i = getelementptr inbounds %struct.ata_host, ptr %128, i32 0, i32 5
  %131 = ptrtoint ptr %private_data.i66.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %private_data.i66.i, align 4
  %ide_addr.i.i67.i = getelementptr inbounds %struct.s3c_ide_info, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %ide_addr.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ide_addr.i.i67.i, align 4
  %fifo_status_reg.i.i68.i = getelementptr inbounds %struct.s3c_ide_info, ptr %132, i32 0, i32 5
  %135 = ptrtoint ptr %fifo_status_reg.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %fifo_status_reg.i.i68.i, align 4
  %add.ptr.i.i69.i = getelementptr i8, ptr %134, i32 %136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %137 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i70.i = sub i32 -2, %137
  br label %while.cond.i.i73.i

while.cond.i.i73.i:                               ; preds = %while.body.i.i75.i.while.cond.i.i73.i_crit_edge, %ata_inb.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %138 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i71.i = add i32 %add.neg.i.i70.i, %138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i71.i)
  %cmp.i.i72.i = icmp slt i32 %sub.i.i71.i, 0
  br i1 %cmp.i.i72.i, label %while.body.i.i75.i, label %while.cond.i.i73.i.wait_for_host_ready.exit.i78.i_crit_edge

while.cond.i.i73.i.wait_for_host_ready.exit.i78.i_crit_edge: ; preds = %while.cond.i.i73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i78.i

while.body.i.i75.i:                               ; preds = %while.cond.i.i73.i
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i69.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %140 = and i32 %139, 240
  %cmp3.i.i74.i = icmp eq i32 %140, 0
  br i1 %cmp3.i.i74.i, label %while.body.i.i75.i.wait_for_host_ready.exit.i78.i_crit_edge, label %while.body.i.i75.i.while.cond.i.i73.i_crit_edge

while.body.i.i75.i.while.cond.i.i73.i_crit_edge:  ; preds = %while.body.i.i75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i73.i

while.body.i.i75.i.wait_for_host_ready.exit.i78.i_crit_edge: ; preds = %while.body.i.i75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i78.i

wait_for_host_ready.exit.i78.i:                   ; preds = %while.body.i.i75.i.wait_for_host_ready.exit.i78.i_crit_edge, %while.cond.i.i73.i.wait_for_host_ready.exit.i78.i_crit_edge
  %141 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %130) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %142 = ptrtoint ptr %ide_addr.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ide_addr.i.i67.i, align 4
  %144 = ptrtoint ptr %fifo_status_reg.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %fifo_status_reg.i.i68.i, align 4
  %add.ptr.i13.i76.i = getelementptr i8, ptr %143, i32 %145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %146 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i14.i77.i = sub i32 -2, %146
  br label %while.cond.i17.i81.i

while.cond.i17.i81.i:                             ; preds = %while.body.i19.i83.i.while.cond.i17.i81.i_crit_edge, %wait_for_host_ready.exit.i78.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %147 = load volatile i32, ptr @jiffies, align 128
  %sub.i15.i79.i = add i32 %add.neg.i14.i77.i, %147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i15.i79.i)
  %cmp.i16.i80.i = icmp slt i32 %sub.i15.i79.i, 0
  br i1 %cmp.i16.i80.i, label %while.body.i19.i83.i, label %while.cond.i17.i81.i.pata_s3c_devchk.exit_crit_edge

while.cond.i17.i81.i.pata_s3c_devchk.exit_crit_edge: ; preds = %while.cond.i17.i81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pata_s3c_devchk.exit

while.body.i19.i83.i:                             ; preds = %while.cond.i17.i81.i
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i76.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %149 = and i32 %148, 240
  %cmp3.i18.i82.i = icmp eq i32 %149, 0
  br i1 %cmp3.i18.i82.i, label %while.body.i19.i83.i.pata_s3c_devchk.exit_crit_edge, label %while.body.i19.i83.i.while.cond.i17.i81.i_crit_edge

while.body.i19.i83.i.while.cond.i17.i81.i_crit_edge: ; preds = %while.body.i19.i83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i17.i81.i

while.body.i19.i83.i.pata_s3c_devchk.exit_crit_edge: ; preds = %while.body.i19.i83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pata_s3c_devchk.exit

pata_s3c_devchk.exit:                             ; preds = %while.body.i19.i83.i.pata_s3c_devchk.exit_crit_edge, %while.cond.i17.i81.i.pata_s3c_devchk.exit_crit_edge
  %150 = ptrtoint ptr %ide_addr.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ide_addr.i.i67.i, align 4
  %add.ptr.i84.i = getelementptr i8, ptr %151, i32 124
  %152 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i84.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %126)
  %cmp.i = icmp eq i8 %126, 85
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %152)
  %cmp18.i = icmp eq i8 %152, -86
  %or.cond.i = select i1 %cmp.i, i1 %cmp18.i, i1 false
  %spec.select = zext i1 %or.cond.i to i32
  %153 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %host.i.i, align 4
  %155 = ptrtoint ptr %device_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %device_addr.i.i, align 32
  %private_data.i.i43 = getelementptr inbounds %struct.ata_host, ptr %154, i32 0, i32 5
  %157 = ptrtoint ptr %private_data.i.i43 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %private_data.i.i43, align 4
  %ide_addr.i.i.i44 = getelementptr inbounds %struct.s3c_ide_info, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %ide_addr.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ide_addr.i.i.i44, align 4
  %fifo_status_reg.i.i.i45 = getelementptr inbounds %struct.s3c_ide_info, ptr %158, i32 0, i32 5
  %161 = ptrtoint ptr %fifo_status_reg.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %fifo_status_reg.i.i.i45, align 4
  %add.ptr.i.i.i46 = getelementptr i8, ptr %160, i32 %162
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %163 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i.i47 = sub i32 -2, %163
  br label %while.cond.i.i.i50

while.cond.i.i.i50:                               ; preds = %while.body.i.i.i52.while.cond.i.i.i50_crit_edge, %pata_s3c_devchk.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %164 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i48 = add i32 %add.neg.i.i.i47, %164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i48)
  %cmp.i.i.i49 = icmp slt i32 %sub.i.i.i48, 0
  br i1 %cmp.i.i.i49, label %while.body.i.i.i52, label %while.cond.i.i.i50.pata_s3c_dev_select.exit_crit_edge

while.cond.i.i.i50.pata_s3c_dev_select.exit_crit_edge: ; preds = %while.cond.i.i.i50
  call void @__sanitizer_cov_trace_pc() #8
  br label %pata_s3c_dev_select.exit

while.body.i.i.i52:                               ; preds = %while.cond.i.i.i50
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i46) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %166 = and i32 %165, 240
  %cmp3.i.i.i51 = icmp eq i32 %166, 0
  br i1 %cmp3.i.i.i51, label %while.body.i.i.i52.pata_s3c_dev_select.exit_crit_edge, label %while.body.i.i.i52.while.cond.i.i.i50_crit_edge

while.body.i.i.i52.while.cond.i.i.i50_crit_edge:  ; preds = %while.body.i.i.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i.i50

while.body.i.i.i52.pata_s3c_dev_select.exit_crit_edge: ; preds = %while.body.i.i.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %pata_s3c_dev_select.exit

pata_s3c_dev_select.exit:                         ; preds = %while.body.i.i.i52.pata_s3c_dev_select.exit_crit_edge, %while.cond.i.i.i50.pata_s3c_dev_select.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %156, i8 -96) #6, !srcloc !94
  tail call void @ata_sff_pause(ptr noundef %1) #6
  %167 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %host.i.i, align 4
  %ctl.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 9
  %169 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %ctl.i, align 4
  %ctl_addr.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 12
  %171 = ptrtoint ptr %ctl_addr.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ctl_addr.i, align 4
  %private_data.i.i55 = getelementptr inbounds %struct.ata_host, ptr %168, i32 0, i32 5
  %173 = ptrtoint ptr %private_data.i.i55 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %private_data.i.i55, align 4
  %ide_addr.i.i.i56 = getelementptr inbounds %struct.s3c_ide_info, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %ide_addr.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ide_addr.i.i.i56, align 4
  %fifo_status_reg.i.i.i57 = getelementptr inbounds %struct.s3c_ide_info, ptr %174, i32 0, i32 5
  %177 = ptrtoint ptr %fifo_status_reg.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %fifo_status_reg.i.i.i57, align 4
  %add.ptr.i.i.i58 = getelementptr i8, ptr %176, i32 %178
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %179 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i.i59 = sub i32 -2, %179
  br label %while.cond.i.i.i62

while.cond.i.i.i62:                               ; preds = %while.body.i.i.i64.while.cond.i.i.i62_crit_edge, %pata_s3c_dev_select.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %180 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i60 = add i32 %add.neg.i.i.i59, %180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i60)
  %cmp.i.i.i61 = icmp slt i32 %sub.i.i.i60, 0
  br i1 %cmp.i.i.i61, label %while.body.i.i.i64, label %while.cond.i.i.i62.ata_outb.exit.i65_crit_edge

while.cond.i.i.i62.ata_outb.exit.i65_crit_edge:   ; preds = %while.cond.i.i.i62
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit.i65

while.body.i.i.i64:                               ; preds = %while.cond.i.i.i62
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i58) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %182 = and i32 %181, 240
  %cmp3.i.i.i63 = icmp eq i32 %182, 0
  br i1 %cmp3.i.i.i63, label %while.body.i.i.i64.ata_outb.exit.i65_crit_edge, label %while.body.i.i.i64.while.cond.i.i.i62_crit_edge

while.body.i.i.i64.while.cond.i.i.i62_crit_edge:  ; preds = %while.body.i.i.i64
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i.i62

while.body.i.i.i64.ata_outb.exit.i65_crit_edge:   ; preds = %while.body.i.i.i64
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit.i65

ata_outb.exit.i65:                                ; preds = %while.body.i.i.i64.ata_outb.exit.i65_crit_edge, %while.cond.i.i.i62.ata_outb.exit.i65_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %172, i8 %170) #6, !srcloc !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %183 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %183(i32 noundef 4294960) #6
  %184 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %host.i.i, align 4
  %186 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %ctl.i, align 4
  %188 = or i8 %187, 4
  %189 = ptrtoint ptr %ctl_addr.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %ctl_addr.i, align 4
  %private_data.i21.i = getelementptr inbounds %struct.ata_host, ptr %185, i32 0, i32 5
  %191 = ptrtoint ptr %private_data.i21.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %private_data.i21.i, align 4
  %ide_addr.i.i22.i = getelementptr inbounds %struct.s3c_ide_info, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %ide_addr.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %ide_addr.i.i22.i, align 4
  %fifo_status_reg.i.i23.i = getelementptr inbounds %struct.s3c_ide_info, ptr %192, i32 0, i32 5
  %195 = ptrtoint ptr %fifo_status_reg.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %fifo_status_reg.i.i23.i, align 4
  %add.ptr.i.i24.i = getelementptr i8, ptr %194, i32 %196
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %197 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i25.i = sub i32 -2, %197
  br label %while.cond.i.i28.i

while.cond.i.i28.i:                               ; preds = %while.body.i.i30.i.while.cond.i.i28.i_crit_edge, %ata_outb.exit.i65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %198 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i26.i = add i32 %add.neg.i.i25.i, %198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i26.i)
  %cmp.i.i27.i = icmp slt i32 %sub.i.i26.i, 0
  br i1 %cmp.i.i27.i, label %while.body.i.i30.i, label %while.cond.i.i28.i.ata_outb.exit31.i_crit_edge

while.cond.i.i28.i.ata_outb.exit31.i_crit_edge:   ; preds = %while.cond.i.i28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit31.i

while.body.i.i30.i:                               ; preds = %while.cond.i.i28.i
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i24.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %200 = and i32 %199, 240
  %cmp3.i.i29.i = icmp eq i32 %200, 0
  br i1 %cmp3.i.i29.i, label %while.body.i.i30.i.ata_outb.exit31.i_crit_edge, label %while.body.i.i30.i.while.cond.i.i28.i_crit_edge

while.body.i.i30.i.while.cond.i.i28.i_crit_edge:  ; preds = %while.body.i.i30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i28.i

while.body.i.i30.i.ata_outb.exit31.i_crit_edge:   ; preds = %while.body.i.i30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit31.i

ata_outb.exit31.i:                                ; preds = %while.body.i.i30.i.ata_outb.exit31.i_crit_edge, %while.cond.i.i28.i.ata_outb.exit31.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %190, i8 %188) #6, !srcloc !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %201 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %201(i32 noundef 4294960) #6
  %202 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %host.i.i, align 4
  %204 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %ctl.i, align 4
  %206 = ptrtoint ptr %ctl_addr.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %ctl_addr.i, align 4
  %private_data.i32.i = getelementptr inbounds %struct.ata_host, ptr %203, i32 0, i32 5
  %208 = ptrtoint ptr %private_data.i32.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %private_data.i32.i, align 4
  %ide_addr.i.i33.i = getelementptr inbounds %struct.s3c_ide_info, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %ide_addr.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ide_addr.i.i33.i, align 4
  %fifo_status_reg.i.i34.i = getelementptr inbounds %struct.s3c_ide_info, ptr %209, i32 0, i32 5
  %212 = ptrtoint ptr %fifo_status_reg.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %fifo_status_reg.i.i34.i, align 4
  %add.ptr.i.i35.i = getelementptr i8, ptr %211, i32 %213
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %214 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i36.i = sub i32 -2, %214
  br label %while.cond.i.i39.i

while.cond.i.i39.i:                               ; preds = %while.body.i.i41.i.while.cond.i.i39.i_crit_edge, %ata_outb.exit31.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %215 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i37.i = add i32 %add.neg.i.i36.i, %215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i37.i)
  %cmp.i.i38.i = icmp slt i32 %sub.i.i37.i, 0
  br i1 %cmp.i.i38.i, label %while.body.i.i41.i, label %while.cond.i.i39.i.pata_s3c_bus_softreset.exit_crit_edge

while.cond.i.i39.i.pata_s3c_bus_softreset.exit_crit_edge: ; preds = %while.cond.i.i39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pata_s3c_bus_softreset.exit

while.body.i.i41.i:                               ; preds = %while.cond.i.i39.i
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %217 = and i32 %216, 240
  %cmp3.i.i40.i = icmp eq i32 %217, 0
  br i1 %cmp3.i.i40.i, label %while.body.i.i41.i.pata_s3c_bus_softreset.exit_crit_edge, label %while.body.i.i41.i.while.cond.i.i39.i_crit_edge

while.body.i.i41.i.while.cond.i.i39.i_crit_edge:  ; preds = %while.body.i.i41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i39.i

while.body.i.i41.i.pata_s3c_bus_softreset.exit_crit_edge: ; preds = %while.body.i.i41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pata_s3c_bus_softreset.exit

pata_s3c_bus_softreset.exit:                      ; preds = %while.body.i.i41.i.pata_s3c_bus_softreset.exit_crit_edge, %while.cond.i.i39.i.pata_s3c_bus_softreset.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %207, i8 %205) #6, !srcloc !94
  %218 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %ctl.i, align 4
  %last_ctl.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 10
  %220 = ptrtoint ptr %last_ctl.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %219, ptr %last_ctl.i, align 1
  %link.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25
  %221 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %link.i, align 128
  tail call void @ata_msleep(ptr noundef %222, i32 noundef 150) #6
  %call.i.i = tail call i32 @ata_sff_wait_ready(ptr noundef %link.i, i32 noundef %deadline) #6
  %223 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %223, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call.i.i, label %do.body [
    i32 0, label %pata_s3c_bus_softreset.exit.if.end23_crit_edge
    i32 -19, label %pata_s3c_bus_softreset.exit.if.end23_crit_edge81
  ]

pata_s3c_bus_softreset.exit.if.end23_crit_edge81: ; preds = %pata_s3c_bus_softreset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

pata_s3c_bus_softreset.exit.if.end23_crit_edge:   ; preds = %pata_s3c_bus_softreset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.body:                                          ; preds = %pata_s3c_bus_softreset.exit
  %224 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %link, align 128
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %225, i32 0, i32 27
  %226 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %cmp.i66.not = icmp eq i32 %227, 0
  br i1 %cmp.i66.not, label %lor.lhs.false, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %do.body
  %slave_link = getelementptr inbounds %struct.ata_port, ptr %225, i32 0, i32 26
  %228 = ptrtoint ptr %slave_link to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %slave_link, align 128
  %tobool8.not = icmp eq ptr %229, null
  br i1 %tobool8.not, label %do.end15, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %do.body.do.end_crit_edge
  %print_id = getelementptr inbounds %struct.ata_port, ptr %225, i32 0, i32 5
  %230 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %232 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %pmp, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %231, i32 noundef %233, i32 noundef %call.i.i) #9
  br label %cleanup

do.end15:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %print_id18 = getelementptr inbounds %struct.ata_port, ptr %225, i32 0, i32 5
  %234 = ptrtoint ptr %print_id18 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %print_id18, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %235, i32 noundef %call.i.i) #9
  br label %cleanup

if.end23:                                         ; preds = %pata_s3c_bus_softreset.exit.if.end23_crit_edge, %pata_s3c_bus_softreset.exit.if.end23_crit_edge81
  %device = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25, i32 14
  %call25 = call i32 @ata_sff_dev_classify(ptr noundef %device, i32 noundef %spec.select, ptr noundef nonnull %err) #6
  %236 = ptrtoint ptr %classes to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %call25, ptr %classes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end15, %do.end
  %retval.0 = phi i32 [ 0, %if.end23 ], [ %call.i.i, %do.end15 ], [ %call.i.i, %do.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %err) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pata_s3c_dev_select(ptr noundef %ap, i32 noundef %device) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %device_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 8
  %2 = ptrtoint ptr %device_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_addr, align 32
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %ide_addr.i.i = getelementptr inbounds %struct.s3c_ide_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ide_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ide_addr.i.i, align 4
  %fifo_status_reg.i.i = getelementptr inbounds %struct.s3c_ide_info, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %fifo_status_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifo_status_reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -2, %10
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %while.body.i.i, label %while.cond.i.i.ata_outb.exit_crit_edge

while.cond.i.i.ata_outb.exit_crit_edge:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %13 = and i32 %12, 240
  %cmp3.i.i = icmp eq i32 %13, 0
  br i1 %cmp3.i.i, label %while.body.i.i.ata_outb.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

while.body.i.i.ata_outb.exit_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit

ata_outb.exit:                                    ; preds = %while.body.i.i.ata_outb.exit_crit_edge, %while.cond.i.i.ata_outb.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %device)
  %cmp.not = icmp eq i32 %device, 0
  %spec.select = select i1 %cmp.not, i8 -96, i8 -80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 %spec.select) #6, !srcloc !94
  tail call void @ata_sff_pause(ptr noundef %ap) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pata_s3c_set_devctl(ptr nocapture noundef readonly %ap, i8 noundef zeroext %ctl) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %ctl_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 12
  %2 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_addr, align 16
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %ide_addr.i.i = getelementptr inbounds %struct.s3c_ide_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ide_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ide_addr.i.i, align 4
  %fifo_status_reg.i.i = getelementptr inbounds %struct.s3c_ide_info, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %fifo_status_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifo_status_reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -2, %10
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %while.body.i.i, label %while.cond.i.i.ata_outb.exit_crit_edge

while.cond.i.i.ata_outb.exit_crit_edge:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %13 = and i32 %12, 240
  %cmp3.i.i = icmp eq i32 %13, 0
  br i1 %cmp3.i.i, label %while.body.i.i.ata_outb.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

while.body.i.i.ata_outb.exit_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit

ata_outb.exit:                                    ; preds = %while.body.i.i.ata_outb.exit_crit_edge, %while.cond.i.i.ata_outb.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 %ctl) #6, !srcloc !94
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @pata_s3c_check_status(ptr nocapture noundef readonly %ap) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %status_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 9
  %2 = ptrtoint ptr %status_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %status_addr, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %ide_addr.i.i = getelementptr inbounds %struct.s3c_ide_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ide_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ide_addr.i.i, align 4
  %fifo_status_reg.i.i = getelementptr inbounds %struct.s3c_ide_info, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %fifo_status_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifo_status_reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -2, %10
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %while.body.i.i, label %while.cond.i.i.wait_for_host_ready.exit.i_crit_edge

while.cond.i.i.wait_for_host_ready.exit.i_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %13 = and i32 %12, 240
  %cmp3.i.i = icmp eq i32 %13, 0
  br i1 %cmp3.i.i, label %while.body.i.i.wait_for_host_ready.exit.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

while.body.i.i.wait_for_host_ready.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i

wait_for_host_ready.exit.i:                       ; preds = %while.body.i.i.wait_for_host_ready.exit.i_crit_edge, %while.cond.i.i.wait_for_host_ready.exit.i_crit_edge
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %15 = ptrtoint ptr %ide_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ide_addr.i.i, align 4
  %17 = ptrtoint ptr %fifo_status_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fifo_status_reg.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %16, i32 %18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i14.i = sub i32 -2, %19
  br label %while.cond.i17.i

while.cond.i17.i:                                 ; preds = %while.body.i19.i.while.cond.i17.i_crit_edge, %wait_for_host_ready.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub.i15.i = add i32 %add.neg.i14.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i15.i)
  %cmp.i16.i = icmp slt i32 %sub.i15.i, 0
  br i1 %cmp.i16.i, label %while.body.i19.i, label %while.cond.i17.i.ata_inb.exit_crit_edge

while.cond.i17.i.ata_inb.exit_crit_edge:          ; preds = %while.cond.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit

while.body.i19.i:                                 ; preds = %while.cond.i17.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %22 = and i32 %21, 240
  %cmp3.i18.i = icmp eq i32 %22, 0
  br i1 %cmp3.i18.i, label %while.body.i19.i.ata_inb.exit_crit_edge, label %while.body.i19.i.while.cond.i17.i_crit_edge

while.body.i19.i.while.cond.i17.i_crit_edge:      ; preds = %while.body.i19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i17.i

while.body.i19.i.ata_inb.exit_crit_edge:          ; preds = %while.body.i19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit

ata_inb.exit:                                     ; preds = %while.body.i19.i.ata_inb.exit_crit_edge, %while.cond.i17.i.ata_inb.exit_crit_edge
  %23 = ptrtoint ptr %ide_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ide_addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 124
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  ret i8 %25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @pata_s3c_check_altstatus(ptr nocapture noundef readonly %ap) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %altstatus_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 11
  %2 = ptrtoint ptr %altstatus_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %altstatus_addr, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %ide_addr.i.i = getelementptr inbounds %struct.s3c_ide_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ide_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ide_addr.i.i, align 4
  %fifo_status_reg.i.i = getelementptr inbounds %struct.s3c_ide_info, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %fifo_status_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifo_status_reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -2, %10
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %while.body.i.i, label %while.cond.i.i.wait_for_host_ready.exit.i_crit_edge

while.cond.i.i.wait_for_host_ready.exit.i_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %13 = and i32 %12, 240
  %cmp3.i.i = icmp eq i32 %13, 0
  br i1 %cmp3.i.i, label %while.body.i.i.wait_for_host_ready.exit.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

while.body.i.i.wait_for_host_ready.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i

wait_for_host_ready.exit.i:                       ; preds = %while.body.i.i.wait_for_host_ready.exit.i_crit_edge, %while.cond.i.i.wait_for_host_ready.exit.i_crit_edge
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %15 = ptrtoint ptr %ide_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ide_addr.i.i, align 4
  %17 = ptrtoint ptr %fifo_status_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fifo_status_reg.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %16, i32 %18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i14.i = sub i32 -2, %19
  br label %while.cond.i17.i

while.cond.i17.i:                                 ; preds = %while.body.i19.i.while.cond.i17.i_crit_edge, %wait_for_host_ready.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub.i15.i = add i32 %add.neg.i14.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i15.i)
  %cmp.i16.i = icmp slt i32 %sub.i15.i, 0
  br i1 %cmp.i16.i, label %while.body.i19.i, label %while.cond.i17.i.ata_inb.exit_crit_edge

while.cond.i17.i.ata_inb.exit_crit_edge:          ; preds = %while.cond.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit

while.body.i19.i:                                 ; preds = %while.cond.i17.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %22 = and i32 %21, 240
  %cmp3.i18.i = icmp eq i32 %22, 0
  br i1 %cmp3.i18.i, label %while.body.i19.i.ata_inb.exit_crit_edge, label %while.body.i19.i.while.cond.i17.i_crit_edge

while.body.i19.i.while.cond.i17.i_crit_edge:      ; preds = %while.body.i19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i17.i

while.body.i19.i.ata_inb.exit_crit_edge:          ; preds = %while.body.i19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit

ata_inb.exit:                                     ; preds = %while.body.i19.i.ata_inb.exit_crit_edge, %while.cond.i17.i.ata_inb.exit_crit_edge
  %23 = ptrtoint ptr %ide_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ide_addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 124
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  ret i8 %25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pata_s3c_tf_load(ptr noundef %ap, ptr nocapture noundef readonly %tf) #4 align 64 {
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
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %ctl_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 12
  %8 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctl_addr, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data.i, align 4
  %ide_addr.i.i = getelementptr inbounds %struct.s3c_ide_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ide_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ide_addr.i.i, align 4
  %fifo_status_reg.i.i = getelementptr inbounds %struct.s3c_ide_info, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %fifo_status_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fifo_status_reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -2, %16
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %while.body.i.i, label %while.cond.i.i.ata_outb.exit_crit_edge

while.cond.i.i.ata_outb.exit_crit_edge:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %19 = and i32 %18, 240
  %cmp3.i.i = icmp eq i32 %19, 0
  br i1 %cmp3.i.i, label %while.body.i.i.ata_outb.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

while.body.i.i.ata_outb.exit_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit

ata_outb.exit:                                    ; preds = %while.body.i.i.ata_outb.exit_crit_edge, %while.cond.i.i.ata_outb.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %3) #6, !srcloc !94
  %20 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ctl, align 1
  %22 = ptrtoint ptr %last_ctl to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %last_ctl, align 1
  %ops.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %ata_outb.exit
  %max.addr.0.i.i = phi i32 [ 1000, %ata_outb.exit ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #6
  %24 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i.i, align 4
  %sff_check_status.i.i = getelementptr inbounds %struct.ata_port_operations, ptr %25, i32 0, i32 39
  %26 = ptrtoint ptr %sff_check_status.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sff_check_status.i.i, align 4
  %call.i.i = tail call zeroext i8 %27(ptr noundef %ap) #6
  %dec.i.i = add nsw i32 %max.addr.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i)
  %cmp.not.i.i = icmp eq i8 %call.i.i, -1
  %28 = and i8 %call.i.i, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i = icmp eq i8 %28, 0
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ata_wait_idle.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pata_s3c_tf_load, %if.then7.i)) #6
          to label %if.end [label %if.then7.i], !srcloc !98

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %29 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %print_id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ata_wait_idle.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.21, i32 noundef %30, i32 noundef %conv.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then7.i, %do.body.i, %ata_sff_busy_wait.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end29_crit_edge, label %land.lhs.true

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end
  %31 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tf, align 4
  %and8 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true.if.then18_crit_edge, label %if.then10

land.lhs.true.if.then18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

if.then10:                                        ; preds = %land.lhs.true
  %host11 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %33 = ptrtoint ptr %host11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host11, align 4
  %hob_feature = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 3
  %35 = ptrtoint ptr %hob_feature to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %hob_feature, align 2
  %feature_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 3
  %37 = ptrtoint ptr %feature_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %feature_addr, align 4
  %private_data.i82 = getelementptr inbounds %struct.ata_host, ptr %34, i32 0, i32 5
  %39 = ptrtoint ptr %private_data.i82 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %private_data.i82, align 4
  %ide_addr.i.i83 = getelementptr inbounds %struct.s3c_ide_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %ide_addr.i.i83 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ide_addr.i.i83, align 4
  %fifo_status_reg.i.i84 = getelementptr inbounds %struct.s3c_ide_info, ptr %40, i32 0, i32 5
  %43 = ptrtoint ptr %fifo_status_reg.i.i84 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fifo_status_reg.i.i84, align 4
  %add.ptr.i.i85 = getelementptr i8, ptr %42, i32 %44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i86 = sub i32 -2, %45
  br label %while.cond.i.i89

while.cond.i.i89:                                 ; preds = %while.body.i.i91.while.cond.i.i89_crit_edge, %if.then10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i87 = add i32 %add.neg.i.i86, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i87)
  %cmp.i.i88 = icmp slt i32 %sub.i.i87, 0
  br i1 %cmp.i.i88, label %while.body.i.i91, label %while.cond.i.i89.ata_outb.exit92_crit_edge

while.cond.i.i89.ata_outb.exit92_crit_edge:       ; preds = %while.cond.i.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit92

while.body.i.i91:                                 ; preds = %while.cond.i.i89
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i85) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %48 = and i32 %47, 240
  %cmp3.i.i90 = icmp eq i32 %48, 0
  br i1 %cmp3.i.i90, label %while.body.i.i91.ata_outb.exit92_crit_edge, label %while.body.i.i91.while.cond.i.i89_crit_edge

while.body.i.i91.while.cond.i.i89_crit_edge:      ; preds = %while.body.i.i91
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i89

while.body.i.i91.ata_outb.exit92_crit_edge:       ; preds = %while.body.i.i91
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit92

ata_outb.exit92:                                  ; preds = %while.body.i.i91.ata_outb.exit92_crit_edge, %while.cond.i.i89.ata_outb.exit92_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 %36) #6, !srcloc !94
  %49 = ptrtoint ptr %host11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %host11, align 4
  %hob_nsect = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 4
  %51 = ptrtoint ptr %hob_nsect to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %hob_nsect, align 1
  %nsect_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 4
  %53 = ptrtoint ptr %nsect_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %nsect_addr, align 4
  %private_data.i93 = getelementptr inbounds %struct.ata_host, ptr %50, i32 0, i32 5
  %55 = ptrtoint ptr %private_data.i93 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %private_data.i93, align 4
  %ide_addr.i.i94 = getelementptr inbounds %struct.s3c_ide_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %ide_addr.i.i94 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ide_addr.i.i94, align 4
  %fifo_status_reg.i.i95 = getelementptr inbounds %struct.s3c_ide_info, ptr %56, i32 0, i32 5
  %59 = ptrtoint ptr %fifo_status_reg.i.i95 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %fifo_status_reg.i.i95, align 4
  %add.ptr.i.i96 = getelementptr i8, ptr %58, i32 %60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i97 = sub i32 -2, %61
  br label %while.cond.i.i100

while.cond.i.i100:                                ; preds = %while.body.i.i102.while.cond.i.i100_crit_edge, %ata_outb.exit92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i98 = add i32 %add.neg.i.i97, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i98)
  %cmp.i.i99 = icmp slt i32 %sub.i.i98, 0
  br i1 %cmp.i.i99, label %while.body.i.i102, label %while.cond.i.i100.ata_outb.exit103_crit_edge

while.cond.i.i100.ata_outb.exit103_crit_edge:     ; preds = %while.cond.i.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit103

while.body.i.i102:                                ; preds = %while.cond.i.i100
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i96) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %64 = and i32 %63, 240
  %cmp3.i.i101 = icmp eq i32 %64, 0
  br i1 %cmp3.i.i101, label %while.body.i.i102.ata_outb.exit103_crit_edge, label %while.body.i.i102.while.cond.i.i100_crit_edge

while.body.i.i102.while.cond.i.i100_crit_edge:    ; preds = %while.body.i.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i100

while.body.i.i102.ata_outb.exit103_crit_edge:     ; preds = %while.body.i.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit103

ata_outb.exit103:                                 ; preds = %while.body.i.i102.ata_outb.exit103_crit_edge, %while.cond.i.i100.ata_outb.exit103_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %54, i8 %52) #6, !srcloc !94
  %65 = ptrtoint ptr %host11 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %host11, align 4
  %hob_lbal = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 5
  %67 = ptrtoint ptr %hob_lbal to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %hob_lbal, align 4
  %lbal_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 5
  %69 = ptrtoint ptr %lbal_addr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lbal_addr, align 4
  %private_data.i104 = getelementptr inbounds %struct.ata_host, ptr %66, i32 0, i32 5
  %71 = ptrtoint ptr %private_data.i104 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %private_data.i104, align 4
  %ide_addr.i.i105 = getelementptr inbounds %struct.s3c_ide_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %ide_addr.i.i105 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ide_addr.i.i105, align 4
  %fifo_status_reg.i.i106 = getelementptr inbounds %struct.s3c_ide_info, ptr %72, i32 0, i32 5
  %75 = ptrtoint ptr %fifo_status_reg.i.i106 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fifo_status_reg.i.i106, align 4
  %add.ptr.i.i107 = getelementptr i8, ptr %74, i32 %76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i108 = sub i32 -2, %77
  br label %while.cond.i.i111

while.cond.i.i111:                                ; preds = %while.body.i.i113.while.cond.i.i111_crit_edge, %ata_outb.exit103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %78 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i109 = add i32 %add.neg.i.i108, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i109)
  %cmp.i.i110 = icmp slt i32 %sub.i.i109, 0
  br i1 %cmp.i.i110, label %while.body.i.i113, label %while.cond.i.i111.ata_outb.exit114_crit_edge

while.cond.i.i111.ata_outb.exit114_crit_edge:     ; preds = %while.cond.i.i111
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit114

while.body.i.i113:                                ; preds = %while.cond.i.i111
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i107) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %80 = and i32 %79, 240
  %cmp3.i.i112 = icmp eq i32 %80, 0
  br i1 %cmp3.i.i112, label %while.body.i.i113.ata_outb.exit114_crit_edge, label %while.body.i.i113.while.cond.i.i111_crit_edge

while.body.i.i113.while.cond.i.i111_crit_edge:    ; preds = %while.body.i.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i111

while.body.i.i113.ata_outb.exit114_crit_edge:     ; preds = %while.body.i.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit114

ata_outb.exit114:                                 ; preds = %while.body.i.i113.ata_outb.exit114_crit_edge, %while.cond.i.i111.ata_outb.exit114_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %70, i8 %68) #6, !srcloc !94
  %81 = ptrtoint ptr %host11 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %host11, align 4
  %hob_lbam = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 6
  %83 = ptrtoint ptr %hob_lbam to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %hob_lbam, align 1
  %lbam_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 6
  %85 = ptrtoint ptr %lbam_addr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lbam_addr, align 4
  %private_data.i115 = getelementptr inbounds %struct.ata_host, ptr %82, i32 0, i32 5
  %87 = ptrtoint ptr %private_data.i115 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %private_data.i115, align 4
  %ide_addr.i.i116 = getelementptr inbounds %struct.s3c_ide_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %ide_addr.i.i116 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ide_addr.i.i116, align 4
  %fifo_status_reg.i.i117 = getelementptr inbounds %struct.s3c_ide_info, ptr %88, i32 0, i32 5
  %91 = ptrtoint ptr %fifo_status_reg.i.i117 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %fifo_status_reg.i.i117, align 4
  %add.ptr.i.i118 = getelementptr i8, ptr %90, i32 %92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %93 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i119 = sub i32 -2, %93
  br label %while.cond.i.i122

while.cond.i.i122:                                ; preds = %while.body.i.i124.while.cond.i.i122_crit_edge, %ata_outb.exit114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %94 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i120 = add i32 %add.neg.i.i119, %94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i120)
  %cmp.i.i121 = icmp slt i32 %sub.i.i120, 0
  br i1 %cmp.i.i121, label %while.body.i.i124, label %while.cond.i.i122.ata_outb.exit125_crit_edge

while.cond.i.i122.ata_outb.exit125_crit_edge:     ; preds = %while.cond.i.i122
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit125

while.body.i.i124:                                ; preds = %while.cond.i.i122
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i118) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %96 = and i32 %95, 240
  %cmp3.i.i123 = icmp eq i32 %96, 0
  br i1 %cmp3.i.i123, label %while.body.i.i124.ata_outb.exit125_crit_edge, label %while.body.i.i124.while.cond.i.i122_crit_edge

while.body.i.i124.while.cond.i.i122_crit_edge:    ; preds = %while.body.i.i124
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i122

while.body.i.i124.ata_outb.exit125_crit_edge:     ; preds = %while.body.i.i124
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit125

ata_outb.exit125:                                 ; preds = %while.body.i.i124.ata_outb.exit125_crit_edge, %while.cond.i.i122.ata_outb.exit125_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %86, i8 %84) #6, !srcloc !94
  %97 = ptrtoint ptr %host11 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %host11, align 4
  %hob_lbah = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 7
  %99 = ptrtoint ptr %hob_lbah to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %hob_lbah, align 2
  %lbah_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 7
  %101 = ptrtoint ptr %lbah_addr to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %lbah_addr, align 4
  %private_data.i126 = getelementptr inbounds %struct.ata_host, ptr %98, i32 0, i32 5
  %103 = ptrtoint ptr %private_data.i126 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %private_data.i126, align 4
  %ide_addr.i.i127 = getelementptr inbounds %struct.s3c_ide_info, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %ide_addr.i.i127 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ide_addr.i.i127, align 4
  %fifo_status_reg.i.i128 = getelementptr inbounds %struct.s3c_ide_info, ptr %104, i32 0, i32 5
  %107 = ptrtoint ptr %fifo_status_reg.i.i128 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %fifo_status_reg.i.i128, align 4
  %add.ptr.i.i129 = getelementptr i8, ptr %106, i32 %108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %109 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i130 = sub i32 -2, %109
  br label %while.cond.i.i133

while.cond.i.i133:                                ; preds = %while.body.i.i135.while.cond.i.i133_crit_edge, %ata_outb.exit125
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %110 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i131 = add i32 %add.neg.i.i130, %110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i131)
  %cmp.i.i132 = icmp slt i32 %sub.i.i131, 0
  br i1 %cmp.i.i132, label %while.body.i.i135, label %while.cond.i.i133.ata_outb.exit136_crit_edge

while.cond.i.i133.ata_outb.exit136_crit_edge:     ; preds = %while.cond.i.i133
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit136

while.body.i.i135:                                ; preds = %while.cond.i.i133
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i129) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %112 = and i32 %111, 240
  %cmp3.i.i134 = icmp eq i32 %112, 0
  br i1 %cmp3.i.i134, label %while.body.i.i135.ata_outb.exit136_crit_edge, label %while.body.i.i135.while.cond.i.i133_crit_edge

while.body.i.i135.while.cond.i.i133_crit_edge:    ; preds = %while.body.i.i135
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i133

while.body.i.i135.ata_outb.exit136_crit_edge:     ; preds = %while.body.i.i135
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit136

ata_outb.exit136:                                 ; preds = %while.body.i.i135.ata_outb.exit136_crit_edge, %while.cond.i.i133.ata_outb.exit136_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %102, i8 %100) #6, !srcloc !94
  br label %if.then18

if.then18:                                        ; preds = %ata_outb.exit136, %land.lhs.true.if.then18_crit_edge
  %host19 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %113 = ptrtoint ptr %host19 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %host19, align 4
  %feature = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 8
  %115 = ptrtoint ptr %feature to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %feature, align 1
  %feature_addr20 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 3
  %117 = ptrtoint ptr %feature_addr20 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %feature_addr20, align 4
  %private_data.i137 = getelementptr inbounds %struct.ata_host, ptr %114, i32 0, i32 5
  %119 = ptrtoint ptr %private_data.i137 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %private_data.i137, align 4
  %ide_addr.i.i138 = getelementptr inbounds %struct.s3c_ide_info, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %ide_addr.i.i138 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ide_addr.i.i138, align 4
  %fifo_status_reg.i.i139 = getelementptr inbounds %struct.s3c_ide_info, ptr %120, i32 0, i32 5
  %123 = ptrtoint ptr %fifo_status_reg.i.i139 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %fifo_status_reg.i.i139, align 4
  %add.ptr.i.i140 = getelementptr i8, ptr %122, i32 %124
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %125 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i141 = sub i32 -2, %125
  br label %while.cond.i.i144

while.cond.i.i144:                                ; preds = %while.body.i.i146.while.cond.i.i144_crit_edge, %if.then18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %126 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i142 = add i32 %add.neg.i.i141, %126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i142)
  %cmp.i.i143 = icmp slt i32 %sub.i.i142, 0
  br i1 %cmp.i.i143, label %while.body.i.i146, label %while.cond.i.i144.ata_outb.exit147_crit_edge

while.cond.i.i144.ata_outb.exit147_crit_edge:     ; preds = %while.cond.i.i144
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit147

while.body.i.i146:                                ; preds = %while.cond.i.i144
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i140) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %128 = and i32 %127, 240
  %cmp3.i.i145 = icmp eq i32 %128, 0
  br i1 %cmp3.i.i145, label %while.body.i.i146.ata_outb.exit147_crit_edge, label %while.body.i.i146.while.cond.i.i144_crit_edge

while.body.i.i146.while.cond.i.i144_crit_edge:    ; preds = %while.body.i.i146
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i144

while.body.i.i146.ata_outb.exit147_crit_edge:     ; preds = %while.body.i.i146
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit147

ata_outb.exit147:                                 ; preds = %while.body.i.i146.ata_outb.exit147_crit_edge, %while.cond.i.i144.ata_outb.exit147_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %118, i8 %116) #6, !srcloc !94
  %129 = ptrtoint ptr %host19 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %host19, align 4
  %nsect = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 9
  %131 = ptrtoint ptr %nsect to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %nsect, align 4
  %nsect_addr22 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 4
  %133 = ptrtoint ptr %nsect_addr22 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %nsect_addr22, align 4
  %private_data.i148 = getelementptr inbounds %struct.ata_host, ptr %130, i32 0, i32 5
  %135 = ptrtoint ptr %private_data.i148 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %private_data.i148, align 4
  %ide_addr.i.i149 = getelementptr inbounds %struct.s3c_ide_info, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %ide_addr.i.i149 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ide_addr.i.i149, align 4
  %fifo_status_reg.i.i150 = getelementptr inbounds %struct.s3c_ide_info, ptr %136, i32 0, i32 5
  %139 = ptrtoint ptr %fifo_status_reg.i.i150 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %fifo_status_reg.i.i150, align 4
  %add.ptr.i.i151 = getelementptr i8, ptr %138, i32 %140
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %141 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i152 = sub i32 -2, %141
  br label %while.cond.i.i155

while.cond.i.i155:                                ; preds = %while.body.i.i157.while.cond.i.i155_crit_edge, %ata_outb.exit147
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %142 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i153 = add i32 %add.neg.i.i152, %142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i153)
  %cmp.i.i154 = icmp slt i32 %sub.i.i153, 0
  br i1 %cmp.i.i154, label %while.body.i.i157, label %while.cond.i.i155.ata_outb.exit158_crit_edge

while.cond.i.i155.ata_outb.exit158_crit_edge:     ; preds = %while.cond.i.i155
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit158

while.body.i.i157:                                ; preds = %while.cond.i.i155
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i151) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %144 = and i32 %143, 240
  %cmp3.i.i156 = icmp eq i32 %144, 0
  br i1 %cmp3.i.i156, label %while.body.i.i157.ata_outb.exit158_crit_edge, label %while.body.i.i157.while.cond.i.i155_crit_edge

while.body.i.i157.while.cond.i.i155_crit_edge:    ; preds = %while.body.i.i157
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i155

while.body.i.i157.ata_outb.exit158_crit_edge:     ; preds = %while.body.i.i157
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit158

ata_outb.exit158:                                 ; preds = %while.body.i.i157.ata_outb.exit158_crit_edge, %while.cond.i.i155.ata_outb.exit158_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %134, i8 %132) #6, !srcloc !94
  %145 = ptrtoint ptr %host19 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %host19, align 4
  %lbal = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 10
  %147 = ptrtoint ptr %lbal to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %lbal, align 1
  %lbal_addr24 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 5
  %149 = ptrtoint ptr %lbal_addr24 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %lbal_addr24, align 4
  %private_data.i159 = getelementptr inbounds %struct.ata_host, ptr %146, i32 0, i32 5
  %151 = ptrtoint ptr %private_data.i159 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %private_data.i159, align 4
  %ide_addr.i.i160 = getelementptr inbounds %struct.s3c_ide_info, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %ide_addr.i.i160 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ide_addr.i.i160, align 4
  %fifo_status_reg.i.i161 = getelementptr inbounds %struct.s3c_ide_info, ptr %152, i32 0, i32 5
  %155 = ptrtoint ptr %fifo_status_reg.i.i161 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %fifo_status_reg.i.i161, align 4
  %add.ptr.i.i162 = getelementptr i8, ptr %154, i32 %156
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %157 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i163 = sub i32 -2, %157
  br label %while.cond.i.i166

while.cond.i.i166:                                ; preds = %while.body.i.i168.while.cond.i.i166_crit_edge, %ata_outb.exit158
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %158 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i164 = add i32 %add.neg.i.i163, %158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i164)
  %cmp.i.i165 = icmp slt i32 %sub.i.i164, 0
  br i1 %cmp.i.i165, label %while.body.i.i168, label %while.cond.i.i166.ata_outb.exit169_crit_edge

while.cond.i.i166.ata_outb.exit169_crit_edge:     ; preds = %while.cond.i.i166
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit169

while.body.i.i168:                                ; preds = %while.cond.i.i166
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i162) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %160 = and i32 %159, 240
  %cmp3.i.i167 = icmp eq i32 %160, 0
  br i1 %cmp3.i.i167, label %while.body.i.i168.ata_outb.exit169_crit_edge, label %while.body.i.i168.while.cond.i.i166_crit_edge

while.body.i.i168.while.cond.i.i166_crit_edge:    ; preds = %while.body.i.i168
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i166

while.body.i.i168.ata_outb.exit169_crit_edge:     ; preds = %while.body.i.i168
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit169

ata_outb.exit169:                                 ; preds = %while.body.i.i168.ata_outb.exit169_crit_edge, %while.cond.i.i166.ata_outb.exit169_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %150, i8 %148) #6, !srcloc !94
  %161 = ptrtoint ptr %host19 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %host19, align 4
  %lbam = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 11
  %163 = ptrtoint ptr %lbam to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %lbam, align 2
  %lbam_addr26 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 6
  %165 = ptrtoint ptr %lbam_addr26 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %lbam_addr26, align 4
  %private_data.i170 = getelementptr inbounds %struct.ata_host, ptr %162, i32 0, i32 5
  %167 = ptrtoint ptr %private_data.i170 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %private_data.i170, align 4
  %ide_addr.i.i171 = getelementptr inbounds %struct.s3c_ide_info, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %ide_addr.i.i171 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ide_addr.i.i171, align 4
  %fifo_status_reg.i.i172 = getelementptr inbounds %struct.s3c_ide_info, ptr %168, i32 0, i32 5
  %171 = ptrtoint ptr %fifo_status_reg.i.i172 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %fifo_status_reg.i.i172, align 4
  %add.ptr.i.i173 = getelementptr i8, ptr %170, i32 %172
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %173 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i174 = sub i32 -2, %173
  br label %while.cond.i.i177

while.cond.i.i177:                                ; preds = %while.body.i.i179.while.cond.i.i177_crit_edge, %ata_outb.exit169
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %174 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i175 = add i32 %add.neg.i.i174, %174
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i175)
  %cmp.i.i176 = icmp slt i32 %sub.i.i175, 0
  br i1 %cmp.i.i176, label %while.body.i.i179, label %while.cond.i.i177.ata_outb.exit180_crit_edge

while.cond.i.i177.ata_outb.exit180_crit_edge:     ; preds = %while.cond.i.i177
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit180

while.body.i.i179:                                ; preds = %while.cond.i.i177
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i173) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %176 = and i32 %175, 240
  %cmp3.i.i178 = icmp eq i32 %176, 0
  br i1 %cmp3.i.i178, label %while.body.i.i179.ata_outb.exit180_crit_edge, label %while.body.i.i179.while.cond.i.i177_crit_edge

while.body.i.i179.while.cond.i.i177_crit_edge:    ; preds = %while.body.i.i179
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i177

while.body.i.i179.ata_outb.exit180_crit_edge:     ; preds = %while.body.i.i179
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit180

ata_outb.exit180:                                 ; preds = %while.body.i.i179.ata_outb.exit180_crit_edge, %while.cond.i.i177.ata_outb.exit180_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %166, i8 %164) #6, !srcloc !94
  %177 = ptrtoint ptr %host19 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %host19, align 4
  %lbah = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 12
  %179 = ptrtoint ptr %lbah to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %lbah, align 1
  %lbah_addr28 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 7
  %181 = ptrtoint ptr %lbah_addr28 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %lbah_addr28, align 4
  %private_data.i181 = getelementptr inbounds %struct.ata_host, ptr %178, i32 0, i32 5
  %183 = ptrtoint ptr %private_data.i181 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %private_data.i181, align 4
  %ide_addr.i.i182 = getelementptr inbounds %struct.s3c_ide_info, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %ide_addr.i.i182 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %ide_addr.i.i182, align 4
  %fifo_status_reg.i.i183 = getelementptr inbounds %struct.s3c_ide_info, ptr %184, i32 0, i32 5
  %187 = ptrtoint ptr %fifo_status_reg.i.i183 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %fifo_status_reg.i.i183, align 4
  %add.ptr.i.i184 = getelementptr i8, ptr %186, i32 %188
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %189 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i185 = sub i32 -2, %189
  br label %while.cond.i.i188

while.cond.i.i188:                                ; preds = %while.body.i.i190.while.cond.i.i188_crit_edge, %ata_outb.exit180
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %190 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i186 = add i32 %add.neg.i.i185, %190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i186)
  %cmp.i.i187 = icmp slt i32 %sub.i.i186, 0
  br i1 %cmp.i.i187, label %while.body.i.i190, label %while.cond.i.i188.ata_outb.exit191_crit_edge

while.cond.i.i188.ata_outb.exit191_crit_edge:     ; preds = %while.cond.i.i188
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit191

while.body.i.i190:                                ; preds = %while.cond.i.i188
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i184) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %192 = and i32 %191, 240
  %cmp3.i.i189 = icmp eq i32 %192, 0
  br i1 %cmp3.i.i189, label %while.body.i.i190.ata_outb.exit191_crit_edge, label %while.body.i.i190.while.cond.i.i188_crit_edge

while.body.i.i190.while.cond.i.i188_crit_edge:    ; preds = %while.body.i.i190
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i188

while.body.i.i190.ata_outb.exit191_crit_edge:     ; preds = %while.body.i.i190
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit191

ata_outb.exit191:                                 ; preds = %while.body.i.i190.ata_outb.exit191_crit_edge, %while.cond.i.i188.ata_outb.exit191_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %182, i8 %180) #6, !srcloc !94
  br label %if.end29

if.end29:                                         ; preds = %ata_outb.exit191, %if.end.if.end29_crit_edge
  %193 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %tf, align 4
  %and31 = and i32 %194, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end35_crit_edge, label %if.then33

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then33:                                        ; preds = %if.end29
  %host34 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %195 = ptrtoint ptr %host34 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %host34, align 4
  %device = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 13
  %197 = ptrtoint ptr %device to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %device, align 4
  %device_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 8
  %199 = ptrtoint ptr %device_addr to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %device_addr, align 4
  %private_data.i192 = getelementptr inbounds %struct.ata_host, ptr %196, i32 0, i32 5
  %201 = ptrtoint ptr %private_data.i192 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %private_data.i192, align 4
  %ide_addr.i.i193 = getelementptr inbounds %struct.s3c_ide_info, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %ide_addr.i.i193 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ide_addr.i.i193, align 4
  %fifo_status_reg.i.i194 = getelementptr inbounds %struct.s3c_ide_info, ptr %202, i32 0, i32 5
  %205 = ptrtoint ptr %fifo_status_reg.i.i194 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %fifo_status_reg.i.i194, align 4
  %add.ptr.i.i195 = getelementptr i8, ptr %204, i32 %206
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %207 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i196 = sub i32 -2, %207
  br label %while.cond.i.i199

while.cond.i.i199:                                ; preds = %while.body.i.i201.while.cond.i.i199_crit_edge, %if.then33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %208 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i197 = add i32 %add.neg.i.i196, %208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i197)
  %cmp.i.i198 = icmp slt i32 %sub.i.i197, 0
  br i1 %cmp.i.i198, label %while.body.i.i201, label %while.cond.i.i199.ata_outb.exit202_crit_edge

while.cond.i.i199.ata_outb.exit202_crit_edge:     ; preds = %while.cond.i.i199
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit202

while.body.i.i201:                                ; preds = %while.cond.i.i199
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i195) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %210 = and i32 %209, 240
  %cmp3.i.i200 = icmp eq i32 %210, 0
  br i1 %cmp3.i.i200, label %while.body.i.i201.ata_outb.exit202_crit_edge, label %while.body.i.i201.while.cond.i.i199_crit_edge

while.body.i.i201.while.cond.i.i199_crit_edge:    ; preds = %while.body.i.i201
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i199

while.body.i.i201.ata_outb.exit202_crit_edge:     ; preds = %while.body.i.i201
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit202

ata_outb.exit202:                                 ; preds = %while.body.i.i201.ata_outb.exit202_crit_edge, %while.cond.i.i199.ata_outb.exit202_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %200, i8 %198) #6, !srcloc !94
  br label %if.end35

if.end35:                                         ; preds = %ata_outb.exit202, %if.end29.if.end35_crit_edge
  %ops.i.i203 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  br label %do.body.i.i213

do.body.i.i213:                                   ; preds = %do.body.i.i213.do.body.i.i213_crit_edge, %if.end35
  %max.addr.0.i.i204 = phi i32 [ 1000, %if.end35 ], [ %dec.i.i207, %do.body.i.i213.do.body.i.i213_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %211 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %211(i32 noundef 2147480) #6
  %212 = ptrtoint ptr %ops.i.i203 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %ops.i.i203, align 4
  %sff_check_status.i.i205 = getelementptr inbounds %struct.ata_port_operations, ptr %213, i32 0, i32 39
  %214 = ptrtoint ptr %sff_check_status.i.i205 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %sff_check_status.i.i205, align 4
  %call.i.i206 = tail call zeroext i8 %215(ptr noundef %ap) #6
  %dec.i.i207 = add nsw i32 %max.addr.0.i.i204, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i206)
  %cmp.not.i.i208 = icmp eq i8 %call.i.i206, -1
  %216 = and i8 %call.i.i206, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool.not.i.i209 = icmp eq i8 %216, 0
  %or.cond.i.i210 = or i1 %cmp.not.i.i208, %tobool.not.i.i209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i207)
  %cmp3.not.i.i211 = icmp eq i32 %dec.i.i207, 0
  %or.cond1.i.i212 = select i1 %or.cond.i.i210, i1 true, i1 %cmp3.not.i.i211
  br i1 %or.cond1.i.i212, label %ata_sff_busy_wait.exit.i218, label %do.body.i.i213.do.body.i.i213_crit_edge

do.body.i.i213.do.body.i.i213_crit_edge:          ; preds = %do.body.i.i213
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i213

ata_sff_busy_wait.exit.i218:                      ; preds = %do.body.i.i213
  %conv.i214 = zext i8 %call.i.i206 to i32
  %and.i215 = and i32 %conv.i214, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i215)
  %tobool.not.i216 = icmp eq i32 %and.i215, 0
  %or.cond.i217 = select i1 %cmp.not.i.i208, i1 true, i1 %tobool.not.i216
  br i1 %or.cond.i217, label %ata_sff_busy_wait.exit.i218.ata_wait_idle.exit222_crit_edge, label %do.body.i219

ata_sff_busy_wait.exit.i218.ata_wait_idle.exit222_crit_edge: ; preds = %ata_sff_busy_wait.exit.i218
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_wait_idle.exit222

do.body.i219:                                     ; preds = %ata_sff_busy_wait.exit.i218
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ata_wait_idle.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pata_s3c_tf_load, %if.then7.i221)) #6
          to label %ata_wait_idle.exit222 [label %if.then7.i221], !srcloc !98

if.then7.i221:                                    ; preds = %do.body.i219
  call void @__sanitizer_cov_trace_pc() #8
  %print_id.i220 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %217 = ptrtoint ptr %print_id.i220 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %print_id.i220, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ata_wait_idle.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.21, i32 noundef %218, i32 noundef %conv.i214) #6
  br label %ata_wait_idle.exit222

ata_wait_idle.exit222:                            ; preds = %if.then7.i221, %do.body.i219, %ata_sff_busy_wait.exit.i218.ata_wait_idle.exit222_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pata_s3c_tf_read(ptr nocapture noundef %ap, ptr nocapture noundef %tf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %error_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 2
  %2 = ptrtoint ptr %error_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %error_addr, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %ide_addr.i.i = getelementptr inbounds %struct.s3c_ide_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ide_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ide_addr.i.i, align 4
  %fifo_status_reg.i.i = getelementptr inbounds %struct.s3c_ide_info, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %fifo_status_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifo_status_reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -2, %10
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %while.body.i.i, label %while.cond.i.i.wait_for_host_ready.exit.i_crit_edge

while.cond.i.i.wait_for_host_ready.exit.i_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %13 = and i32 %12, 240
  %cmp3.i.i = icmp eq i32 %13, 0
  br i1 %cmp3.i.i, label %while.body.i.i.wait_for_host_ready.exit.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

while.body.i.i.wait_for_host_ready.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i

wait_for_host_ready.exit.i:                       ; preds = %while.body.i.i.wait_for_host_ready.exit.i_crit_edge, %while.cond.i.i.wait_for_host_ready.exit.i_crit_edge
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %15 = ptrtoint ptr %ide_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ide_addr.i.i, align 4
  %17 = ptrtoint ptr %fifo_status_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fifo_status_reg.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %16, i32 %18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i14.i = sub i32 -2, %19
  br label %while.cond.i17.i

while.cond.i17.i:                                 ; preds = %while.body.i19.i.while.cond.i17.i_crit_edge, %wait_for_host_ready.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub.i15.i = add i32 %add.neg.i14.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i15.i)
  %cmp.i16.i = icmp slt i32 %sub.i15.i, 0
  br i1 %cmp.i16.i, label %while.body.i19.i, label %while.cond.i17.i.ata_inb.exit_crit_edge

while.cond.i17.i.ata_inb.exit_crit_edge:          ; preds = %while.cond.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit

while.body.i19.i:                                 ; preds = %while.cond.i17.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %22 = and i32 %21, 240
  %cmp3.i18.i = icmp eq i32 %22, 0
  br i1 %cmp3.i18.i, label %while.body.i19.i.ata_inb.exit_crit_edge, label %while.body.i19.i.while.cond.i17.i_crit_edge

while.body.i19.i.while.cond.i17.i_crit_edge:      ; preds = %while.body.i19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i17.i

while.body.i19.i.ata_inb.exit_crit_edge:          ; preds = %while.body.i19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit

ata_inb.exit:                                     ; preds = %while.body.i19.i.ata_inb.exit_crit_edge, %while.cond.i17.i.ata_inb.exit_crit_edge
  %23 = ptrtoint ptr %ide_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ide_addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 124
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %feature = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 8
  %26 = ptrtoint ptr %feature to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %feature, align 1
  %27 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %host, align 4
  %nsect_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 4
  %29 = ptrtoint ptr %nsect_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nsect_addr, align 4
  %private_data.i73 = getelementptr inbounds %struct.ata_host, ptr %28, i32 0, i32 5
  %31 = ptrtoint ptr %private_data.i73 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private_data.i73, align 4
  %ide_addr.i.i74 = getelementptr inbounds %struct.s3c_ide_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %ide_addr.i.i74 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ide_addr.i.i74, align 4
  %fifo_status_reg.i.i75 = getelementptr inbounds %struct.s3c_ide_info, ptr %32, i32 0, i32 5
  %35 = ptrtoint ptr %fifo_status_reg.i.i75 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fifo_status_reg.i.i75, align 4
  %add.ptr.i.i76 = getelementptr i8, ptr %34, i32 %36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i77 = sub i32 -2, %37
  br label %while.cond.i.i80

while.cond.i.i80:                                 ; preds = %while.body.i.i82.while.cond.i.i80_crit_edge, %ata_inb.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i78 = add i32 %add.neg.i.i77, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i78)
  %cmp.i.i79 = icmp slt i32 %sub.i.i78, 0
  br i1 %cmp.i.i79, label %while.body.i.i82, label %while.cond.i.i80.wait_for_host_ready.exit.i85_crit_edge

while.cond.i.i80.wait_for_host_ready.exit.i85_crit_edge: ; preds = %while.cond.i.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i85

while.body.i.i82:                                 ; preds = %while.cond.i.i80
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i76) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %40 = and i32 %39, 240
  %cmp3.i.i81 = icmp eq i32 %40, 0
  br i1 %cmp3.i.i81, label %while.body.i.i82.wait_for_host_ready.exit.i85_crit_edge, label %while.body.i.i82.while.cond.i.i80_crit_edge

while.body.i.i82.while.cond.i.i80_crit_edge:      ; preds = %while.body.i.i82
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i80

while.body.i.i82.wait_for_host_ready.exit.i85_crit_edge: ; preds = %while.body.i.i82
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i85

wait_for_host_ready.exit.i85:                     ; preds = %while.body.i.i82.wait_for_host_ready.exit.i85_crit_edge, %while.cond.i.i80.wait_for_host_ready.exit.i85_crit_edge
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %30) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %42 = ptrtoint ptr %ide_addr.i.i74 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ide_addr.i.i74, align 4
  %44 = ptrtoint ptr %fifo_status_reg.i.i75 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fifo_status_reg.i.i75, align 4
  %add.ptr.i13.i83 = getelementptr i8, ptr %43, i32 %45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i14.i84 = sub i32 -2, %46
  br label %while.cond.i17.i88

while.cond.i17.i88:                               ; preds = %while.body.i19.i90.while.cond.i17.i88_crit_edge, %wait_for_host_ready.exit.i85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %sub.i15.i86 = add i32 %add.neg.i14.i84, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i15.i86)
  %cmp.i16.i87 = icmp slt i32 %sub.i15.i86, 0
  br i1 %cmp.i16.i87, label %while.body.i19.i90, label %while.cond.i17.i88.ata_inb.exit92_crit_edge

while.cond.i17.i88.ata_inb.exit92_crit_edge:      ; preds = %while.cond.i17.i88
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit92

while.body.i19.i90:                               ; preds = %while.cond.i17.i88
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i83) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %49 = and i32 %48, 240
  %cmp3.i18.i89 = icmp eq i32 %49, 0
  br i1 %cmp3.i18.i89, label %while.body.i19.i90.ata_inb.exit92_crit_edge, label %while.body.i19.i90.while.cond.i17.i88_crit_edge

while.body.i19.i90.while.cond.i17.i88_crit_edge:  ; preds = %while.body.i19.i90
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i17.i88

while.body.i19.i90.ata_inb.exit92_crit_edge:      ; preds = %while.body.i19.i90
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit92

ata_inb.exit92:                                   ; preds = %while.body.i19.i90.ata_inb.exit92_crit_edge, %while.cond.i17.i88.ata_inb.exit92_crit_edge
  %50 = ptrtoint ptr %ide_addr.i.i74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ide_addr.i.i74, align 4
  %add.ptr.i91 = getelementptr i8, ptr %51, i32 124
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i91) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %nsect = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 9
  %53 = ptrtoint ptr %nsect to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %nsect, align 4
  %54 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %host, align 4
  %lbal_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 5
  %56 = ptrtoint ptr %lbal_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lbal_addr, align 4
  %private_data.i93 = getelementptr inbounds %struct.ata_host, ptr %55, i32 0, i32 5
  %58 = ptrtoint ptr %private_data.i93 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %private_data.i93, align 4
  %ide_addr.i.i94 = getelementptr inbounds %struct.s3c_ide_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %ide_addr.i.i94 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ide_addr.i.i94, align 4
  %fifo_status_reg.i.i95 = getelementptr inbounds %struct.s3c_ide_info, ptr %59, i32 0, i32 5
  %62 = ptrtoint ptr %fifo_status_reg.i.i95 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fifo_status_reg.i.i95, align 4
  %add.ptr.i.i96 = getelementptr i8, ptr %61, i32 %63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i97 = sub i32 -2, %64
  br label %while.cond.i.i100

while.cond.i.i100:                                ; preds = %while.body.i.i102.while.cond.i.i100_crit_edge, %ata_inb.exit92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i98 = add i32 %add.neg.i.i97, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i98)
  %cmp.i.i99 = icmp slt i32 %sub.i.i98, 0
  br i1 %cmp.i.i99, label %while.body.i.i102, label %while.cond.i.i100.wait_for_host_ready.exit.i105_crit_edge

while.cond.i.i100.wait_for_host_ready.exit.i105_crit_edge: ; preds = %while.cond.i.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i105

while.body.i.i102:                                ; preds = %while.cond.i.i100
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i96) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %67 = and i32 %66, 240
  %cmp3.i.i101 = icmp eq i32 %67, 0
  br i1 %cmp3.i.i101, label %while.body.i.i102.wait_for_host_ready.exit.i105_crit_edge, label %while.body.i.i102.while.cond.i.i100_crit_edge

while.body.i.i102.while.cond.i.i100_crit_edge:    ; preds = %while.body.i.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i100

while.body.i.i102.wait_for_host_ready.exit.i105_crit_edge: ; preds = %while.body.i.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i105

wait_for_host_ready.exit.i105:                    ; preds = %while.body.i.i102.wait_for_host_ready.exit.i105_crit_edge, %while.cond.i.i100.wait_for_host_ready.exit.i105_crit_edge
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %57) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %69 = ptrtoint ptr %ide_addr.i.i94 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ide_addr.i.i94, align 4
  %71 = ptrtoint ptr %fifo_status_reg.i.i95 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fifo_status_reg.i.i95, align 4
  %add.ptr.i13.i103 = getelementptr i8, ptr %70, i32 %72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %73 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i14.i104 = sub i32 -2, %73
  br label %while.cond.i17.i108

while.cond.i17.i108:                              ; preds = %while.body.i19.i110.while.cond.i17.i108_crit_edge, %wait_for_host_ready.exit.i105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %74 = load volatile i32, ptr @jiffies, align 128
  %sub.i15.i106 = add i32 %add.neg.i14.i104, %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i15.i106)
  %cmp.i16.i107 = icmp slt i32 %sub.i15.i106, 0
  br i1 %cmp.i16.i107, label %while.body.i19.i110, label %while.cond.i17.i108.ata_inb.exit112_crit_edge

while.cond.i17.i108.ata_inb.exit112_crit_edge:    ; preds = %while.cond.i17.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit112

while.body.i19.i110:                              ; preds = %while.cond.i17.i108
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i103) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %76 = and i32 %75, 240
  %cmp3.i18.i109 = icmp eq i32 %76, 0
  br i1 %cmp3.i18.i109, label %while.body.i19.i110.ata_inb.exit112_crit_edge, label %while.body.i19.i110.while.cond.i17.i108_crit_edge

while.body.i19.i110.while.cond.i17.i108_crit_edge: ; preds = %while.body.i19.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i17.i108

while.body.i19.i110.ata_inb.exit112_crit_edge:    ; preds = %while.body.i19.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit112

ata_inb.exit112:                                  ; preds = %while.body.i19.i110.ata_inb.exit112_crit_edge, %while.cond.i17.i108.ata_inb.exit112_crit_edge
  %77 = ptrtoint ptr %ide_addr.i.i94 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ide_addr.i.i94, align 4
  %add.ptr.i111 = getelementptr i8, ptr %78, i32 124
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i111) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %lbal = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 10
  %80 = ptrtoint ptr %lbal to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %lbal, align 1
  %81 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %host, align 4
  %lbam_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 6
  %83 = ptrtoint ptr %lbam_addr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %lbam_addr, align 4
  %private_data.i113 = getelementptr inbounds %struct.ata_host, ptr %82, i32 0, i32 5
  %85 = ptrtoint ptr %private_data.i113 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %private_data.i113, align 4
  %ide_addr.i.i114 = getelementptr inbounds %struct.s3c_ide_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %ide_addr.i.i114 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ide_addr.i.i114, align 4
  %fifo_status_reg.i.i115 = getelementptr inbounds %struct.s3c_ide_info, ptr %86, i32 0, i32 5
  %89 = ptrtoint ptr %fifo_status_reg.i.i115 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %fifo_status_reg.i.i115, align 4
  %add.ptr.i.i116 = getelementptr i8, ptr %88, i32 %90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %91 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i117 = sub i32 -2, %91
  br label %while.cond.i.i120

while.cond.i.i120:                                ; preds = %while.body.i.i122.while.cond.i.i120_crit_edge, %ata_inb.exit112
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %92 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i118 = add i32 %add.neg.i.i117, %92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i118)
  %cmp.i.i119 = icmp slt i32 %sub.i.i118, 0
  br i1 %cmp.i.i119, label %while.body.i.i122, label %while.cond.i.i120.wait_for_host_ready.exit.i125_crit_edge

while.cond.i.i120.wait_for_host_ready.exit.i125_crit_edge: ; preds = %while.cond.i.i120
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i125

while.body.i.i122:                                ; preds = %while.cond.i.i120
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i116) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %94 = and i32 %93, 240
  %cmp3.i.i121 = icmp eq i32 %94, 0
  br i1 %cmp3.i.i121, label %while.body.i.i122.wait_for_host_ready.exit.i125_crit_edge, label %while.body.i.i122.while.cond.i.i120_crit_edge

while.body.i.i122.while.cond.i.i120_crit_edge:    ; preds = %while.body.i.i122
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i120

while.body.i.i122.wait_for_host_ready.exit.i125_crit_edge: ; preds = %while.body.i.i122
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i125

wait_for_host_ready.exit.i125:                    ; preds = %while.body.i.i122.wait_for_host_ready.exit.i125_crit_edge, %while.cond.i.i120.wait_for_host_ready.exit.i125_crit_edge
  %95 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %84) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %96 = ptrtoint ptr %ide_addr.i.i114 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ide_addr.i.i114, align 4
  %98 = ptrtoint ptr %fifo_status_reg.i.i115 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %fifo_status_reg.i.i115, align 4
  %add.ptr.i13.i123 = getelementptr i8, ptr %97, i32 %99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %100 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i14.i124 = sub i32 -2, %100
  br label %while.cond.i17.i128

while.cond.i17.i128:                              ; preds = %while.body.i19.i130.while.cond.i17.i128_crit_edge, %wait_for_host_ready.exit.i125
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %101 = load volatile i32, ptr @jiffies, align 128
  %sub.i15.i126 = add i32 %add.neg.i14.i124, %101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i15.i126)
  %cmp.i16.i127 = icmp slt i32 %sub.i15.i126, 0
  br i1 %cmp.i16.i127, label %while.body.i19.i130, label %while.cond.i17.i128.ata_inb.exit132_crit_edge

while.cond.i17.i128.ata_inb.exit132_crit_edge:    ; preds = %while.cond.i17.i128
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit132

while.body.i19.i130:                              ; preds = %while.cond.i17.i128
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i123) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %103 = and i32 %102, 240
  %cmp3.i18.i129 = icmp eq i32 %103, 0
  br i1 %cmp3.i18.i129, label %while.body.i19.i130.ata_inb.exit132_crit_edge, label %while.body.i19.i130.while.cond.i17.i128_crit_edge

while.body.i19.i130.while.cond.i17.i128_crit_edge: ; preds = %while.body.i19.i130
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i17.i128

while.body.i19.i130.ata_inb.exit132_crit_edge:    ; preds = %while.body.i19.i130
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit132

ata_inb.exit132:                                  ; preds = %while.body.i19.i130.ata_inb.exit132_crit_edge, %while.cond.i17.i128.ata_inb.exit132_crit_edge
  %104 = ptrtoint ptr %ide_addr.i.i114 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ide_addr.i.i114, align 4
  %add.ptr.i131 = getelementptr i8, ptr %105, i32 124
  %106 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i131) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %lbam = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 11
  %107 = ptrtoint ptr %lbam to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %lbam, align 2
  %108 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %host, align 4
  %lbah_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 7
  %110 = ptrtoint ptr %lbah_addr to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %lbah_addr, align 4
  %private_data.i133 = getelementptr inbounds %struct.ata_host, ptr %109, i32 0, i32 5
  %112 = ptrtoint ptr %private_data.i133 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %private_data.i133, align 4
  %ide_addr.i.i134 = getelementptr inbounds %struct.s3c_ide_info, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %ide_addr.i.i134 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ide_addr.i.i134, align 4
  %fifo_status_reg.i.i135 = getelementptr inbounds %struct.s3c_ide_info, ptr %113, i32 0, i32 5
  %116 = ptrtoint ptr %fifo_status_reg.i.i135 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %fifo_status_reg.i.i135, align 4
  %add.ptr.i.i136 = getelementptr i8, ptr %115, i32 %117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %118 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i137 = sub i32 -2, %118
  br label %while.cond.i.i140

while.cond.i.i140:                                ; preds = %while.body.i.i142.while.cond.i.i140_crit_edge, %ata_inb.exit132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %119 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i138 = add i32 %add.neg.i.i137, %119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i138)
  %cmp.i.i139 = icmp slt i32 %sub.i.i138, 0
  br i1 %cmp.i.i139, label %while.body.i.i142, label %while.cond.i.i140.wait_for_host_ready.exit.i145_crit_edge

while.cond.i.i140.wait_for_host_ready.exit.i145_crit_edge: ; preds = %while.cond.i.i140
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i145

while.body.i.i142:                                ; preds = %while.cond.i.i140
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i136) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %121 = and i32 %120, 240
  %cmp3.i.i141 = icmp eq i32 %121, 0
  br i1 %cmp3.i.i141, label %while.body.i.i142.wait_for_host_ready.exit.i145_crit_edge, label %while.body.i.i142.while.cond.i.i140_crit_edge

while.body.i.i142.while.cond.i.i140_crit_edge:    ; preds = %while.body.i.i142
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i140

while.body.i.i142.wait_for_host_ready.exit.i145_crit_edge: ; preds = %while.body.i.i142
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i145

wait_for_host_ready.exit.i145:                    ; preds = %while.body.i.i142.wait_for_host_ready.exit.i145_crit_edge, %while.cond.i.i140.wait_for_host_ready.exit.i145_crit_edge
  %122 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %111) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %123 = ptrtoint ptr %ide_addr.i.i134 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ide_addr.i.i134, align 4
  %125 = ptrtoint ptr %fifo_status_reg.i.i135 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %fifo_status_reg.i.i135, align 4
  %add.ptr.i13.i143 = getelementptr i8, ptr %124, i32 %126
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %127 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i14.i144 = sub i32 -2, %127
  br label %while.cond.i17.i148

while.cond.i17.i148:                              ; preds = %while.body.i19.i150.while.cond.i17.i148_crit_edge, %wait_for_host_ready.exit.i145
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %128 = load volatile i32, ptr @jiffies, align 128
  %sub.i15.i146 = add i32 %add.neg.i14.i144, %128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i15.i146)
  %cmp.i16.i147 = icmp slt i32 %sub.i15.i146, 0
  br i1 %cmp.i16.i147, label %while.body.i19.i150, label %while.cond.i17.i148.ata_inb.exit152_crit_edge

while.cond.i17.i148.ata_inb.exit152_crit_edge:    ; preds = %while.cond.i17.i148
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit152

while.body.i19.i150:                              ; preds = %while.cond.i17.i148
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i143) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %130 = and i32 %129, 240
  %cmp3.i18.i149 = icmp eq i32 %130, 0
  br i1 %cmp3.i18.i149, label %while.body.i19.i150.ata_inb.exit152_crit_edge, label %while.body.i19.i150.while.cond.i17.i148_crit_edge

while.body.i19.i150.while.cond.i17.i148_crit_edge: ; preds = %while.body.i19.i150
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i17.i148

while.body.i19.i150.ata_inb.exit152_crit_edge:    ; preds = %while.body.i19.i150
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit152

ata_inb.exit152:                                  ; preds = %while.body.i19.i150.ata_inb.exit152_crit_edge, %while.cond.i17.i148.ata_inb.exit152_crit_edge
  %131 = ptrtoint ptr %ide_addr.i.i134 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ide_addr.i.i134, align 4
  %add.ptr.i151 = getelementptr i8, ptr %132, i32 124
  %133 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i151) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %lbah = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 12
  %134 = ptrtoint ptr %lbah to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %lbah, align 1
  %135 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %host, align 4
  %device_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 8
  %137 = ptrtoint ptr %device_addr to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %device_addr, align 4
  %private_data.i153 = getelementptr inbounds %struct.ata_host, ptr %136, i32 0, i32 5
  %139 = ptrtoint ptr %private_data.i153 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %private_data.i153, align 4
  %ide_addr.i.i154 = getelementptr inbounds %struct.s3c_ide_info, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %ide_addr.i.i154 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ide_addr.i.i154, align 4
  %fifo_status_reg.i.i155 = getelementptr inbounds %struct.s3c_ide_info, ptr %140, i32 0, i32 5
  %143 = ptrtoint ptr %fifo_status_reg.i.i155 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %fifo_status_reg.i.i155, align 4
  %add.ptr.i.i156 = getelementptr i8, ptr %142, i32 %144
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %145 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i157 = sub i32 -2, %145
  br label %while.cond.i.i160

while.cond.i.i160:                                ; preds = %while.body.i.i162.while.cond.i.i160_crit_edge, %ata_inb.exit152
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %146 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i158 = add i32 %add.neg.i.i157, %146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i158)
  %cmp.i.i159 = icmp slt i32 %sub.i.i158, 0
  br i1 %cmp.i.i159, label %while.body.i.i162, label %while.cond.i.i160.wait_for_host_ready.exit.i165_crit_edge

while.cond.i.i160.wait_for_host_ready.exit.i165_crit_edge: ; preds = %while.cond.i.i160
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i165

while.body.i.i162:                                ; preds = %while.cond.i.i160
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i156) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %148 = and i32 %147, 240
  %cmp3.i.i161 = icmp eq i32 %148, 0
  br i1 %cmp3.i.i161, label %while.body.i.i162.wait_for_host_ready.exit.i165_crit_edge, label %while.body.i.i162.while.cond.i.i160_crit_edge

while.body.i.i162.while.cond.i.i160_crit_edge:    ; preds = %while.body.i.i162
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i160

while.body.i.i162.wait_for_host_ready.exit.i165_crit_edge: ; preds = %while.body.i.i162
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i165

wait_for_host_ready.exit.i165:                    ; preds = %while.body.i.i162.wait_for_host_ready.exit.i165_crit_edge, %while.cond.i.i160.wait_for_host_ready.exit.i165_crit_edge
  %149 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %138) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %150 = ptrtoint ptr %ide_addr.i.i154 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ide_addr.i.i154, align 4
  %152 = ptrtoint ptr %fifo_status_reg.i.i155 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %fifo_status_reg.i.i155, align 4
  %add.ptr.i13.i163 = getelementptr i8, ptr %151, i32 %153
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %154 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i14.i164 = sub i32 -2, %154
  br label %while.cond.i17.i168

while.cond.i17.i168:                              ; preds = %while.body.i19.i170.while.cond.i17.i168_crit_edge, %wait_for_host_ready.exit.i165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %155 = load volatile i32, ptr @jiffies, align 128
  %sub.i15.i166 = add i32 %add.neg.i14.i164, %155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i15.i166)
  %cmp.i16.i167 = icmp slt i32 %sub.i15.i166, 0
  br i1 %cmp.i16.i167, label %while.body.i19.i170, label %while.cond.i17.i168.ata_inb.exit172_crit_edge

while.cond.i17.i168.ata_inb.exit172_crit_edge:    ; preds = %while.cond.i17.i168
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit172

while.body.i19.i170:                              ; preds = %while.cond.i17.i168
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i163) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %157 = and i32 %156, 240
  %cmp3.i18.i169 = icmp eq i32 %157, 0
  br i1 %cmp3.i18.i169, label %while.body.i19.i170.ata_inb.exit172_crit_edge, label %while.body.i19.i170.while.cond.i17.i168_crit_edge

while.body.i19.i170.while.cond.i17.i168_crit_edge: ; preds = %while.body.i19.i170
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i17.i168

while.body.i19.i170.ata_inb.exit172_crit_edge:    ; preds = %while.body.i19.i170
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit172

ata_inb.exit172:                                  ; preds = %while.body.i19.i170.ata_inb.exit172_crit_edge, %while.cond.i17.i168.ata_inb.exit172_crit_edge
  %158 = ptrtoint ptr %ide_addr.i.i154 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ide_addr.i.i154, align 4
  %add.ptr.i171 = getelementptr i8, ptr %159, i32 124
  %160 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i171) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %device = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 13
  %161 = ptrtoint ptr %device to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %160, ptr %device, align 4
  %162 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %tf, align 4
  %and = and i32 %163, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ata_inb.exit172.if.end_crit_edge, label %if.then

ata_inb.exit172.if.end_crit_edge:                 ; preds = %ata_inb.exit172
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %ata_inb.exit172
  %164 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %host, align 4
  %ctl = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 2
  %166 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %ctl, align 1
  %168 = or i8 %167, -128
  %ctl_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 12
  %169 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ctl_addr, align 4
  %private_data.i173 = getelementptr inbounds %struct.ata_host, ptr %165, i32 0, i32 5
  %171 = ptrtoint ptr %private_data.i173 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %private_data.i173, align 4
  %ide_addr.i.i174 = getelementptr inbounds %struct.s3c_ide_info, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %ide_addr.i.i174 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ide_addr.i.i174, align 4
  %fifo_status_reg.i.i175 = getelementptr inbounds %struct.s3c_ide_info, ptr %172, i32 0, i32 5
  %175 = ptrtoint ptr %fifo_status_reg.i.i175 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %fifo_status_reg.i.i175, align 4
  %add.ptr.i.i176 = getelementptr i8, ptr %174, i32 %176
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %177 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i177 = sub i32 -2, %177
  br label %while.cond.i.i180

while.cond.i.i180:                                ; preds = %while.body.i.i182.while.cond.i.i180_crit_edge, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %178 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i178 = add i32 %add.neg.i.i177, %178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i178)
  %cmp.i.i179 = icmp slt i32 %sub.i.i178, 0
  br i1 %cmp.i.i179, label %while.body.i.i182, label %while.cond.i.i180.ata_outb.exit_crit_edge

while.cond.i.i180.ata_outb.exit_crit_edge:        ; preds = %while.cond.i.i180
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit

while.body.i.i182:                                ; preds = %while.cond.i.i180
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i176) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %180 = and i32 %179, 240
  %cmp3.i.i181 = icmp eq i32 %180, 0
  br i1 %cmp3.i.i181, label %while.body.i.i182.ata_outb.exit_crit_edge, label %while.body.i.i182.while.cond.i.i180_crit_edge

while.body.i.i182.while.cond.i.i180_crit_edge:    ; preds = %while.body.i.i182
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i180

while.body.i.i182.ata_outb.exit_crit_edge:        ; preds = %while.body.i.i182
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit

ata_outb.exit:                                    ; preds = %while.body.i.i182.ata_outb.exit_crit_edge, %while.cond.i.i180.ata_outb.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %170, i8 %168) #6, !srcloc !94
  %181 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %host, align 4
  %183 = ptrtoint ptr %error_addr to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %error_addr, align 4
  %private_data.i184 = getelementptr inbounds %struct.ata_host, ptr %182, i32 0, i32 5
  %185 = ptrtoint ptr %private_data.i184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %private_data.i184, align 4
  %ide_addr.i.i185 = getelementptr inbounds %struct.s3c_ide_info, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %ide_addr.i.i185 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %ide_addr.i.i185, align 4
  %fifo_status_reg.i.i186 = getelementptr inbounds %struct.s3c_ide_info, ptr %186, i32 0, i32 5
  %189 = ptrtoint ptr %fifo_status_reg.i.i186 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %fifo_status_reg.i.i186, align 4
  %add.ptr.i.i187 = getelementptr i8, ptr %188, i32 %190
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %191 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i188 = sub i32 -2, %191
  br label %while.cond.i.i191

while.cond.i.i191:                                ; preds = %while.body.i.i193.while.cond.i.i191_crit_edge, %ata_outb.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %192 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i189 = add i32 %add.neg.i.i188, %192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i189)
  %cmp.i.i190 = icmp slt i32 %sub.i.i189, 0
  br i1 %cmp.i.i190, label %while.body.i.i193, label %while.cond.i.i191.wait_for_host_ready.exit.i196_crit_edge

while.cond.i.i191.wait_for_host_ready.exit.i196_crit_edge: ; preds = %while.cond.i.i191
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i196

while.body.i.i193:                                ; preds = %while.cond.i.i191
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i187) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %194 = and i32 %193, 240
  %cmp3.i.i192 = icmp eq i32 %194, 0
  br i1 %cmp3.i.i192, label %while.body.i.i193.wait_for_host_ready.exit.i196_crit_edge, label %while.body.i.i193.while.cond.i.i191_crit_edge

while.body.i.i193.while.cond.i.i191_crit_edge:    ; preds = %while.body.i.i193
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i191

while.body.i.i193.wait_for_host_ready.exit.i196_crit_edge: ; preds = %while.body.i.i193
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i196

wait_for_host_ready.exit.i196:                    ; preds = %while.body.i.i193.wait_for_host_ready.exit.i196_crit_edge, %while.cond.i.i191.wait_for_host_ready.exit.i196_crit_edge
  %195 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %184) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %196 = ptrtoint ptr %ide_addr.i.i185 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %ide_addr.i.i185, align 4
  %198 = ptrtoint ptr %fifo_status_reg.i.i186 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %fifo_status_reg.i.i186, align 4
  %add.ptr.i13.i194 = getelementptr i8, ptr %197, i32 %199
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %200 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i14.i195 = sub i32 -2, %200
  br label %while.cond.i17.i199

while.cond.i17.i199:                              ; preds = %while.body.i19.i201.while.cond.i17.i199_crit_edge, %wait_for_host_ready.exit.i196
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %201 = load volatile i32, ptr @jiffies, align 128
  %sub.i15.i197 = add i32 %add.neg.i14.i195, %201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i15.i197)
  %cmp.i16.i198 = icmp slt i32 %sub.i15.i197, 0
  br i1 %cmp.i16.i198, label %while.body.i19.i201, label %while.cond.i17.i199.ata_inb.exit203_crit_edge

while.cond.i17.i199.ata_inb.exit203_crit_edge:    ; preds = %while.cond.i17.i199
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit203

while.body.i19.i201:                              ; preds = %while.cond.i17.i199
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i194) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %203 = and i32 %202, 240
  %cmp3.i18.i200 = icmp eq i32 %203, 0
  br i1 %cmp3.i18.i200, label %while.body.i19.i201.ata_inb.exit203_crit_edge, label %while.body.i19.i201.while.cond.i17.i199_crit_edge

while.body.i19.i201.while.cond.i17.i199_crit_edge: ; preds = %while.body.i19.i201
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i17.i199

while.body.i19.i201.ata_inb.exit203_crit_edge:    ; preds = %while.body.i19.i201
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit203

ata_inb.exit203:                                  ; preds = %while.body.i19.i201.ata_inb.exit203_crit_edge, %while.cond.i17.i199.ata_inb.exit203_crit_edge
  %204 = ptrtoint ptr %ide_addr.i.i185 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ide_addr.i.i185, align 4
  %add.ptr.i202 = getelementptr i8, ptr %205, i32 124
  %206 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i202) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %hob_feature = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 3
  %207 = ptrtoint ptr %hob_feature to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %206, ptr %hob_feature, align 2
  %208 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %host, align 4
  %210 = ptrtoint ptr %nsect_addr to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %nsect_addr, align 4
  %private_data.i204 = getelementptr inbounds %struct.ata_host, ptr %209, i32 0, i32 5
  %212 = ptrtoint ptr %private_data.i204 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %private_data.i204, align 4
  %ide_addr.i.i205 = getelementptr inbounds %struct.s3c_ide_info, ptr %213, i32 0, i32 1
  %214 = ptrtoint ptr %ide_addr.i.i205 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ide_addr.i.i205, align 4
  %fifo_status_reg.i.i206 = getelementptr inbounds %struct.s3c_ide_info, ptr %213, i32 0, i32 5
  %216 = ptrtoint ptr %fifo_status_reg.i.i206 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %fifo_status_reg.i.i206, align 4
  %add.ptr.i.i207 = getelementptr i8, ptr %215, i32 %217
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %218 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i208 = sub i32 -2, %218
  br label %while.cond.i.i211

while.cond.i.i211:                                ; preds = %while.body.i.i213.while.cond.i.i211_crit_edge, %ata_inb.exit203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %219 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i209 = add i32 %add.neg.i.i208, %219
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i209)
  %cmp.i.i210 = icmp slt i32 %sub.i.i209, 0
  br i1 %cmp.i.i210, label %while.body.i.i213, label %while.cond.i.i211.wait_for_host_ready.exit.i216_crit_edge

while.cond.i.i211.wait_for_host_ready.exit.i216_crit_edge: ; preds = %while.cond.i.i211
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i216

while.body.i.i213:                                ; preds = %while.cond.i.i211
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i207) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %221 = and i32 %220, 240
  %cmp3.i.i212 = icmp eq i32 %221, 0
  br i1 %cmp3.i.i212, label %while.body.i.i213.wait_for_host_ready.exit.i216_crit_edge, label %while.body.i.i213.while.cond.i.i211_crit_edge

while.body.i.i213.while.cond.i.i211_crit_edge:    ; preds = %while.body.i.i213
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i211

while.body.i.i213.wait_for_host_ready.exit.i216_crit_edge: ; preds = %while.body.i.i213
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i216

wait_for_host_ready.exit.i216:                    ; preds = %while.body.i.i213.wait_for_host_ready.exit.i216_crit_edge, %while.cond.i.i211.wait_for_host_ready.exit.i216_crit_edge
  %222 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %211) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %223 = ptrtoint ptr %ide_addr.i.i205 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %ide_addr.i.i205, align 4
  %225 = ptrtoint ptr %fifo_status_reg.i.i206 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %fifo_status_reg.i.i206, align 4
  %add.ptr.i13.i214 = getelementptr i8, ptr %224, i32 %226
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %227 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i14.i215 = sub i32 -2, %227
  br label %while.cond.i17.i219

while.cond.i17.i219:                              ; preds = %while.body.i19.i221.while.cond.i17.i219_crit_edge, %wait_for_host_ready.exit.i216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %228 = load volatile i32, ptr @jiffies, align 128
  %sub.i15.i217 = add i32 %add.neg.i14.i215, %228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i15.i217)
  %cmp.i16.i218 = icmp slt i32 %sub.i15.i217, 0
  br i1 %cmp.i16.i218, label %while.body.i19.i221, label %while.cond.i17.i219.ata_inb.exit223_crit_edge

while.cond.i17.i219.ata_inb.exit223_crit_edge:    ; preds = %while.cond.i17.i219
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit223

while.body.i19.i221:                              ; preds = %while.cond.i17.i219
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i214) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %230 = and i32 %229, 240
  %cmp3.i18.i220 = icmp eq i32 %230, 0
  br i1 %cmp3.i18.i220, label %while.body.i19.i221.ata_inb.exit223_crit_edge, label %while.body.i19.i221.while.cond.i17.i219_crit_edge

while.body.i19.i221.while.cond.i17.i219_crit_edge: ; preds = %while.body.i19.i221
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i17.i219

while.body.i19.i221.ata_inb.exit223_crit_edge:    ; preds = %while.body.i19.i221
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit223

ata_inb.exit223:                                  ; preds = %while.body.i19.i221.ata_inb.exit223_crit_edge, %while.cond.i17.i219.ata_inb.exit223_crit_edge
  %231 = ptrtoint ptr %ide_addr.i.i205 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %ide_addr.i.i205, align 4
  %add.ptr.i222 = getelementptr i8, ptr %232, i32 124
  %233 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i222) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %hob_nsect = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 4
  %234 = ptrtoint ptr %hob_nsect to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %233, ptr %hob_nsect, align 1
  %235 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %host, align 4
  %237 = ptrtoint ptr %lbal_addr to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %lbal_addr, align 4
  %private_data.i224 = getelementptr inbounds %struct.ata_host, ptr %236, i32 0, i32 5
  %239 = ptrtoint ptr %private_data.i224 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %private_data.i224, align 4
  %ide_addr.i.i225 = getelementptr inbounds %struct.s3c_ide_info, ptr %240, i32 0, i32 1
  %241 = ptrtoint ptr %ide_addr.i.i225 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %ide_addr.i.i225, align 4
  %fifo_status_reg.i.i226 = getelementptr inbounds %struct.s3c_ide_info, ptr %240, i32 0, i32 5
  %243 = ptrtoint ptr %fifo_status_reg.i.i226 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %fifo_status_reg.i.i226, align 4
  %add.ptr.i.i227 = getelementptr i8, ptr %242, i32 %244
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %245 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i228 = sub i32 -2, %245
  br label %while.cond.i.i231

while.cond.i.i231:                                ; preds = %while.body.i.i233.while.cond.i.i231_crit_edge, %ata_inb.exit223
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %246 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i229 = add i32 %add.neg.i.i228, %246
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i229)
  %cmp.i.i230 = icmp slt i32 %sub.i.i229, 0
  br i1 %cmp.i.i230, label %while.body.i.i233, label %while.cond.i.i231.wait_for_host_ready.exit.i236_crit_edge

while.cond.i.i231.wait_for_host_ready.exit.i236_crit_edge: ; preds = %while.cond.i.i231
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i236

while.body.i.i233:                                ; preds = %while.cond.i.i231
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i227) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %248 = and i32 %247, 240
  %cmp3.i.i232 = icmp eq i32 %248, 0
  br i1 %cmp3.i.i232, label %while.body.i.i233.wait_for_host_ready.exit.i236_crit_edge, label %while.body.i.i233.while.cond.i.i231_crit_edge

while.body.i.i233.while.cond.i.i231_crit_edge:    ; preds = %while.body.i.i233
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i231

while.body.i.i233.wait_for_host_ready.exit.i236_crit_edge: ; preds = %while.body.i.i233
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i236

wait_for_host_ready.exit.i236:                    ; preds = %while.body.i.i233.wait_for_host_ready.exit.i236_crit_edge, %while.cond.i.i231.wait_for_host_ready.exit.i236_crit_edge
  %249 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %238) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %250 = ptrtoint ptr %ide_addr.i.i225 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %ide_addr.i.i225, align 4
  %252 = ptrtoint ptr %fifo_status_reg.i.i226 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %fifo_status_reg.i.i226, align 4
  %add.ptr.i13.i234 = getelementptr i8, ptr %251, i32 %253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %254 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i14.i235 = sub i32 -2, %254
  br label %while.cond.i17.i239

while.cond.i17.i239:                              ; preds = %while.body.i19.i241.while.cond.i17.i239_crit_edge, %wait_for_host_ready.exit.i236
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %255 = load volatile i32, ptr @jiffies, align 128
  %sub.i15.i237 = add i32 %add.neg.i14.i235, %255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i15.i237)
  %cmp.i16.i238 = icmp slt i32 %sub.i15.i237, 0
  br i1 %cmp.i16.i238, label %while.body.i19.i241, label %while.cond.i17.i239.ata_inb.exit243_crit_edge

while.cond.i17.i239.ata_inb.exit243_crit_edge:    ; preds = %while.cond.i17.i239
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit243

while.body.i19.i241:                              ; preds = %while.cond.i17.i239
  %256 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i234) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %257 = and i32 %256, 240
  %cmp3.i18.i240 = icmp eq i32 %257, 0
  br i1 %cmp3.i18.i240, label %while.body.i19.i241.ata_inb.exit243_crit_edge, label %while.body.i19.i241.while.cond.i17.i239_crit_edge

while.body.i19.i241.while.cond.i17.i239_crit_edge: ; preds = %while.body.i19.i241
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i17.i239

while.body.i19.i241.ata_inb.exit243_crit_edge:    ; preds = %while.body.i19.i241
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit243

ata_inb.exit243:                                  ; preds = %while.body.i19.i241.ata_inb.exit243_crit_edge, %while.cond.i17.i239.ata_inb.exit243_crit_edge
  %258 = ptrtoint ptr %ide_addr.i.i225 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %ide_addr.i.i225, align 4
  %add.ptr.i242 = getelementptr i8, ptr %259, i32 124
  %260 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i242) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %hob_lbal = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 5
  %261 = ptrtoint ptr %hob_lbal to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %260, ptr %hob_lbal, align 4
  %262 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %host, align 4
  %264 = ptrtoint ptr %lbam_addr to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %lbam_addr, align 4
  %private_data.i244 = getelementptr inbounds %struct.ata_host, ptr %263, i32 0, i32 5
  %266 = ptrtoint ptr %private_data.i244 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %private_data.i244, align 4
  %ide_addr.i.i245 = getelementptr inbounds %struct.s3c_ide_info, ptr %267, i32 0, i32 1
  %268 = ptrtoint ptr %ide_addr.i.i245 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %ide_addr.i.i245, align 4
  %fifo_status_reg.i.i246 = getelementptr inbounds %struct.s3c_ide_info, ptr %267, i32 0, i32 5
  %270 = ptrtoint ptr %fifo_status_reg.i.i246 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %fifo_status_reg.i.i246, align 4
  %add.ptr.i.i247 = getelementptr i8, ptr %269, i32 %271
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %272 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i248 = sub i32 -2, %272
  br label %while.cond.i.i251

while.cond.i.i251:                                ; preds = %while.body.i.i253.while.cond.i.i251_crit_edge, %ata_inb.exit243
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %273 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i249 = add i32 %add.neg.i.i248, %273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i249)
  %cmp.i.i250 = icmp slt i32 %sub.i.i249, 0
  br i1 %cmp.i.i250, label %while.body.i.i253, label %while.cond.i.i251.wait_for_host_ready.exit.i256_crit_edge

while.cond.i.i251.wait_for_host_ready.exit.i256_crit_edge: ; preds = %while.cond.i.i251
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i256

while.body.i.i253:                                ; preds = %while.cond.i.i251
  %274 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i247) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %275 = and i32 %274, 240
  %cmp3.i.i252 = icmp eq i32 %275, 0
  br i1 %cmp3.i.i252, label %while.body.i.i253.wait_for_host_ready.exit.i256_crit_edge, label %while.body.i.i253.while.cond.i.i251_crit_edge

while.body.i.i253.while.cond.i.i251_crit_edge:    ; preds = %while.body.i.i253
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i251

while.body.i.i253.wait_for_host_ready.exit.i256_crit_edge: ; preds = %while.body.i.i253
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i256

wait_for_host_ready.exit.i256:                    ; preds = %while.body.i.i253.wait_for_host_ready.exit.i256_crit_edge, %while.cond.i.i251.wait_for_host_ready.exit.i256_crit_edge
  %276 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %265) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %277 = ptrtoint ptr %ide_addr.i.i245 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %ide_addr.i.i245, align 4
  %279 = ptrtoint ptr %fifo_status_reg.i.i246 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %fifo_status_reg.i.i246, align 4
  %add.ptr.i13.i254 = getelementptr i8, ptr %278, i32 %280
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %281 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i14.i255 = sub i32 -2, %281
  br label %while.cond.i17.i259

while.cond.i17.i259:                              ; preds = %while.body.i19.i261.while.cond.i17.i259_crit_edge, %wait_for_host_ready.exit.i256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %282 = load volatile i32, ptr @jiffies, align 128
  %sub.i15.i257 = add i32 %add.neg.i14.i255, %282
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i15.i257)
  %cmp.i16.i258 = icmp slt i32 %sub.i15.i257, 0
  br i1 %cmp.i16.i258, label %while.body.i19.i261, label %while.cond.i17.i259.ata_inb.exit263_crit_edge

while.cond.i17.i259.ata_inb.exit263_crit_edge:    ; preds = %while.cond.i17.i259
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit263

while.body.i19.i261:                              ; preds = %while.cond.i17.i259
  %283 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i254) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %284 = and i32 %283, 240
  %cmp3.i18.i260 = icmp eq i32 %284, 0
  br i1 %cmp3.i18.i260, label %while.body.i19.i261.ata_inb.exit263_crit_edge, label %while.body.i19.i261.while.cond.i17.i259_crit_edge

while.body.i19.i261.while.cond.i17.i259_crit_edge: ; preds = %while.body.i19.i261
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i17.i259

while.body.i19.i261.ata_inb.exit263_crit_edge:    ; preds = %while.body.i19.i261
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit263

ata_inb.exit263:                                  ; preds = %while.body.i19.i261.ata_inb.exit263_crit_edge, %while.cond.i17.i259.ata_inb.exit263_crit_edge
  %285 = ptrtoint ptr %ide_addr.i.i245 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %ide_addr.i.i245, align 4
  %add.ptr.i262 = getelementptr i8, ptr %286, i32 124
  %287 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i262) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %hob_lbam = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 6
  %288 = ptrtoint ptr %hob_lbam to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %287, ptr %hob_lbam, align 1
  %289 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %host, align 4
  %291 = ptrtoint ptr %lbah_addr to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %lbah_addr, align 4
  %private_data.i264 = getelementptr inbounds %struct.ata_host, ptr %290, i32 0, i32 5
  %293 = ptrtoint ptr %private_data.i264 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %private_data.i264, align 4
  %ide_addr.i.i265 = getelementptr inbounds %struct.s3c_ide_info, ptr %294, i32 0, i32 1
  %295 = ptrtoint ptr %ide_addr.i.i265 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %ide_addr.i.i265, align 4
  %fifo_status_reg.i.i266 = getelementptr inbounds %struct.s3c_ide_info, ptr %294, i32 0, i32 5
  %297 = ptrtoint ptr %fifo_status_reg.i.i266 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %fifo_status_reg.i.i266, align 4
  %add.ptr.i.i267 = getelementptr i8, ptr %296, i32 %298
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %299 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i268 = sub i32 -2, %299
  br label %while.cond.i.i271

while.cond.i.i271:                                ; preds = %while.body.i.i273.while.cond.i.i271_crit_edge, %ata_inb.exit263
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %300 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i269 = add i32 %add.neg.i.i268, %300
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i269)
  %cmp.i.i270 = icmp slt i32 %sub.i.i269, 0
  br i1 %cmp.i.i270, label %while.body.i.i273, label %while.cond.i.i271.wait_for_host_ready.exit.i276_crit_edge

while.cond.i.i271.wait_for_host_ready.exit.i276_crit_edge: ; preds = %while.cond.i.i271
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i276

while.body.i.i273:                                ; preds = %while.cond.i.i271
  %301 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i267) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %302 = and i32 %301, 240
  %cmp3.i.i272 = icmp eq i32 %302, 0
  br i1 %cmp3.i.i272, label %while.body.i.i273.wait_for_host_ready.exit.i276_crit_edge, label %while.body.i.i273.while.cond.i.i271_crit_edge

while.body.i.i273.while.cond.i.i271_crit_edge:    ; preds = %while.body.i.i273
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i271

while.body.i.i273.wait_for_host_ready.exit.i276_crit_edge: ; preds = %while.body.i.i273
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit.i276

wait_for_host_ready.exit.i276:                    ; preds = %while.body.i.i273.wait_for_host_ready.exit.i276_crit_edge, %while.cond.i.i271.wait_for_host_ready.exit.i276_crit_edge
  %303 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %292) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %304 = ptrtoint ptr %ide_addr.i.i265 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %ide_addr.i.i265, align 4
  %306 = ptrtoint ptr %fifo_status_reg.i.i266 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %fifo_status_reg.i.i266, align 4
  %add.ptr.i13.i274 = getelementptr i8, ptr %305, i32 %307
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %308 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i14.i275 = sub i32 -2, %308
  br label %while.cond.i17.i279

while.cond.i17.i279:                              ; preds = %while.body.i19.i281.while.cond.i17.i279_crit_edge, %wait_for_host_ready.exit.i276
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %309 = load volatile i32, ptr @jiffies, align 128
  %sub.i15.i277 = add i32 %add.neg.i14.i275, %309
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i15.i277)
  %cmp.i16.i278 = icmp slt i32 %sub.i15.i277, 0
  br i1 %cmp.i16.i278, label %while.body.i19.i281, label %while.cond.i17.i279.ata_inb.exit283_crit_edge

while.cond.i17.i279.ata_inb.exit283_crit_edge:    ; preds = %while.cond.i17.i279
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit283

while.body.i19.i281:                              ; preds = %while.cond.i17.i279
  %310 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i274) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %311 = and i32 %310, 240
  %cmp3.i18.i280 = icmp eq i32 %311, 0
  br i1 %cmp3.i18.i280, label %while.body.i19.i281.ata_inb.exit283_crit_edge, label %while.body.i19.i281.while.cond.i17.i279_crit_edge

while.body.i19.i281.while.cond.i17.i279_crit_edge: ; preds = %while.body.i19.i281
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i17.i279

while.body.i19.i281.ata_inb.exit283_crit_edge:    ; preds = %while.body.i19.i281
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_inb.exit283

ata_inb.exit283:                                  ; preds = %while.body.i19.i281.ata_inb.exit283_crit_edge, %while.cond.i17.i279.ata_inb.exit283_crit_edge
  %312 = ptrtoint ptr %ide_addr.i.i265 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %ide_addr.i.i265, align 4
  %add.ptr.i282 = getelementptr i8, ptr %313, i32 124
  %314 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i282) #6, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %hob_lbah = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 7
  %315 = ptrtoint ptr %hob_lbah to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 %314, ptr %hob_lbah, align 2
  %316 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %host, align 4
  %318 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %ctl, align 1
  %320 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %ctl_addr, align 4
  %private_data.i284 = getelementptr inbounds %struct.ata_host, ptr %317, i32 0, i32 5
  %322 = ptrtoint ptr %private_data.i284 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %private_data.i284, align 4
  %ide_addr.i.i285 = getelementptr inbounds %struct.s3c_ide_info, ptr %323, i32 0, i32 1
  %324 = ptrtoint ptr %ide_addr.i.i285 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %ide_addr.i.i285, align 4
  %fifo_status_reg.i.i286 = getelementptr inbounds %struct.s3c_ide_info, ptr %323, i32 0, i32 5
  %326 = ptrtoint ptr %fifo_status_reg.i.i286 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %fifo_status_reg.i.i286, align 4
  %add.ptr.i.i287 = getelementptr i8, ptr %325, i32 %327
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %328 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i288 = sub i32 -2, %328
  br label %while.cond.i.i291

while.cond.i.i291:                                ; preds = %while.body.i.i293.while.cond.i.i291_crit_edge, %ata_inb.exit283
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %329 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i289 = add i32 %add.neg.i.i288, %329
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i289)
  %cmp.i.i290 = icmp slt i32 %sub.i.i289, 0
  br i1 %cmp.i.i290, label %while.body.i.i293, label %while.cond.i.i291.ata_outb.exit295_crit_edge

while.cond.i.i291.ata_outb.exit295_crit_edge:     ; preds = %while.cond.i.i291
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit295

while.body.i.i293:                                ; preds = %while.cond.i.i291
  %330 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i287) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %331 = and i32 %330, 240
  %cmp3.i.i292 = icmp eq i32 %331, 0
  br i1 %cmp3.i.i292, label %while.body.i.i293.ata_outb.exit295_crit_edge, label %while.body.i.i293.while.cond.i.i291_crit_edge

while.body.i.i293.while.cond.i.i291_crit_edge:    ; preds = %while.body.i.i293
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i291

while.body.i.i293.ata_outb.exit295_crit_edge:     ; preds = %while.body.i.i293
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit295

ata_outb.exit295:                                 ; preds = %while.body.i.i293.ata_outb.exit295_crit_edge, %while.cond.i.i291.ata_outb.exit295_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %321, i8 %319) #6, !srcloc !94
  %332 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %ctl, align 1
  %last_ctl = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 10
  %334 = ptrtoint ptr %last_ctl to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 %333, ptr %last_ctl, align 1
  br label %if.end

if.end:                                           ; preds = %ata_outb.exit295, %ata_inb.exit172.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pata_s3c_exec_command(ptr noundef %ap, ptr nocapture noundef readonly %tf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %command = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 14
  %2 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %command, align 1
  %command_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 10
  %4 = ptrtoint ptr %command_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %command_addr, align 8
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i, align 4
  %ide_addr.i.i = getelementptr inbounds %struct.s3c_ide_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %ide_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ide_addr.i.i, align 4
  %fifo_status_reg.i.i = getelementptr inbounds %struct.s3c_ide_info, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %fifo_status_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fifo_status_reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -2, %12
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %while.body.i.i, label %while.cond.i.i.ata_outb.exit_crit_edge

while.cond.i.i.ata_outb.exit_crit_edge:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %15 = and i32 %14, 240
  %cmp3.i.i = icmp eq i32 %15, 0
  br i1 %cmp3.i.i, label %while.body.i.i.ata_outb.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

while.body.i.i.ata_outb.exit_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_outb.exit

ata_outb.exit:                                    ; preds = %while.body.i.i.ata_outb.exit_crit_edge, %while.cond.i.i.ata_outb.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 %3) #6, !srcloc !94
  tail call void @ata_sff_pause(ptr noundef %ap) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pata_s3c_data_xfer(ptr nocapture noundef readonly %qc, ptr nocapture noundef %buf, i32 noundef %buflen, i32 noundef %rw) #4 align 64 {
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
  %host = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 31
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %data_addr2 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %data_addr2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data_addr2, align 4
  %shr = lshr i32 %buflen, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rw)
  %cmp = icmp eq i32 %rw, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %buflen)
  %cmp367.not = icmp ult i32 %buflen, 2
  br i1 %cmp, label %for.cond.preheader, label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %entry
  br i1 %cmp367.not, label %for.cond12.preheader.if.end_crit_edge, label %for.body14.lr.ph

for.cond12.preheader.if.end_crit_edge:            ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body14.lr.ph:                                 ; preds = %for.cond12.preheader
  %ide_addr.i51 = getelementptr inbounds %struct.s3c_ide_info, ptr %9, i32 0, i32 1
  %fifo_status_reg.i52 = getelementptr inbounds %struct.s3c_ide_info, ptr %9, i32 0, i32 5
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body14

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp367.not, label %for.cond.preheader.if.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ide_addr.i = getelementptr inbounds %struct.s3c_ide_info, ptr %9, i32 0, i32 1
  %fifo_status_reg.i = getelementptr inbounds %struct.s3c_ide_info, ptr %9, i32 0, i32 5
  %umax71 = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body

for.body:                                         ; preds = %wait_for_host_ready.exit50.for.body_crit_edge, %for.body.lr.ph
  %i.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %wait_for_host_ready.exit50.for.body_crit_edge ]
  %data_ptr.068 = phi ptr [ %buf, %for.body.lr.ph ], [ %incdec.ptr, %wait_for_host_ready.exit50.for.body_crit_edge ]
  %12 = ptrtoint ptr %ide_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ide_addr.i, align 4
  %14 = ptrtoint ptr %fifo_status_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fifo_status_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -2, %16
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.wait_for_host_ready.exit_crit_edge

while.cond.i.wait_for_host_ready.exit_crit_edge:  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit

while.body.i:                                     ; preds = %while.cond.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %19 = and i32 %18, 240
  %cmp3.i = icmp eq i32 %19, 0
  br i1 %cmp3.i, label %while.body.i.wait_for_host_ready.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.body.i.wait_for_host_ready.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit

wait_for_host_ready.exit:                         ; preds = %while.body.i.wait_for_host_ready.exit_crit_edge, %while.cond.i.wait_for_host_ready.exit_crit_edge
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %21 = ptrtoint ptr %ide_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ide_addr.i, align 4
  %23 = ptrtoint ptr %fifo_status_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fifo_status_reg.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %22, i32 %24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i44 = sub i32 -2, %25
  br label %while.cond.i47

while.cond.i47:                                   ; preds = %while.body.i49.while.cond.i47_crit_edge, %wait_for_host_ready.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub.i45 = add i32 %add.neg.i44, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i45)
  %cmp.i46 = icmp slt i32 %sub.i45, 0
  br i1 %cmp.i46, label %while.body.i49, label %while.cond.i47.wait_for_host_ready.exit50_crit_edge

while.cond.i47.wait_for_host_ready.exit50_crit_edge: ; preds = %while.cond.i47
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit50

while.body.i49:                                   ; preds = %while.cond.i47
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %28 = and i32 %27, 240
  %cmp3.i48 = icmp eq i32 %28, 0
  br i1 %cmp3.i48, label %while.body.i49.wait_for_host_ready.exit50_crit_edge, label %while.body.i49.while.cond.i47_crit_edge

while.body.i49.while.cond.i47_crit_edge:          ; preds = %while.body.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i47

while.body.i49.wait_for_host_ready.exit50_crit_edge: ; preds = %while.body.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit50

wait_for_host_ready.exit50:                       ; preds = %while.body.i49.wait_for_host_ready.exit50_crit_edge, %while.cond.i47.wait_for_host_ready.exit50_crit_edge
  %29 = ptrtoint ptr %ide_addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ide_addr.i, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 124
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !99
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %33 = ptrtoint ptr %data_ptr.068 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %data_ptr.068, align 2
  %inc = add nuw nsw i32 %i.069, 1
  %incdec.ptr = getelementptr i16, ptr %data_ptr.068, i32 1
  %exitcond72.not = icmp eq i32 %inc, %umax71
  br i1 %exitcond72.not, label %wait_for_host_ready.exit50.if.end_crit_edge, label %wait_for_host_ready.exit50.for.body_crit_edge

wait_for_host_ready.exit50.for.body_crit_edge:    ; preds = %wait_for_host_ready.exit50
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

wait_for_host_ready.exit50.if.end_crit_edge:      ; preds = %wait_for_host_ready.exit50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body14:                                       ; preds = %wait_for_host_ready.exit60.for.body14_crit_edge, %for.body14.lr.ph
  %i.166 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc17, %wait_for_host_ready.exit60.for.body14_crit_edge ]
  %data_ptr.165 = phi ptr [ %buf, %for.body14.lr.ph ], [ %incdec.ptr18, %wait_for_host_ready.exit60.for.body14_crit_edge ]
  %34 = ptrtoint ptr %ide_addr.i51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ide_addr.i51, align 4
  %36 = ptrtoint ptr %fifo_status_reg.i52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fifo_status_reg.i52, align 4
  %add.ptr.i53 = getelementptr i8, ptr %35, i32 %37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i54 = sub i32 -2, %38
  br label %while.cond.i57

while.cond.i57:                                   ; preds = %while.body.i59.while.cond.i57_crit_edge, %for.body14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %sub.i55 = add i32 %add.neg.i54, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i55)
  %cmp.i56 = icmp slt i32 %sub.i55, 0
  br i1 %cmp.i56, label %while.body.i59, label %while.cond.i57.wait_for_host_ready.exit60_crit_edge

while.cond.i57.wait_for_host_ready.exit60_crit_edge: ; preds = %while.cond.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit60

while.body.i59:                                   ; preds = %while.cond.i57
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %41 = and i32 %40, 240
  %cmp3.i58 = icmp eq i32 %41, 0
  br i1 %cmp3.i58, label %while.body.i59.wait_for_host_ready.exit60_crit_edge, label %while.body.i59.while.cond.i57_crit_edge

while.body.i59.while.cond.i57_crit_edge:          ; preds = %while.body.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i57

while.body.i59.wait_for_host_ready.exit60_crit_edge: ; preds = %while.body.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %wait_for_host_ready.exit60

wait_for_host_ready.exit60:                       ; preds = %while.body.i59.wait_for_host_ready.exit60_crit_edge, %while.cond.i57.wait_for_host_ready.exit60_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %42 = ptrtoint ptr %data_ptr.165 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %data_ptr.165, align 2
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 %44) #6, !srcloc !103
  %inc17 = add nuw nsw i32 %i.166, 1
  %incdec.ptr18 = getelementptr i16, ptr %data_ptr.165, i32 1
  %exitcond.not = icmp eq i32 %inc17, %umax
  br i1 %exitcond.not, label %wait_for_host_ready.exit60.if.end_crit_edge, label %wait_for_host_ready.exit60.for.body14_crit_edge

wait_for_host_ready.exit60.for.body14_crit_edge:  ; preds = %wait_for_host_ready.exit60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14

wait_for_host_ready.exit60.if.end_crit_edge:      ; preds = %wait_for_host_ready.exit60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %wait_for_host_ready.exit60.if.end_crit_edge, %wait_for_host_ready.exit50.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %for.cond12.preheader.if.end_crit_edge
  %and = and i32 %buflen, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end25_crit_edge, label %do.end23

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev24 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 32
  %45 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev24, align 32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.22) #9
  br label %if.end25

if.end25:                                         ; preds = %do.end23, %if.end.if.end25_crit_edge
  %shl = and i32 %buflen, -2
  ret i32 %shl
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pio_need_iordy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_timing_compute(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_dev_classify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_msleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_wait_ready(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_pause(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_interrupt(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_queuecmd(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_ioctl(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_slave_config(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_slave_destroy(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_unlock_native_capacity(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pata_s3c_suspend(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @ata_host_suspend(ptr noundef %1, [1 x i32] [i32 2]) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pata_s3c_resume(ptr nocapture noundef readonly %dev) #4 align 64 {
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
  tail call fastcc void @pata_s3c_hwinit(ptr noundef %3)
  tail call void @ata_host_resume(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !58, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_pata_samsung_cf__287_657_pata_s3c_driver_init6, !1, !"__initcall__kmod_pata_samsung_cf__287_657_pata_s3c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_samsung_cf.c", i32 657, i32 1}
!2 = !{ptr @__exitcall_pata_s3c_driver_exit, !1, !"__exitcall_pata_s3c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author288, !4, !"__UNIQUE_ID_author288", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_samsung_cf.c", i32 659, i32 1}
!5 = !{ptr @__UNIQUE_ID_description289, !6, !"__UNIQUE_ID_description289", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_samsung_cf.c", i32 660, i32 1}
!7 = !{ptr @__UNIQUE_ID_file290, !8, !"__UNIQUE_ID_file290", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_samsung_cf.c", i32 661, i32 1}
!9 = !{ptr @__UNIQUE_ID_license291, !8, !"__UNIQUE_ID_license291", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version292, !11, !"__UNIQUE_ID_version292", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_samsung_cf.c", i32 662, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_samsung_cf.c", i32 517, i32 39}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_samsung_cf.c", i32 519, i32 3}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pata_s3c_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @pata_s3c_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_samsung_cf.c", i32 530, i32 3}
!28 = !{ptr @pata_s3c_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @pata_s3c_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_samsung_cf.c", i32 553, i32 21}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/ata/pata_samsung_cf.c", i32 570, i32 20}
!34 = !{ptr @pata_s3c_port_ops, !35, !"pata_s3c_port_ops", i1 false, i1 false}
!35 = !{!"../drivers/ata/pata_samsung_cf.c", i32 422, i32 35}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/ata/pata_samsung_cf.c", i32 399, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @pata_s3c_softreset._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @pata_s3c_softreset._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @pata_s3c_softreset._entry.16, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @pata_s3c_softreset._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/libata.h", i32 2045, i32 3}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ata_wait_idle.__UNIQUE_ID_ddebug286, !45, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/ata/pata_samsung_cf.c", i32 289, i32 3}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @pata_s3c_data_xfer._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @pata_s3c_data_xfer._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @pata_s5p_port_ops, !55, !"pata_s5p_port_ops", i1 false, i1 false}
!55 = !{!"../drivers/ata/pata_samsung_cf.c", i32 436, i32 35}
!56 = !{ptr @pata_s3c_sht, !57, !"pata_s3c_sht", i1 false, i1 false}
!57 = !{!"../drivers/ata/pata_samsung_cf.c", i32 418, i32 34}
!58 = !{ptr @pata_s3c_driver, !59, !"pata_s3c_driver", i1 false, i1 false}
!59 = !{!"../drivers/ata/pata_samsung_cf.c", i32 646, i32 31}
!60 = !{ptr @pata_s3c_pm_ops, !61, !"pata_s3c_pm_ops", i1 false, i1 false}
!61 = !{!"../drivers/ata/pata_samsung_cf.c", i32 626, i32 32}
!62 = !{ptr @pata_s3c_driver_ids, !63, !"pata_s3c_driver_ids", i1 false, i1 false}
!63 = !{!"../drivers/ata/pata_samsung_cf.c", i32 633, i32 40}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2155440949}
!74 = !{i64 4768916}
!75 = !{i64 2155441890}
!76 = !{i64 4768498}
!77 = !{i64 2155439445}
!78 = !{i64 2155439707}
!79 = !{i64 2155454498}
!80 = !{i64 2155454748}
!81 = !{i64 2155456167}
!82 = !{i64 2155456605}
!83 = !{i64 2155457043}
!84 = !{i64 2155457481}
!85 = !{i64 2155457921, i64 2155458415, i64 2155457958, i64 2155458014, i64 2155458048, i64 2155458072, i64 2155458113, i64 2155458134, i64 2155458162, i64 2155458196}
!86 = !{i64 2155455481}
!87 = !{i64 2155455732}
!88 = !{i64 2155442456}
!89 = !{i64 2155442721}
!90 = !{i64 2155443171}
!91 = !{!"auto-init"}
!92 = !{i64 2155444194}
!93 = !{i64 2155444398}
!94 = !{i64 4768301}
!95 = !{i64 4768696}
!96 = !{i64 2155444642}
!97 = !{i64 2155444919}
!98 = !{i64 2148706991, i64 2148706996, i64 2148707009, i64 2148707053, i64 2148707087, i64 2148707108}
!99 = !{i64 4768078}
!100 = !{i64 2155445375}
!101 = !{i64 2155445942}
!102 = !{i64 2155446154}
!103 = !{i64 4767878}
