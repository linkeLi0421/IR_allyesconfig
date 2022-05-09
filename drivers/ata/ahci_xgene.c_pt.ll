; ModuleID = '/llk/IR_all_yes/drivers/ata/ahci_xgene.c_pt.bc'
source_filename = "../drivers/ata/ahci_xgene.c"
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ahci_host_priv = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [5 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.xgene_ahci_context = type { ptr, ptr, [2 x i8], [2 x i32], ptr, ptr, ptr, ptr }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.92, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.92 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.ahci_port_priv = type { ptr, ptr, i32, ptr, i32, ptr, i32, i8, %struct.spinlock, i32, i8, i8, i32, [8 x %struct.ahci_em_priv], ptr }
%struct.ahci_em_priv = type { i32, %struct.timer_list, i32, i32, i32, ptr }

@__initcall__kmod_ahci_xgene__326_879_xgene_ahci_driver_init6 = internal global ptr @xgene_ahci_driver_init, section ".initcall6.init", align 4
@xgene_ahci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xgene_ahci_probe, ptr @ata_platform_remove_one, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xgene_ahci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xgene_ahci_driver_exit = internal global ptr @xgene_ahci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description327 = internal constant [51 x i8] c"ahci_xgene.description=APM X-Gene AHCI SATA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author328 = internal constant [39 x i8] c"ahci_xgene.author=Loc Ho <lho@apm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file329 = internal constant [39 x i8] c"ahci_xgene.file=drivers/ata/ahci_xgene\00", section ".modinfo", align 1
@__UNIQUE_ID_license330 = internal constant [23 x i8] c"ahci_xgene.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version331 = internal constant [23 x i8] c"ahci_xgene.version=0.4\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ahci_xgene\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.4\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xgene-ahci\00", [21 x i8] zeroinitializer }, align 32
@xgene_ahci_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene-ahci-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@xgene_ahci_v1_port_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 917634, i32 0, i32 31, i32 0, i32 127, ptr @xgene_ahci_v1_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@xgene_ahci_v2_port_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 917634, i32 0, i32 31, i32 0, i32 127, ptr @xgene_ahci_v2_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@__const.xgene_ahci_probe.ppi = private unnamed_addr constant [2 x ptr] [ptr @xgene_ahci_v1_port_info, ptr @xgene_ahci_v2_port_info], align 4
@xgene_ahci_probe.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 -52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xgene_ahci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/ata/ahci_xgene.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"VAddr 0x%p Mmio VAddr 0x%p\0A\00", [36 x i8] zeroinitializer }, align 32
@xgene_ahci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 821, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SATA mux selection failed error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xgene_ahci_probe._entry_ptr = internal global ptr @xgene_ahci_probe._entry, section ".printk_index", align 4
@xgene_ahci_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 826, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"skip clock and PHY initialization\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xgene_ahci_probe._entry_ptr.13 = internal global ptr @xgene_ahci_probe._entry.10, section ".printk_index", align 4
@ahci_platform_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.3, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.3, ptr null, i32 32, i32 -1, i16 168, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr @ahci_shost_groups, ptr @ahci_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@xgene_ahci_probe.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @.str.14, i8 0, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"X-Gene SATA host controller initialized\0A\00", [55 x i8] zeroinitializer }, align 32
@xgene_ahci_v1_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr @xgene_ahci_qc_issue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgene_ahci_read_id, ptr null, ptr null, ptr null, ptr null, ptr @xgene_ahci_softreset, ptr @xgene_ahci_hardreset, ptr null, ptr null, ptr @xgene_ahci_pmp_softreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgene_ahci_host_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_ops }, [44 x i8] zeroinitializer }, align 32
@ahci_ops = external dso_local global %struct.ata_port_operations, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@xgene_ahci_do_hardreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 375, ptr @.str.17, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"link has error\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xgene_ahci_do_hardreset\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@xgene_ahci_do_hardreset._entry_ptr = internal global ptr @xgene_ahci_do_hardreset._entry, section ".printk_index", align 4
@sata_deb_timing_hotplug = external dso_local constant [0 x i32], align 4
@sata_deb_timing_normal = external dso_local constant [0 x i32], align 4
@xgene_ahci_v2_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgene_ahci_read_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgene_ahci_hardreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgene_ahci_host_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_ops }, [44 x i8] zeroinitializer }, align 32
@xgene_ahci_hw_init.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.5, ptr @.str.19, i8 0, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xgene_ahci_hw_init\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"top level interrupt mask 0x%X value 0x%08X\0A\00", [52 x i8] zeroinitializer }, align 32
@xgene_ahci_hw_init.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.5, ptr @.str.20, i8 0, i8 -83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"coherency 0x%X value 0x%08X\0A\00", [35 x i8] zeroinitializer }, align 32
@xgene_ahci_init_memram.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.5, ptr @.str.22, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xgene_ahci_init_memram\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Release memory from shutdown\0A\00", [34 x i8] zeroinitializer }, align 32
@xgene_ahci_init_memram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.5, i32 98, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to release memory from shutdown\0A\00", [56 x i8] zeroinitializer }, align 32
@xgene_ahci_init_memram._entry_ptr = internal global ptr @xgene_ahci_init_memram._entry, section ".printk_index", align 4
@xgene_ahci_set_phy_cfg.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.5, ptr @.str.25, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xgene_ahci_set_phy_cfg\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"port configure mmio 0x%p channel %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ahci_shost_groups = external dso_local global [0 x ptr], align 4
@ahci_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 8, i64 160, i64 176, i64 236]
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"xgene_ahci_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 869, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 884, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 873, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"xgene_ahci_of_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 726, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [24 x i8] c"xgene_ahci_v1_port_info\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 626, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant [24 x i8] c"xgene_ahci_v2_port_info\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 640, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 816, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 821, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 826, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"ahci_platform_sht\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 713, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 861, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [18 x i8] c"xgene_ahci_v1_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 616, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 375, i32 5 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"xgene_ahci_v2_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 633, i32 35 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 667, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 692, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 93, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 98, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [28 x i8] c"../drivers/ata/ahci_xgene.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 272, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author328, ptr @__UNIQUE_ID_description327, ptr @__UNIQUE_ID_file329, ptr @__UNIQUE_ID_license330, ptr @__UNIQUE_ID_version331, ptr @__exitcall_xgene_ahci_driver_exit, ptr @__initcall__kmod_ahci_xgene__326_879_xgene_ahci_driver_init6, ptr @__modver_attr, ptr @xgene_ahci_do_hardreset._entry, ptr @xgene_ahci_do_hardreset._entry_ptr, ptr @xgene_ahci_driver_exit, ptr @xgene_ahci_init_memram._entry, ptr @xgene_ahci_init_memram._entry_ptr, ptr @xgene_ahci_probe._entry, ptr @xgene_ahci_probe._entry.10, ptr @xgene_ahci_probe._entry_ptr, ptr @xgene_ahci_probe._entry_ptr.13, ptr @xgene_ahci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @xgene_ahci_of_match, ptr @xgene_ahci_v1_port_info, ptr @xgene_ahci_v2_port_info, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @ahci_platform_sht, ptr @.str.14, ptr @xgene_ahci_v1_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @xgene_ahci_v2_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_ahci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_ahci_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_ahci_v1_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_ahci_v2_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_ahci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_ahci_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_platform_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_ahci_v1_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_ahci_do_hardreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_ahci_v2_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_ahci_init_memram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_ahci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xgene_ahci_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xgene_ahci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @xgene_ahci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_ahci_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @ahci_platform_get_resources(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup101

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 36, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup101_crit_edge, label %if.end6

if.end.cleanup101_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup101

if.end6:                                          ; preds = %if.end
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %call, i32 0, i32 23
  %1 = ptrtoint ptr %plat_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %plat_data, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %call.i, align 4
  %dev8 = getelementptr inbounds %struct.xgene_ahci_context, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev8, align 4
  %call9 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #6
  %call10 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call9) #6
  %csr_core = getelementptr inbounds %struct.xgene_ahci_context, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %csr_core to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %csr_core, align 4
  %cmp.i170 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call10 to i32
  br label %cleanup101

if.end16:                                         ; preds = %if.end6
  %call17 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 2) #6
  %call18 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call17) #6
  %csr_diag = getelementptr inbounds %struct.xgene_ahci_context, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %csr_diag to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call18, ptr %csr_diag, align 4
  %cmp.i171 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call18 to i32
  br label %cleanup101

if.end24:                                         ; preds = %if.end16
  %call25 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 3) #6
  %call26 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call25) #6
  %csr_axi = getelementptr inbounds %struct.xgene_ahci_context, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %csr_axi to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call26, ptr %csr_axi, align 4
  %cmp.i172 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call26 to i32
  br label %cleanup101

if.end32:                                         ; preds = %if.end24
  %call33 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 4) #6
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.end32.if.end41_crit_edge, label %if.then35

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then35:                                        ; preds = %if.end32
  %call36 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call33) #6
  %cmp.i173 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call36 to i32
  br label %cleanup101

cleanup:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %csr_mux = getelementptr inbounds %struct.xgene_ahci_context, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %csr_mux to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call36, ptr %csr_mux, align 4
  br label %if.end41

if.end41:                                         ; preds = %cleanup, %if.end32.if.end41_crit_edge
  %call42 = tail call ptr @of_match_device(ptr noundef nonnull @xgene_ahci_of_match, ptr noundef %dev1) #6
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end41.do.body_crit_edge, label %if.then44

if.end41.do.body_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.of_device_id, ptr %call42, i32 0, i32 3
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %tobool45.not = icmp eq ptr %13, null
  %14 = ptrtoint ptr %13 to i32
  %spec.select = select i1 %tobool45.not, i32 1, i32 %14
  br label %do.body

do.body:                                          ; preds = %if.then44, %if.end41.do.body_crit_edge
  %version.0 = phi i32 [ 1, %if.end41.do.body_crit_edge ], [ %spec.select, %if.then44 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_ahci_probe.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_ahci_probe, %if.then54)) #6
          to label %do.end [label %if.then54], !srcloc !85

if.then54:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %csr_core to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr_core, align 4
  %mmio = getelementptr inbounds %struct.ahci_host_priv, ptr %call, i32 0, i32 3
  %17 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_ahci_probe.__UNIQUE_ID_ddebug324, ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef %16, ptr noundef %18) #6
  br label %do.end

do.end:                                           ; preds = %if.then54, %do.body
  %csr_mux.i = getelementptr inbounds %struct.xgene_ahci_context, ptr %call.i, i32 0, i32 7
  %19 = ptrtoint ptr %csr_mux.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %csr_mux.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %do.end.if.end63_crit_edge, label %xgene_ahci_mux_select.exit

do.end.if.end63_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

xgene_ahci_mux_select.exit:                       ; preds = %do.end
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %20) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %22 = and i32 %21, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %csr_mux.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %csr_mux.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #6, !srcloc !89
  %25 = ptrtoint ptr %csr_mux.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %csr_mux.i, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %28 = shl i32 %27, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %tobool58.not = icmp sgt i32 %28, -1
  br i1 %tobool58.not, label %xgene_ahci_mux_select.exit.if.end63_crit_edge, label %do.end62

xgene_ahci_mux_select.exit.if.end63_crit_edge:    ; preds = %xgene_ahci_mux_select.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

do.end62:                                         ; preds = %xgene_ahci_mux_select.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sext.i = ashr i32 %28, 31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %sext.i) #9
  br label %cleanup101

if.end63:                                         ; preds = %xgene_ahci_mux_select.exit.if.end63_crit_edge, %do.end.if.end63_crit_edge
  %29 = ptrtoint ptr %csr_diag to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %csr_diag, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 112
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i175 = icmp eq i32 %31, 0
  br i1 %cmp.i175, label %xgene_ahci_is_memram_inited.exit, label %if.end63.if.end69_crit_edge

if.end63.if.end69_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

xgene_ahci_is_memram_inited.exit:                 ; preds = %if.end63
  %add.ptr4.i = getelementptr i8, ptr %30, i32 116
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp8.i = icmp eq i32 %32, -1
  br i1 %cmp8.i, label %do.end68, label %xgene_ahci_is_memram_inited.exit.if.end69_crit_edge

xgene_ahci_is_memram_inited.exit.if.end69_crit_edge: ; preds = %xgene_ahci_is_memram_inited.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

do.end68:                                         ; preds = %xgene_ahci_is_memram_inited.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %skip_clk_phy

if.end69:                                         ; preds = %xgene_ahci_is_memram_inited.exit.if.end69_crit_edge, %if.end63.if.end69_crit_edge
  %call70 = tail call i32 @ahci_platform_enable_clks(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end69.disable_resources_crit_edge

if.end69.disable_resources_crit_edge:             ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_resources

if.end73:                                         ; preds = %if.end69
  tail call void @ahci_platform_disable_clks(ptr noundef %call) #6
  %call74 = tail call i32 @ahci_platform_enable_resources(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end73.disable_resources_crit_edge

if.end73.disable_resources_crit_edge:             ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_resources

if.end77:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @xgene_ahci_hw_init(ptr noundef %call)
  br label %skip_clk_phy

skip_clk_phy:                                     ; preds = %if.end77, %do.end68
  %33 = zext i32 %version.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %version.0, label %skip_clk_phy.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb79
  ]

skip_clk_phy.sw.epilog_crit_edge:                 ; preds = %skip_clk_phy
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %skip_clk_phy
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %call, align 4
  br label %sw.epilog

sw.bb79:                                          ; preds = %skip_clk_phy
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call, align 4
  %or = or i32 %36, 16384
  store i32 %or, ptr %call, align 4
  %irq_handler = getelementptr inbounds %struct.ahci_host_priv, ptr %call, i32 0, i32 27
  %37 = ptrtoint ptr %irq_handler to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @xgene_ahci_irq_intr, ptr %irq_handler, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb79, %sw.bb, %skip_clk_phy.sw.epilog_crit_edge
  %sub = add i32 %version.0, -1
  %arrayidx = getelementptr [2 x ptr], ptr @__const.xgene_ahci_probe.ppi, i32 0, i32 %sub
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %call81 = tail call i32 @ahci_platform_init_host(ptr noundef %pdev, ptr noundef %call, ptr noundef %39, ptr noundef nonnull @ahci_platform_sht) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %do.body85, label %sw.epilog.disable_resources_crit_edge

sw.epilog.disable_resources_crit_edge:            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_resources

do.body85:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_ahci_probe.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_ahci_probe, %if.then97)) #6
          to label %cleanup101 [label %if.then97], !srcloc !85

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_ahci_probe.__UNIQUE_ID_ddebug325, ptr noundef %dev1, ptr noundef nonnull @.str.14) #6
  br label %cleanup101

disable_resources:                                ; preds = %sw.epilog.disable_resources_crit_edge, %if.end73.disable_resources_crit_edge, %if.end69.disable_resources_crit_edge
  %rc.0 = phi i32 [ %call81, %sw.epilog.disable_resources_crit_edge ], [ %call70, %if.end69.disable_resources_crit_edge ], [ %call74, %if.end73.disable_resources_crit_edge ]
  tail call void @ahci_platform_disable_resources(ptr noundef %call) #6
  br label %cleanup101

cleanup101:                                       ; preds = %disable_resources, %if.then97, %do.body85, %do.end62, %cleanup.thread, %if.then29, %if.then21, %if.then13, %if.end.cleanup101_crit_edge, %if.then
  %retval.1 = phi i32 [ %0, %if.then ], [ %5, %if.then13 ], [ %7, %if.then21 ], [ %9, %if.then29 ], [ -19, %do.end62 ], [ %rc.0, %disable_resources ], [ -12, %if.end.cleanup101_crit_edge ], [ 0, %if.then97 ], [ %10, %cleanup.thread ], [ 0, %do.body85 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_platform_remove_one(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahci_platform_get_resources(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_enable_clks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_platform_disable_clks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_enable_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_ahci_hw_init(ptr nocapture noundef readonly %hpriv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 23
  %0 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_data, align 4
  %call = tail call fastcc i32 @xgene_ahci_init_memram(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  tail call fastcc void @xgene_ahci_set_phy_cfg(ptr noundef %1, i32 noundef 0)
  tail call fastcc void @xgene_ahci_set_phy_cfg(ptr noundef %1, i32 noundef 1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %mmio = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 3
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #6, !srcloc !89
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %csr_core = getelementptr inbounds %struct.xgene_ahci_context, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %csr_core to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr_core, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #6, !srcloc !89
  %9 = ptrtoint ptr %csr_core to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %csr_core, align 4
  %add.ptr12 = getelementptr i8, ptr %10, i32 44
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_ahci_hw_init.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_ahci_hw_init, %if.then22)) #6
          to label %do.body26 [label %if.then22], !srcloc !85

if.then22:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %dev = getelementptr inbounds %struct.xgene_ahci_context, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_ahci_hw_init.__UNIQUE_ID_ddebug322, ptr noundef %14, ptr noundef nonnull @.str.19, i32 noundef 44, i32 noundef %12) #6
  br label %do.body26

do.body26:                                        ; preds = %if.then22, %for.body.preheader
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %csr_core to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csr_core, align 4
  %add.ptr30 = getelementptr i8, ptr %16, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 0) #6, !srcloc !89
  %17 = ptrtoint ptr %csr_core to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %csr_core, align 4
  %add.ptr34 = getelementptr i8, ptr %18, i32 52
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %csr_axi = getelementptr inbounds %struct.xgene_ahci_context, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %csr_axi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csr_axi, align 4
  %add.ptr41 = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 0) #6, !srcloc !89
  %22 = ptrtoint ptr %csr_axi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %csr_axi, align 4
  %add.ptr45 = getelementptr i8, ptr %23, i32 16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %csr_core to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %csr_core, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 -1) #6, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %csr_core to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %csr_core, align 4
  %add.ptr58 = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 -1) #6, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %csr_core to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %csr_core, align 4
  %add.ptr63 = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 -1) #6, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %csr_core to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %csr_core, align 4
  %add.ptr68 = getelementptr i8, ptr %32, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 -1) #6, !srcloc !89
  %33 = ptrtoint ptr %csr_core to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %csr_core, align 4
  %add.ptr72 = getelementptr i8, ptr %34, i32 20
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  %36 = and i32 %35, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %csr_core to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %csr_core, align 4
  %add.ptr81 = getelementptr i8, ptr %38, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %36) #6, !srcloc !89
  %39 = ptrtoint ptr %csr_core to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %csr_core, align 4
  %add.ptr85 = getelementptr i8, ptr %40, i32 24
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  %42 = or i32 %41, 134348800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %csr_core to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %csr_core, align 4
  %add.ptr94 = getelementptr i8, ptr %44, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %42) #6, !srcloc !89
  %45 = ptrtoint ptr %csr_core to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %csr_core, align 4
  %add.ptr98 = getelementptr i8, ptr %46, i32 24
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_ahci_hw_init.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_ahci_hw_init, %if.then114)) #6
          to label %cleanup [label %if.then114], !srcloc !85

if.then114:                                       ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %dev115 = getelementptr inbounds %struct.xgene_ahci_context, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %dev115 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev115, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_ahci_hw_init.__UNIQUE_ID_ddebug323, ptr noundef %50, ptr noundef nonnull @.str.20, i32 noundef 24, i32 noundef %48) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then114, %do.body26, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_ahci_irq_intr(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mmio1 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %port_map = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %port_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_map, align 4
  %and = and i32 %7, %5
  tail call void @_raw_spin_lock(ptr noundef %dev_instance) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !89
  %8 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data, align 4
  %mmio.i = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.end.xgene_ahci_handle_broken_edge_irq.exit_crit_edge

if.end.xgene_ahci_handle_broken_edge_irq.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %xgene_ahci_handle_broken_edge_irq.exit

for.cond.preheader.i:                             ; preds = %if.end
  %n_ports.i = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 3
  %13 = ptrtoint ptr %n_ports.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp26.not.i = icmp eq i32 %14, 0
  br i1 %cmp26.not.i, label %for.cond.preheader.i.xgene_ahci_handle_broken_edge_irq.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.xgene_ahci_handle_broken_edge_irq.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xgene_ahci_handle_broken_edge_irq.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %irq_masked.addr.029.i = phi i32 [ %irq_masked.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %and, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.027.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.027.i
  %and.i = and i32 %shl.i, %irq_masked.addr.029.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.ata_host, ptr %dev_instance, i32 0, i32 12, i32 %i.027.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 31
  %17 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host.i.i, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 7
  %19 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_no.i.i, align 4
  %private_data.i.i.i = getelementptr inbounds %struct.ata_host, ptr %18, i32 0, i32 5
  %21 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private_data.i.i.i, align 4
  %mmio1.i.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %mmio1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio1.i.i.i, align 4
  %mul.i.i.i = shl i32 %20, 7
  %add.ptr2.i.i.i = getelementptr i8, ptr %24, i32 272
  %add.ptr7.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 %mul.i.i.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool11.not.i = icmp eq i32 %25, 0
  %or.i = select i1 %tobool11.not.i, i32 0, i32 %shl.i
  %spec.select.i = or i32 %or.i, %irq_masked.addr.029.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %irq_masked.addr.1.i = phi i32 [ %irq_masked.addr.029.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.end.i ]
  %inc.i = add nuw i32 %i.027.i, 1
  %26 = ptrtoint ptr %n_ports.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_ports.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %27
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.xgene_ahci_handle_broken_edge_irq.exit_crit_edge

for.inc.i.xgene_ahci_handle_broken_edge_irq.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xgene_ahci_handle_broken_edge_irq.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

xgene_ahci_handle_broken_edge_irq.exit:           ; preds = %for.inc.i.xgene_ahci_handle_broken_edge_irq.exit_crit_edge, %for.cond.preheader.i.xgene_ahci_handle_broken_edge_irq.exit_crit_edge, %if.end.xgene_ahci_handle_broken_edge_irq.exit_crit_edge
  %irq_masked.addr.2.i = phi i32 [ %and, %if.end.xgene_ahci_handle_broken_edge_irq.exit_crit_edge ], [ %and, %for.cond.preheader.i.xgene_ahci_handle_broken_edge_irq.exit_crit_edge ], [ %irq_masked.addr.1.i, %for.inc.i.xgene_ahci_handle_broken_edge_irq.exit_crit_edge ]
  %call16.i = tail call i32 @ahci_handle_port_intr(ptr noundef %dev_instance, i32 noundef %irq_masked.addr.2.i) #6
  tail call void @_raw_spin_unlock(ptr noundef %dev_instance) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool6.not = icmp ne i32 %call16.i, 0
  %cond = zext i1 %tobool6.not to i32
  br label %cleanup

cleanup:                                          ; preds = %xgene_ahci_handle_broken_edge_irq.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %xgene_ahci_handle_broken_edge_irq.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_init_host(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_platform_disable_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_ahci_qc_issue(ptr noundef %qc) #2 align 64 {
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
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plat_data, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i, align 4
  %arrayidx = getelementptr %struct.xgene_ahci_context, ptr %7, i32 0, i32 3, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %cmp = icmp eq i32 %11, 5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 256
  %mul.i.i = shl i32 %9, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 64
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  %15 = and i32 %14, -983041
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 128
  %pmp = getelementptr inbounds %struct.ata_link, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pmp, align 4
  %shl = shl i32 %22, 8
  %or = or i32 %shl, %16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %23) #6, !srcloc !89
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %24 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port_no.i, align 4
  %arrayidx6 = getelementptr %struct.xgene_ahci_context, ptr %7, i32 0, i32 2, i32 %25
  %26 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx6, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %27, label %if.end.if.end24_crit_edge [
    i8 -20, label %if.end.if.then22_crit_edge
    i8 -96, label %if.end.if.then22_crit_edge47
    i8 -80, label %if.end.if.then22_crit_edge48
  ], !prof !116

if.end.if.then22_crit_edge48:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

if.end.if.then22_crit_edge47:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

if.end.if.then22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then22:                                        ; preds = %if.end.if.then22_crit_edge, %if.end.if.then22_crit_edge47, %if.end.if.then22_crit_edge48
  %29 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %host, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private_data.i, align 4
  %private_data1.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %33 = ptrtoint ptr %private_data1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %private_data1.i, align 4
  %mmio1.i.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %32, i32 0, i32 3
  %35 = ptrtoint ptr %mmio1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio1.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 256
  %mul.i.i.i = shl i32 %25, 7
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 56
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !86
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.not1.i.i = icmp eq i32 %37, 0
  br i1 %cmp.not1.i.i, label %if.then22.xgene_ahci_poll_reg_val.exit.i_crit_edge, label %land.rhs.lr.ph.i.i

if.then22.xgene_ahci_poll_reg_val.exit.i_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %xgene_ahci_poll_reg_val.exit.i

land.rhs.lr.ph.i.i:                               ; preds = %if.then22
  %add.i.neg.i.i = sub i32 -10, %39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %sub.i1.i = add i32 %40, %add.i.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i1.i)
  %cmp2.i2.i = icmp slt i32 %sub.i1.i, 0
  br i1 %cmp2.i2.i, label %land.rhs.lr.ph.i.i.while.body.i.i_crit_edge, label %land.rhs.lr.ph.i.i.xgene_ahci_poll_reg_val.exit.i_crit_edge

land.rhs.lr.ph.i.i.xgene_ahci_poll_reg_val.exit.i_crit_edge: ; preds = %land.rhs.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xgene_ahci_poll_reg_val.exit.i

land.rhs.lr.ph.i.i.while.body.i.i_crit_edge:      ; preds = %land.rhs.lr.ph.i.i
  br label %while.body.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %41 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %41, %add.i.neg.i.i
  %cmp2.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp2.i.i, label %land.rhs.i.i.while.body.i.i_crit_edge, label %land.rhs.i.i.xgene_ahci_poll_reg_val.exit.loopexit.i_crit_edge

land.rhs.i.i.xgene_ahci_poll_reg_val.exit.loopexit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xgene_ahci_poll_reg_val.exit.loopexit.i

land.rhs.i.i.while.body.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %land.rhs.i.i.while.body.i.i_crit_edge, %land.rhs.lr.ph.i.i.while.body.i.i_crit_edge
  tail call void @ata_msleep(ptr noundef %1, i32 noundef 1) #6
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.not.i.i = icmp eq i32 %42, 0
  br i1 %cmp.not.i.i, label %while.body.i.i.xgene_ahci_poll_reg_val.exit.loopexit.i_crit_edge, label %land.rhs.i.i

while.body.i.i.xgene_ahci_poll_reg_val.exit.loopexit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xgene_ahci_poll_reg_val.exit.loopexit.i

xgene_ahci_poll_reg_val.exit.loopexit.i:          ; preds = %while.body.i.i.xgene_ahci_poll_reg_val.exit.loopexit.i_crit_edge, %land.rhs.i.i.xgene_ahci_poll_reg_val.exit.loopexit.i_crit_edge
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  br label %xgene_ahci_poll_reg_val.exit.i

xgene_ahci_poll_reg_val.exit.i:                   ; preds = %xgene_ahci_poll_reg_val.exit.loopexit.i, %land.rhs.lr.ph.i.i.xgene_ahci_poll_reg_val.exit.i_crit_edge, %if.then22.xgene_ahci_poll_reg_val.exit.i_crit_edge
  %tmp.0.lcssa.i.i = phi i32 [ %38, %if.then22.xgene_ahci_poll_reg_val.exit.i_crit_edge ], [ %38, %land.rhs.lr.ph.i.i.xgene_ahci_poll_reg_val.exit.i_crit_edge ], [ %43, %xgene_ahci_poll_reg_val.exit.loopexit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp.0.lcssa.i.i)
  %tobool.not.i = icmp eq i32 %tmp.0.lcssa.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %xgene_ahci_poll_reg_val.exit.i.if.end24_crit_edge

xgene_ahci_poll_reg_val.exit.i.if.end24_crit_edge: ; preds = %xgene_ahci_poll_reg_val.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end.i:                                         ; preds = %xgene_ahci_poll_reg_val.exit.i
  %stop_engine.i = getelementptr inbounds %struct.ahci_host_priv, ptr %32, i32 0, i32 26
  %44 = ptrtoint ptr %stop_engine.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %stop_engine.i, align 4
  %call3.i = tail call i32 %45(ptr noundef %1) #6
  tail call void @ahci_start_fis_rx(ptr noundef %1) #6
  %fbs_supported.i = getelementptr inbounds %struct.ahci_port_priv, ptr %34, i32 0, i32 10
  %46 = ptrtoint ptr %fbs_supported.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %fbs_supported.i, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool4.not.i = icmp eq i8 %47, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end16.i_crit_edge, label %if.then5.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr6.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 64
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %49 = or i32 %48, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %49) #6, !srcloc !89
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then5.i, %if.end.i.if.end16.i_crit_edge
  %start_engine.i = getelementptr inbounds %struct.ahci_host_priv, ptr %32, i32 0, i32 25
  %51 = ptrtoint ptr %start_engine.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %start_engine.i, align 4
  tail call void %52(ptr noundef %1) #6
  br label %if.end24

if.end24:                                         ; preds = %if.end16.i, %xgene_ahci_poll_reg_val.exit.i.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %call25 = tail call i32 @ahci_qc_issue(ptr noundef %qc) #6
  %command = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 14
  %53 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %command, align 1
  %55 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port_no.i, align 4
  %arrayidx28 = getelementptr %struct.xgene_ahci_context, ptr %7, i32 0, i32 2, i32 %56
  %57 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %54, ptr %arrayidx28, align 1
  ret i32 %call25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_ahci_read_id(ptr noundef %dev, ptr noundef %tf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ata_do_dev_read_id(ptr noundef %dev, ptr noundef %tf, ptr noundef %id) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr i16, ptr %id, i32 78
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %2 = and i16 %1, -2
  store i16 %2, ptr %arrayidx, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_ahci_softreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %flags.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %link1.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25
  %cmp.i.i = icmp eq ptr %link1.i.i, %link
  br i1 %cmp.i.i, label %land.lhs.true.i.sata_srst_pmp.exit_crit_edge, label %ata_is_host_link.exit.i

land.lhs.true.i.sata_srst_pmp.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sata_srst_pmp.exit

ata_is_host_link.exit.i:                          ; preds = %land.lhs.true.i
  %slave_link.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %slave_link.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave_link.i.i, align 128
  %cmp3.i.i = icmp eq ptr %5, %link
  br i1 %cmp3.i.i, label %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge, label %ata_is_host_link.exit.i.if.end.i_crit_edge

ata_is_host_link.exit.i.if.end.i_crit_edge:       ; preds = %ata_is_host_link.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge: ; preds = %ata_is_host_link.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sata_srst_pmp.exit

if.end.i:                                         ; preds = %ata_is_host_link.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %6 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pmp.i, align 4
  br label %sata_srst_pmp.exit

sata_srst_pmp.exit:                               ; preds = %if.end.i, %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge, %land.lhs.true.i.sata_srst_pmp.exit_crit_edge
  %retval.0.i = phi i32 [ %7, %if.end.i ], [ 15, %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge ], [ 15, %land.lhs.true.i.sata_srst_pmp.exit_crit_edge ]
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 4
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %plat_data, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_no.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 256
  %mul.i.i = shl i32 %15, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 64
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  %20 = and i32 %19, -983041
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %shl = shl i32 %retval.0.i, 8
  %or = or i32 %21, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %22) #6, !srcloc !89
  %call1232 = tail call i32 @ahci_do_softreset(ptr noundef %link, ptr noundef %class, i32 noundef %retval.0.i, i32 noundef %deadline, ptr noundef nonnull @ahci_check_ready) #6
  %23 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %class, align 4
  %25 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port_no.i, align 4
  %arrayidx33 = getelementptr %struct.xgene_ahci_context, ptr %13, i32 0, i32 3, i32 %26
  %27 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %arrayidx33, align 4
  %28 = load i32, ptr %class, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %28)
  %cmp.not34 = icmp eq i32 %28, 5
  br i1 %cmp.not34, label %sata_srst_pmp.exit.if.end19_crit_edge, label %do.body15.preheader

sata_srst_pmp.exit.if.end19_crit_edge:            ; preds = %sata_srst_pmp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

do.body15.preheader:                              ; preds = %sata_srst_pmp.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #6, !srcloc !89
  %call12 = tail call i32 @ahci_do_softreset(ptr noundef %link, ptr noundef %class, i32 noundef %retval.0.i, i32 noundef %deadline, ptr noundef nonnull @ahci_check_ready) #6
  %29 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %class, align 4
  %31 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port_no.i, align 4
  %arrayidx = getelementptr %struct.xgene_ahci_context, ptr %13, i32 0, i32 3, i32 %32
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %arrayidx, align 4
  br label %if.end19

if.end19:                                         ; preds = %do.body15.preheader, %sata_srst_pmp.exit.if.end19_crit_edge
  %call12.lcssa = phi i32 [ %call1232, %sata_srst_pmp.exit.if.end19_crit_edge ], [ %call12, %do.body15.preheader ]
  ret i32 %call12.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_ahci_hardreset(ptr noundef %link, ptr nocapture noundef writeonly %class, i32 noundef %deadline) #2 align 64 {
entry:
  %tf.i = alloca %struct.ata_taskfile, align 4
  %sstatus.i = alloca i32, align 4
  %online = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 256
  %mul.i.i = shl i32 %7, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %online) #6
  %10 = ptrtoint ptr %online to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %online, align 1, !annotation !126
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 24
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %add.ptr12 = getelementptr i8, ptr %add.ptr2.i.i, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  %add.ptr18 = getelementptr i8, ptr %add.ptr2.i.i, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  %add.ptr24 = getelementptr i8, ptr %add.ptr2.i.i, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  %stop_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 26
  %16 = ptrtoint ptr %stop_engine to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stop_engine, align 4
  %call28 = tail call i32 %17(ptr noundef %1) #6
  %flags.i.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 12, i32 0, i32 5
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %sata_deb_timing_normal.sata_deb_timing_hotplug.i.i = select i1 %tobool.not.i.i, ptr @sata_deb_timing_normal, ptr @sata_deb_timing_hotplug
  %20 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %link, align 128
  %host.i63 = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 31
  %22 = ptrtoint ptr %host.i63 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host.i63, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private_data.i, align 4
  %plat_data.i = getelementptr inbounds %struct.ahci_host_priv, ptr %25, i32 0, i32 23
  %26 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %plat_data.i, align 4
  %private_data2.i = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 48
  %28 = ptrtoint ptr %private_data2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private_data2.i, align 4
  %rx_fis.i = getelementptr inbounds %struct.ahci_port_priv, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %rx_fis.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_fis.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 64
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 7
  %32 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port_no.i.i, align 4
  %mmio1.i.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %25, i32 0, i32 3
  %34 = ptrtoint ptr %mmio1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio1.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %35, i32 256
  %mul.i.i.i = shl i32 %33, 7
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sstatus.i) #6
  %36 = ptrtoint ptr %sstatus.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %sstatus.i, align 4, !annotation !126
  %device.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14
  %ctl1.i.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 2
  %devno.i.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14, i32 0, i32 1
  %37 = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 13
  %command.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf.i, i32 0, i32 14
  %38 = call ptr @memset(ptr %tf.i, i32 0, i32 24)
  %39 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device.i, align 128
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 128
  %ctl.i.i = getelementptr inbounds %struct.ata_port, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ctl.i.i, align 4
  %45 = ptrtoint ptr %ctl1.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %ctl1.i.i, align 1
  %46 = ptrtoint ptr %devno.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %devno.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i.i = icmp eq i32 %47, 0
  %spec.select.i.i = select i1 %cmp.i.i, i8 -96, i8 -80
  %48 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %spec.select.i.i, ptr %37, align 4
  %49 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -128, ptr %command.i, align 1
  call void @ata_tf_to_fis(ptr noundef nonnull %tf.i, i8 noundef zeroext 0, i32 noundef 0, ptr noundef %add.ptr.i) #6
  %call4.i = call i32 @sata_link_hardreset(ptr noundef %link, ptr noundef nonnull %sata_deb_timing_normal.sata_deb_timing_hotplug.i.i, i32 noundef %deadline, ptr noundef nonnull %online, ptr noundef nonnull @ahci_check_ready) #6
  %50 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %online, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i = icmp eq i8 %51, 0
  br i1 %tobool.not.i, label %if.end11.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %do.body.3.i.if.then.i_crit_edge, %do.body.2.i.if.then.i_crit_edge, %do.body.1.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call4.lcssa.i = phi i32 [ %call4.i, %entry.if.then.i_crit_edge ], [ %call4.1.i, %do.body.1.i.if.then.i_crit_edge ], [ %call4.2.i, %do.body.2.i.if.then.i_crit_edge ], [ %call4.3.i, %do.body.3.i.if.then.i_crit_edge ]
  %add.ptr5.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 48
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #6, !srcloc !86
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  %53 = and i32 %52, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool8.not.i = icmp eq i32 %53, 0
  br i1 %tobool8.not.i, label %if.then.i.xgene_ahci_do_hardreset.exit_crit_edge, label %do.end.i

if.then.i.xgene_ahci_do_hardreset.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xgene_ahci_do_hardreset.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.xgene_ahci_context, ptr %27, i32 0, i32 1
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef nonnull @.str.15) #9
  br label %xgene_ahci_do_hardreset.exit

if.end11.i:                                       ; preds = %entry
  %call12.i = call i32 @sata_scr_read(ptr noundef %link, i32 noundef 0, ptr noundef nonnull %sstatus.i) #6
  %56 = ptrtoint ptr %sstatus.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sstatus.i, align 4
  %and14.i = and i32 %57, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and14.i)
  %cmp15.i = icmp eq i32 %and14.i, 1
  br i1 %cmp15.i, label %do.body.1.i, label %if.end11.i.xgene_ahci_do_hardreset.exit_crit_edge

if.end11.i.xgene_ahci_do_hardreset.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xgene_ahci_do_hardreset.exit

do.body.1.i:                                      ; preds = %if.end11.i
  %58 = call ptr @memset(ptr %tf.i, i32 0, i32 24)
  %59 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %device.i, align 128
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 128
  %ctl.i.1.i = getelementptr inbounds %struct.ata_port, ptr %62, i32 0, i32 9
  %63 = ptrtoint ptr %ctl.i.1.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ctl.i.1.i, align 4
  %65 = ptrtoint ptr %ctl1.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %ctl1.i.i, align 1
  %66 = ptrtoint ptr %devno.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %devno.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i.1.i = icmp eq i32 %67, 0
  %spec.select.i.1.i = select i1 %cmp.i.1.i, i8 -96, i8 -80
  %68 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %spec.select.i.1.i, ptr %37, align 4
  %69 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -128, ptr %command.i, align 1
  call void @ata_tf_to_fis(ptr noundef nonnull %tf.i, i8 noundef zeroext 0, i32 noundef 0, ptr noundef %add.ptr.i) #6
  %call4.1.i = call i32 @sata_link_hardreset(ptr noundef %link, ptr noundef nonnull %sata_deb_timing_normal.sata_deb_timing_hotplug.i.i, i32 noundef %deadline, ptr noundef nonnull %online, ptr noundef nonnull @ahci_check_ready) #6
  %70 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %online, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.1.i = icmp eq i8 %71, 0
  br i1 %tobool.not.1.i, label %if.end11.1.i, label %do.body.1.i.if.then.i_crit_edge

do.body.1.i.if.then.i_crit_edge:                  ; preds = %do.body.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end11.1.i:                                     ; preds = %do.body.1.i
  %call12.1.i = call i32 @sata_scr_read(ptr noundef %link, i32 noundef 0, ptr noundef nonnull %sstatus.i) #6
  %72 = ptrtoint ptr %sstatus.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sstatus.i, align 4
  %and14.1.i = and i32 %73, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and14.1.i)
  %cmp15.1.i = icmp eq i32 %and14.1.i, 1
  br i1 %cmp15.1.i, label %do.body.2.i, label %if.end11.1.i.xgene_ahci_do_hardreset.exit_crit_edge

if.end11.1.i.xgene_ahci_do_hardreset.exit_crit_edge: ; preds = %if.end11.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xgene_ahci_do_hardreset.exit

do.body.2.i:                                      ; preds = %if.end11.1.i
  %74 = call ptr @memset(ptr %tf.i, i32 0, i32 24)
  %75 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %device.i, align 128
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 128
  %ctl.i.2.i = getelementptr inbounds %struct.ata_port, ptr %78, i32 0, i32 9
  %79 = ptrtoint ptr %ctl.i.2.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ctl.i.2.i, align 4
  %81 = ptrtoint ptr %ctl1.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %ctl1.i.i, align 1
  %82 = ptrtoint ptr %devno.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %devno.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.i.2.i = icmp eq i32 %83, 0
  %spec.select.i.2.i = select i1 %cmp.i.2.i, i8 -96, i8 -80
  %84 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %spec.select.i.2.i, ptr %37, align 4
  %85 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -128, ptr %command.i, align 1
  call void @ata_tf_to_fis(ptr noundef nonnull %tf.i, i8 noundef zeroext 0, i32 noundef 0, ptr noundef %add.ptr.i) #6
  %call4.2.i = call i32 @sata_link_hardreset(ptr noundef %link, ptr noundef nonnull %sata_deb_timing_normal.sata_deb_timing_hotplug.i.i, i32 noundef %deadline, ptr noundef nonnull %online, ptr noundef nonnull @ahci_check_ready) #6
  %86 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %online, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.2.i = icmp eq i8 %87, 0
  br i1 %tobool.not.2.i, label %if.end11.2.i, label %do.body.2.i.if.then.i_crit_edge

do.body.2.i.if.then.i_crit_edge:                  ; preds = %do.body.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end11.2.i:                                     ; preds = %do.body.2.i
  %call12.2.i = call i32 @sata_scr_read(ptr noundef %link, i32 noundef 0, ptr noundef nonnull %sstatus.i) #6
  %88 = ptrtoint ptr %sstatus.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %sstatus.i, align 4
  %and14.2.i = and i32 %89, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and14.2.i)
  %cmp15.2.i = icmp eq i32 %and14.2.i, 1
  br i1 %cmp15.2.i, label %do.body.3.i, label %if.end11.2.i.xgene_ahci_do_hardreset.exit_crit_edge

if.end11.2.i.xgene_ahci_do_hardreset.exit_crit_edge: ; preds = %if.end11.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xgene_ahci_do_hardreset.exit

do.body.3.i:                                      ; preds = %if.end11.2.i
  %90 = call ptr @memset(ptr %tf.i, i32 0, i32 24)
  %91 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %device.i, align 128
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 128
  %ctl.i.3.i = getelementptr inbounds %struct.ata_port, ptr %94, i32 0, i32 9
  %95 = ptrtoint ptr %ctl.i.3.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %ctl.i.3.i, align 4
  %97 = ptrtoint ptr %ctl1.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %ctl1.i.i, align 1
  %98 = ptrtoint ptr %devno.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %devno.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp.i.3.i = icmp eq i32 %99, 0
  %spec.select.i.3.i = select i1 %cmp.i.3.i, i8 -96, i8 -80
  %100 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %spec.select.i.3.i, ptr %37, align 4
  %101 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -128, ptr %command.i, align 1
  call void @ata_tf_to_fis(ptr noundef nonnull %tf.i, i8 noundef zeroext 0, i32 noundef 0, ptr noundef %add.ptr.i) #6
  %call4.3.i = call i32 @sata_link_hardreset(ptr noundef %link, ptr noundef nonnull %sata_deb_timing_normal.sata_deb_timing_hotplug.i.i, i32 noundef %deadline, ptr noundef nonnull %online, ptr noundef nonnull @ahci_check_ready) #6
  %102 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %online, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.3.i = icmp eq i8 %103, 0
  br i1 %tobool.not.3.i, label %if.end11.3.i, label %do.body.3.i.if.then.i_crit_edge

do.body.3.i.if.then.i_crit_edge:                  ; preds = %do.body.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end11.3.i:                                     ; preds = %do.body.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %call12.3.i = call i32 @sata_scr_read(ptr noundef %link, i32 noundef 0, ptr noundef nonnull %sstatus.i) #6
  br label %xgene_ahci_do_hardreset.exit

xgene_ahci_do_hardreset.exit:                     ; preds = %if.end11.3.i, %if.end11.2.i.xgene_ahci_do_hardreset.exit_crit_edge, %if.end11.1.i.xgene_ahci_do_hardreset.exit_crit_edge, %if.end11.i.xgene_ahci_do_hardreset.exit_crit_edge, %do.end.i, %if.then.i.xgene_ahci_do_hardreset.exit_crit_edge
  %call440.i = phi i32 [ %call4.lcssa.i, %if.then.i.xgene_ahci_do_hardreset.exit_crit_edge ], [ %call4.lcssa.i, %do.end.i ], [ %call4.i, %if.end11.i.xgene_ahci_do_hardreset.exit_crit_edge ], [ %call4.1.i, %if.end11.1.i.xgene_ahci_do_hardreset.exit_crit_edge ], [ %call4.2.i, %if.end11.2.i.xgene_ahci_do_hardreset.exit_crit_edge ], [ %call4.3.i, %if.end11.3.i ]
  %add.ptr19.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 48
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #6, !srcloc !86
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %104) #6, !srcloc !89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sstatus.i) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf.i) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #6, !srcloc !89
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %12) #6, !srcloc !89
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %13) #6, !srcloc !89
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %14) #6, !srcloc !89
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %15) #6, !srcloc !89
  %start_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 25
  %105 = ptrtoint ptr %start_engine to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %start_engine, align 4
  call void %106(ptr noundef %1) #6
  %107 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %online, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not = icmp eq i8 %108, 0
  br i1 %tobool.not, label %xgene_ahci_do_hardreset.exit.if.end_crit_edge, label %if.then

xgene_ahci_do_hardreset.exit.if.end_crit_edge:    ; preds = %xgene_ahci_do_hardreset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %xgene_ahci_do_hardreset.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = call i32 @ahci_dev_classify(ptr noundef %1) #6
  %109 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %call47, ptr %class, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %xgene_ahci_do_hardreset.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %online) #6
  ret i32 %call440.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_ahci_pmp_softreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %flags.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %link1.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25
  %cmp.i.i = icmp eq ptr %link1.i.i, %link
  br i1 %cmp.i.i, label %land.lhs.true.i.sata_srst_pmp.exit_crit_edge, label %ata_is_host_link.exit.i

land.lhs.true.i.sata_srst_pmp.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sata_srst_pmp.exit

ata_is_host_link.exit.i:                          ; preds = %land.lhs.true.i
  %slave_link.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %slave_link.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave_link.i.i, align 128
  %cmp3.i.i = icmp eq ptr %5, %link
  br i1 %cmp3.i.i, label %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge, label %ata_is_host_link.exit.i.if.end.i_crit_edge

ata_is_host_link.exit.i.if.end.i_crit_edge:       ; preds = %ata_is_host_link.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge: ; preds = %ata_is_host_link.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sata_srst_pmp.exit

if.end.i:                                         ; preds = %ata_is_host_link.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %6 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pmp.i, align 4
  br label %sata_srst_pmp.exit

sata_srst_pmp.exit:                               ; preds = %if.end.i, %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge, %land.lhs.true.i.sata_srst_pmp.exit_crit_edge
  %retval.0.i = phi i32 [ %7, %if.end.i ], [ 15, %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge ], [ 15, %land.lhs.true.i.sata_srst_pmp.exit_crit_edge ]
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_no.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 256
  %mul.i.i = shl i32 %11, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr = getelementptr i8, ptr %add.ptr2.i.i, i32 64
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  %17 = and i32 %16, -983041
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %shl = shl i32 %retval.0.i, 8
  %or = or i32 %18, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #6, !srcloc !89
  %call6 = tail call i32 @ahci_do_softreset(ptr noundef %link, ptr noundef %class, i32 noundef %retval.0.i, i32 noundef %deadline, ptr noundef nonnull @ahci_check_ready) #6
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_ahci_host_stop(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @ahci_platform_disable_resources(ptr noundef %1) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_qc_issue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_start_fis_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_msleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_do_dev_read_id(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_do_softreset(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_check_ready(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_dev_classify(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tf_to_fis(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_hardreset(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgene_ahci_init_memram(ptr nocapture noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_ahci_init_memram.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_ahci_init_memram, %if.then)) #6
          to label %do.body3 [label %if.then], !srcloc !85

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.xgene_ahci_context, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_ahci_init_memram.__UNIQUE_ID_ddebug320, ptr noundef %1, ptr noundef nonnull @.str.22) #6
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  tail call void @arm_heavy_mb() #6
  %csr_diag = getelementptr inbounds %struct.xgene_ahci_context, ptr %ctx, i32 0, i32 5
  %2 = ptrtoint ptr %csr_diag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %csr_diag, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !89
  %4 = ptrtoint ptr %csr_diag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csr_diag, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 112
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @msleep(i32 noundef 1) #6
  %7 = ptrtoint ptr %csr_diag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %csr_diag, align 4
  %add.ptr13 = getelementptr i8, ptr %8, i32 116
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.not = icmp eq i32 %9, -1
  br i1 %cmp.not, label %do.body3.return_crit_edge, label %do.end19

do.body3.return_crit_edge:                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end19:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %dev20 = getelementptr inbounds %struct.xgene_ahci_context, ptr %ctx, i32 0, i32 1
  %10 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.23) #9
  br label %return

return:                                           ; preds = %do.end19, %do.body3.return_crit_edge
  %retval.0 = phi i32 [ -19, %do.end19 ], [ 0, %do.body3.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_ahci_set_phy_cfg(ptr nocapture noundef readonly %ctx, i32 noundef %channel) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %mmio1 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgene_ahci_set_phy_cfg.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgene_ahci_set_phy_cfg, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !85

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.xgene_ahci_context, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgene_ahci_set_phy_cfg.__UNIQUE_ID_ddebug321, ptr noundef %5, ptr noundef nonnull @.str.25, ptr noundef %3, i32 noundef %channel) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %3, i32 164
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !145
  %7 = and i32 %6, -1056964609
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp = icmp eq i32 %channel, 0
  %cond = select i1 %cmp, i32 2, i32 3
  %or = or i32 %8, %cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #6, !srcloc !89
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  tail call void @arm_heavy_mb() #6
  %add.ptr21 = getelementptr i8, ptr %3, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 -16842496) #6, !srcloc !89
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  tail call void @arm_heavy_mb() #6
  %add.ptr31 = getelementptr i8, ptr %3, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 422713384) #6, !srcloc !89
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  tail call void @arm_heavy_mb() #6
  %add.ptr41 = getelementptr i8, ptr %3, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 135268371) #6, !srcloc !89
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  tail call void @arm_heavy_mb() #6
  %add.ptr51 = getelementptr i8, ptr %3, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 352864256) #6, !srcloc !89
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  %add.ptr60 = getelementptr i8, ptr %3, i32 184
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  %16 = and i32 %15, -61696
  %17 = or i32 %16, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %17) #6, !srcloc !89
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  %add.ptr78 = getelementptr i8, ptr %3, i32 188
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !159
  %20 = and i32 %19, -61442
  %21 = or i32 %20, 57345
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !160
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %21) #6, !srcloc !89
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !161
  %add.ptr98 = getelementptr i8, ptr %3, i32 200
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #6, !srcloc !86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  %24 = and i32 %23, -2130706433
  %25 = or i32 %24, 805306368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 %25) #6, !srcloc !89
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_handle_port_intr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !23, !24, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !41, !43, !45, !46, !47, !48, !49, !51, !53, !55, !56, !57, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__initcall__kmod_ahci_xgene__326_879_xgene_ahci_driver_init6, !1, !"__initcall__kmod_ahci_xgene__326_879_xgene_ahci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/ahci_xgene.c", i32 879, i32 1}
!2 = !{ptr @__exitcall_xgene_ahci_driver_exit, !1, !"__exitcall_xgene_ahci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description327, !4, !"__UNIQUE_ID_description327", i1 false, i1 false}
!4 = !{!"../drivers/ata/ahci_xgene.c", i32 881, i32 1}
!5 = !{ptr @__UNIQUE_ID_author328, !6, !"__UNIQUE_ID_author328", i1 false, i1 false}
!6 = !{!"../drivers/ata/ahci_xgene.c", i32 882, i32 1}
!7 = !{ptr @__UNIQUE_ID_file329, !8, !"__UNIQUE_ID_file329", i1 false, i1 false}
!8 = !{!"../drivers/ata/ahci_xgene.c", i32 883, i32 1}
!9 = !{ptr @__UNIQUE_ID_license330, !8, !"__UNIQUE_ID_license330", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version331, !11, !"__UNIQUE_ID_version331", i1 false, i1 false}
!11 = !{!"../drivers/ata/ahci_xgene.c", i32 884, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/ata/ahci_xgene.c", i32 873, i32 11}
!18 = !{ptr @xgene_ahci_driver, !19, !"xgene_ahci_driver", i1 false, i1 false}
!19 = !{!"../drivers/ata/ahci_xgene.c", i32 869, i32 31}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/ata/ahci_xgene.c", i32 816, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @xgene_ahci_probe.__UNIQUE_ID_ddebug324, !21, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/ata/ahci_xgene.c", i32 821, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @xgene_ahci_probe._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @xgene_ahci_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/ata/ahci_xgene.c", i32 826, i32 3}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @xgene_ahci_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @xgene_ahci_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/ata/ahci_xgene.c", i32 861, i32 2}
!38 = !{ptr @xgene_ahci_probe.__UNIQUE_ID_ddebug325, !37, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!39 = !{ptr @xgene_ahci_v1_port_info, !40, !"xgene_ahci_v1_port_info", i1 false, i1 false}
!40 = !{!"../drivers/ata/ahci_xgene.c", i32 626, i32 35}
!41 = !{ptr @xgene_ahci_v1_ops, !42, !"xgene_ahci_v1_ops", i1 false, i1 false}
!42 = !{!"../drivers/ata/ahci_xgene.c", i32 616, i32 35}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/ata/ahci_xgene.c", i32 375, i32 5}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @xgene_ahci_do_hardreset._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @xgene_ahci_do_hardreset._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @xgene_ahci_v2_port_info, !50, !"xgene_ahci_v2_port_info", i1 false, i1 false}
!50 = !{!"../drivers/ata/ahci_xgene.c", i32 640, i32 35}
!51 = !{ptr @xgene_ahci_v2_ops, !52, !"xgene_ahci_v2_ops", i1 false, i1 false}
!52 = !{!"../drivers/ata/ahci_xgene.c", i32 633, i32 35}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/ata/ahci_xgene.c", i32 667, i32 2}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @xgene_ahci_hw_init.__UNIQUE_ID_ddebug322, !54, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/ata/ahci_xgene.c", i32 692, i32 2}
!59 = !{ptr @xgene_ahci_hw_init.__UNIQUE_ID_ddebug323, !58, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/ata/ahci_xgene.c", i32 93, i32 2}
!62 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @xgene_ahci_init_memram.__UNIQUE_ID_ddebug320, !61, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/ata/ahci_xgene.c", i32 98, i32 3}
!66 = !{ptr @xgene_ahci_init_memram._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @xgene_ahci_init_memram._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/ata/ahci_xgene.c", i32 272, i32 2}
!70 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @xgene_ahci_set_phy_cfg.__UNIQUE_ID_ddebug321, !69, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!72 = !{ptr @ahci_platform_sht, !73, !"ahci_platform_sht", i1 false, i1 false}
!73 = !{!"../drivers/ata/ahci_xgene.c", i32 713, i32 34}
!74 = !{ptr @xgene_ahci_of_match, !75, !"xgene_ahci_of_match", i1 false, i1 false}
!75 = !{!"../drivers/ata/ahci_xgene.c", i32 726, i32 34}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 2148972382, i64 2148972387, i64 2148972400, i64 2148972444, i64 2148972478, i64 2148972499}
!86 = !{i64 5825619}
!87 = !{i64 2156500903}
!88 = !{i64 2156501147}
!89 = !{i64 5825201}
!90 = !{i64 2156501859}
!91 = !{i64 2156458669}
!92 = !{i64 2156459178}
!93 = !{i64 2156483632}
!94 = !{i64 2156484364}
!95 = !{i64 2156484596}
!96 = !{i64 2156485307}
!97 = !{i64 2156492119}
!98 = !{i64 2156492836}
!99 = !{i64 2156493069}
!100 = !{i64 2156493781}
!101 = !{i64 2156494022}
!102 = !{i64 2156494468}
!103 = !{i64 2156494914}
!104 = !{i64 2156495360}
!105 = !{i64 2156496098}
!106 = !{i64 2156496332}
!107 = !{i64 2156497049}
!108 = !{i64 2156497283}
!109 = !{i64 2156498000}
!110 = !{i64 2156482950}
!111 = !{i64 2156483172}
!112 = !{i64 2156481934}
!113 = !{i64 2156482452}
!114 = !{i64 2156457562}
!115 = !{i64 2156457784}
!116 = !{!"branch_weights", i32 2000000, i32 2001, i32 2000, i32 2000000}
!117 = !{i64 2153358478}
!118 = !{i8 0, i8 2}
!119 = !{i64 2156456115}
!120 = !{i64 2156456346}
!121 = !{i64 2156457064}
!122 = !{i64 2156480060}
!123 = !{i64 2156480558}
!124 = !{i64 2156480780}
!125 = !{i64 2156481200}
!126 = !{!"auto-init"}
!127 = !{i64 2156474294}
!128 = !{i64 2156474812}
!129 = !{i64 2156475342}
!130 = !{i64 2156475860}
!131 = !{i64 2156476390}
!132 = !{i64 2156471355}
!133 = !{i64 2156473393}
!134 = !{i64 2156473614}
!135 = !{i64 2156476617}
!136 = !{i64 2156477057}
!137 = !{i64 2156477507}
!138 = !{i64 2156477963}
!139 = !{i64 2156478421}
!140 = !{i64 2156479147}
!141 = !{i64 2156479369}
!142 = !{i64 2156452230}
!143 = !{i64 2156452947}
!144 = !{i64 2156453480}
!145 = !{i64 2156462205}
!146 = !{i64 2156462509}
!147 = !{i64 2156463181}
!148 = !{i64 2156463413}
!149 = !{i64 2156464106}
!150 = !{i64 2156464338}
!151 = !{i64 2156465031}
!152 = !{i64 2156465263}
!153 = !{i64 2156465956}
!154 = !{i64 2156466188}
!155 = !{i64 2156466881}
!156 = !{i64 2156467378}
!157 = !{i64 2156467675}
!158 = !{i64 2156468347}
!159 = !{i64 2156468844}
!160 = !{i64 2156469209}
!161 = !{i64 2156469881}
!162 = !{i64 2156470378}
!163 = !{i64 2156470666}
