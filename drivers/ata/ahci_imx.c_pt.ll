; ModuleID = '/llk/IR_all_yes/drivers/ata/ahci_imx.c_pt.bc'
source_filename = "../drivers/ata/ahci_imx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.83 }
%union.anon.83 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reg_property = type { ptr, ptr, i32, i32, i32 }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.reg_value = type { i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.imx_ahci_priv = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ahci_host_priv = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [5 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr }
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
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }

@__param_str_hotplug = internal constant [17 x i8] c"ahci_imx.hotplug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ahci_imx_hotplug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_hotplug = internal constant %struct.kernel_param { ptr @__param_str_hotplug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.83 { ptr @ahci_imx_hotplug } }, section "__param", align 4
@__UNIQUE_ID_hotplugtype320 = internal constant [30 x i8] c"ahci_imx.parmtype=hotplug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hotplug321 = internal constant [77 x i8] c"ahci_imx.parm=hotplug:AHCI IMX hot-plug support (0=Don't support, 1=support)\00", section ".modinfo", align 1
@__initcall__kmod_ahci_imx__322_1228_imx_ahci_driver_init6 = internal global ptr @imx_ahci_driver_init, section ".initcall6.init", align 4
@imx_ahci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_ahci_probe, ptr @ata_platform_remove_one, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_ahci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_imx_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_ahci_driver_exit = internal global ptr @imx_ahci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description323 = internal constant [62 x i8] c"ahci_imx.description=Freescale i.MX AHCI SATA platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author324 = internal constant [58 x i8] c"ahci_imx.author=Richard Zhu <Hong-Xing.Zhu@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file325 = internal constant [35 x i8] c"ahci_imx.file=drivers/ata/ahci_imx\00", section ".modinfo", align 1
@__UNIQUE_ID_license326 = internal constant [21 x i8] c"ahci_imx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias327 = internal constant [24 x i8] c"ahci_imx.alias=ahci:imx\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ahci-imx\00", [23 x i8] zeroinitializer }, align 32
@imx_ahci_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6qp-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qm-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@ahci_imx_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @imx_ahci_suspend, ptr @imx_ahci_resume, ptr @imx_ahci_suspend, ptr @imx_ahci_resume, ptr @imx_ahci_suspend, ptr @imx_ahci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sata\00", [27 x i8] zeroinitializer }, align 32
@imx_ahci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1069, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't get sata clock.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx_ahci_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/ata/ahci_imx.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_ahci_probe._entry_ptr = internal global ptr @imx_ahci_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sata_ref\00", [23 x i8] zeroinitializer }, align 32
@imx_ahci_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1075, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't get sata_ref clock.\0A\00", [37 x i8] zeroinitializer }, align 32
@imx_ahci_probe._entry_ptr.10 = internal global ptr @imx_ahci_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@imx_ahci_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1081, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't get ahb clock.\0A\00", [42 x i8] zeroinitializer }, align 32
@imx_ahci_probe._entry_ptr.14 = internal global ptr @imx_ahci_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,imx6q-iomuxc-gpr\00", [43 x i8] zeroinitializer }, align 32
@imx_ahci_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1092, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to find fsl,imx6q-iomux-gpr regmap\0A\00", [53 x i8] zeroinitializer }, align 32
@imx_ahci_probe._entry_ptr.18 = internal global ptr @imx_ahci_probe._entry.16, section ".printk_index", align 4
@gpr13_props = internal constant { [5 x %struct.reg_property], [60 x i8] } { [5 x %struct.reg_property] [%struct.reg_property { ptr @.str.32, ptr @gpr13_tx_level, i32 32, i32 36, i32 0 }, %struct.reg_property { ptr @.str.33, ptr @gpr13_tx_boost, i32 16, i32 1152, i32 0 }, %struct.reg_property { ptr @.str.34, ptr @gpr13_tx_atten, i32 6, i32 8192, i32 0 }, %struct.reg_property { ptr @.str.35, ptr @gpr13_rx_eq, i32 8, i32 83886080, i32 0 }, %struct.reg_property { ptr @.str.36, ptr null, i32 0, i32 16384, i32 0 }], [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sata_ahci\00", [22 x i8] zeroinitializer }, align 32
@fsl_sata_ahci_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @fsl_sata_ahci_group, ptr null], [24 x i8] zeroinitializer }, align 32
@fsl_sata_ahci_of_thermal_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @sata_ahci_read_temperature, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@imx_ahci_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 1136, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: sensor 'sata_ahci'\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@imx_ahci_probe._entry_ptr.23 = internal global ptr @imx_ahci_probe._entry.20, section ".printk_index", align 4
@ahci_imx_port_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_imx_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@ahci_platform_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 32, i32 -1, i16 168, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr @ahci_shost_groups, ptr @ahci_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@imx_ahci_parse_props._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 953, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s not specified, using %08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx_ahci_parse_props\00", [43 x i8] zeroinitializer }, align 32
@imx_ahci_parse_props._entry_ptr = internal global ptr @imx_ahci_parse_props._entry, section ".printk_index", align 4
@imx_ahci_parse_props._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.4, i32 961, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s value %u, using %08x\0A\00", [39 x i8] zeroinitializer }, align 32
@imx_ahci_parse_props._entry_ptr.28 = internal global ptr @imx_ahci_parse_props._entry.26, section ".printk_index", align 4
@imx_ahci_parse_props._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.4, i32 969, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DT property %s is not a valid value\0A\00", [59 x i8] zeroinitializer }, align 32
@imx_ahci_parse_props._entry_ptr.31 = internal global ptr @imx_ahci_parse_props._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl,transmit-level-mV\00", [42 x i8] zeroinitializer }, align 32
@gpr13_tx_level = internal constant { [32 x %struct.reg_value], [64 x i8] } { [32 x %struct.reg_value] [%struct.reg_value { i32 937, i32 0 }, %struct.reg_value { i32 947, i32 4 }, %struct.reg_value { i32 957, i32 8 }, %struct.reg_value { i32 966, i32 12 }, %struct.reg_value { i32 976, i32 16 }, %struct.reg_value { i32 986, i32 20 }, %struct.reg_value { i32 996, i32 24 }, %struct.reg_value { i32 1005, i32 28 }, %struct.reg_value { i32 1015, i32 32 }, %struct.reg_value { i32 1025, i32 36 }, %struct.reg_value { i32 1035, i32 40 }, %struct.reg_value { i32 1045, i32 44 }, %struct.reg_value { i32 1054, i32 48 }, %struct.reg_value { i32 1064, i32 52 }, %struct.reg_value { i32 1074, i32 56 }, %struct.reg_value { i32 1084, i32 60 }, %struct.reg_value { i32 1094, i32 64 }, %struct.reg_value { i32 1104, i32 68 }, %struct.reg_value { i32 1113, i32 72 }, %struct.reg_value { i32 1123, i32 76 }, %struct.reg_value { i32 1133, i32 80 }, %struct.reg_value { i32 1143, i32 84 }, %struct.reg_value { i32 1152, i32 88 }, %struct.reg_value { i32 1162, i32 92 }, %struct.reg_value { i32 1172, i32 96 }, %struct.reg_value { i32 1182, i32 100 }, %struct.reg_value { i32 1191, i32 104 }, %struct.reg_value { i32 1201, i32 108 }, %struct.reg_value { i32 1211, i32 112 }, %struct.reg_value { i32 1221, i32 116 }, %struct.reg_value { i32 1230, i32 120 }, %struct.reg_value { i32 1240, i32 124 }], [64 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl,transmit-boost-mdB\00", [41 x i8] zeroinitializer }, align 32
@gpr13_tx_boost = internal constant { [16 x %struct.reg_value], [32 x i8] } { [16 x %struct.reg_value] [%struct.reg_value zeroinitializer, %struct.reg_value { i32 370, i32 128 }, %struct.reg_value { i32 740, i32 256 }, %struct.reg_value { i32 1110, i32 384 }, %struct.reg_value { i32 1480, i32 512 }, %struct.reg_value { i32 1850, i32 640 }, %struct.reg_value { i32 2220, i32 768 }, %struct.reg_value { i32 2590, i32 896 }, %struct.reg_value { i32 2960, i32 1024 }, %struct.reg_value { i32 3330, i32 1152 }, %struct.reg_value { i32 3700, i32 1280 }, %struct.reg_value { i32 4070, i32 1408 }, %struct.reg_value { i32 4440, i32 1536 }, %struct.reg_value { i32 4810, i32 1664 }, %struct.reg_value { i32 5280, i32 1792 }, %struct.reg_value { i32 5750, i32 1920 }], [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fsl,transmit-atten-16ths\00", [39 x i8] zeroinitializer }, align 32
@gpr13_tx_atten = internal constant { [6 x %struct.reg_value], [48 x i8] } { [6 x %struct.reg_value] [%struct.reg_value { i32 8, i32 10240 }, %struct.reg_value { i32 9, i32 8192 }, %struct.reg_value { i32 10, i32 6144 }, %struct.reg_value { i32 12, i32 4096 }, %struct.reg_value { i32 14, i32 2048 }, %struct.reg_value { i32 16, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,receive-eq-mdB\00", [45 x i8] zeroinitializer }, align 32
@gpr13_rx_eq = internal constant { [8 x %struct.reg_value], [32 x i8] } { [8 x %struct.reg_value] [%struct.reg_value { i32 500, i32 0 }, %struct.reg_value { i32 1000, i32 16777216 }, %struct.reg_value { i32 1500, i32 33554432 }, %struct.reg_value { i32 2000, i32 50331648 }, %struct.reg_value { i32 2500, i32 67108864 }, %struct.reg_value { i32 3000, i32 83886080 }, %struct.reg_value { i32 3500, i32 100663296 }, %struct.reg_value { i32 4000, i32 117440512 }], [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl,no-spread-spectrum\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl,phy-imp\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@imx8_sata_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 994, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"error with ioremap\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx8_sata_probe\00", [16 x i8] zeroinitializer }, align 32
@imx8_sata_probe._entry_ptr = internal global ptr @imx8_sata_probe._entry, section ".printk_index", align 4
@imx8_sata_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.4, i32 998, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"missing *phy* reg region.\0A\00", [37 x i8] zeroinitializer }, align 32
@imx8_sata_probe._entry_ptr.43 = internal global ptr @imx8_sata_probe._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hsio\00", [27 x i8] zeroinitializer }, align 32
@imx8_sata_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.40, ptr @.str.4, i32 1004, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to find gpr registers\0A\00", [34 x i8] zeroinitializer }, align 32
@imx8_sata_probe._entry_ptr.47 = internal global ptr @imx8_sata_probe._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"epcs_tx\00", [24 x i8] zeroinitializer }, align 32
@imx8_sata_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.40, ptr @.str.4, i32 1010, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't get epcs_tx_clk clock.\0A\00", [34 x i8] zeroinitializer }, align 32
@imx8_sata_probe._entry_ptr.51 = internal global ptr @imx8_sata_probe._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"epcs_rx\00", [24 x i8] zeroinitializer }, align 32
@imx8_sata_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.40, ptr @.str.4, i32 1015, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't get epcs_rx_clk clock.\0A\00", [34 x i8] zeroinitializer }, align 32
@imx8_sata_probe._entry_ptr.55 = internal global ptr @imx8_sata_probe._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"phy_pclk0\00", [22 x i8] zeroinitializer }, align 32
@imx8_sata_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.40, ptr @.str.4, i32 1020, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't get phy_pclk0 clock.\0A\00", [36 x i8] zeroinitializer }, align 32
@imx8_sata_probe._entry_ptr.59 = internal global ptr @imx8_sata_probe._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"phy_pclk1\00", [22 x i8] zeroinitializer }, align 32
@imx8_sata_probe._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.40, ptr @.str.4, i32 1025, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't get phy_pclk1 clock.\0A\00", [36 x i8] zeroinitializer }, align 32
@imx8_sata_probe._entry_ptr.63 = internal global ptr @imx8_sata_probe._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy_apbclk\00", [21 x i8] zeroinitializer }, align 32
@imx8_sata_probe._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.40, ptr @.str.4, i32 1030, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"can't get phy_apbclk clock.\0A\00", [35 x i8] zeroinitializer }, align 32
@imx8_sata_probe._entry_ptr.67 = internal global ptr @imx8_sata_probe._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clkreq\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SATA CLKREQ\00", [20 x i8] zeroinitializer }, align 32
@fsl_sata_ahci_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @fsl_sata_ahci_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fsl_sata_ahci_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr null], [24 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sata_ahci_show_temp, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@sata_ahci_read_temperature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.4, i32 344, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Read/Write REG error, 0x%x!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sata_ahci_read_temperature\00", [37 x i8] zeroinitializer }, align 32
@sata_ahci_read_temperature._entry_ptr = internal global ptr @sata_ahci_read_temperature._entry, section ".printk_index", align 4
@sata_ahci_read_temperature._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.4, i32 349, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sata_ahci_read_temperature._entry_ptr.75 = internal global ptr @sata_ahci_read_temperature._entry.74, section ".printk_index", align 4
@sata_ahci_read_temperature._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.4, i32 354, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sata_ahci_read_temperature._entry_ptr.77 = internal global ptr @sata_ahci_read_temperature._entry.76, section ".printk_index", align 4
@read_adc_sum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.4, i32 303, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Read REG more than %d times!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"read_adc_sum\00", [19 x i8] zeroinitializer }, align 32
@read_adc_sum._entry_ptr = internal global ptr @read_adc_sum._entry, section ".printk_index", align 4
@read_adc_sum._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.4, i32 320, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@read_adc_sum._entry_ptr.81 = internal global ptr @read_adc_sum._entry.80, section ".printk_index", align 4
@imx_sata_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.4, i32 690, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to reset phy: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imx_sata_enable\00", [16 x i8] zeroinitializer }, align 32
@imx_sata_enable._entry_ptr = internal global ptr @imx_sata_enable._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@imx8_sata_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.4, i32 455, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't enable phy_pclk0.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx8_sata_enable\00", [47 x i8] zeroinitializer }, align 32
@imx8_sata_enable._entry_ptr = internal global ptr @imx8_sata_enable._entry, section ".printk_index", align 4
@imx8_sata_enable._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.4, i32 460, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't enable phy_pclk1.\0A\00", [39 x i8] zeroinitializer }, align 32
@imx8_sata_enable._entry_ptr.88 = internal global ptr @imx8_sata_enable._entry.86, section ".printk_index", align 4
@imx8_sata_enable._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.4, i32 465, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't enable epcs_tx_clk.\0A\00", [37 x i8] zeroinitializer }, align 32
@imx8_sata_enable._entry_ptr.91 = internal global ptr @imx8_sata_enable._entry.89, section ".printk_index", align 4
@imx8_sata_enable._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.85, ptr @.str.4, i32 470, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't enable epcs_rx_clk.\0A\00", [37 x i8] zeroinitializer }, align 32
@imx8_sata_enable._entry_ptr.94 = internal global ptr @imx8_sata_enable._entry.92, section ".printk_index", align 4
@imx8_sata_enable._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.85, ptr @.str.4, i32 475, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can't enable phy_apbclk.\0A\00", [38 x i8] zeroinitializer }, align 32
@imx8_sata_enable._entry_ptr.97 = internal global ptr @imx8_sata_enable._entry.95, section ".printk_index", align 4
@imx8_sata_enable._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.85, ptr @.str.4, i32 606, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TX PLL of the PHY is not locked\0A\00", [63 x i8] zeroinitializer }, align 32
@imx8_sata_enable._entry_ptr.100 = internal global ptr @imx8_sata_enable._entry.98, section ".printk_index", align 4
@imx8_sata_enable._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.85, ptr @.str.4, i32 616, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Can't set PHY RX impedance ratio.\0A\00", [61 x i8] zeroinitializer }, align 32
@imx8_sata_enable._entry_ptr.103 = internal global ptr @imx8_sata_enable._entry.101, section ".printk_index", align 4
@imx8_sata_enable._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.85, ptr @.str.4, i32 620, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Can't set PHY TX impedance ratio.\0A\00", [61 x i8] zeroinitializer }, align 32
@imx8_sata_enable._entry_ptr.106 = internal global ptr @imx8_sata_enable._entry.104, section ".printk_index", align 4
@ahci_imx_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_imx_softreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_imx_error_handler, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_imx_host_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_ops }, [44 x i8] zeroinitializer }, align 32
@ahci_ops = external dso_local global %struct.ata_port_operations, align 4
@ahci_pmp_retry_srst_ops = external dso_local local_unnamed_addr global %struct.ata_port_operations, align 4
@ahci_imx_error_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.4, i32 774, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"no device found, disabling link.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ahci_imx_error_handler\00", [41 x i8] zeroinitializer }, align 32
@ahci_imx_error_handler._entry_ptr = internal global ptr @ahci_imx_error_handler._entry, section ".printk_index", align 4
@ahci_imx_error_handler._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.4, i32 775, ptr @.str.22, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"pass ahci_imx..hotplug=1 to enable hotplug\0A\00", [52 x i8] zeroinitializer }, align 32
@ahci_imx_error_handler._entry_ptr.111 = internal global ptr @ahci_imx_error_handler._entry.109, section ".printk_index", align 4
@ahci_shost_groups = external dso_local global [0 x ptr], align 4
@ahci_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.112 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.113 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"ahci_imx_hotplug\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 111, i32 12 }
@___asan_gen_.117 = private unnamed_addr constant [16 x i8] c"imx_ahci_driver\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1219, i32 31 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1223, i32 11 }
@___asan_gen_.123 = private unnamed_addr constant [18 x i8] c"imx_ahci_of_match\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 809, i32 34 }
@___asan_gen_.126 = private unnamed_addr constant [16 x i8] c"ahci_imx_pm_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1217, i32 8 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1067, i32 40 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1069, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1073, i32 44 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1075, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1079, i32 39 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1081, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1089, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1091, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant [12 x i8] c"gpr13_props\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 905, i32 34 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1127, i32 8 }
@___asan_gen_.183 = private unnamed_addr constant [21 x i8] c"fsl_sata_ahci_groups\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [29 x i8] c"fsl_sata_ahci_of_thermal_ops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 433, i32 48 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1136, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [19 x i8] c"ahci_imx_port_info\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 802, i32 35 }
@___asan_gen_.201 = private unnamed_addr constant [18 x i8] c"ahci_platform_sht\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 977, i32 34 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 952, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 960, i32 5 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 968, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 907, i32 11 }
@___asan_gen_.228 = private unnamed_addr constant [15 x i8] c"gpr13_tx_level\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 831, i32 31 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 912, i32 11 }
@___asan_gen_.234 = private unnamed_addr constant [15 x i8] c"gpr13_tx_boost\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 866, i32 31 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 917, i32 11 }
@___asan_gen_.240 = private unnamed_addr constant [15 x i8] c"gpr13_tx_atten\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 885, i32 31 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 922, i32 11 }
@___asan_gen_.246 = private unnamed_addr constant [12 x i8] c"gpr13_rx_eq\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 894, i32 31 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 927, i32 11 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 987, i32 31 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 989, i32 63 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 994, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 998, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1002, i32 40 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1004, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1008, i32 43 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1010, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1013, i32 43 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1015, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1018, i32 41 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1020, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1023, i32 41 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1025, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1028, i32 42 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1030, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1035, i32 55 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 1040, i32 50 }
@___asan_gen_.333 = private unnamed_addr constant [20 x i8] c"fsl_sata_ahci_group\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 443, i32 1 }
@___asan_gen_.336 = private unnamed_addr constant [20 x i8] c"fsl_sata_ahci_attrs\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 439, i32 26 }
@___asan_gen_.339 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 437, i32 8 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 430, i32 22 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 344, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 349, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 354, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 302, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 319, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 690, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 455, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 460, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 465, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 470, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 475, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 606, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 616, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 620, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant [13 x i8] c"ahci_imx_ops\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 795, i32 35 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 774, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.450 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.451 = private constant [26 x i8] c"../drivers/ata/ahci_imx.c\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.451, i32 775, i32 2 }
@llvm.compiler.used = appending global [156 x ptr] [ptr @__UNIQUE_ID_alias327, ptr @__UNIQUE_ID_author324, ptr @__UNIQUE_ID_description323, ptr @__UNIQUE_ID_file325, ptr @__UNIQUE_ID_hotplug321, ptr @__UNIQUE_ID_hotplugtype320, ptr @__UNIQUE_ID_license326, ptr @__exitcall_imx_ahci_driver_exit, ptr @__initcall__kmod_ahci_imx__322_1228_imx_ahci_driver_init6, ptr @__param_hotplug, ptr @ahci_imx_error_handler._entry, ptr @ahci_imx_error_handler._entry.109, ptr @ahci_imx_error_handler._entry_ptr, ptr @ahci_imx_error_handler._entry_ptr.111, ptr @imx8_sata_enable._entry, ptr @imx8_sata_enable._entry.101, ptr @imx8_sata_enable._entry.104, ptr @imx8_sata_enable._entry.86, ptr @imx8_sata_enable._entry.89, ptr @imx8_sata_enable._entry.92, ptr @imx8_sata_enable._entry.95, ptr @imx8_sata_enable._entry.98, ptr @imx8_sata_enable._entry_ptr, ptr @imx8_sata_enable._entry_ptr.100, ptr @imx8_sata_enable._entry_ptr.103, ptr @imx8_sata_enable._entry_ptr.106, ptr @imx8_sata_enable._entry_ptr.88, ptr @imx8_sata_enable._entry_ptr.91, ptr @imx8_sata_enable._entry_ptr.94, ptr @imx8_sata_enable._entry_ptr.97, ptr @imx8_sata_probe._entry, ptr @imx8_sata_probe._entry.41, ptr @imx8_sata_probe._entry.45, ptr @imx8_sata_probe._entry.49, ptr @imx8_sata_probe._entry.53, ptr @imx8_sata_probe._entry.57, ptr @imx8_sata_probe._entry.61, ptr @imx8_sata_probe._entry.65, ptr @imx8_sata_probe._entry_ptr, ptr @imx8_sata_probe._entry_ptr.43, ptr @imx8_sata_probe._entry_ptr.47, ptr @imx8_sata_probe._entry_ptr.51, ptr @imx8_sata_probe._entry_ptr.55, ptr @imx8_sata_probe._entry_ptr.59, ptr @imx8_sata_probe._entry_ptr.63, ptr @imx8_sata_probe._entry_ptr.67, ptr @imx_ahci_driver_exit, ptr @imx_ahci_parse_props._entry, ptr @imx_ahci_parse_props._entry.26, ptr @imx_ahci_parse_props._entry.29, ptr @imx_ahci_parse_props._entry_ptr, ptr @imx_ahci_parse_props._entry_ptr.28, ptr @imx_ahci_parse_props._entry_ptr.31, ptr @imx_ahci_probe._entry, ptr @imx_ahci_probe._entry.12, ptr @imx_ahci_probe._entry.16, ptr @imx_ahci_probe._entry.20, ptr @imx_ahci_probe._entry.8, ptr @imx_ahci_probe._entry_ptr, ptr @imx_ahci_probe._entry_ptr.10, ptr @imx_ahci_probe._entry_ptr.14, ptr @imx_ahci_probe._entry_ptr.18, ptr @imx_ahci_probe._entry_ptr.23, ptr @imx_sata_enable._entry, ptr @imx_sata_enable._entry_ptr, ptr @read_adc_sum._entry, ptr @read_adc_sum._entry.80, ptr @read_adc_sum._entry_ptr, ptr @read_adc_sum._entry_ptr.81, ptr @sata_ahci_read_temperature._entry, ptr @sata_ahci_read_temperature._entry.74, ptr @sata_ahci_read_temperature._entry.76, ptr @sata_ahci_read_temperature._entry_ptr, ptr @sata_ahci_read_temperature._entry_ptr.75, ptr @sata_ahci_read_temperature._entry_ptr.77, ptr @ahci_imx_hotplug, ptr @imx_ahci_driver, ptr @.str, ptr @imx_ahci_of_match, ptr @ahci_imx_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @gpr13_props, ptr @.str.19, ptr @fsl_sata_ahci_groups, ptr @fsl_sata_ahci_of_thermal_ops, ptr @.str.21, ptr @.str.22, ptr @ahci_imx_port_info, ptr @ahci_platform_sht, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @gpr13_tx_level, ptr @.str.33, ptr @gpr13_tx_boost, ptr @.str.34, ptr @gpr13_tx_atten, ptr @.str.35, ptr @gpr13_rx_eq, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @fsl_sata_ahci_group, ptr @fsl_sata_ahci_attrs, ptr @sensor_dev_attr_temp1_input, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.78, ptr @.str.79, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @ahci_imx_ops, ptr @.str.107, ptr @.str.108, ptr @.str.110], section "llvm.metadata"
@0 = internal global [113 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_imx_hotplug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ahci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ahci_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_imx_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ahci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ahci_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ahci_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ahci_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpr13_props to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sata_ahci_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sata_ahci_of_thermal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ahci_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_imx_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_platform_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ahci_parse_props._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ahci_parse_props._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ahci_parse_props._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpr13_tx_level to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpr13_tx_boost to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpr13_tx_atten to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpr13_rx_eq to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_sata_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_sata_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_sata_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_sata_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_sata_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_sata_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_sata_probe._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_sata_probe._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sata_ahci_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_sata_ahci_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_ahci_read_temperature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_ahci_read_temperature._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sata_ahci_read_temperature._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_adc_sum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_adc_sum._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_sata_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_sata_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_sata_enable._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_sata_enable._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_sata_enable._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_sata_enable._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_sata_enable._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_sata_enable._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8_sata_enable._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_imx_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_imx_error_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_imx_error_handler._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_ahci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_ahci_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_ahci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_ahci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_ahci_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %of_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @imx_ahci_of_match, ptr noundef %dev1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup128_crit_edge, label %if.end

entry.cleanup128_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup128

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup128_crit_edge, label %if.end5

if.end.cleanup128_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup128

if.end5:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %call.i, align 4
  %no_device = getelementptr inbounds %struct.imx_ahci_priv, ptr %call.i, i32 0, i32 13
  %1 = ptrtoint ptr %no_device to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %no_device, align 4
  %first_time = getelementptr inbounds %struct.imx_ahci_priv, ptr %call.i, i32 0, i32 14
  %2 = ptrtoint ptr %first_time to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %first_time, align 1
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %4 to i32
  %type = getelementptr inbounds %struct.imx_ahci_priv, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %type, align 4
  %call6 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  %sata_clk = getelementptr inbounds %struct.imx_ahci_priv, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %sata_clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %sata_clk, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  %8 = ptrtoint ptr %sata_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sata_clk, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup128

if.end12:                                         ; preds = %if.end5
  %call13 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #7
  %sata_ref_clk = getelementptr inbounds %struct.imx_ahci_priv, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %sata_ref_clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call13, ptr %sata_ref_clk, align 4
  %cmp.i204 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i204, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #10
  %12 = ptrtoint ptr %sata_ref_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sata_ref_clk, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup128

if.end22:                                         ; preds = %if.end12
  %call23 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.11) #7
  %ahb_clk = getelementptr inbounds %struct.imx_ahci_priv, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call23, ptr %ahb_clk, align 4
  %cmp.i205 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i205, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #10
  %16 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ahb_clk, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup128

if.end32:                                         ; preds = %if.end22
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %if.end32.if.end56_crit_edge [
    i32 1, label %if.end32.if.then36_crit_edge
    i32 2, label %if.end32.if.then36_crit_edge241
    i32 3, label %if.then50
  ]

if.end32.if.then36_crit_edge241:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

if.end32.if.then36_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

if.end32.if.end56_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then36:                                        ; preds = %if.end32.if.then36_crit_edge, %if.end32.if.then36_crit_edge241
  %call37 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.15) #7
  %gpr = getelementptr inbounds %struct.imx_ahci_priv, ptr %call.i, i32 0, i32 12
  %22 = ptrtoint ptr %gpr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call37, ptr %gpr, align 4
  %cmp.i206 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i206, label %cleanup.thread, label %if.end46

cleanup.thread:                                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #10
  %23 = ptrtoint ptr %gpr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gpr, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %cleanup128

if.end46:                                         ; preds = %if.then36
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %26 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end46
  %i.011.i = phi i32 [ 0, %if.end46 ], [ %inc42.i, %cleanup.i.for.body.i_crit_edge ]
  %reg_value.010.i = phi i32 [ 0, %if.end46 ], [ %reg_value.4.i, %cleanup.i.for.body.i_crit_edge ]
  %prop.addr.06.i = phi ptr [ @gpr13_props, %if.end46 ], [ %incdec.ptr.i, %cleanup.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %of_val.i) #7
  %28 = ptrtoint ptr %of_val.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %of_val.i, align 4, !annotation !242
  %num_values.i = getelementptr inbounds %struct.reg_property, ptr %prop.addr.06.i, i32 0, i32 2
  %29 = ptrtoint ptr %num_values.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_values.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp1.i = icmp eq i32 %30, 0
  %31 = ptrtoint ptr %prop.addr.06.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prop.addr.06.i, align 4
  br i1 %cmp1.i, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call ptr @of_find_property(ptr noundef %27, ptr noundef %32, ptr noundef null) #7
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  %set_value.i = getelementptr inbounds %struct.reg_property, ptr %prop.addr.06.i, i32 0, i32 4
  %def_value.i = getelementptr inbounds %struct.reg_property, ptr %prop.addr.06.i, i32 0, i32 3
  %.pn.in.i = select i1 %tobool.i.not.i, ptr %def_value.i, ptr %set_value.i
  br label %cleanup.sink.split.i

if.end4.i:                                        ; preds = %for.body.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %27, ptr noundef %32, ptr noundef nonnull %of_val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %for.cond13.preheader.i, label %do.end.i

for.cond13.preheader.i:                           ; preds = %if.end4.i
  %33 = ptrtoint ptr %num_values.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_values.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp154.not.i = icmp eq i32 %34, 0
  br i1 %cmp154.not.i, label %for.cond13.preheader.i.for.end.i_crit_edge, label %for.body16.lr.ph.i

for.cond13.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond13.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body16.lr.ph.i:                               ; preds = %for.cond13.preheader.i
  %values.i = getelementptr inbounds %struct.reg_property, ptr %prop.addr.06.i, i32 0, i32 1
  %35 = ptrtoint ptr %values.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %values.i, align 4
  %37 = ptrtoint ptr %of_val.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %of_val.i, align 4
  br label %for.body16.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %prop.addr.06.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prop.addr.06.i, align 4
  %def_value9.i = getelementptr inbounds %struct.reg_property, ptr %prop.addr.06.i, i32 0, i32 3
  %41 = ptrtoint ptr %def_value9.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %def_value9.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.24, ptr noundef %40, i32 noundef %42) #10
  br label %cleanup.sink.split.i

for.body16.i:                                     ; preds = %for.inc.i.for.body16.i_crit_edge, %for.body16.lr.ph.i
  %j.05.i = phi i32 [ 0, %for.body16.lr.ph.i ], [ %inc.i, %for.inc.i.for.body16.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.reg_value, ptr %36, i32 %j.05.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %38)
  %cmp17.i = icmp eq i32 %44, %38
  br i1 %cmp17.i, label %do.end21.i, label %for.inc.i

do.end21.i:                                       ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %prop.addr.06.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prop.addr.06.i, align 4
  %reg_value25.i = getelementptr %struct.reg_value, ptr %36, i32 %j.05.i, i32 1
  %47 = ptrtoint ptr %reg_value25.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %reg_value25.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.27, ptr noundef %46, i32 noundef %38, i32 noundef %48) #10
  %49 = ptrtoint ptr %values.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %values.i, align 4
  %reg_value28.i = getelementptr %struct.reg_value, ptr %50, i32 %j.05.i, i32 1
  %51 = ptrtoint ptr %reg_value28.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %reg_value28.i, align 4
  %or29.i = or i32 %52, %reg_value.010.i
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body16.i
  %inc.i = add nuw i32 %j.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %34
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body16.i_crit_edge

for.inc.i.for.body16.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body16.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.end21.i, %for.cond13.preheader.i.for.end.i_crit_edge
  %j.02.i = phi i32 [ %j.05.i, %do.end21.i ], [ 0, %for.cond13.preheader.i.for.end.i_crit_edge ], [ %34, %for.inc.i.for.end.i_crit_edge ]
  %reg_value.2.i = phi i32 [ %or29.i, %do.end21.i ], [ %reg_value.010.i, %for.cond13.preheader.i.for.end.i_crit_edge ], [ %reg_value.010.i, %for.inc.i.for.end.i_crit_edge ]
  %53 = ptrtoint ptr %num_values.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_values.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.02.i, i32 %54)
  %cmp32.i = icmp eq i32 %j.02.i, %54
  br i1 %cmp32.i, label %do.end36.i, label %for.end.i.cleanup.i_crit_edge

for.end.i.cleanup.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

do.end36.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %prop.addr.06.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prop.addr.06.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef %56) #10
  %def_value38.i = getelementptr inbounds %struct.reg_property, ptr %prop.addr.06.i, i32 0, i32 3
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %do.end36.i, %do.end.i, %if.then.i
  %def_value38.sink.i = phi ptr [ %def_value38.i, %do.end36.i ], [ %def_value9.i, %do.end.i ], [ %.pn.in.i, %if.then.i ]
  %reg_value.2.sink.i = phi i32 [ %reg_value.2.i, %do.end36.i ], [ %reg_value.010.i, %do.end.i ], [ %reg_value.010.i, %if.then.i ]
  %57 = ptrtoint ptr %def_value38.sink.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %def_value38.sink.i, align 4
  %or39.i = or i32 %58, %reg_value.2.sink.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.sink.split.i, %for.end.i.cleanup.i_crit_edge
  %reg_value.4.i = phi i32 [ %reg_value.2.i, %for.end.i.cleanup.i_crit_edge ], [ %or39.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %of_val.i) #7
  %inc42.i = add nuw nsw i32 %i.011.i, 1
  %incdec.ptr.i = getelementptr %struct.reg_property, ptr %prop.addr.06.i, i32 1
  %exitcond13.not.i = icmp eq i32 %inc42.i, 5
  br i1 %exitcond13.not.i, label %cleanup, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup:                                          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %reg_value.4.i, 9666560
  %phy_params = getelementptr inbounds %struct.imx_ahci_priv, ptr %call.i, i32 0, i32 15
  %59 = ptrtoint ptr %phy_params to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or, ptr %phy_params, align 4
  br label %if.end56

if.then50:                                        ; preds = %if.end32
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 4
  %of_node.i207 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %62 = ptrtoint ptr %of_node.i207 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %of_node.i207, align 8
  %imped_ratio.i = getelementptr inbounds %struct.imx_ahci_priv, ptr %call.i, i32 0, i32 16
  %call.i.i.i208 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %63, ptr noundef nonnull @.str.37, ptr noundef %imped_ratio.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i208)
  %tobool.not.i209 = icmp sgt i32 %call.i.i.i208, -1
  br i1 %tobool.not.i209, label %if.then50.if.end.i_crit_edge, label %if.then.i210

if.then50.if.end.i_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i210:                                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %imped_ratio.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 108, ptr %imped_ratio.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i210, %if.then50.if.end.i_crit_edge
  %call2.i = tail call ptr @platform_get_resource_byname(ptr noundef %61, i32 noundef 512, ptr noundef nonnull @.str.38) #7
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.end13.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %65 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %call2.i, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call2.i, i32 0, i32 1
  %67 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %end.i.i, align 4
  %sub.i.i = sub i32 1, %66
  %add.i.i = add i32 %sub.i.i, %68
  %call6.i = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %66, i32 noundef %add.i.i) #7
  %phy_base.i = getelementptr inbounds %struct.imx_ahci_priv, ptr %call.i, i32 0, i32 10
  %69 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call6.i, ptr %phy_base.i, align 4
  %tobool8.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool8.not.i, label %do.end.i211, label %if.end14.i

do.end.i211:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39) #10
  br label %cleanup128

do.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.42) #10
  br label %cleanup128

if.end14.i:                                       ; preds = %if.then4.i
  %call15.i = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %63, ptr noundef nonnull @.str.44) #7
  %gpr.i = getelementptr inbounds %struct.imx_ahci_priv, ptr %call.i, i32 0, i32 12
  %70 = ptrtoint ptr %gpr.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call15.i, ptr %gpr.i, align 4
  %cmp.i.i = icmp ugt ptr %call15.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end14.i.imx8_sata_probe.exit.sink.split_crit_edge, label %if.end24.i

if.end14.i.imx8_sata_probe.exit.sink.split_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx8_sata_probe.exit.sink.split

if.end24.i:                                       ; preds = %if.end14.i
  %call25.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.48) #7
  %epcs_tx_clk.i = getelementptr inbounds %struct.imx_ahci_priv, ptr %call.i, i32 0, i32 5
  %71 = ptrtoint ptr %epcs_tx_clk.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call25.i, ptr %epcs_tx_clk.i, align 4
  %cmp.i135.i = icmp ugt ptr %call25.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i135.i, label %if.end24.i.imx8_sata_probe.exit.sink.split_crit_edge, label %if.end34.i

if.end24.i.imx8_sata_probe.exit.sink.split_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx8_sata_probe.exit.sink.split

if.end34.i:                                       ; preds = %if.end24.i
  %call35.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.52) #7
  %epcs_rx_clk.i = getelementptr inbounds %struct.imx_ahci_priv, ptr %call.i, i32 0, i32 6
  %72 = ptrtoint ptr %epcs_rx_clk.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call35.i, ptr %epcs_rx_clk.i, align 4
  %cmp.i136.i = icmp ugt ptr %call35.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136.i, label %if.end34.i.imx8_sata_probe.exit.sink.split_crit_edge, label %if.end44.i

if.end34.i.imx8_sata_probe.exit.sink.split_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx8_sata_probe.exit.sink.split

if.end44.i:                                       ; preds = %if.end34.i
  %call45.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.56) #7
  %phy_pclk0.i = getelementptr inbounds %struct.imx_ahci_priv, ptr %call.i, i32 0, i32 8
  %73 = ptrtoint ptr %phy_pclk0.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call45.i, ptr %phy_pclk0.i, align 4
  %cmp.i137.i = icmp ugt ptr %call45.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i137.i, label %if.end44.i.imx8_sata_probe.exit.sink.split_crit_edge, label %if.end54.i

if.end44.i.imx8_sata_probe.exit.sink.split_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx8_sata_probe.exit.sink.split

if.end54.i:                                       ; preds = %if.end44.i
  %call55.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.60) #7
  %phy_pclk1.i = getelementptr inbounds %struct.imx_ahci_priv, ptr %call.i, i32 0, i32 9
  %74 = ptrtoint ptr %phy_pclk1.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call55.i, ptr %phy_pclk1.i, align 4
  %cmp.i138.i = icmp ugt ptr %call55.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138.i, label %if.end54.i.imx8_sata_probe.exit.sink.split_crit_edge, label %if.end64.i

if.end54.i.imx8_sata_probe.exit.sink.split_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx8_sata_probe.exit.sink.split

if.end64.i:                                       ; preds = %if.end54.i
  %call65.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.64) #7
  %phy_apbclk.i = getelementptr inbounds %struct.imx_ahci_priv, ptr %call.i, i32 0, i32 7
  %75 = ptrtoint ptr %phy_apbclk.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call65.i, ptr %phy_apbclk.i, align 4
  %cmp.i139.i = icmp ugt ptr %call65.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i139.i, label %if.end64.i.imx8_sata_probe.exit.sink.split_crit_edge, label %if.end74.i

if.end64.i.imx8_sata_probe.exit.sink.split_crit_edge: ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx8_sata_probe.exit.sink.split

if.end74.i:                                       ; preds = %if.end64.i
  %call75.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.68, i32 noundef 19) #7
  %clkreq_gpiod.i = getelementptr inbounds %struct.imx_ahci_priv, ptr %call.i, i32 0, i32 11
  %76 = ptrtoint ptr %clkreq_gpiod.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call75.i, ptr %clkreq_gpiod.i, align 4
  %cmp.i140.i = icmp ugt ptr %call75.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140.i, label %if.end74.i.imx8_sata_probe.exit_crit_edge, label %if.end81.i

if.end74.i.imx8_sata_probe.exit_crit_edge:        ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx8_sata_probe.exit

if.end81.i:                                       ; preds = %if.end74.i
  %tobool83.not.i = icmp eq ptr %call75.i, null
  br i1 %tobool83.not.i, label %if.end81.i.if.end56_crit_edge, label %if.then84.i

if.end81.i.if.end56_crit_edge:                    ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then84.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  %call86.i = tail call i32 @gpiod_set_consumer_name(ptr noundef nonnull %call75.i, ptr noundef nonnull @.str.69) #7
  br label %if.end56

imx8_sata_probe.exit.sink.split:                  ; preds = %if.end64.i.imx8_sata_probe.exit.sink.split_crit_edge, %if.end54.i.imx8_sata_probe.exit.sink.split_crit_edge, %if.end44.i.imx8_sata_probe.exit.sink.split_crit_edge, %if.end34.i.imx8_sata_probe.exit.sink.split_crit_edge, %if.end24.i.imx8_sata_probe.exit.sink.split_crit_edge, %if.end14.i.imx8_sata_probe.exit.sink.split_crit_edge
  %.str.46.sink = phi ptr [ @.str.46, %if.end14.i.imx8_sata_probe.exit.sink.split_crit_edge ], [ @.str.50, %if.end24.i.imx8_sata_probe.exit.sink.split_crit_edge ], [ @.str.54, %if.end34.i.imx8_sata_probe.exit.sink.split_crit_edge ], [ @.str.58, %if.end44.i.imx8_sata_probe.exit.sink.split_crit_edge ], [ @.str.62, %if.end54.i.imx8_sata_probe.exit.sink.split_crit_edge ], [ @.str.66, %if.end64.i.imx8_sata_probe.exit.sink.split_crit_edge ]
  %gpr.i.sink = phi ptr [ %gpr.i, %if.end14.i.imx8_sata_probe.exit.sink.split_crit_edge ], [ %epcs_tx_clk.i, %if.end24.i.imx8_sata_probe.exit.sink.split_crit_edge ], [ %epcs_rx_clk.i, %if.end34.i.imx8_sata_probe.exit.sink.split_crit_edge ], [ %phy_pclk0.i, %if.end44.i.imx8_sata_probe.exit.sink.split_crit_edge ], [ %phy_pclk1.i, %if.end54.i.imx8_sata_probe.exit.sink.split_crit_edge ], [ %phy_apbclk.i, %if.end64.i.imx8_sata_probe.exit.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.46.sink) #10
  %77 = ptrtoint ptr %gpr.i.sink to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %gpr.i.sink, align 4
  br label %imx8_sata_probe.exit

imx8_sata_probe.exit:                             ; preds = %imx8_sata_probe.exit.sink.split, %if.end74.i.imx8_sata_probe.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call75.i, %if.end74.i.imx8_sata_probe.exit_crit_edge ], [ %78, %imx8_sata_probe.exit.sink.split ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool52.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool52.not, label %imx8_sata_probe.exit.if.end56_crit_edge, label %imx8_sata_probe.exit.cleanup128_crit_edge

imx8_sata_probe.exit.cleanup128_crit_edge:        ; preds = %imx8_sata_probe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup128

imx8_sata_probe.exit.if.end56_crit_edge:          ; preds = %imx8_sata_probe.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.end56:                                         ; preds = %imx8_sata_probe.exit.if.end56_crit_edge, %if.then84.i, %if.end81.i.if.end56_crit_edge, %cleanup, %if.end32.if.end56_crit_edge
  %call57 = call ptr @ahci_platform_get_resources(ptr noundef %pdev, i32 noundef 0) #7
  %cmp.i214 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %call57 to i32
  br label %cleanup128

if.end61:                                         ; preds = %if.end56
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %call57, i32 0, i32 23
  %80 = ptrtoint ptr %plat_data to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i, ptr %plat_data, align 4
  %81 = ptrtoint ptr %sata_clk to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sata_clk, align 4
  %call.i215 = call i32 @clk_prepare(ptr noundef %82) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215)
  %tobool.not.i216 = icmp eq i32 %call.i215, 0
  br i1 %tobool.not.i216, label %if.end.i217, label %if.end61.cleanup128_crit_edge

if.end61.cleanup128_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup128

if.end.i217:                                      ; preds = %if.end61
  %call1.i = call i32 @clk_enable(ptr noundef %82) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end66, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %82) #7
  br label %cleanup128

if.end66:                                         ; preds = %if.end.i217
  %83 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp68 = icmp eq i32 %84, 0
  br i1 %cmp68, label %if.then69, label %if.end66.if.end83_crit_edge

if.end66.if.end83_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then69:                                        ; preds = %if.end66
  %call70 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef nonnull @.str.19, ptr noundef %call57, ptr noundef nonnull @fsl_sata_ahci_groups) #7
  %cmp.i220 = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220, label %cleanup80, label %if.end74

if.end74:                                         ; preds = %if.then69
  %call75 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %call70, i32 noundef 0, ptr noundef %call70, ptr noundef nonnull @fsl_sata_ahci_of_thermal_ops) #7
  %init_name.i = getelementptr inbounds %struct.device, ptr %call70, i32 0, i32 3
  %85 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i221 = icmp eq ptr %86, null
  br i1 %tobool.not.i221, label %if.end.i222, label %if.end74.cleanup80.thread_crit_edge

if.end74.cleanup80.thread_crit_edge:              ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup80.thread

if.end.i222:                                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %call70 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call70, align 4
  br label %cleanup80.thread

cleanup80.thread:                                 ; preds = %if.end.i222, %if.end74.cleanup80.thread_crit_edge
  %retval.0.i223 = phi ptr [ %88, %if.end.i222 ], [ %86, %if.end74.cleanup80.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef %retval.0.i223) #10
  br label %if.end83

cleanup80:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %call70 to i32
  br label %disable_clk

if.end83:                                         ; preds = %cleanup80.thread, %if.end66.if.end83_crit_edge
  %call84 = call fastcc i32 @imx_sata_enable(ptr noundef %call57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end83.disable_clk_crit_edge

if.end83.disable_clk_crit_edge:                   ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_clk

if.end87:                                         ; preds = %if.end83
  %mmio = getelementptr inbounds %struct.ahci_host_priv, ptr %call57, i32 0, i32 3
  %90 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmio, align 4
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #7, !srcloc !243
  %93 = call i32 @llvm.bswap.i32(i32 %92)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !244
  %and = and i32 %93, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool90.not = icmp eq i32 %and, 0
  br i1 %tobool90.not, label %if.then91, label %if.end87.if.end98_crit_edge

if.end87.if.end98_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.then91:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %or92 = or i32 %93, 134217728
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !245
  call void @arm_heavy_mb() #7
  %94 = call i32 @llvm.bswap.i32(i32 %or92)
  %95 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mmio, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #7, !srcloc !246
  br label %if.end98

if.end98:                                         ; preds = %if.then91, %if.end87.if.end98_crit_edge
  %97 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mmio, align 4
  %add.ptr102 = getelementptr i8, ptr %98, i32 12
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr102) #7, !srcloc !243
  %100 = call i32 @llvm.bswap.i32(i32 %99)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !247
  %and106 = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.then108, label %if.end98.if.end115_crit_edge

if.end98.if.end115_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

if.then108:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  %or109 = or i32 %100, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !248
  call void @arm_heavy_mb() #7
  %101 = call i32 @llvm.bswap.i32(i32 %or109)
  %102 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mmio, align 4
  %add.ptr114 = getelementptr i8, ptr %103, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 %101) #7, !srcloc !246
  br label %if.end115

if.end115:                                        ; preds = %if.then108, %if.end98.if.end115_crit_edge
  %104 = ptrtoint ptr %ahb_clk to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ahb_clk, align 4
  %call117 = call i32 @clk_get_rate(ptr noundef %105) #7
  %div = udiv i32 %call117, 1000
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !249
  call void @arm_heavy_mb() #7
  %106 = call i32 @llvm.bswap.i32(i32 %div)
  %107 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mmio, align 4
  %add.ptr122 = getelementptr i8, ptr %108, i32 224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122, i32 %106) #7, !srcloc !246
  %call123 = call i32 @ahci_platform_init_host(ptr noundef %pdev, ptr noundef %call57, ptr noundef nonnull @ahci_imx_port_info, ptr noundef nonnull @ahci_platform_sht) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end115.cleanup128_crit_edge, label %disable_sata

if.end115.cleanup128_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup128

disable_sata:                                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @imx_sata_disable(ptr noundef %call57)
  br label %disable_clk

disable_clk:                                      ; preds = %disable_sata, %if.end83.disable_clk_crit_edge, %cleanup80
  %ret.1 = phi i32 [ %89, %cleanup80 ], [ %call84, %if.end83.disable_clk_crit_edge ], [ %call123, %disable_sata ]
  %109 = ptrtoint ptr %sata_clk to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sata_clk, align 4
  call void @clk_disable(ptr noundef %110) #7
  call void @clk_unprepare(ptr noundef %110) #7
  br label %cleanup128

cleanup128:                                       ; preds = %disable_clk, %if.end115.cleanup128_crit_edge, %if.then3.i, %if.end61.cleanup128_crit_edge, %if.then59, %imx8_sata_probe.exit.cleanup128_crit_edge, %do.end13.i, %do.end.i211, %cleanup.thread, %do.end29, %do.end19, %do.end, %if.end.cleanup128_crit_edge, %entry.cleanup128_crit_edge
  %retval.2 = phi i32 [ %10, %do.end ], [ %14, %do.end19 ], [ %18, %do.end29 ], [ %79, %if.then59 ], [ %ret.1, %disable_clk ], [ -22, %entry.cleanup128_crit_edge ], [ -12, %if.end.cleanup128_crit_edge ], [ %retval.0.i, %imx8_sata_probe.exit.cleanup128_crit_edge ], [ 0, %if.end115.cleanup128_crit_edge ], [ %25, %cleanup.thread ], [ -12, %do.end.i211 ], [ -12, %do.end13.i ], [ %call1.i, %if.then3.i ], [ %call.i215, %if.end61.cleanup128_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_platform_remove_one(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahci_platform_get_resources(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_sata_enable(ptr noundef %hpriv) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 23
  %0 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %no_device = getelementptr inbounds %struct.imx_ahci_priv, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %no_device to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %no_device, align 4, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @ahci_platform_enable_regulators(ptr noundef %hpriv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sata_ref_clk = getelementptr inbounds %struct.imx_ahci_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %sata_ref_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sata_ref_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.clk_prepare_enable.exit_crit_edge

if.end4.clk_prepare_enable.exit_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end4
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end7_crit_edge, label %if.then3.i

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end4.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end4.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.disable_regulator_crit_edge, label %clk_prepare_enable.exit.if.end7_crit_edge

clk_prepare_enable.exit.if.end7_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

clk_prepare_enable.exit.disable_regulator_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_regulator

if.end7:                                          ; preds = %clk_prepare_enable.exit.if.end7_crit_edge, %if.end.i.if.end7_crit_edge
  %type = getelementptr inbounds %struct.imx_ahci_priv, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %9, label %if.end7.if.end24_crit_edge [
    i32 1, label %if.end7.if.then11_crit_edge
    i32 2, label %if.end7.if.then11_crit_edge74
    i32 3, label %if.then21
  ]

if.end7.if.then11_crit_edge74:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

if.end7.if.then11_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11

if.end7.if.end24_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then11:                                        ; preds = %if.end7.if.then11_crit_edge, %if.end7.if.then11_crit_edge74
  %gpr = getelementptr inbounds %struct.imx_ahci_priv, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %gpr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpr, align 4
  %phy_params = getelementptr inbounds %struct.imx_ahci_priv, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %phy_params to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phy_params, align 4
  %call.i46 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 52, i32 noundef 134217727, i32 noundef %14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %15 = ptrtoint ptr %gpr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpr, align 4
  %call.i47 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 52, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %17 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %plat_data, align 4
  %mmio1.i = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 3
  %19 = ptrtoint ptr %mmio1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio1.i, align 4
  %type.i = getelementptr inbounds %struct.imx_ahci_priv, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.i = icmp eq i32 %22, 2
  br i1 %cmp.i, label %if.then.i, label %if.end.i48

if.then.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %gpr.i = getelementptr inbounds %struct.imx_ahci_priv, ptr %18, i32 0, i32 12
  %23 = ptrtoint ptr %gpr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gpr.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 20, i32 noundef 1024, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %25 = ptrtoint ptr %gpr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gpr.i, align 4
  %call.i45.i = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 20, i32 noundef 2048, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 10737400) #7
  %28 = ptrtoint ptr %gpr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %gpr.i, align 4
  %call.i46.i = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 20, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end24

if.end.i48:                                       ; preds = %if.then11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !251
  tail call void @arm_heavy_mb() #7
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1065287680) #7, !srcloc !246
  %call.i47.i = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %20, i32 noundef 65536, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %tobool.not.i.i = icmp eq i32 %call.i47.i, 0
  br i1 %tobool.not.i.i, label %imx_phy_reg_addressing.exit.i, label %if.end.i48.do.end_crit_edge

if.end.i48.do.end_crit_edge:                      ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

imx_phy_reg_addressing.exit.i:                    ; preds = %if.end.i48
  %call1.i.i = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %20, i32 noundef 65536, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i49 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i49, label %if.end8.i, label %imx_phy_reg_addressing.exit.i.do.end_crit_edge

imx_phy_reg_addressing.exit.i.do.end_crit_edge:   ; preds = %imx_phy_reg_addressing.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end8.i:                                        ; preds = %imx_phy_reg_addressing.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !252
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #7, !srcloc !246
  %call.i49.i = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %20, i32 noundef 131072, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49.i)
  %tobool.not.i50.i = icmp eq i32 %call.i49.i, 0
  br i1 %tobool.not.i50.i, label %if.end.i52.i, label %if.end8.i.do.end_crit_edge

if.end8.i.do.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i52.i:                                     ; preds = %if.end8.i
  %call1.i51.i = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %20, i32 noundef 131072, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i51.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i51.i, 0
  br i1 %tobool2.not.i.i, label %imx_phy_reg_write.exit.i, label %if.end.i52.i.do.end_crit_edge

if.end.i52.i.do.end_crit_edge:                    ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

imx_phy_reg_write.exit.i:                         ; preds = %if.end.i52.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !253
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16778240) #7, !srcloc !246
  %add.ptr.i63.i = getelementptr i8, ptr %20, i32 380
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %imx_phy_reg_write.exit.i
  %timeout.0.i = phi i32 [ 10, %imx_phy_reg_write.exit.i ], [ %dec.i, %do.cond.i.do.body.i_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !251
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 52428800) #7, !srcloc !246
  %call.i55.i = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %20, i32 noundef 65536, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.i)
  %tobool.not.i56.i = icmp eq i32 %call.i55.i, 0
  br i1 %tobool.not.i56.i, label %imx_phy_reg_addressing.exit60.i, label %do.body.i.do.end_crit_edge

do.body.i.do.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

imx_phy_reg_addressing.exit60.i:                  ; preds = %do.body.i
  %call1.i57.i = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %20, i32 noundef 65536, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57.i)
  %tobool14.not.i = icmp eq i32 %call1.i57.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %imx_phy_reg_addressing.exit60.i.do.end_crit_edge

imx_phy_reg_addressing.exit60.i.do.end_crit_edge: ; preds = %imx_phy_reg_addressing.exit60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end16.i:                                       ; preds = %imx_phy_reg_addressing.exit60.i
  %call.i61.i = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %20, i32 noundef 524288, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i)
  %tobool.not.i62.i = icmp eq i32 %call.i61.i, 0
  br i1 %tobool.not.i62.i, label %imx_phy_reg_read.exit.i, label %if.end16.i.do.end_crit_edge

if.end16.i.do.end_crit_edge:                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

imx_phy_reg_read.exit.i:                          ; preds = %if.end16.i
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63.i) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !254
  %call3.i.i = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %20, i32 noundef 524288, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool18.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %imx_phy_reg_read.exit.i.do.end_crit_edge

imx_phy_reg_read.exit.i.do.end_crit_edge:         ; preds = %imx_phy_reg_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end20.i:                                       ; preds = %imx_phy_reg_read.exit.i
  %31 = and i32 %30, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool21.not.i = icmp eq i32 %31, 0
  br i1 %tobool21.not.i, label %do.cond.i, label %if.end20.i.if.end24_crit_edge

if.end20.i.if.end24_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.cond.i:                                        ; preds = %if.end20.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool24.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool24.not.i, label %do.cond.i.do.end_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.cond.i.do.end_crit_edge:                       ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %do.cond.i.do.end_crit_edge, %imx_phy_reg_read.exit.i.do.end_crit_edge, %if.end16.i.do.end_crit_edge, %imx_phy_reg_addressing.exit60.i.do.end_crit_edge, %do.body.i.do.end_crit_edge, %if.end.i52.i.do.end_crit_edge, %if.end8.i.do.end_crit_edge, %imx_phy_reg_addressing.exit.i.do.end_crit_edge, %if.end.i48.do.end_crit_edge
  %retval.0.i50.ph = phi i32 [ %call.i49.i, %if.end8.i.do.end_crit_edge ], [ %call1.i51.i, %if.end.i52.i.do.end_crit_edge ], [ %call.i47.i, %if.end.i48.do.end_crit_edge ], [ %call1.i.i, %imx_phy_reg_addressing.exit.i.do.end_crit_edge ], [ %call.i61.i, %if.end16.i.do.end_crit_edge ], [ %call.i55.i, %do.body.i.do.end_crit_edge ], [ -110, %do.cond.i.do.end_crit_edge ], [ %call3.i.i, %imx_phy_reg_read.exit.i.do.end_crit_edge ], [ %call1.i57.i, %imx_phy_reg_addressing.exit60.i.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.82, i32 noundef %retval.0.i50.ph) #10
  %32 = ptrtoint ptr %sata_ref_clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sata_ref_clk, align 4
  tail call void @clk_disable(ptr noundef %33) #7
  tail call void @clk_unprepare(ptr noundef %33) #7
  br label %disable_regulator

if.then21:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %34 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %val.i, align 4, !annotation !242
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #7
  %35 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %reg.i, align 4, !annotation !242
  %36 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %plat_data, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  %phy_pclk0.i = getelementptr inbounds %struct.imx_ahci_priv, ptr %37, i32 0, i32 8
  %40 = ptrtoint ptr %phy_pclk0.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %phy_pclk0.i, align 4
  %call.i.i52 = tail call i32 @clk_prepare(ptr noundef %41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i52)
  %tobool.not.i.i53 = icmp eq i32 %call.i.i52, 0
  br i1 %tobool.not.i.i53, label %if.end.i.i, label %if.then21.clk_prepare_enable.exit.i_crit_edge

if.then21.clk_prepare_enable.exit.i_crit_edge:    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.then21
  %call1.i.i54 = tail call i32 @clk_enable(ptr noundef %41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i54)
  %tobool2.not.i.i55 = icmp eq i32 %call1.i.i54, 0
  br i1 %tobool2.not.i.i55, label %if.end.i.i.if.end.i57_crit_edge, label %if.then3.i.i

if.end.i.i.if.end.i57_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i57

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %41) #7
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.then21.clk_prepare_enable.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i52, %if.then21.clk_prepare_enable.exit.i_crit_edge ], [ %call1.i.i54, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i56 = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i56, label %do.end.i, label %clk_prepare_enable.exit.i.if.end.i57_crit_edge

clk_prepare_enable.exit.i.if.end.i57_crit_edge:   ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i57

do.end.i:                                         ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.84) #10
  br label %imx8_sata_enable.exit

if.end.i57:                                       ; preds = %clk_prepare_enable.exit.i.if.end.i57_crit_edge, %if.end.i.i.if.end.i57_crit_edge
  %phy_pclk1.i = getelementptr inbounds %struct.imx_ahci_priv, ptr %37, i32 0, i32 9
  %42 = ptrtoint ptr %phy_pclk1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phy_pclk1.i, align 4
  %call.i1.i = tail call i32 @clk_prepare(ptr noundef %43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool.not.i2.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool.not.i2.i, label %if.end.i5.i, label %if.end.i57.clk_prepare_enable.exit8.i_crit_edge

if.end.i57.clk_prepare_enable.exit8.i_crit_edge:  ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit8.i

if.end.i5.i:                                      ; preds = %if.end.i57
  %call1.i3.i = tail call i32 @clk_enable(ptr noundef %43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool2.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool2.not.i4.i, label %if.end.i5.i.if.end8.i58_crit_edge, label %if.then3.i6.i

if.end.i5.i.if.end8.i58_crit_edge:                ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i58

if.then3.i6.i:                                    ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %43) #7
  br label %clk_prepare_enable.exit8.i

clk_prepare_enable.exit8.i:                       ; preds = %if.then3.i6.i, %if.end.i57.clk_prepare_enable.exit8.i_crit_edge
  %retval.0.i7.i = phi i32 [ %call.i1.i, %if.end.i57.clk_prepare_enable.exit8.i_crit_edge ], [ %call1.i3.i, %if.then3.i6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i7.i)
  %cmp3.i = icmp slt i32 %retval.0.i7.i, 0
  br i1 %cmp3.i, label %do.end7.i, label %clk_prepare_enable.exit8.i.if.end8.i58_crit_edge

clk_prepare_enable.exit8.i.if.end8.i58_crit_edge: ; preds = %clk_prepare_enable.exit8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i58

do.end7.i:                                        ; preds = %clk_prepare_enable.exit8.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.87) #10
  br label %disable_phy_pclk0.i

if.end8.i58:                                      ; preds = %clk_prepare_enable.exit8.i.if.end8.i58_crit_edge, %if.end.i5.i.if.end8.i58_crit_edge
  %epcs_tx_clk.i = getelementptr inbounds %struct.imx_ahci_priv, ptr %37, i32 0, i32 5
  %44 = ptrtoint ptr %epcs_tx_clk.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %epcs_tx_clk.i, align 4
  %call.i9.i = tail call i32 @clk_prepare(ptr noundef %45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool.not.i10.i = icmp eq i32 %call.i9.i, 0
  br i1 %tobool.not.i10.i, label %if.end.i13.i, label %if.end8.i58.clk_prepare_enable.exit16.i_crit_edge

if.end8.i58.clk_prepare_enable.exit16.i_crit_edge: ; preds = %if.end8.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit16.i

if.end.i13.i:                                     ; preds = %if.end8.i58
  %call1.i11.i = tail call i32 @clk_enable(ptr noundef %45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool2.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool2.not.i12.i, label %if.end.i13.i.if.end15.i_crit_edge, label %if.then3.i14.i

if.end.i13.i.if.end15.i_crit_edge:                ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then3.i14.i:                                   ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %45) #7
  br label %clk_prepare_enable.exit16.i

clk_prepare_enable.exit16.i:                      ; preds = %if.then3.i14.i, %if.end8.i58.clk_prepare_enable.exit16.i_crit_edge
  %retval.0.i15.i = phi i32 [ %call.i9.i, %if.end8.i58.clk_prepare_enable.exit16.i_crit_edge ], [ %call1.i11.i, %if.then3.i14.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i15.i)
  %cmp10.i = icmp slt i32 %retval.0.i15.i, 0
  br i1 %cmp10.i, label %do.end14.i, label %clk_prepare_enable.exit16.i.if.end15.i_crit_edge

clk_prepare_enable.exit16.i.if.end15.i_crit_edge: ; preds = %clk_prepare_enable.exit16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

do.end14.i:                                       ; preds = %clk_prepare_enable.exit16.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.90) #10
  br label %disable_phy_pclk1.i

if.end15.i:                                       ; preds = %clk_prepare_enable.exit16.i.if.end15.i_crit_edge, %if.end.i13.i.if.end15.i_crit_edge
  %epcs_rx_clk.i = getelementptr inbounds %struct.imx_ahci_priv, ptr %37, i32 0, i32 6
  %46 = ptrtoint ptr %epcs_rx_clk.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %epcs_rx_clk.i, align 4
  %call.i17.i = tail call i32 @clk_prepare(ptr noundef %47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %tobool.not.i18.i = icmp eq i32 %call.i17.i, 0
  br i1 %tobool.not.i18.i, label %if.end.i21.i, label %if.end15.i.clk_prepare_enable.exit24.i_crit_edge

if.end15.i.clk_prepare_enable.exit24.i_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit24.i

if.end.i21.i:                                     ; preds = %if.end15.i
  %call1.i19.i = tail call i32 @clk_enable(ptr noundef %47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19.i)
  %tobool2.not.i20.i = icmp eq i32 %call1.i19.i, 0
  br i1 %tobool2.not.i20.i, label %if.end.i21.i.if.end22.i_crit_edge, label %if.then3.i22.i

if.end.i21.i.if.end22.i_crit_edge:                ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then3.i22.i:                                   ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %47) #7
  br label %clk_prepare_enable.exit24.i

clk_prepare_enable.exit24.i:                      ; preds = %if.then3.i22.i, %if.end15.i.clk_prepare_enable.exit24.i_crit_edge
  %retval.0.i23.i = phi i32 [ %call.i17.i, %if.end15.i.clk_prepare_enable.exit24.i_crit_edge ], [ %call1.i19.i, %if.then3.i22.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i23.i)
  %cmp17.i = icmp slt i32 %retval.0.i23.i, 0
  br i1 %cmp17.i, label %do.end21.i, label %clk_prepare_enable.exit24.i.if.end22.i_crit_edge

clk_prepare_enable.exit24.i.if.end22.i_crit_edge: ; preds = %clk_prepare_enable.exit24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

do.end21.i:                                       ; preds = %clk_prepare_enable.exit24.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.93) #10
  br label %disable_epcs_tx_clk.i

if.end22.i:                                       ; preds = %clk_prepare_enable.exit24.i.if.end22.i_crit_edge, %if.end.i21.i.if.end22.i_crit_edge
  %phy_apbclk.i = getelementptr inbounds %struct.imx_ahci_priv, ptr %37, i32 0, i32 7
  %48 = ptrtoint ptr %phy_apbclk.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %phy_apbclk.i, align 4
  %call.i25.i = tail call i32 @clk_prepare(ptr noundef %49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %tobool.not.i26.i = icmp eq i32 %call.i25.i, 0
  br i1 %tobool.not.i26.i, label %if.end.i29.i, label %if.end22.i.clk_prepare_enable.exit32.i_crit_edge

if.end22.i.clk_prepare_enable.exit32.i_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit32.i

if.end.i29.i:                                     ; preds = %if.end22.i
  %call1.i27.i = tail call i32 @clk_enable(ptr noundef %49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i27.i)
  %tobool2.not.i28.i = icmp eq i32 %call1.i27.i, 0
  br i1 %tobool2.not.i28.i, label %if.end.i29.i.if.end29.i_crit_edge, label %if.then3.i30.i

if.end.i29.i.if.end29.i_crit_edge:                ; preds = %if.end.i29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.then3.i30.i:                                   ; preds = %if.end.i29.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %49) #7
  br label %clk_prepare_enable.exit32.i

clk_prepare_enable.exit32.i:                      ; preds = %if.then3.i30.i, %if.end22.i.clk_prepare_enable.exit32.i_crit_edge
  %retval.0.i31.i = phi i32 [ %call.i25.i, %if.end22.i.clk_prepare_enable.exit32.i_crit_edge ], [ %call1.i27.i, %if.then3.i30.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i31.i)
  %cmp24.i = icmp slt i32 %retval.0.i31.i, 0
  br i1 %cmp24.i, label %do.end28.i, label %clk_prepare_enable.exit32.i.if.end29.i_crit_edge

clk_prepare_enable.exit32.i.if.end29.i_crit_edge: ; preds = %clk_prepare_enable.exit32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

do.end28.i:                                       ; preds = %clk_prepare_enable.exit32.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.96) #10
  br label %disable_epcs_rx_clk.i

if.end29.i:                                       ; preds = %clk_prepare_enable.exit32.i.if.end29.i_crit_edge, %if.end.i29.i.if.end29.i_crit_edge
  %gpr.i59 = getelementptr inbounds %struct.imx_ahci_priv, ptr %37, i32 0, i32 12
  %50 = ptrtoint ptr %gpr.i59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %gpr.i59, align 4
  %call30.i = call i32 @regmap_read(ptr noundef %51, i32 noundef 720904, ptr noundef nonnull %val.i) #7
  %52 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val.i, align 4
  %and.i = and i32 %53, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp31.i = icmp eq i32 %and.i, 0
  br i1 %cmp31.i, label %if.then32.i, label %if.end29.i.if.end35.i_crit_edge

if.end29.i.if.end35.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %gpr.i59 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %gpr.i59, align 4
  %call.i33.i = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 589824, i32 noundef 50331648, i32 noundef 50331648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then32.i, %if.end29.i.if.end35.i_crit_edge
  %56 = ptrtoint ptr %gpr.i59 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %gpr.i59, align 4
  %call37.i = call i32 @regmap_read(ptr noundef %57, i32 noundef 786440, ptr noundef nonnull %reg.i) #7
  %58 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reg.i, align 4
  %and38.i = and i32 %59, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %cmp39.i = icmp eq i32 %and38.i, 0
  br i1 %cmp39.i, label %if.then40.i, label %if.end35.i.if.end43.i_crit_edge

if.end35.i.if.end43.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

if.then40.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %gpr.i59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %gpr.i59, align 4
  %call.i34.i = call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 589824, i32 noundef 201326592, i32 noundef 201326592, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then40.i, %if.end35.i.if.end43.i_crit_edge
  %62 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %reg.i, align 4
  %64 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val.i, align 4
  %or.i = or i32 %65, %63
  %and44.i = and i32 %or.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %cmp45.i = icmp eq i32 %and44.i, 0
  br i1 %cmp45.i, label %if.then46.i, label %if.end43.i.if.end49.i_crit_edge

if.end43.i.if.end49.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

if.then46.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %gpr.i59 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %gpr.i59, align 4
  %call.i35.i = call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 0, i32 noundef 3342336, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then46.i, %if.end43.i.if.end49.i_crit_edge
  %68 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 720904, ptr %val.i, align 4
  %69 = ptrtoint ptr %gpr.i59 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %gpr.i59, align 4
  %call.i36.i = call i32 @regmap_update_bits_base(ptr noundef %70, i32 noundef 720904, i32 noundef 2097152, i32 noundef 2097152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %71 = ptrtoint ptr %gpr.i59 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %gpr.i59, align 4
  %73 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %val.i, align 4
  %call.i37.i = call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef %74, i32 noundef 8388608, i32 noundef 8388608, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %75 = ptrtoint ptr %gpr.i59 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %gpr.i59, align 4
  %call.i38.i = call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef 655360, i32 noundef 1966080, i32 noundef 524288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %77 = ptrtoint ptr %gpr.i59 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %gpr.i59, align 4
  %call.i39.i = call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef 917504, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %79 = ptrtoint ptr %gpr.i59 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %gpr.i59, align 4
  %call.i40.i = call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef 917504, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %81 = ptrtoint ptr %gpr.i59 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %gpr.i59, align 4
  %call.i41.i = call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 917504, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %83 = ptrtoint ptr %gpr.i59 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %gpr.i59, align 4
  %call.i42.i = call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef 917504, i32 noundef 855638016, i32 noundef 855638016, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %85 = ptrtoint ptr %gpr.i59 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %gpr.i59, align 4
  %call.i43.i = call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 851968, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %87 = ptrtoint ptr %gpr.i59 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %gpr.i59, align 4
  %call.i44.i = call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef 851968, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %89 = ptrtoint ptr %gpr.i59 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %gpr.i59, align 4
  %call.i45.i60 = call i32 @regmap_update_bits_base(ptr noundef %90, i32 noundef 851968, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %91(i32 noundef 214748) #7
  %92 = ptrtoint ptr %gpr.i59 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %gpr.i59, align 4
  %call.i46.i61 = call i32 @regmap_update_bits_base(ptr noundef %93, i32 noundef 851968, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %94 = ptrtoint ptr %gpr.i59 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %gpr.i59, align 4
  %call.i47.i62 = call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef 851968, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %96 = ptrtoint ptr %gpr.i59 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %gpr.i59, align 4
  %call.i48.i = call i32 @regmap_update_bits_base(ptr noundef %97, i32 noundef 655360, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %for.body.i

for.body.i:                                       ; preds = %if.end82.i.for.body.i_crit_edge, %if.end49.i
  %i.059.i = phi i32 [ 0, %if.end49.i ], [ %inc.i, %if.end82.i.for.body.i_crit_edge ]
  %98 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 655364, ptr %reg.i, align 4
  %99 = ptrtoint ptr %gpr.i59 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %gpr.i59, align 4
  %call78.i = call i32 @regmap_read(ptr noundef %100, i32 noundef 655364, ptr noundef nonnull %val.i) #7
  %101 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %val.i, align 4
  %and79.i = and i32 %102, 16
  store i32 %and79.i, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %cmp80.not.i = icmp eq i32 %and79.i, 0
  br i1 %cmp80.not.i, label %if.end82.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end82.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %103(i32 noundef 214748) #7
  %inc.i = add nuw nsw i32 %i.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %for.endthread-pre-split.i, label %if.end82.i.for.body.i_crit_edge

if.end82.i.for.body.i_crit_edge:                  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.endthread-pre-split.i:                        ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %.pr.i = load i32, ptr %val.i, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.endthread-pre-split.i, %for.body.i.for.end.i_crit_edge
  %105 = phi i32 [ %.pr.i, %for.endthread-pre-split.i ], [ %and79.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %105)
  %cmp83.not.i = icmp eq i32 %105, 16
  br i1 %cmp83.not.i, label %do.body88.i, label %do.end87.i

do.end87.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.99) #10
  %106 = ptrtoint ptr %phy_apbclk.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %phy_apbclk.i, align 4
  call void @clk_disable(ptr noundef %107) #7
  call void @clk_unprepare(ptr noundef %107) #7
  br label %disable_epcs_rx_clk.i

do.body88.i:                                      ; preds = %for.end.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !255
  call void @arm_heavy_mb() #7
  %imped_ratio.i = getelementptr inbounds %struct.imx_ahci_priv, ptr %37, i32 0, i32 16
  %108 = ptrtoint ptr %imped_ratio.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %imped_ratio.i, align 4
  %conv.i = trunc i32 %109 to i8
  %phy_base.i = getelementptr inbounds %struct.imx_ahci_priv, ptr %37, i32 0, i32 10
  %110 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %phy_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %111, i32 3
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv.i) #7, !srcloc !256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !257
  call void @arm_heavy_mb() #7
  %112 = ptrtoint ptr %imped_ratio.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %imped_ratio.i, align 4
  %conv95.i = trunc i32 %113 to i8
  %114 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %phy_base.i, align 4
  %add.ptr97.i = getelementptr i8, ptr %115, i32 9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr97.i, i8 %conv95.i) #7, !srcloc !256
  %116 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %phy_base.i, align 4
  %add.ptr99.i = getelementptr i8, ptr %117, i32 3
  %118 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr99.i) #7, !srcloc !258
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !259
  %conv102.i = zext i8 %118 to i32
  %119 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %conv102.i, ptr %reg.i, align 4
  %120 = ptrtoint ptr %imped_ratio.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %imped_ratio.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %conv102.i)
  %cmp104.not.i = icmp eq i32 %121, %conv102.i
  br i1 %cmp104.not.i, label %do.body88.i.if.end111.i_crit_edge, label %do.end110.i, !prof !260

do.body88.i.if.end111.i_crit_edge:                ; preds = %do.body88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111.i

do.end110.i:                                      ; preds = %do.body88.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.102) #10
  br label %if.end111.i

if.end111.i:                                      ; preds = %do.end110.i, %do.body88.i.if.end111.i_crit_edge
  %122 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %phy_base.i, align 4
  %add.ptr115.i = getelementptr i8, ptr %123, i32 9
  %124 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr115.i) #7, !srcloc !258
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !261
  %conv119.i = zext i8 %124 to i32
  %125 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %conv119.i, ptr %reg.i, align 4
  %126 = ptrtoint ptr %imped_ratio.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %imped_ratio.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %conv119.i)
  %cmp121.not.i = icmp eq i32 %127, %conv119.i
  br i1 %cmp121.not.i, label %if.end111.i.if.end133.i_crit_edge, label %do.end132.i, !prof !260

if.end111.i.if.end133.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133.i

do.end132.i:                                      ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.105) #10
  br label %if.end133.i

if.end133.i:                                      ; preds = %do.end132.i, %if.end111.i.if.end133.i_crit_edge
  call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #7
  %128 = ptrtoint ptr %phy_apbclk.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %phy_apbclk.i, align 4
  call void @clk_disable(ptr noundef %129) #7
  call void @clk_unprepare(ptr noundef %129) #7
  %130 = ptrtoint ptr %phy_pclk1.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %phy_pclk1.i, align 4
  call void @clk_disable(ptr noundef %131) #7
  call void @clk_unprepare(ptr noundef %131) #7
  %132 = ptrtoint ptr %phy_pclk0.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %phy_pclk0.i, align 4
  call void @clk_disable(ptr noundef %133) #7
  call void @clk_unprepare(ptr noundef %133) #7
  br label %imx8_sata_enable.exit

disable_epcs_rx_clk.i:                            ; preds = %do.end87.i, %do.end28.i
  %134 = ptrtoint ptr %epcs_rx_clk.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %epcs_rx_clk.i, align 4
  call void @clk_disable(ptr noundef %135) #7
  call void @clk_unprepare(ptr noundef %135) #7
  br label %disable_epcs_tx_clk.i

disable_epcs_tx_clk.i:                            ; preds = %disable_epcs_rx_clk.i, %do.end21.i
  %136 = ptrtoint ptr %epcs_tx_clk.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %epcs_tx_clk.i, align 4
  call void @clk_disable(ptr noundef %137) #7
  call void @clk_unprepare(ptr noundef %137) #7
  br label %disable_phy_pclk1.i

disable_phy_pclk1.i:                              ; preds = %disable_epcs_tx_clk.i, %do.end14.i
  %138 = ptrtoint ptr %phy_pclk1.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %phy_pclk1.i, align 4
  call void @clk_disable(ptr noundef %139) #7
  call void @clk_unprepare(ptr noundef %139) #7
  br label %disable_phy_pclk0.i

disable_phy_pclk0.i:                              ; preds = %disable_phy_pclk1.i, %do.end7.i
  %140 = ptrtoint ptr %phy_pclk0.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %phy_pclk0.i, align 4
  call void @clk_disable(ptr noundef %141) #7
  call void @clk_unprepare(ptr noundef %141) #7
  br label %imx8_sata_enable.exit

imx8_sata_enable.exit:                            ; preds = %disable_phy_pclk0.i, %if.end133.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end24

if.end24:                                         ; preds = %imx8_sata_enable.exit, %if.end20.i.if.end24_crit_edge, %if.then.i, %if.end7.if.end24_crit_edge
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %cleanup

disable_regulator:                                ; preds = %do.end, %clk_prepare_enable.exit.disable_regulator_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %clk_prepare_enable.exit.disable_regulator_crit_edge ], [ %retval.0.i50.ph, %do.end ]
  tail call void @ahci_platform_disable_regulators(ptr noundef %hpriv) #7
  br label %cleanup

cleanup:                                          ; preds = %disable_regulator, %if.end24, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %disable_regulator ], [ 0, %if.end24 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_init_host(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx_sata_disable(ptr noundef %hpriv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 23
  %0 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_data, align 4
  %no_device = getelementptr inbounds %struct.imx_ahci_priv, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %no_device to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %no_device, align 4, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.imx_ahci_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %5, label %if.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb3
    i32 3, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %gpr = getelementptr inbounds %struct.imx_ahci_priv, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %gpr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpr, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 20, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %9 = ptrtoint ptr %gpr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpr, align 4
  %call.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 52, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %gpr4 = getelementptr inbounds %struct.imx_ahci_priv, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %gpr4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpr4, align 4
  %call.i16 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 52, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %epcs_rx_clk = getelementptr inbounds %struct.imx_ahci_priv, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %epcs_rx_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %epcs_rx_clk, align 4
  tail call void @clk_disable(ptr noundef %14) #7
  tail call void @clk_unprepare(ptr noundef %14) #7
  %epcs_tx_clk = getelementptr inbounds %struct.imx_ahci_priv, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %epcs_tx_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %epcs_tx_clk, align 4
  tail call void @clk_disable(ptr noundef %16) #7
  tail call void @clk_unprepare(ptr noundef %16) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb3, %sw.bb, %if.end.sw.epilog_crit_edge
  %sata_ref_clk = getelementptr inbounds %struct.imx_ahci_priv, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %sata_ref_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sata_ref_clk, align 4
  tail call void @clk_disable(ptr noundef %18) #7
  tail call void @clk_unprepare(ptr noundef %18) #7
  tail call void @ahci_platform_disable_regulators(ptr noundef %hpriv) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_ahci_show_temp(ptr noundef %dev, ptr nocapture noundef readnone %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #7
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %temp, align 4
  %call = call i32 @sata_ahci_read_temperature(ptr noundef %dev, ptr noundef nonnull %temp)
  %1 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %temp, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.71, i32 noundef %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_ahci_read_temperature(ptr noundef %dev, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mmio1 = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !251
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %3, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !246
  %call.i = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 65536, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.imx_phy_reg_addressing.exit_crit_edge

entry.imx_phy_reg_addressing.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_phy_reg_addressing.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 65536, i1 noundef zeroext false) #7
  br label %imx_phy_reg_addressing.exit

imx_phy_reg_addressing.exit:                      ; preds = %if.end.i, %entry.imx_phy_reg_addressing.exit_crit_edge
  %call3 = tail call fastcc i32 @imx_phy_reg_write(i16 noundef zeroext 0, ptr noundef %3)
  %call.i139 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 524288, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool.not.i140 = icmp eq i32 %call.i139, 0
  br i1 %tobool.not.i140, label %imx_phy_reg_read.exit, label %imx_phy_reg_addressing.exit.if.end_crit_edge

imx_phy_reg_addressing.exit.if.end_crit_edge:     ; preds = %imx_phy_reg_addressing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

imx_phy_reg_read.exit:                            ; preds = %imx_phy_reg_addressing.exit
  %add.ptr.i141 = getelementptr i8, ptr %3, i32 380
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !254
  %5 = and i32 %4, -65536
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  %conv.i = trunc i32 %6 to i16
  %call3.i = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 524288, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %cmp.not = icmp eq i16 %conv.i, 0
  br i1 %cmp.not, label %imx_phy_reg_read.exit.if.end_crit_edge, label %do.end

imx_phy_reg_read.exit.if.end_crit_edge:           ; preds = %imx_phy_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %imx_phy_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %6) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %imx_phy_reg_read.exit.if.end_crit_edge, %imx_phy_reg_addressing.exit.if.end_crit_edge
  %read_sum.0257 = phi i16 [ %conv.i, %do.end ], [ 0, %imx_phy_reg_read.exit.if.end_crit_edge ], [ 0, %imx_phy_reg_addressing.exit.if.end_crit_edge ]
  %call7 = tail call fastcc i32 @imx_phy_reg_write(i16 noundef zeroext 23130, ptr noundef %3)
  %call.i144 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 524288, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool.not.i145 = icmp eq i32 %call.i144, 0
  br i1 %tobool.not.i145, label %if.end.i149, label %if.end.imx_phy_reg_read.exit151_crit_edge

if.end.imx_phy_reg_read.exit151_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_phy_reg_read.exit151

if.end.i149:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i146 = getelementptr i8, ptr %3, i32 380
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !254
  %8 = and i32 %7, -65536
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %conv.i147 = trunc i32 %9 to i16
  %call3.i148 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 524288, i1 noundef zeroext false) #7
  br label %imx_phy_reg_read.exit151

imx_phy_reg_read.exit151:                         ; preds = %if.end.i149, %if.end.imx_phy_reg_read.exit151_crit_edge
  %read_sum.1 = phi i16 [ %conv.i147, %if.end.i149 ], [ %read_sum.0257, %if.end.imx_phy_reg_read.exit151_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 23130, i16 %read_sum.1)
  %cmp11.not = icmp eq i16 %read_sum.1, 23130
  br i1 %cmp11.not, label %imx_phy_reg_read.exit151.if.end18_crit_edge, label %do.end16

imx_phy_reg_read.exit151.if.end18_crit_edge:      ; preds = %imx_phy_reg_read.exit151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end16:                                         ; preds = %imx_phy_reg_read.exit151
  call void @__sanitizer_cov_trace_pc() #9
  %conv9 = zext i16 %read_sum.1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %conv9) #10
  br label %if.end18

if.end18:                                         ; preds = %do.end16, %imx_phy_reg_read.exit151.if.end18_crit_edge
  %call19 = tail call fastcc i32 @imx_phy_reg_write(i16 noundef zeroext 4660, ptr noundef %3)
  %call.i152 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 524288, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %tobool.not.i153 = icmp eq i32 %call.i152, 0
  br i1 %tobool.not.i153, label %if.end.i157, label %if.end18.imx_phy_reg_read.exit159_crit_edge

if.end18.imx_phy_reg_read.exit159_crit_edge:      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_phy_reg_read.exit159

if.end.i157:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i154 = getelementptr i8, ptr %3, i32 380
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i154) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !254
  %11 = and i32 %10, -65536
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %conv.i155 = trunc i32 %12 to i16
  %call3.i156 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 524288, i1 noundef zeroext false) #7
  br label %imx_phy_reg_read.exit159

imx_phy_reg_read.exit159:                         ; preds = %if.end.i157, %if.end18.imx_phy_reg_read.exit159_crit_edge
  %read_sum.2 = phi i16 [ %conv.i155, %if.end.i157 ], [ %read_sum.1, %if.end18.imx_phy_reg_read.exit159_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 4660, i16 %read_sum.2)
  %cmp23.not = icmp eq i16 %read_sum.2, 4660
  br i1 %cmp23.not, label %imx_phy_reg_read.exit159.if.end30_crit_edge, label %do.end28

imx_phy_reg_read.exit159.if.end30_crit_edge:      ; preds = %imx_phy_reg_read.exit159
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.end28:                                         ; preds = %imx_phy_reg_read.exit159
  call void @__sanitizer_cov_trace_pc() #9
  %conv21 = zext i16 %read_sum.2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %conv21) #10
  br label %if.end30

if.end30:                                         ; preds = %do.end28, %imx_phy_reg_read.exit159.if.end30_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !251
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 385875968) #7, !srcloc !246
  %call.i161 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 65536, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool.not.i162 = icmp eq i32 %call.i161, 0
  br i1 %tobool.not.i162, label %if.end.i164, label %if.end30.imx_phy_reg_addressing.exit166_crit_edge

if.end30.imx_phy_reg_addressing.exit166_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_phy_reg_addressing.exit166

if.end.i164:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i163 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 65536, i1 noundef zeroext false) #7
  br label %imx_phy_reg_addressing.exit166

imx_phy_reg_addressing.exit166:                   ; preds = %if.end.i164, %if.end30.imx_phy_reg_addressing.exit166_crit_edge
  %call.i167 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 524288, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167)
  %tobool.not.i168 = icmp eq i32 %call.i167, 0
  br i1 %tobool.not.i168, label %if.end.i172, label %imx_phy_reg_addressing.exit166.imx_phy_reg_read.exit174_crit_edge

imx_phy_reg_addressing.exit166.imx_phy_reg_read.exit174_crit_edge: ; preds = %imx_phy_reg_addressing.exit166
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_phy_reg_read.exit174

if.end.i172:                                      ; preds = %imx_phy_reg_addressing.exit166
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i169 = getelementptr i8, ptr %3, i32 380
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i169) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !254
  %14 = and i32 %13, -65536
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %conv.i170 = trunc i32 %15 to i16
  %call3.i171 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 524288, i1 noundef zeroext false) #7
  br label %imx_phy_reg_read.exit174

imx_phy_reg_read.exit174:                         ; preds = %if.end.i172, %imx_phy_reg_addressing.exit166.imx_phy_reg_read.exit174_crit_edge
  %mpll_test_reg.0 = phi i16 [ %conv.i170, %if.end.i172 ], [ -1, %imx_phy_reg_addressing.exit166.imx_phy_reg_read.exit174_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !251
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 150994944) #7, !srcloc !246
  %call.i176 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 65536, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %tobool.not.i177 = icmp eq i32 %call.i176, 0
  br i1 %tobool.not.i177, label %if.end.i179, label %imx_phy_reg_read.exit174.imx_phy_reg_addressing.exit181_crit_edge

imx_phy_reg_read.exit174.imx_phy_reg_addressing.exit181_crit_edge: ; preds = %imx_phy_reg_read.exit174
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_phy_reg_addressing.exit181

if.end.i179:                                      ; preds = %imx_phy_reg_read.exit174
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i178 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 65536, i1 noundef zeroext false) #7
  br label %imx_phy_reg_addressing.exit181

imx_phy_reg_addressing.exit181:                   ; preds = %if.end.i179, %imx_phy_reg_read.exit174.imx_phy_reg_addressing.exit181_crit_edge
  %call.i182 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 524288, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %tobool.not.i183 = icmp eq i32 %call.i182, 0
  br i1 %tobool.not.i183, label %if.end.i187, label %imx_phy_reg_addressing.exit181.imx_phy_reg_read.exit189_crit_edge

imx_phy_reg_addressing.exit181.imx_phy_reg_read.exit189_crit_edge: ; preds = %imx_phy_reg_addressing.exit181
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_phy_reg_read.exit189

if.end.i187:                                      ; preds = %imx_phy_reg_addressing.exit181
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i184 = getelementptr i8, ptr %3, i32 380
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i184) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !254
  %17 = and i32 %16, -65536
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  %conv.i185 = trunc i32 %18 to i16
  %call3.i186 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 524288, i1 noundef zeroext false) #7
  br label %imx_phy_reg_read.exit189

imx_phy_reg_read.exit189:                         ; preds = %if.end.i187, %imx_phy_reg_addressing.exit181.imx_phy_reg_read.exit189_crit_edge
  %rtune_ctl_reg.0 = phi i16 [ %conv.i185, %if.end.i187 ], [ -1, %imx_phy_reg_addressing.exit181.imx_phy_reg_read.exit189_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !251
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 134217728) #7, !srcloc !246
  %call.i191 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 65536, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i191)
  %tobool.not.i192 = icmp eq i32 %call.i191, 0
  br i1 %tobool.not.i192, label %if.end.i194, label %imx_phy_reg_read.exit189.imx_phy_reg_addressing.exit196_crit_edge

imx_phy_reg_read.exit189.imx_phy_reg_addressing.exit196_crit_edge: ; preds = %imx_phy_reg_read.exit189
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_phy_reg_addressing.exit196

if.end.i194:                                      ; preds = %imx_phy_reg_read.exit189
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i193 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 65536, i1 noundef zeroext false) #7
  br label %imx_phy_reg_addressing.exit196

imx_phy_reg_addressing.exit196:                   ; preds = %if.end.i194, %imx_phy_reg_read.exit189.imx_phy_reg_addressing.exit196_crit_edge
  %call.i197 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 524288, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i197)
  %tobool.not.i198 = icmp eq i32 %call.i197, 0
  br i1 %tobool.not.i198, label %if.end.i202, label %imx_phy_reg_addressing.exit196.imx_phy_reg_read.exit204_crit_edge

imx_phy_reg_addressing.exit196.imx_phy_reg_read.exit204_crit_edge: ; preds = %imx_phy_reg_addressing.exit196
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_phy_reg_read.exit204

if.end.i202:                                      ; preds = %imx_phy_reg_addressing.exit196
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i199 = getelementptr i8, ptr %3, i32 380
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i199) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !254
  %20 = and i32 %19, -65536
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  %conv.i200 = trunc i32 %21 to i16
  %call3.i201 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 524288, i1 noundef zeroext false) #7
  br label %imx_phy_reg_read.exit204

imx_phy_reg_read.exit204:                         ; preds = %if.end.i202, %imx_phy_reg_addressing.exit196.imx_phy_reg_read.exit204_crit_edge
  %dac_ctl_reg.0 = phi i16 [ %conv.i200, %if.end.i202 ], [ -1, %imx_phy_reg_addressing.exit196.imx_phy_reg_read.exit204_crit_edge ]
  %22 = and i16 %mpll_test_reg.0, 8188
  %and47 = and i16 %mpll_test_reg.0, 1539
  %or = or i16 %and47, 2048
  %23 = and i16 %dac_ctl_reg.0, 2303
  %24 = or i16 %23, 16384
  %25 = and i16 %rtune_ctl_reg.0, 4076
  %26 = or i16 %25, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !251
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 385875968) #7, !srcloc !246
  %call.i206 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 65536, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %tobool.not.i207 = icmp eq i32 %call.i206, 0
  br i1 %tobool.not.i207, label %if.end.i209, label %imx_phy_reg_read.exit204.imx_phy_reg_addressing.exit211_crit_edge

imx_phy_reg_read.exit204.imx_phy_reg_addressing.exit211_crit_edge: ; preds = %imx_phy_reg_read.exit204
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_phy_reg_addressing.exit211

if.end.i209:                                      ; preds = %imx_phy_reg_read.exit204
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i208 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 65536, i1 noundef zeroext false) #7
  br label %imx_phy_reg_addressing.exit211

imx_phy_reg_addressing.exit211:                   ; preds = %if.end.i209, %imx_phy_reg_read.exit204.imx_phy_reg_addressing.exit211_crit_edge
  %call62 = tail call fastcc i32 @imx_phy_reg_write(i16 noundef zeroext %or, ptr noundef %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !251
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 134217728) #7, !srcloc !246
  %call.i213 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 65536, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i213)
  %tobool.not.i214 = icmp eq i32 %call.i213, 0
  br i1 %tobool.not.i214, label %if.end.i216, label %imx_phy_reg_addressing.exit211.imx_phy_reg_addressing.exit218_crit_edge

imx_phy_reg_addressing.exit211.imx_phy_reg_addressing.exit218_crit_edge: ; preds = %imx_phy_reg_addressing.exit211
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_phy_reg_addressing.exit218

if.end.i216:                                      ; preds = %imx_phy_reg_addressing.exit211
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i215 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 65536, i1 noundef zeroext false) #7
  br label %imx_phy_reg_addressing.exit218

imx_phy_reg_addressing.exit218:                   ; preds = %if.end.i216, %imx_phy_reg_addressing.exit211.imx_phy_reg_addressing.exit218_crit_edge
  %call64 = tail call fastcc i32 @imx_phy_reg_write(i16 noundef zeroext %24, ptr noundef %3)
  %call65 = tail call fastcc i32 @read_adc_sum(ptr noundef %dev, i16 noundef zeroext %26, ptr noundef %3)
  %27 = or i16 %25, 17
  %call70 = tail call fastcc i32 @read_adc_sum(ptr noundef %dev, i16 noundef zeroext %27, ptr noundef %3)
  %or73136 = or i16 %or, %22
  %or82137 = and i16 %dac_ctl_reg.0, 30975
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !251
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 385875968) #7, !srcloc !246
  %call.i220 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 65536, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %tobool.not.i221 = icmp eq i32 %call.i220, 0
  br i1 %tobool.not.i221, label %if.end.i223, label %imx_phy_reg_addressing.exit218.imx_phy_reg_addressing.exit225_crit_edge

imx_phy_reg_addressing.exit218.imx_phy_reg_addressing.exit225_crit_edge: ; preds = %imx_phy_reg_addressing.exit218
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_phy_reg_addressing.exit225

if.end.i223:                                      ; preds = %imx_phy_reg_addressing.exit218
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i222 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 65536, i1 noundef zeroext false) #7
  br label %imx_phy_reg_addressing.exit225

imx_phy_reg_addressing.exit225:                   ; preds = %if.end.i223, %imx_phy_reg_addressing.exit218.imx_phy_reg_addressing.exit225_crit_edge
  %call90 = tail call fastcc i32 @imx_phy_reg_write(i16 noundef zeroext %or73136, ptr noundef %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !251
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 134217728) #7, !srcloc !246
  %call.i227 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 65536, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227)
  %tobool.not.i228 = icmp eq i32 %call.i227, 0
  br i1 %tobool.not.i228, label %if.end.i230, label %imx_phy_reg_addressing.exit225.imx_phy_reg_addressing.exit232_crit_edge

imx_phy_reg_addressing.exit225.imx_phy_reg_addressing.exit232_crit_edge: ; preds = %imx_phy_reg_addressing.exit225
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_phy_reg_addressing.exit232

if.end.i230:                                      ; preds = %imx_phy_reg_addressing.exit225
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i229 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 65536, i1 noundef zeroext false) #7
  br label %imx_phy_reg_addressing.exit232

imx_phy_reg_addressing.exit232:                   ; preds = %if.end.i230, %imx_phy_reg_addressing.exit225.imx_phy_reg_addressing.exit232_crit_edge
  %call92 = tail call fastcc i32 @imx_phy_reg_write(i16 noundef zeroext %or82137, ptr noundef %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !251
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 150994944) #7, !srcloc !246
  %call.i234 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 65536, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %tobool.not.i235 = icmp eq i32 %call.i234, 0
  br i1 %tobool.not.i235, label %if.end.i237, label %imx_phy_reg_addressing.exit232.imx_phy_reg_addressing.exit239_crit_edge

imx_phy_reg_addressing.exit232.imx_phy_reg_addressing.exit239_crit_edge: ; preds = %imx_phy_reg_addressing.exit232
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_phy_reg_addressing.exit239

if.end.i237:                                      ; preds = %imx_phy_reg_addressing.exit232
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i236 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %3, i32 noundef 65536, i1 noundef zeroext false) #7
  br label %imx_phy_reg_addressing.exit239

imx_phy_reg_addressing.exit239:                   ; preds = %if.end.i237, %imx_phy_reg_addressing.exit232.imx_phy_reg_addressing.exit239_crit_edge
  %call94 = tail call fastcc i32 @imx_phy_reg_write(i16 noundef zeroext %rtune_ctl_reg.0, ptr noundef %3)
  %call70.off = add i32 %call70, 999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999, i32 %call70.off)
  %28 = icmp ult i32 %call70.off, 1999
  %spec.store.select = select i1 %28, i32 1000, i32 %call70
  %sub = sub i32 %spec.store.select, %call65
  %div97 = sdiv i32 %spec.store.select, 1000
  %div98 = sdiv i32 %sub, %div97
  %mul = mul i32 %div98, -559
  %mul99 = mul i32 %mul, %div98
  %div100 = sdiv i32 %mul99, 1000
  %mul101 = mul i32 %div98, 1379
  %add = add i32 %mul101, -458000
  %add102 = add i32 %add, %div100
  %29 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add102, ptr %temp, align 4
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_phy_reg_write(i16 noundef zeroext %val, ptr noundef %mmio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %val to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !252
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %add.ptr = getelementptr i8, ptr %mmio, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !246
  %call = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %mmio, i32 noundef 131072, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %mmio, i32 noundef 131072, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end12, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %conv, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !253
  tail call void @arm_heavy_mb() #7
  %1 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #7, !srcloc !246
  br label %out

if.end12:                                         ; preds = %if.end4
  %call13 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %mmio, i32 noundef 262144, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %mmio, i32 noundef 262144, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.out_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %if.end16.out_crit_edge, %if.then7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_adc_sum(ptr noundef %dev, i16 noundef zeroext %rtune_ctl_reg, ptr noundef %mmio) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !251
  tail call void @arm_heavy_mb() #7
  %add.ptr.i = getelementptr i8, ptr %mmio, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 150994944) #7, !srcloc !246
  %call.i = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %mmio, i32 noundef 65536, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.imx_phy_reg_addressing.exit_crit_edge

entry.imx_phy_reg_addressing.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_phy_reg_addressing.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %mmio, i32 noundef 65536, i1 noundef zeroext false) #7
  br label %imx_phy_reg_addressing.exit

imx_phy_reg_addressing.exit:                      ; preds = %if.end.i, %entry.imx_phy_reg_addressing.exit_crit_edge
  %call1 = tail call fastcc i32 @imx_phy_reg_write(i16 noundef zeroext %rtune_ctl_reg, ptr noundef %mmio)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !251
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 167772160) #7, !srcloc !246
  %call.i47 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %mmio, i32 noundef 65536, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool.not.i48 = icmp eq i32 %call.i47, 0
  br i1 %tobool.not.i48, label %if.end.i50, label %imx_phy_reg_addressing.exit.imx_phy_reg_addressing.exit52_crit_edge

imx_phy_reg_addressing.exit.imx_phy_reg_addressing.exit52_crit_edge: ; preds = %imx_phy_reg_addressing.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_phy_reg_addressing.exit52

if.end.i50:                                       ; preds = %imx_phy_reg_addressing.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i49 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %mmio, i32 noundef 65536, i1 noundef zeroext false) #7
  br label %imx_phy_reg_addressing.exit52

imx_phy_reg_addressing.exit52:                    ; preds = %if.end.i50, %imx_phy_reg_addressing.exit.imx_phy_reg_addressing.exit52_crit_edge
  %add.ptr.i55 = getelementptr i8, ptr %mmio, i32 380
  br label %while.cond

while.cond:                                       ; preds = %imx_phy_reg_read.exit.while.cond_crit_edge, %imx_phy_reg_addressing.exit52
  %adc_out_reg.0 = phi i16 [ 0, %imx_phy_reg_addressing.exit52 ], [ %adc_out_reg.1, %imx_phy_reg_read.exit.while.cond_crit_edge ]
  %index.0 = phi i32 [ 0, %imx_phy_reg_addressing.exit52 ], [ %spec.select, %imx_phy_reg_read.exit.while.cond_crit_edge ]
  %read_attempt.0 = phi i32 [ 0, %imx_phy_reg_addressing.exit52 ], [ %inc4, %imx_phy_reg_read.exit.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %index.0)
  %cmp = icmp ult i32 %index.0, 2
  br i1 %cmp, label %while.body, label %while.cond.while.cond9.preheader_crit_edge

while.cond.while.cond9.preheader_crit_edge:       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond9.preheader

while.body:                                       ; preds = %while.cond
  %call.i53 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %mmio, i32 noundef 524288, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool.not.i54 = icmp eq i32 %call.i53, 0
  br i1 %tobool.not.i54, label %if.end.i56, label %while.body.imx_phy_reg_read.exit_crit_edge

while.body.imx_phy_reg_read.exit_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_phy_reg_read.exit

if.end.i56:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !254
  %1 = and i32 %0, -65536
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #7
  %conv.i = trunc i32 %2 to i16
  %call3.i = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %mmio, i32 noundef 524288, i1 noundef zeroext false) #7
  br label %imx_phy_reg_read.exit

imx_phy_reg_read.exit:                            ; preds = %if.end.i56, %while.body.imx_phy_reg_read.exit_crit_edge
  %adc_out_reg.1 = phi i16 [ %conv.i, %if.end.i56 ], [ %adc_out_reg.0, %while.body.imx_phy_reg_read.exit_crit_edge ]
  %3 = lshr i16 %adc_out_reg.1, 10
  %.lobit = and i16 %3, 1
  %4 = zext i16 %.lobit to i32
  %spec.select = add nuw nsw i32 %index.0, %4
  %inc4 = add nuw nsw i32 %read_attempt.0, 1
  %exitcond = icmp eq i32 %inc4, 201
  br i1 %exitcond, label %do.end, label %imx_phy_reg_read.exit.while.cond_crit_edge

imx_phy_reg_read.exit.while.cond_crit_edge:       ; preds = %imx_phy_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

do.end:                                           ; preds = %imx_phy_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.78, i32 noundef 200) #10
  br label %while.cond9.preheader

while.cond9.preheader:                            ; preds = %do.end, %while.cond.while.cond9.preheader_crit_edge
  %adc_out_reg.3.ph = phi i16 [ %adc_out_reg.1, %do.end ], [ %adc_out_reg.0, %while.cond.while.cond9.preheader_crit_edge ]
  br label %while.cond9

while.cond9:                                      ; preds = %imx_phy_reg_read.exit65.while.cond9_crit_edge, %while.cond9.preheader
  %adc_out_reg.3 = phi i16 [ %adc_out_reg.4, %imx_phy_reg_read.exit65.while.cond9_crit_edge ], [ %adc_out_reg.3.ph, %while.cond9.preheader ]
  %index.2 = phi i32 [ %index.3, %imx_phy_reg_read.exit65.while.cond9_crit_edge ], [ 0, %while.cond9.preheader ]
  %read_attempt.1 = phi i32 [ %inc24, %imx_phy_reg_read.exit65.while.cond9_crit_edge ], [ 0, %while.cond9.preheader ]
  %read_sum.0 = phi i16 [ %read_sum.1, %imx_phy_reg_read.exit65.while.cond9_crit_edge ], [ 0, %while.cond9.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %index.2)
  %cmp10 = icmp ult i32 %index.2, 80
  br i1 %cmp10, label %while.body12, label %while.cond9.while.end32_crit_edge

while.cond9.while.end32_crit_edge:                ; preds = %while.cond9
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end32

while.body12:                                     ; preds = %while.cond9
  %call.i58 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %mmio, i32 noundef 524288, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool.not.i59 = icmp eq i32 %call.i58, 0
  br i1 %tobool.not.i59, label %if.end.i63, label %while.body12.imx_phy_reg_read.exit65_crit_edge

while.body12.imx_phy_reg_read.exit65_crit_edge:   ; preds = %while.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_phy_reg_read.exit65

if.end.i63:                                       ; preds = %while.body12
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !254
  %6 = and i32 %5, -65536
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  %conv.i61 = trunc i32 %7 to i16
  %call3.i62 = tail call fastcc i32 @imx_phy_crbit_assert(ptr noundef %mmio, i32 noundef 524288, i1 noundef zeroext false) #7
  br label %imx_phy_reg_read.exit65

imx_phy_reg_read.exit65:                          ; preds = %if.end.i63, %while.body12.imx_phy_reg_read.exit65_crit_edge
  %adc_out_reg.4 = phi i16 [ %conv.i61, %if.end.i63 ], [ %adc_out_reg.3, %while.body12.imx_phy_reg_read.exit65_crit_edge ]
  %8 = and i16 %adc_out_reg.4, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool16.not = icmp eq i16 %8, 0
  %and20 = and i16 %adc_out_reg.4, 1023
  %not.tobool16.not = xor i1 %tobool16.not, true
  %inc22 = zext i1 %not.tobool16.not to i32
  %index.3 = add nuw nsw i32 %index.2, %inc22
  %add = select i1 %tobool16.not, i16 0, i16 %and20
  %read_sum.1 = add i16 %add, %read_sum.0
  %inc24 = add nuw nsw i32 %read_attempt.1, 1
  %exitcond71 = icmp eq i32 %inc24, 201
  br i1 %exitcond71, label %do.end30, label %imx_phy_reg_read.exit65.while.cond9_crit_edge

imx_phy_reg_read.exit65.while.cond9_crit_edge:    ; preds = %imx_phy_reg_read.exit65
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond9

do.end30:                                         ; preds = %imx_phy_reg_read.exit65
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.78, i32 noundef 200) #10
  br label %while.end32

while.end32:                                      ; preds = %do.end30, %while.cond9.while.end32_crit_edge
  %read_sum.2 = phi i16 [ %read_sum.1, %do.end30 ], [ %read_sum.0, %while.cond9.while.end32_crit_edge ]
  %conv33 = zext i16 %read_sum.2 to i32
  %mul = mul nuw nsw i32 %conv33, 1000
  %div = udiv i32 %mul, 80
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_phy_crbit_assert(ptr noundef %mmio, i32 noundef %bit, i1 noundef zeroext %assert) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mmio, i32 376
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !243
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !262
  %or = or i32 %1, %bit
  %neg = xor i32 %bit, -1
  %and = and i32 %1, %neg
  %crval.0 = select i1 %assert, i32 %or, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !263
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %crval.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !246
  %add.ptr6 = getelementptr i8, ptr %mmio, i32 380
  %not.assert = xor i1 %assert, true
  %neg11 = sext i1 %not.assert to i32
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !243
  %4 = shl i32 %3, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !264
  %cond = xor i32 %4, %neg11
  %and12 = and i32 %cond, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end15, label %entry.do.end18_crit_edge

entry.do.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

if.end15:                                         ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !243
  %6 = shl i32 %5, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !264
  %cond.1 = xor i32 %6, %neg11
  %and12.1 = and i32 %cond.1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.1)
  %tobool13.not.1 = icmp eq i32 %and12.1, 0
  br i1 %tobool13.not.1, label %if.end15.1, label %if.end15.do.end18_crit_edge

if.end15.do.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

if.end15.1:                                       ; preds = %if.end15
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !243
  %8 = shl i32 %7, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !264
  %cond.2 = xor i32 %8, %neg11
  %and12.2 = and i32 %cond.2, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.2)
  %tobool13.not.2 = icmp eq i32 %and12.2, 0
  br i1 %tobool13.not.2, label %if.end15.2, label %if.end15.1.do.end18_crit_edge

if.end15.1.do.end18_crit_edge:                    ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

if.end15.2:                                       ; preds = %if.end15.1
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !243
  %10 = shl i32 %9, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !264
  %cond.3 = xor i32 %10, %neg11
  %and12.3 = and i32 %cond.3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.3)
  %tobool13.not.3 = icmp eq i32 %and12.3, 0
  br i1 %tobool13.not.3, label %if.end15.3, label %if.end15.2.do.end18_crit_edge

if.end15.2.do.end18_crit_edge:                    ; preds = %if.end15.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

if.end15.3:                                       ; preds = %if.end15.2
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !243
  %12 = shl i32 %11, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !264
  %cond.4 = xor i32 %12, %neg11
  %and12.4 = and i32 %cond.4, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.4)
  %tobool13.not.4 = icmp eq i32 %and12.4, 0
  br i1 %tobool13.not.4, label %if.end15.4, label %if.end15.3.do.end18_crit_edge

if.end15.3.do.end18_crit_edge:                    ; preds = %if.end15.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

if.end15.4:                                       ; preds = %if.end15.3
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !243
  %14 = shl i32 %13, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !264
  %cond.5 = xor i32 %14, %neg11
  %and12.5 = and i32 %cond.5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.5)
  %tobool13.not.5 = icmp eq i32 %and12.5, 0
  br i1 %tobool13.not.5, label %if.end15.5, label %if.end15.4.do.end18_crit_edge

if.end15.4.do.end18_crit_edge:                    ; preds = %if.end15.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

if.end15.5:                                       ; preds = %if.end15.4
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !243
  %16 = shl i32 %15, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !264
  %cond.6 = xor i32 %16, %neg11
  %and12.6 = and i32 %cond.6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.6)
  %tobool13.not.6 = icmp eq i32 %and12.6, 0
  br i1 %tobool13.not.6, label %if.end15.6, label %if.end15.5.do.end18_crit_edge

if.end15.5.do.end18_crit_edge:                    ; preds = %if.end15.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

if.end15.6:                                       ; preds = %if.end15.5
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !243
  %18 = shl i32 %17, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !264
  %cond.7 = xor i32 %18, %neg11
  %and12.7 = and i32 %cond.7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.7)
  %tobool13.not.7 = icmp eq i32 %and12.7, 0
  br i1 %tobool13.not.7, label %if.end15.7, label %if.end15.6.do.end18_crit_edge

if.end15.6.do.end18_crit_edge:                    ; preds = %if.end15.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

if.end15.7:                                       ; preds = %if.end15.6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !243
  %20 = shl i32 %19, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !264
  %cond.8 = xor i32 %20, %neg11
  %and12.8 = and i32 %cond.8, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.8)
  %tobool13.not.8 = icmp eq i32 %and12.8, 0
  br i1 %tobool13.not.8, label %if.end15.8, label %if.end15.7.do.end18_crit_edge

if.end15.7.do.end18_crit_edge:                    ; preds = %if.end15.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

if.end15.8:                                       ; preds = %if.end15.7
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !243
  %22 = shl i32 %21, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !264
  %cond.9 = xor i32 %22, %neg11
  %and12.9 = and i32 %cond.9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.9)
  %tobool13.not.9 = icmp eq i32 %and12.9, 0
  br i1 %tobool13.not.9, label %if.end15.9, label %if.end15.8.do.end18_crit_edge

if.end15.8.do.end18_crit_edge:                    ; preds = %if.end15.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

if.end15.9:                                       ; preds = %if.end15.8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  br label %do.end18

do.end18:                                         ; preds = %if.end15.9, %if.end15.8.do.end18_crit_edge, %if.end15.7.do.end18_crit_edge, %if.end15.6.do.end18_crit_edge, %if.end15.5.do.end18_crit_edge, %if.end15.4.do.end18_crit_edge, %if.end15.3.do.end18_crit_edge, %if.end15.2.do.end18_crit_edge, %if.end15.1.do.end18_crit_edge, %if.end15.do.end18_crit_edge, %entry.do.end18_crit_edge
  %23 = phi i32 [ 0, %entry.do.end18_crit_edge ], [ 0, %if.end15.do.end18_crit_edge ], [ 0, %if.end15.1.do.end18_crit_edge ], [ 0, %if.end15.2.do.end18_crit_edge ], [ 0, %if.end15.3.do.end18_crit_edge ], [ 0, %if.end15.4.do.end18_crit_edge ], [ 0, %if.end15.5.do.end18_crit_edge ], [ 0, %if.end15.6.do.end18_crit_edge ], [ 0, %if.end15.7.do.end18_crit_edge ], [ 0, %if.end15.8.do.end18_crit_edge ], [ -110, %if.end15.9 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_enable_regulators(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_platform_disable_regulators(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_imx_softreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %dev = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 32
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plat_data, align 4
  %type = getelementptr inbounds %struct.imx_ahci_priv, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ata_port_operations, ptr @ahci_pmp_retry_srst_ops, i32 0, i32 15) to i32))
  %.val = load ptr, ptr getelementptr inbounds (%struct.ata_port_operations, ptr @ahci_pmp_retry_srst_ops, i32 0, i32 15), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ata_port_operations, ptr @ahci_ops, i32 0, i32 15) to i32))
  %.val9 = load ptr, ptr getelementptr inbounds (%struct.ata_port_operations, ptr @ahci_ops, i32 0, i32 15), align 4
  %12 = select i1 %cmp, ptr %.val, ptr %.val9
  %call3 = tail call i32 %12(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #7
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahci_imx_error_handler(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 32
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 32
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %mmio2 = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio2, align 4
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %5, i32 0, i32 23
  %8 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plat_data, align 4
  tail call void @ahci_error_handler(ptr noundef %ap) #7
  %first_time = getelementptr inbounds %struct.imx_ahci_priv, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %first_time to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %first_time, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %12 = load i32, ptr @ahci_imx_hotplug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp eq i32 %12, 0
  br i1 %tobool3.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %first_time to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %first_time, align 1
  %link = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25
  %call5 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %link, i32 noundef 0) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %for.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %7, i32 376
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !266
  tail call void @arm_heavy_mb() #7
  %15 = or i32 %14, 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %15) #7, !srcloc !246
  tail call fastcc void @imx_sata_disable(ptr noundef %5)
  %no_device = getelementptr inbounds %struct.imx_ahci_priv, ptr %9, i32 0, i32 13
  %16 = ptrtoint ptr %no_device to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %no_device, align 4
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.107) #10
  %19 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1, align 32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.110) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ahci_imx_host_stop(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_data, align 4
  tail call fastcc void @imx_sata_disable(ptr noundef %1)
  %sata_clk = getelementptr inbounds %struct.imx_ahci_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %sata_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sata_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_error_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_ahci_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call1 = tail call i32 @ahci_platform_suspend_host(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @imx_sata_disable(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_ahci_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call1 = tail call fastcc i32 @imx_sata_enable(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @ahci_platform_resume_host(ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !38, !39, !40, !42, !44, !45, !46, !48, !50, !51, !52, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105, !107, !109, !110, !111, !113, !115, !116, !117, !119, !121, !122, !123, !125, !127, !128, !129, !131, !133, !134, !135, !137, !139, !140, !141, !143, !145, !147, !148, !150, !152, !153, !155, !157, !158, !159, !160, !162, !163, !165, !166, !168, !169, !170, !171, !173, !174, !176, !178, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !218, !220, !221, !222, !223, !225, !226, !227, !229, !231}
!llvm.module.flags = !{!233, !234, !235, !236, !237, !238, !239, !240}
!llvm.ident = !{!241}

!0 = !{ptr @__param_hotplug, !1, !"__param_hotplug", i1 false, i1 false}
!1 = !{!"../drivers/ata/ahci_imx.c", i32 112, i32 1}
!2 = !{ptr @__UNIQUE_ID_hotplugtype320, !1, !"__UNIQUE_ID_hotplugtype320", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_hotplug321, !4, !"__UNIQUE_ID_hotplug321", i1 false, i1 false}
!4 = !{!"../drivers/ata/ahci_imx.c", i32 113, i32 1}
!5 = !{ptr @__initcall__kmod_ahci_imx__322_1228_imx_ahci_driver_init6, !6, !"__initcall__kmod_ahci_imx__322_1228_imx_ahci_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/ata/ahci_imx.c", i32 1228, i32 1}
!7 = !{ptr @__exitcall_imx_ahci_driver_exit, !6, !"__exitcall_imx_ahci_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description323, !9, !"__UNIQUE_ID_description323", i1 false, i1 false}
!9 = !{!"../drivers/ata/ahci_imx.c", i32 1230, i32 1}
!10 = !{ptr @__UNIQUE_ID_author324, !11, !"__UNIQUE_ID_author324", i1 false, i1 false}
!11 = !{!"../drivers/ata/ahci_imx.c", i32 1231, i32 1}
!12 = !{ptr @__UNIQUE_ID_file325, !13, !"__UNIQUE_ID_file325", i1 false, i1 false}
!13 = !{!"../drivers/ata/ahci_imx.c", i32 1232, i32 1}
!14 = !{ptr @__UNIQUE_ID_license326, !13, !"__UNIQUE_ID_license326", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias327, !16, !"__UNIQUE_ID_alias327", i1 false, i1 false}
!16 = !{!"../drivers/ata/ahci_imx.c", i32 1233, i32 1}
!17 = !{ptr @ahci_imx_hotplug, !18, !"ahci_imx_hotplug", i1 false, i1 false}
!18 = !{!"../drivers/ata/ahci_imx.c", i32 111, i32 12}
!19 = !{ptr @__param_str_hotplug, !1, !"__param_str_hotplug", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/ata/ahci_imx.c", i32 1223, i32 11}
!22 = !{ptr @imx_ahci_driver, !23, !"imx_ahci_driver", i1 false, i1 false}
!23 = !{!"../drivers/ata/ahci_imx.c", i32 1219, i32 31}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ata/ahci_imx.c", i32 1067, i32 40}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/ata/ahci_imx.c", i32 1069, i32 3}
!28 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @imx_ahci_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @imx_ahci_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/ata/ahci_imx.c", i32 1073, i32 44}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/ata/ahci_imx.c", i32 1075, i32 3}
!38 = !{ptr @imx_ahci_probe._entry.8, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @imx_ahci_probe._entry_ptr.10, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/ata/ahci_imx.c", i32 1079, i32 39}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/ata/ahci_imx.c", i32 1081, i32 3}
!44 = !{ptr @imx_ahci_probe._entry.12, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @imx_ahci_probe._entry_ptr.14, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/ata/ahci_imx.c", i32 1089, i32 8}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/ata/ahci_imx.c", i32 1091, i32 4}
!50 = !{ptr @imx_ahci_probe._entry.16, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @imx_ahci_probe._entry_ptr.18, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/ata/ahci_imx.c", i32 1127, i32 8}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/ata/ahci_imx.c", i32 1136, i32 3}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @imx_ahci_probe._entry.20, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @imx_ahci_probe._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/ata/ahci_imx.c", i32 952, i32 4}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @imx_ahci_parse_props._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @imx_ahci_parse_props._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/ata/ahci_imx.c", i32 960, i32 5}
!66 = !{ptr @imx_ahci_parse_props._entry.26, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @imx_ahci_parse_props._entry_ptr.28, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/ata/ahci_imx.c", i32 968, i32 4}
!70 = !{ptr @imx_ahci_parse_props._entry.29, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @imx_ahci_parse_props._entry_ptr.31, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/ata/ahci_imx.c", i32 907, i32 11}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/ata/ahci_imx.c", i32 912, i32 11}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/ata/ahci_imx.c", i32 917, i32 11}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/ata/ahci_imx.c", i32 922, i32 11}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/ata/ahci_imx.c", i32 927, i32 11}
!82 = !{ptr @gpr13_props, !83, !"gpr13_props", i1 false, i1 false}
!83 = !{!"../drivers/ata/ahci_imx.c", i32 905, i32 34}
!84 = !{ptr @gpr13_tx_level, !85, !"gpr13_tx_level", i1 false, i1 false}
!85 = !{!"../drivers/ata/ahci_imx.c", i32 831, i32 31}
!86 = !{ptr @gpr13_tx_boost, !87, !"gpr13_tx_boost", i1 false, i1 false}
!87 = !{!"../drivers/ata/ahci_imx.c", i32 866, i32 31}
!88 = !{ptr @gpr13_tx_atten, !89, !"gpr13_tx_atten", i1 false, i1 false}
!89 = !{!"../drivers/ata/ahci_imx.c", i32 885, i32 31}
!90 = !{ptr @gpr13_rx_eq, !91, !"gpr13_rx_eq", i1 false, i1 false}
!91 = !{!"../drivers/ata/ahci_imx.c", i32 894, i32 31}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/ata/ahci_imx.c", i32 987, i32 31}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/ata/ahci_imx.c", i32 989, i32 63}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/ata/ahci_imx.c", i32 994, i32 4}
!98 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @imx8_sata_probe._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @imx8_sata_probe._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/ata/ahci_imx.c", i32 998, i32 3}
!103 = !{ptr @imx8_sata_probe._entry.41, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @imx8_sata_probe._entry_ptr.43, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/ata/ahci_imx.c", i32 1002, i32 40}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/ata/ahci_imx.c", i32 1004, i32 3}
!109 = !{ptr @imx8_sata_probe._entry.45, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @imx8_sata_probe._entry_ptr.47, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/ata/ahci_imx.c", i32 1008, i32 43}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/ata/ahci_imx.c", i32 1010, i32 3}
!115 = !{ptr @imx8_sata_probe._entry.49, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @imx8_sata_probe._entry_ptr.51, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/ata/ahci_imx.c", i32 1013, i32 43}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/ata/ahci_imx.c", i32 1015, i32 3}
!121 = !{ptr @imx8_sata_probe._entry.53, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @imx8_sata_probe._entry_ptr.55, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/ata/ahci_imx.c", i32 1018, i32 41}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/ata/ahci_imx.c", i32 1020, i32 3}
!127 = !{ptr @imx8_sata_probe._entry.57, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @imx8_sata_probe._entry_ptr.59, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/ata/ahci_imx.c", i32 1023, i32 41}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/ata/ahci_imx.c", i32 1025, i32 3}
!133 = !{ptr @imx8_sata_probe._entry.61, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @imx8_sata_probe._entry_ptr.63, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/ata/ahci_imx.c", i32 1028, i32 42}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/ata/ahci_imx.c", i32 1030, i32 3}
!139 = !{ptr @imx8_sata_probe._entry.65, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @imx8_sata_probe._entry_ptr.67, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/ata/ahci_imx.c", i32 1035, i32 55}
!143 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/ata/ahci_imx.c", i32 1040, i32 50}
!145 = !{ptr @fsl_sata_ahci_groups, !146, !"fsl_sata_ahci_groups", i1 false, i1 false}
!146 = !{!"../drivers/ata/ahci_imx.c", i32 443, i32 1}
!147 = !{ptr @fsl_sata_ahci_group, !146, !"fsl_sata_ahci_group", i1 false, i1 false}
!148 = !{ptr @fsl_sata_ahci_attrs, !149, !"fsl_sata_ahci_attrs", i1 false, i1 false}
!149 = !{!"../drivers/ata/ahci_imx.c", i32 439, i32 26}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/ata/ahci_imx.c", i32 437, i32 8}
!152 = !{ptr @sensor_dev_attr_temp1_input, !151, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!153 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/ata/ahci_imx.c", i32 430, i32 22}
!155 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/ata/ahci_imx.c", i32 344, i32 3}
!157 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @sata_ahci_read_temperature._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @sata_ahci_read_temperature._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @sata_ahci_read_temperature._entry.74, !161, !"_entry", i1 false, i1 false}
!161 = !{!"../drivers/ata/ahci_imx.c", i32 349, i32 3}
!162 = !{ptr @sata_ahci_read_temperature._entry_ptr.75, !161, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @sata_ahci_read_temperature._entry.76, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../drivers/ata/ahci_imx.c", i32 354, i32 3}
!165 = !{ptr @sata_ahci_read_temperature._entry_ptr.77, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/ata/ahci_imx.c", i32 302, i32 4}
!168 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @read_adc_sum._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @read_adc_sum._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @read_adc_sum._entry.80, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../drivers/ata/ahci_imx.c", i32 319, i32 4}
!173 = !{ptr @read_adc_sum._entry_ptr.81, !172, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @fsl_sata_ahci_of_thermal_ops, !175, !"fsl_sata_ahci_of_thermal_ops", i1 false, i1 false}
!175 = !{!"../drivers/ata/ahci_imx.c", i32 433, i32 48}
!176 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/ata/ahci_imx.c", i32 690, i32 4}
!178 = !{ptr @.str.83, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @imx_sata_enable._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @imx_sata_enable._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.84, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/ata/ahci_imx.c", i32 455, i32 3}
!183 = !{ptr @.str.85, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @imx8_sata_enable._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @imx8_sata_enable._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/ata/ahci_imx.c", i32 460, i32 3}
!188 = !{ptr @imx8_sata_enable._entry.86, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @imx8_sata_enable._entry_ptr.88, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.90, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/ata/ahci_imx.c", i32 465, i32 3}
!192 = !{ptr @imx8_sata_enable._entry.89, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @imx8_sata_enable._entry_ptr.91, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.93, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/ata/ahci_imx.c", i32 470, i32 3}
!196 = !{ptr @imx8_sata_enable._entry.92, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @imx8_sata_enable._entry_ptr.94, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.96, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/ata/ahci_imx.c", i32 475, i32 3}
!200 = !{ptr @imx8_sata_enable._entry.95, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @imx8_sata_enable._entry_ptr.97, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.99, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/ata/ahci_imx.c", i32 606, i32 3}
!204 = !{ptr @imx8_sata_enable._entry.98, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @imx8_sata_enable._entry_ptr.100, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.102, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/ata/ahci_imx.c", i32 616, i32 4}
!208 = !{ptr @imx8_sata_enable._entry.101, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @imx8_sata_enable._entry_ptr.103, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.105, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/ata/ahci_imx.c", i32 620, i32 4}
!212 = !{ptr @imx8_sata_enable._entry.104, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @imx8_sata_enable._entry_ptr.106, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @ahci_imx_port_info, !215, !"ahci_imx_port_info", i1 false, i1 false}
!215 = !{!"../drivers/ata/ahci_imx.c", i32 802, i32 35}
!216 = !{ptr @ahci_imx_ops, !217, !"ahci_imx_ops", i1 false, i1 false}
!217 = !{!"../drivers/ata/ahci_imx.c", i32 795, i32 35}
!218 = !{ptr @.str.107, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/ata/ahci_imx.c", i32 774, i32 2}
!220 = !{ptr @.str.108, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @ahci_imx_error_handler._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @ahci_imx_error_handler._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.110, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/ata/ahci_imx.c", i32 775, i32 2}
!225 = !{ptr @ahci_imx_error_handler._entry.109, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @ahci_imx_error_handler._entry_ptr.111, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @ahci_platform_sht, !228, !"ahci_platform_sht", i1 false, i1 false}
!228 = !{!"../drivers/ata/ahci_imx.c", i32 977, i32 34}
!229 = !{ptr @imx_ahci_of_match, !230, !"imx_ahci_of_match", i1 false, i1 false}
!230 = !{!"../drivers/ata/ahci_imx.c", i32 809, i32 34}
!231 = !{ptr @ahci_imx_pm_ops, !232, !"ahci_imx_pm_ops", i1 false, i1 false}
!232 = !{!"../drivers/ata/ahci_imx.c", i32 1217, i32 8}
!233 = !{i32 1, !"wchar_size", i32 2}
!234 = !{i32 1, !"min_enum_size", i32 4}
!235 = !{i32 8, !"branch-target-enforcement", i32 0}
!236 = !{i32 8, !"sign-return-address", i32 0}
!237 = !{i32 8, !"sign-return-address-all", i32 0}
!238 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!239 = !{i32 7, !"uwtable", i32 1}
!240 = !{i32 7, !"frame-pointer", i32 2}
!241 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!242 = !{!"auto-init"}
!243 = !{i64 4897367}
!244 = !{i64 2156689712}
!245 = !{i64 2156689935}
!246 = !{i64 4896949}
!247 = !{i64 2156690661}
!248 = !{i64 2156690891}
!249 = !{i64 2156691317}
!250 = !{i8 0, i8 2}
!251 = !{i64 2156622359}
!252 = !{i64 2156622758}
!253 = !{i64 2156623157}
!254 = !{i64 2156623829}
!255 = !{i64 2156646412}
!256 = !{i64 4896752}
!257 = !{i64 2156646801}
!258 = !{i64 4897147}
!259 = !{i64 2156647235}
!260 = !{!"branch_weights", i32 2000, i32 1}
!261 = !{i64 2156649288}
!262 = !{i64 2156621249}
!263 = !{i64 2156621466}
!264 = !{i64 2156622138}
!265 = !{i64 2156654422}
!266 = !{i64 2156654665}
