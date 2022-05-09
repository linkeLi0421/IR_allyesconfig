; ModuleID = '/llk/IR_all_yes/drivers/ata/sata_highbank.c_pt.bc'
source_filename = "../drivers/ata/sata_highbank.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.phy_lane_info = type { ptr, i8, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ahci_host_priv = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [5 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.ecx_plat_data = type { i32, i32, i32, [3 x ptr], i32, [8 x i32] }
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

@__initcall__kmod_sata_highbank__322_625_ahci_highbank_driver_init6 = internal global ptr @ahci_highbank_driver_init, section ".initcall6.init", align 4
@ahci_highbank_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ahci_highbank_probe, ptr @ata_platform_remove_one, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ahci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_highbank_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ahci_highbank_driver_exit = internal global ptr @ahci_highbank_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description323 = internal constant [69 x i8] c"sata_highbank.description=Calxeda Highbank AHCI SATA platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author324 = internal constant [65 x i8] c"sata_highbank.author=Mark Langsdorf <mark.langsdorf@calxeda.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file325 = internal constant [45 x i8] c"sata_highbank.file=drivers/ata/sata_highbank\00", section ".modinfo", align 1
@__UNIQUE_ID_license326 = internal constant [26 x i8] c"sata_highbank.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias327 = internal constant [34 x i8] c"sata_highbank.alias=sata:highbank\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"highbank-ahci\00", [18 x i8] zeroinitializer }, align 32
@ahci_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"calxeda,hb-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ahci_highbank_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ahci_highbank_suspend, ptr @ahci_highbank_resume, ptr @ahci_highbank_suspend, ptr @ahci_highbank_resume, ptr @ahci_highbank_suspend, ptr @ahci_highbank_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ahci_highbank_port_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_highbank_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@ahci_highbank_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 467, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"no mmio space\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ahci_highbank_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/ata/sata_highbank.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ahci_highbank_probe._entry_ptr = internal global ptr @ahci_highbank_probe._entry, section ".printk_index", align 4
@ahci_highbank_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 479, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't alloc ahci_host_priv\0A\00", [36 x i8] zeroinitializer }, align 32
@ahci_highbank_probe._entry_ptr.8 = internal global ptr @ahci_highbank_probe._entry.6, section ".printk_index", align 4
@ahci_highbank_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 484, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"can't alloc ecx_plat_data\0A\00", [37 x i8] zeroinitializer }, align 32
@ahci_highbank_probe._entry_ptr.11 = internal global ptr @ahci_highbank_probe._entry.9, section ".printk_index", align 4
@ahci_highbank_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 493, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"can't map %pR\0A\00", [17 x i8] zeroinitializer }, align 32
@ahci_highbank_probe._entry_ptr.14 = internal global ptr @ahci_highbank_probe._entry.12, section ".printk_index", align 4
@ahci_ignore_sss = external dso_local local_unnamed_addr global i32, align 4
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmio %pR\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"port 0x%x\00", [22 x i8] zeroinitializer }, align 32
@ata_dummy_port_ops = external dso_local global %struct.ata_port_operations, align 4
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"platform\00", [23 x i8] zeroinitializer }, align 32
@ahci_highbank_platform_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.31, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.31, ptr null, i32 32, i32 -1, i16 168, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr @ahci_shost_groups, ptr @ahci_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ahci_highbank_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_highbank_hardreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ecx_transmit_led_message, ptr null, ptr null, ptr @ahci_ops }, [44 x i8] zeroinitializer }, align 32
@ahci_ops = external dso_local global %struct.ata_port_operations, align 4
@ahci_highbank_hardreset.timing = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 5, i32 100, i32 500], [20 x i8] zeroinitializer }, align 32
@port_data = internal global { [24 x %struct.phy_lane_info], [32 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cphy_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cphy_lock\00", [22 x i8] zeroinitializer }, align 32
@sgpio_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sgpio_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"calxeda,port-phys\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"#phy-cells\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"phydev\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"calxeda,tx-atten\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"calxeda,sgpio\00", [18 x i8] zeroinitializer }, align 32
@highbank_set_em_messages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 191, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get GPIO %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"highbank_set_em_messages\00", [39 x i8] zeroinitializer }, align 32
@highbank_set_em_messages._entry_ptr = internal global ptr @highbank_set_em_messages._entry, section ".printk_index", align 4
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CX SGPIO\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"calxeda,led-order\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"calxeda,pre-clocks\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"calxeda,post-clocks\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sata_highbank\00", [18 x i8] zeroinitializer }, align 32
@ahci_shost_groups = external dso_local global [0 x ptr], align 4
@ahci_sdev_groups = external dso_local global [0 x ptr], align 4
@ahci_highbank_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 576, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"firmware update required for suspend/resume\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ahci_highbank_suspend\00", [42 x i8] zeroinitializer }, align 32
@ahci_highbank_suspend._entry_ptr = internal global ptr @ahci_highbank_suspend._entry, section ".printk_index", align 4
@___asan_gen_.34 = private unnamed_addr constant [21 x i8] c"ahci_highbank_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 615, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 618, i32 25 }
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"ahci_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 445, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"ahci_highbank_pm_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 612, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant [24 x i8] c"ahci_highbank_port_info\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 434, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 467, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 479, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 484, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 493, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 539, i32 21 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 540, i32 21 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 556, i32 24 }
@___asan_gen_.94 = private unnamed_addr constant [27 x i8] c"ahci_highbank_platform_sht\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 441, i32 34 }
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"ahci_highbank_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 428, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"timing\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 388, i32 29 }
@___asan_gen_.103 = private unnamed_addr constant [10 x i8] c"port_data\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 62, i32 29 }
@___asan_gen_.106 = private unnamed_addr constant [10 x i8] c"cphy_lock\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 52, i32 8 }
@___asan_gen_.112 = private unnamed_addr constant [11 x i8] c"sgpio_lock\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 64, i32 8 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 340, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 340, i32 26 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 356, i32 40 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 362, i32 40 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 188, i32 37 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 191, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 194, i32 34 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 198, i32 33 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 201, i32 31 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 203, i32 31 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 442, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.164 = private constant [31 x i8] c"../drivers/ata/sata_highbank.c\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 576, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_alias327, ptr @__UNIQUE_ID_author324, ptr @__UNIQUE_ID_description323, ptr @__UNIQUE_ID_file325, ptr @__UNIQUE_ID_license326, ptr @__exitcall_ahci_highbank_driver_exit, ptr @__initcall__kmod_sata_highbank__322_625_ahci_highbank_driver_init6, ptr @ahci_highbank_driver_exit, ptr @ahci_highbank_probe._entry, ptr @ahci_highbank_probe._entry.12, ptr @ahci_highbank_probe._entry.6, ptr @ahci_highbank_probe._entry.9, ptr @ahci_highbank_probe._entry_ptr, ptr @ahci_highbank_probe._entry_ptr.11, ptr @ahci_highbank_probe._entry_ptr.14, ptr @ahci_highbank_probe._entry_ptr.8, ptr @ahci_highbank_suspend._entry, ptr @ahci_highbank_suspend._entry_ptr, ptr @highbank_set_em_messages._entry, ptr @highbank_set_em_messages._entry_ptr, ptr @ahci_highbank_driver, ptr @.str, ptr @ahci_of_match, ptr @ahci_highbank_pm_ops, ptr @ahci_highbank_port_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @ahci_highbank_platform_sht, ptr @ahci_highbank_ops, ptr @ahci_highbank_hardreset.timing, ptr @port_data, ptr @cphy_lock, ptr @.str.18, ptr @sgpio_lock, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_highbank_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_highbank_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_highbank_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_highbank_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_highbank_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_highbank_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_highbank_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_highbank_platform_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_highbank_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_highbank_hardreset.timing to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_data to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cphy_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgpio_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highbank_set_em_messages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_highbank_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_highbank_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ahci_highbank_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ahci_highbank_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ahci_highbank_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_highbank_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cphy_base.i = alloca [6 x ptr], align 4
  %phy_nodes.i = alloca [6 x ptr], align 4
  %tx_atten.i = alloca [24 x i32], align 4
  %tmp.i = alloca i32, align 4
  %phy_data.i = alloca %struct.of_phandle_args, align 4
  %pi = alloca %struct.ata_port_info, align 4
  %ppi = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pi) #6
  %0 = getelementptr inbounds %struct.ata_port_info, ptr %pi, i32 0, i32 6
  %1 = call ptr @memcpy(ptr %pi, ptr @ahci_highbank_port_info, i32 28)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #6
  %2 = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %3 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pi, ptr %ppi, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %2, align 4
  %call = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool5.not = icmp eq i32 %call2, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 132, i32 noundef 3520) #6
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %do.end13, label %if.end14

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %call.i165 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 60, i32 noundef 3520) #6
  %tobool16.not = icmp eq ptr %call.i165, null
  br i1 %tobool16.not, label %do.end20, label %if.end21

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %irq22 = getelementptr inbounds %struct.ahci_host_priv, ptr %call.i, i32 0, i32 24
  %5 = ptrtoint ptr %irq22 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call2, ptr %irq22, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %0, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call.i, align 4
  %or = or i32 %10, %8
  store i32 %or, ptr %call.i, align 4
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i, align 4
  %sub.i166 = sub i32 1, %12
  %add.i = add i32 %sub.i166, %14
  %call24 = call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %12, i32 noundef %add.i) #6
  %mmio = getelementptr inbounds %struct.ahci_host_priv, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call24, ptr %mmio, align 4
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %do.end30, label %if.end31

do.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef nonnull %call) #9
  br label %cleanup

if.end31:                                         ; preds = %if.end21
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %16 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cphy_base.i) #6
  %18 = call ptr @memset(ptr %cphy_base.i, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %phy_nodes.i) #6
  %19 = call ptr @memset(ptr %phy_nodes.i, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tx_atten.i) #6
  %20 = call ptr @memset(ptr %tx_atten.i, i32 0, i32 96)
  %21 = call ptr @memset(ptr @port_data, i32 0, i32 192)
  %args.i = getelementptr inbounds %struct.of_phandle_args, ptr %phy_data.i, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end31
  %phy_count.0.i = phi i32 [ 0, %if.end31 ], [ %phy_count.1.i, %do.cond.i.do.body.i_crit_edge ]
  %port.0.i = phi i32 [ 0, %if.end31 ], [ %add26.i, %do.cond.i.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %22 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %tmp.i, align 4, !annotation !101
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %phy_data.i) #6
  %23 = call ptr @memset(ptr %phy_data.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %17, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef -1, i32 noundef %port.0.i, ptr noundef nonnull %phy_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i167 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i167, label %for.cond.preheader.i, label %do.end.i

for.cond.preheader.i:                             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy_count.0.i)
  %cmp14.i = icmp sgt i32 %phy_count.0.i, 0
  br i1 %cmp14.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %24 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy_data.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %phy.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [6 x ptr], ptr %phy_nodes.i, i32 0, i32 %phy.015.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %cmp1.i = icmp eq ptr %27, %25
  br i1 %cmp1.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %phy.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %phy_count.0.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %phy.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %phy_count.0.i, %for.inc.i.for.end.i_crit_edge ], [ %phy.015.i, %for.body.i.for.end.i_crit_edge ]
  %arrayidx4.i = getelementptr [6 x ptr], ptr %phy_nodes.i, i32 0, i32 %phy.0.lcssa.i
  %28 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx4.i, align 4
  %cmp5.i = icmp eq ptr %29, null
  br i1 %cmp5.i, label %if.then6.i, label %for.end.i.do.cond.i_crit_edge

for.end.i.do.cond.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond.i

if.then6.i:                                       ; preds = %for.end.i
  %30 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy_data.i, align 4
  %32 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %arrayidx4.i, align 4
  %call10.i = call ptr @of_iomap(ptr noundef %31, i32 noundef 0) #6
  %arrayidx11.i = getelementptr [6 x ptr], ptr %cphy_base.i, i32 0, i32 %phy.0.lcssa.i
  %33 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call10.i, ptr %arrayidx11.i, align 4
  %cmp13.i = icmp eq ptr %call10.i, null
  br i1 %cmp13.i, label %cleanup.thread.i, label %if.end15.i

cleanup.thread.i:                                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %phy_data.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  br label %highbank_initialize_phys.exit

if.end15.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i168 = add i32 %phy_count.0.i, 1
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.end15.i, %for.end.i.do.cond.i_crit_edge
  %phy_count.1.i = phi i32 [ %add.i168, %if.end15.i ], [ %phy_count.0.i, %for.end.i.do.cond.i_crit_edge ]
  %34 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %args.i, align 4
  %conv.i = trunc i32 %35 to i8
  %arrayidx18.i = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %port.0.i
  %lane_mapping.i = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %port.0.i, i32 1
  %36 = ptrtoint ptr %lane_mapping.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv.i, ptr %lane_mapping.i, align 4
  %37 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx4.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %38, ptr noundef nonnull @.str.22, ptr noundef nonnull %tmp.i, i32 noundef 1, i32 noundef 0) #6
  %39 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tmp.i, align 4
  %conv21.i = trunc i32 %40 to i8
  %phy_devs.i = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %port.0.i, i32 2
  %41 = ptrtoint ptr %phy_devs.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv21.i, ptr %phy_devs.i, align 1
  %arrayidx23.i = getelementptr [6 x ptr], ptr %cphy_base.i, i32 0, i32 %phy.0.lcssa.i
  %42 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx23.i, align 4
  %44 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %arrayidx18.i, align 4
  %45 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %phy_data.i, align 4
  call void @of_node_put(ptr noundef %46) #6
  %add26.i = add nuw nsw i32 %port.0.i, 1
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %phy_data.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  %exitcond21.not.i = icmp eq i32 %add26.i, 24
  br i1 %exitcond21.not.i, label %do.end.thread.i, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end.thread.i:                                  ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i124.i = call i32 @of_property_read_variable_u32_array(ptr noundef %17, ptr noundef nonnull @.str.23, ptr noundef nonnull %tx_atten.i, i32 noundef 24, i32 noundef 0) #6
  br label %for.body34.preheader.i

do.end.i:                                         ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %phy_data.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  %call.i1.i = call i32 @of_property_read_variable_u32_array(ptr noundef %17, ptr noundef nonnull @.str.23, ptr noundef nonnull %tx_atten.i, i32 noundef %port.0.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port.0.i)
  %cmp3217.not.i = icmp eq i32 %port.0.i, 0
  br i1 %cmp3217.not.i, label %do.end.i.highbank_initialize_phys.exit_crit_edge, label %do.end.i.for.body34.preheader.i_crit_edge

do.end.i.for.body34.preheader.i_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body34.preheader.i

do.end.i.highbank_initialize_phys.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %highbank_initialize_phys.exit

for.body34.preheader.i:                           ; preds = %do.end.i.for.body34.preheader.i_crit_edge, %do.end.thread.i
  %port.11026.i = phi i32 [ 24, %do.end.thread.i ], [ %port.0.i, %do.end.i.for.body34.preheader.i_crit_edge ]
  br label %for.body34.i

for.body34.i:                                     ; preds = %for.body34.i.for.body34.i_crit_edge, %for.body34.preheader.i
  %i.018.i = phi i32 [ %inc40.i, %for.body34.i.for.body34.i_crit_edge ], [ 0, %for.body34.preheader.i ]
  %arrayidx35.i = getelementptr [24 x i32], ptr %tx_atten.i, i32 0, i32 %i.018.i
  %47 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx35.i, align 4
  %conv36.i = trunc i32 %48 to i8
  %tx_atten38.i = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %i.018.i, i32 3
  %49 = ptrtoint ptr %tx_atten38.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv36.i, ptr %tx_atten38.i, align 2
  %inc40.i = add nuw nsw i32 %i.018.i, 1
  %exitcond22.not.i = icmp eq i32 %inc40.i, %port.11026.i
  br i1 %exitcond22.not.i, label %for.body34.i.highbank_initialize_phys.exit_crit_edge, label %for.body34.i.for.body34.i_crit_edge

for.body34.i.for.body34.i_crit_edge:              ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body34.i

for.body34.i.highbank_initialize_phys.exit_crit_edge: ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %highbank_initialize_phys.exit

highbank_initialize_phys.exit:                    ; preds = %for.body34.i.highbank_initialize_phys.exit_crit_edge, %do.end.i.highbank_initialize_phys.exit_crit_edge, %cleanup.thread.i
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx_atten.i) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %phy_nodes.i) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cphy_base.i) #6
  call void @ahci_save_initial_config(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  %cap = getelementptr inbounds %struct.ahci_host_priv, ptr %call.i, i32 0, i32 4
  %50 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cap, align 4
  %and = and i32 %51, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %highbank_initialize_phys.exit.if.end41_crit_edge, label %if.then38

highbank_initialize_phys.exit.if.end41_crit_edge: ; preds = %highbank_initialize_phys.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then38:                                        ; preds = %highbank_initialize_phys.exit
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pi, align 4
  %or40 = or i32 %53, 1024
  store i32 %or40, ptr %pi, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %highbank_initialize_phys.exit.if.end41_crit_edge
  %and43 = and i32 %51, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end41.if.end48_crit_edge, label %if.then45

if.end41.if.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pi, align 4
  %or47 = or i32 %55, 524288
  store i32 %or47, ptr %pi, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end41.if.end48_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %tobool51.not = icmp sgt i32 %51, -1
  br i1 %tobool51.not, label %if.end48.if.end54_crit_edge, label %if.then52

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %call53 = call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef -1) #6
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end48.if.end54_crit_edge
  %56 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cap, align 4
  %and.i = and i32 %57, 31
  %add.i169 = add nuw nsw i32 %and.i, 1
  %port_map = getelementptr inbounds %struct.ahci_host_priv, ptr %call.i, i32 0, i32 7
  %58 = ptrtoint ptr %port_map to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i = icmp eq i32 %59, 0
  %60 = call i32 @llvm.ctlz.i32(i32 %59, i1 true) #6, !range !102
  %sub.i = sub nuw nsw i32 32, %60
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %61 = call i32 @llvm.umax.i32(i32 %add.i169, i32 %cond.i)
  %62 = ptrtoint ptr %call.i165 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %call.i165, align 4
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %call.i, i32 0, i32 23
  %63 = ptrtoint ptr %plat_data to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i165, ptr %plat_data, align 4
  %64 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %of_node.i, align 8
  %call.i171 = call ptr @devm_gpiod_get_index(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef 0, i32 noundef 7) #6
  %cmp.i.i = icmp ugt ptr %call.i171, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i172, label %if.end.i

do.end.i172:                                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef 0) #9
  br label %cleanup.i

if.end.i:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = call i32 @gpiod_set_consumer_name(ptr noundef %call.i171, ptr noundef nonnull @.str.27) #6
  %arrayidx.i173 = getelementptr %struct.ecx_plat_data, ptr %call.i165, i32 0, i32 3, i32 0
  %66 = ptrtoint ptr %arrayidx.i173 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i171, ptr %arrayidx.i173, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %do.end.i172
  %call.1.i = call ptr @devm_gpiod_get_index(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef 1, i32 noundef 7) #6
  %cmp.i.1.i = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %do.end.1.i, label %if.end.1.i

if.end.1.i:                                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  %call2.1.i = call i32 @gpiod_set_consumer_name(ptr noundef %call.1.i, ptr noundef nonnull @.str.27) #6
  %arrayidx.1.i = getelementptr %struct.ecx_plat_data, ptr %call.i165, i32 0, i32 3, i32 1
  %67 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.1.i, ptr %arrayidx.1.i, align 4
  br label %cleanup.1.i

do.end.1.i:                                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef 1) #9
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %do.end.1.i, %if.end.1.i
  %call.2.i = call ptr @devm_gpiod_get_index(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef 2, i32 noundef 7) #6
  %cmp.i.2.i = icmp ugt ptr %call.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %do.end.2.i, label %if.end.2.i

if.end.2.i:                                       ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %call2.2.i = call i32 @gpiod_set_consumer_name(ptr noundef %call.2.i, ptr noundef nonnull @.str.27) #6
  %arrayidx.2.i = getelementptr %struct.ecx_plat_data, ptr %call.i165, i32 0, i32 3, i32 2
  %68 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.2.i, ptr %arrayidx.2.i, align 4
  br label %cleanup.2.i

do.end.2.i:                                       ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef 2) #9
  br label %cleanup.2.i

cleanup.2.i:                                      ; preds = %do.end.2.i, %if.end.2.i
  %port_to_sgpio.i = getelementptr inbounds %struct.ecx_plat_data, ptr %call.i165, i32 0, i32 5
  %69 = ptrtoint ptr %call.i165 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %call.i165, align 4
  %call.i.i174 = call i32 @of_property_read_variable_u32_array(ptr noundef %65, ptr noundef nonnull @.str.28, ptr noundef %port_to_sgpio.i, i32 noundef %70, i32 noundef 0) #6
  %pre_clocks.i = getelementptr inbounds %struct.ecx_plat_data, ptr %call.i165, i32 0, i32 1
  %call.i.i.i175 = call i32 @of_property_read_variable_u32_array(ptr noundef %65, ptr noundef nonnull @.str.29, ptr noundef %pre_clocks.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i175)
  %tobool.not.i176 = icmp sgt i32 %call.i.i.i175, -1
  br i1 %tobool.not.i176, label %cleanup.2.i.if.end7.i_crit_edge, label %if.then5.i

cleanup.2.i.if.end7.i_crit_edge:                  ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then5.i:                                       ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %pre_clocks.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %pre_clocks.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %cleanup.2.i.if.end7.i_crit_edge
  %post_clocks.i = getelementptr inbounds %struct.ecx_plat_data, ptr %call.i165, i32 0, i32 2
  %call.i.i32.i = call i32 @of_property_read_variable_u32_array(ptr noundef %65, ptr noundef nonnull @.str.30, ptr noundef %post_clocks.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i32.i)
  %tobool9.not.i = icmp sgt i32 %call.i.i32.i, -1
  br i1 %tobool9.not.i, label %if.end7.i.highbank_set_em_messages.exit_crit_edge, label %if.then10.i

if.end7.i.highbank_set_em_messages.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %highbank_set_em_messages.exit

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %post_clocks.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %post_clocks.i, align 4
  br label %highbank_set_em_messages.exit

highbank_set_em_messages.exit:                    ; preds = %if.then10.i, %if.end7.i.highbank_set_em_messages.exit_crit_edge
  %em_loc.i = getelementptr inbounds %struct.ahci_host_priv, ptr %call.i, i32 0, i32 11
  %73 = ptrtoint ptr %em_loc.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %em_loc.i, align 4
  %em_buf_sz.i = getelementptr inbounds %struct.ahci_host_priv, ptr %call.i, i32 0, i32 12
  %74 = ptrtoint ptr %em_buf_sz.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 4, ptr %em_buf_sz.i, align 4
  %em_msg_type.i = getelementptr inbounds %struct.ahci_host_priv, ptr %call.i, i32 0, i32 13
  %75 = ptrtoint ptr %em_msg_type.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %em_msg_type.i, align 4
  %76 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pi, align 4
  %or.i = or i32 %77, 6291456
  store i32 %or.i, ptr %pi, align 4
  %call60 = call ptr @ata_host_alloc_pinfo(ptr noundef %dev1, ptr noundef nonnull %ppi, i32 noundef %61) #6
  %tobool61.not = icmp eq ptr %call60, null
  br i1 %tobool61.not, label %highbank_set_em_messages.exit.err0_crit_edge, label %if.end63

highbank_set_em_messages.exit.err0_crit_edge:     ; preds = %highbank_set_em_messages.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err0

if.end63:                                         ; preds = %highbank_set_em_messages.exit
  %private_data64 = getelementptr inbounds %struct.ata_host, ptr %call60, i32 0, i32 5
  %78 = ptrtoint ptr %private_data64 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i, ptr %private_data64, align 4
  %79 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cap, align 4
  %and66 = and i32 %80, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end63.if.then69_crit_edge, label %lor.lhs.false

if.end63.if.then69_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then69

lor.lhs.false:                                    ; preds = %if.end63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ahci_ignore_sss to i32))
  %81 = load i32, ptr @ahci_ignore_sss, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool68.not = icmp eq i32 %81, 0
  br i1 %tobool68.not, label %lor.lhs.false.if.end72_crit_edge, label %lor.lhs.false.if.then69_crit_edge

lor.lhs.false.if.then69_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then69

lor.lhs.false.if.end72_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then69:                                        ; preds = %lor.lhs.false.if.then69_crit_edge, %if.end63.if.then69_crit_edge
  %flags70 = getelementptr inbounds %struct.ata_host, ptr %call60, i32 0, i32 7
  %82 = ptrtoint ptr %flags70 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags70, align 4
  %or71 = or i32 %83, 4
  store i32 %or71, ptr %flags70, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %lor.lhs.false.if.end72_crit_edge
  %n_ports73 = getelementptr inbounds %struct.ata_host, ptr %call60, i32 0, i32 3
  %84 = ptrtoint ptr %n_ports73 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %n_ports73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp74179.not = icmp eq i32 %85, 0
  br i1 %cmp74179.not, label %if.end72.for.end_crit_edge, label %if.end72.for.body_crit_edge

if.end72.for.body_crit_edge:                      ; preds = %if.end72
  br label %for.body

if.end72.for.end_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end84.for.body_crit_edge, %if.end72.for.body_crit_edge
  %i.0180 = phi i32 [ %inc, %if.end84.for.body_crit_edge ], [ 0, %if.end72.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ata_host, ptr %call60, i32 0, i32 12, i32 %i.0180
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %87, ptr noundef nonnull @.str.15, ptr noundef nonnull %call) #6
  %port_no = getelementptr inbounds %struct.ata_port, ptr %87, i32 0, i32 7
  %88 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port_no, align 4
  %mul = shl i32 %89, 7
  %add = add i32 %mul, 256
  call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %87, ptr noundef nonnull @.str.16, i32 noundef %add) #6
  %flags75 = getelementptr inbounds %struct.ata_port, ptr %87, i32 0, i32 3
  %90 = ptrtoint ptr %flags75 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags75, align 4
  %and76 = and i32 %91, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %for.body.if.end79_crit_edge, label %if.then78

for.body.if.end79_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then78:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %em_msg_type.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %em_msg_type.i, align 4
  %em_message_type = getelementptr inbounds %struct.ata_port, ptr %87, i32 0, i32 47
  %94 = ptrtoint ptr %em_message_type to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %em_message_type, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %for.body.if.end79_crit_edge
  %95 = ptrtoint ptr %port_map to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %port_map, align 4
  %shl = shl nuw i32 1, %i.0180
  %and81 = and i32 %96, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.then83, label %if.end79.if.end84_crit_edge

if.end79.if.end84_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

if.then83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.ata_port, ptr %87, i32 0, i32 1
  %97 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @ata_dummy_port_ops, ptr %ops, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end79.if.end84_crit_edge
  %inc = add nuw i32 %i.0180, 1
  %98 = ptrtoint ptr %n_ports73 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %n_ports73, align 4
  %cmp74 = icmp ult i32 %inc, %99
  br i1 %cmp74, label %if.end84.for.body_crit_edge, label %if.end84.for.end_crit_edge

if.end84.for.end_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end84.for.body_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end84.for.end_crit_edge, %if.end72.for.end_crit_edge
  %call85 = call i32 @ahci_reset_controller(ptr noundef nonnull %call60) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %for.end.err0_crit_edge

for.end.err0_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err0

if.end88:                                         ; preds = %for.end
  call void @ahci_init_controller(ptr noundef nonnull %call60) #6
  call void @ahci_print_info(ptr noundef nonnull %call60, ptr noundef nonnull @.str.17) #6
  %call89 = call i32 @ahci_host_activate(ptr noundef nonnull %call60, ptr noundef nonnull @ahci_highbank_platform_sht) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end88.cleanup_crit_edge, label %if.end88.err0_crit_edge

if.end88.err0_crit_edge:                          ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %err0

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err0:                                             ; preds = %if.end88.err0_crit_edge, %for.end.err0_crit_edge, %highbank_set_em_messages.exit.err0_crit_edge
  %rc.0 = phi i32 [ %call85, %for.end.err0_crit_edge ], [ %call89, %if.end88.err0_crit_edge ], [ -12, %highbank_set_em_messages.exit.err0_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %err0, %if.end88.cleanup_crit_edge, %do.end30, %do.end20, %do.end13, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %rc.0, %err0 ], [ -12, %do.end30 ], [ -12, %do.end20 ], [ -12, %do.end13 ], [ -22, %do.end ], [ %call2, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ 0, %if.end88.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pi) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_platform_remove_one(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_save_initial_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_reset_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_init_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_print_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_host_activate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_highbank_hardreset(ptr noundef %link, ptr nocapture noundef writeonly %class, i32 noundef %deadline) #2 align 64 {
entry:
  %tf = alloca %struct.ata_taskfile, align 4
  %online = alloca i8, align 1
  %sstatus = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %private_data2 = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data2, align 4
  %rx_fis = getelementptr inbounds %struct.ahci_port_priv, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %rx_fis to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_fis, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %online) #6
  %10 = ptrtoint ptr %online to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %online, align 1, !annotation !101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sstatus) #6
  %11 = ptrtoint ptr %sstatus to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %sstatus, align 4, !annotation !101
  %stop_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 26
  %12 = ptrtoint ptr %stop_engine to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stop_engine, align 4
  %call = tail call i32 %13(ptr noundef %1) #6
  %device = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14
  %14 = call ptr @memset(ptr %tf, i32 0, i32 24)
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device, align 128
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 128
  %ctl.i = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ctl.i, align 4
  %ctl1.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 2
  %21 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %ctl1.i, align 1
  %devno.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14, i32 0, i32 1
  %22 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %devno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i = icmp eq i32 %23, 0
  %spec.select.i = select i1 %cmp.i, i8 -96, i8 -80
  %24 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 13
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %spec.select.i, ptr %24, align 4
  %command = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 14
  %26 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -128, ptr %command, align 1
  call void @ata_tf_to_fis(ptr noundef nonnull %tf, i8 noundef zeroext 0, i32 noundef 0, ptr noundef %add.ptr) #6
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %retry.0 = phi i32 [ 100, %entry ], [ %dec, %do.cond.do.body_crit_edge ]
  %27 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %link, align 128
  %port_no = getelementptr inbounds %struct.ata_port, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port_no, align 4
  %idxprom.i = and i32 %30, 255
  %arrayidx.i = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %idxprom.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i28 = icmp eq ptr %32, null
  br i1 %cmp.i28, label %do.body.highbank_cphy_disable_overrides.exit_crit_edge, label %if.end.i, !prof !103

do.body.highbank_cphy_disable_overrides.exit_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %highbank_cphy_disable_overrides.exit

if.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %30 to i8
  %lane_mapping.i = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %idxprom.i, i32 1
  %33 = ptrtoint ptr %lane_mapping.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %lane_mapping.i, align 4
  %conv.i = zext i8 %34 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 8
  %add.i = add nuw nsw i32 %mul.i, 8194
  %call.i = call fastcc i32 @combo_phy_read(i8 noundef zeroext %conv, i32 noundef %add.i) #6
  %and.i = and i32 %call.i, -16385
  %add6.i = add nuw nsw i32 %mul.i, 8197
  call fastcc void @combo_phy_write(i8 noundef zeroext %conv, i32 noundef %add6.i, i32 noundef %and.i) #6
  br label %highbank_cphy_disable_overrides.exit

highbank_cphy_disable_overrides.exit:             ; preds = %if.end.i, %do.body.highbank_cphy_disable_overrides.exit_crit_edge
  %call4 = call i32 @sata_link_hardreset(ptr noundef %link, ptr noundef nonnull @ahci_highbank_hardreset.timing, i32 noundef %deadline, ptr noundef nonnull %online, ptr noundef null) #6
  %35 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %link, align 128
  %port_no6 = getelementptr inbounds %struct.ata_port, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %port_no6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port_no6, align 4
  %conv7 = trunc i32 %38 to i8
  %idxprom.i29 = and i32 %38, 255
  %arrayidx.i30 = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %idxprom.i29
  %lane_mapping.i31 = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %idxprom.i29, i32 1
  %39 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i30, align 4
  %cmp.i32 = icmp eq ptr %40, null
  br i1 %cmp.i32, label %highbank_cphy_disable_overrides.exit.highbank_cphy_override_lane.exit_crit_edge, label %do.body.preheader.i, !prof !103

highbank_cphy_disable_overrides.exit.highbank_cphy_override_lane.exit_crit_edge: ; preds = %highbank_cphy_disable_overrides.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %highbank_cphy_override_lane.exit

do.body.preheader.i:                              ; preds = %highbank_cphy_disable_overrides.exit
  %41 = ptrtoint ptr %lane_mapping.i31 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %lane_mapping.i31, align 4
  %conv.i33 = zext i8 %42 to i32
  %mul.i34 = shl nuw nsw i32 %conv.i33, 8
  %add.i35 = add nuw nsw i32 %mul.i34, 8194
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.preheader.i
  %k.0.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 0, %do.body.preheader.i ]
  %call.i36 = call fastcc i32 @combo_phy_read(i8 noundef zeroext %conv7, i32 noundef %add.i35) #6
  %and.i37 = and i32 %call.i36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37)
  %tobool4.not.i = icmp ne i32 %and.i37, 0
  %inc.i = add nuw nsw i32 %k.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %k.0.i)
  %cmp5.i = icmp ult i32 %k.0.i, 1000
  %or.cond.i = select i1 %tobool4.not.i, i1 %cmp5.i, i1 false
  br i1 %or.cond.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %43 = ptrtoint ptr %lane_mapping.i31 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %lane_mapping.i31, align 4
  %conv.i.i = zext i8 %44 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 8
  %add.i.i = add nuw nsw i32 %mul.i.i, 8194
  %call.i.i = call fastcc i32 @combo_phy_read(i8 noundef zeroext %conv7, i32 noundef %add.i.i) #6
  %and.i.i = and i32 %call.i.i, -16385
  %add3.i.i = add nuw nsw i32 %mul.i.i, 8197
  call fastcc void @combo_phy_write(i8 noundef zeroext %conv7, i32 noundef %add3.i.i, i32 noundef %and.i.i) #6
  %or.i.i = or i32 %call.i.i, 16384
  call fastcc void @combo_phy_write(i8 noundef zeroext %conv7, i32 noundef %add3.i.i, i32 noundef %or.i.i) #6
  %and7.i.i = and i32 %or.i.i, -1793
  %or8.i.i = or i32 %and7.i.i, 768
  call fastcc void @combo_phy_write(i8 noundef zeroext %conv7, i32 noundef %add3.i.i, i32 noundef %or8.i.i) #6
  %or12.i.i = or i32 %and7.i.i, 2816
  call fastcc void @combo_phy_write(i8 noundef zeroext %conv7, i32 noundef %add3.i.i, i32 noundef %or12.i.i) #6
  %and16.i.i = and i32 %or12.i.i, -3073
  call fastcc void @combo_phy_write(i8 noundef zeroext %conv7, i32 noundef %add3.i.i, i32 noundef %and16.i.i) #6
  call void @msleep(i32 noundef 15) #6
  %tx_atten.i = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %idxprom.i29, i32 3
  %45 = ptrtoint ptr %tx_atten.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tx_atten.i, align 2
  %conv9.i = zext i8 %46 to i32
  %and.i17.i = and i32 %conv9.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i)
  %tobool.not.i.i = icmp eq i32 %and.i17.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.highbank_cphy_override_lane.exit_crit_edge

do.end.i.highbank_cphy_override_lane.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %highbank_cphy_override_lane.exit

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %lane_mapping.i31 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %lane_mapping.i31, align 4
  %conv.i20.i = zext i8 %48 to i32
  %mul.i21.i = shl nuw nsw i32 %conv.i20.i, 8
  %add.i22.i = add nuw nsw i32 %mul.i21.i, 8193
  %call.i23.i = call fastcc i32 @combo_phy_read(i8 noundef zeroext %conv7, i32 noundef %add.i22.i) #6
  %and1.i.i = and i32 %call.i23.i, -32769
  %add4.i.i = add nuw nsw i32 %mul.i21.i, 8196
  call fastcc void @combo_phy_write(i8 noundef zeroext %conv7, i32 noundef %add4.i.i, i32 noundef %and1.i.i) #6
  %or.i24.i = or i32 %call.i23.i, 32768
  call fastcc void @combo_phy_write(i8 noundef zeroext %conv7, i32 noundef %add4.i.i, i32 noundef %or.i24.i) #6
  %shl.i.i = shl nuw nsw i32 %conv9.i, 10
  %and8.i.i = and i32 %shl.i.i, 7168
  %or9.i.i = or i32 %or.i24.i, %and8.i.i
  call fastcc void @combo_phy_write(i8 noundef zeroext %conv7, i32 noundef %add4.i.i, i32 noundef %or9.i.i) #6
  br label %highbank_cphy_override_lane.exit

highbank_cphy_override_lane.exit:                 ; preds = %if.end.i.i, %do.end.i.highbank_cphy_override_lane.exit_crit_edge, %highbank_cphy_disable_overrides.exit.highbank_cphy_override_lane.exit_crit_edge
  %call8 = call i32 @sata_scr_read(ptr noundef %link, i32 noundef 0, ptr noundef nonnull %sstatus) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end, label %highbank_cphy_override_lane.exit.do.end_crit_edge

highbank_cphy_override_lane.exit.do.end_crit_edge: ; preds = %highbank_cphy_override_lane.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end:                                           ; preds = %highbank_cphy_override_lane.exit
  %49 = ptrtoint ptr %sstatus to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sstatus, align 4
  %and = and i32 %50, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end.do.end_crit_edge, label %do.cond

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.cond:                                          ; preds = %if.end
  %51 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %online, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool12.not = icmp ne i8 %52, 0
  %dec = add nsw i32 %retry.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0)
  %tobool13.not = icmp eq i32 %retry.0, 0
  %or.cond = select i1 %tobool12.not, i1 true, i1 %tobool13.not
  br i1 %or.cond, label %do.cond.do.end_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %if.end.do.end_crit_edge, %highbank_cphy_override_lane.exit.do.end_crit_edge
  %start_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 25
  %53 = ptrtoint ptr %start_engine to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %start_engine, align 4
  call void %54(ptr noundef %1) #6
  %55 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %online, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool14.not = icmp eq i8 %56, 0
  br i1 %tobool14.not, label %do.end.if.end17_crit_edge, label %if.then15

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = call i32 @ahci_dev_classify(ptr noundef %1) #6
  %57 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call16, ptr %class, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.end.if.end17_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sstatus) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %online) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf) #6
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecx_transmit_led_message(ptr nocapture noundef readonly %ap, i32 noundef %state, i32 noundef %size) #2 align 64 {
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
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_data, align 4
  %and = lshr i32 %state, 8
  %shr = and i32 %and, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shr)
  %cmp = icmp ult i32 %shr, 8
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %private_data1 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %6 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data1, align 4
  %em_msg_type = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 13
  %8 = ptrtoint ptr %em_msg_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %em_msg_type, align 4
  %and2 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.body5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body5:                                         ; preds = %if.then
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sgpio_lock) #6
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %10 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_no, align 4
  %and.i = and i32 %state, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %arrayidx.i46.i = getelementptr %struct.ecx_plat_data, ptr %5, i32 0, i32 5, i32 %11
  %12 = ptrtoint ptr %arrayidx.i46.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i46.i, align 4
  %mul.i47.i = mul i32 %13, 3
  %shl.i48.i = shl nuw i32 1, %mul.i47.i
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %sgpio_pattern.i = getelementptr inbounds %struct.ecx_plat_data, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %sgpio_pattern.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sgpio_pattern.i, align 4
  %or.i = or i32 %15, %shl.i48.i
  store i32 %or.i, ptr %sgpio_pattern.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %neg.i = xor i32 %shl.i48.i, -1
  %sgpio_pattern2.i = getelementptr inbounds %struct.ecx_plat_data, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %sgpio_pattern2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sgpio_pattern2.i, align 4
  %and3.i = and i32 %17, %neg.i
  store i32 %and3.i, ptr %sgpio_pattern2.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %and4.i = and i32 %state, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %18 = ptrtoint ptr %arrayidx.i46.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i46.i, align 4
  %mul.i53.i = mul i32 %19, 3
  %add.i54.i = add i32 %mul.i53.i, 1
  %shl.i55.i = shl nuw i32 1, %add.i54.i
  br i1 %tobool5.not.i, label %if.else10.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sgpio_pattern8.i = getelementptr inbounds %struct.ecx_plat_data, ptr %5, i32 0, i32 4
  %20 = ptrtoint ptr %sgpio_pattern8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sgpio_pattern8.i, align 4
  %or9.i = or i32 %21, %shl.i55.i
  store i32 %or9.i, ptr %sgpio_pattern8.i, align 4
  br label %if.end15.i

if.else10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %neg12.i = xor i32 %shl.i55.i, -1
  %sgpio_pattern13.i = getelementptr inbounds %struct.ecx_plat_data, ptr %5, i32 0, i32 4
  %22 = ptrtoint ptr %sgpio_pattern13.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sgpio_pattern13.i, align 4
  %and14.i = and i32 %23, %neg12.i
  store i32 %and14.i, ptr %sgpio_pattern13.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.else10.i, %if.then6.i
  %and16.i = and i32 %state, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %24 = ptrtoint ptr %arrayidx.i46.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i46.i, align 4
  %mul.i61.i = mul i32 %25, 3
  %add.i62.i = add i32 %mul.i61.i, 2
  %shl.i63.i = shl nuw i32 1, %add.i62.i
  br i1 %tobool17.not.i, label %if.else22.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %sgpio_pattern20.i = getelementptr inbounds %struct.ecx_plat_data, ptr %5, i32 0, i32 4
  %26 = ptrtoint ptr %sgpio_pattern20.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sgpio_pattern20.i, align 4
  %or21.i = or i32 %27, %shl.i63.i
  store i32 %or21.i, ptr %sgpio_pattern20.i, align 4
  br label %ecx_parse_sgpio.exit

if.else22.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  %neg24.i = xor i32 %shl.i63.i, -1
  %sgpio_pattern25.i = getelementptr inbounds %struct.ecx_plat_data, ptr %5, i32 0, i32 4
  %28 = ptrtoint ptr %sgpio_pattern25.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sgpio_pattern25.i, align 4
  %and26.i = and i32 %29, %neg24.i
  store i32 %and26.i, ptr %sgpio_pattern25.i, align 4
  br label %ecx_parse_sgpio.exit

ecx_parse_sgpio.exit:                             ; preds = %if.else22.i, %if.then18.i
  %sgpio_pattern = getelementptr inbounds %struct.ecx_plat_data, ptr %5, i32 0, i32 4
  %30 = ptrtoint ptr %sgpio_pattern to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sgpio_pattern, align 4
  %pre_clocks = getelementptr inbounds %struct.ecx_plat_data, ptr %5, i32 0, i32 1
  %32 = ptrtoint ptr %pre_clocks to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pre_clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp1067.not = icmp eq i32 %33, 0
  br i1 %cmp1067.not, label %ecx_parse_sgpio.exit.for.end_crit_edge, label %for.body.lr.ph

ecx_parse_sgpio.exit.for.end_crit_edge:           ; preds = %ecx_parse_sgpio.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %ecx_parse_sgpio.exit
  %sgpio_gpiod.i = getelementptr inbounds %struct.ecx_plat_data, ptr %5, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %34 = ptrtoint ptr %sgpio_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sgpio_gpiod.i, align 4
  tail call void @gpiod_set_value(ptr noundef %35, i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 10737400) #6
  %37 = ptrtoint ptr %sgpio_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sgpio_gpiod.i, align 4
  tail call void @gpiod_set_value(ptr noundef %38, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 10737400) #6
  %inc = add nuw i32 %i.068, 1
  %40 = ptrtoint ptr %pre_clocks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pre_clocks, align 4
  %cmp10 = icmp ult i32 %inc, %41
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %ecx_parse_sgpio.exit.for.end_crit_edge
  %arrayidx12 = getelementptr %struct.ecx_plat_data, ptr %5, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx12, align 4
  tail call void @gpiod_set_value(ptr noundef %43, i32 noundef 1) #6
  %sgpio_gpiod.i64 = getelementptr inbounds %struct.ecx_plat_data, ptr %5, i32 0, i32 3
  %44 = ptrtoint ptr %sgpio_gpiod.i64 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sgpio_gpiod.i64, align 4
  tail call void @gpiod_set_value(ptr noundef %45, i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 10737400) #6
  %47 = ptrtoint ptr %sgpio_gpiod.i64 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sgpio_gpiod.i64, align 4
  tail call void @gpiod_set_value(ptr noundef %48, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 10737400) #6
  %50 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx12, align 4
  tail call void @gpiod_set_value(ptr noundef %51, i32 noundef 0) #6
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %5, align 4
  %mul69 = mul i32 %53, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul69)
  %cmp1670.not = icmp eq i32 %mul69, 0
  br i1 %cmp1670.not, label %for.end.for.cond26.preheader_crit_edge, label %for.body18.lr.ph

for.end.for.cond26.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond26.preheader

for.body18.lr.ph:                                 ; preds = %for.end
  %arrayidx20 = getelementptr %struct.ecx_plat_data, ptr %5, i32 0, i32 3, i32 2
  br label %for.body18

for.cond26.preheader:                             ; preds = %for.body18.for.cond26.preheader_crit_edge, %for.end.for.cond26.preheader_crit_edge
  %post_clocks = getelementptr inbounds %struct.ecx_plat_data, ptr %5, i32 0, i32 2
  %54 = ptrtoint ptr %post_clocks to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %post_clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp2773.not = icmp eq i32 %55, 0
  br i1 %cmp2773.not, label %for.cond26.preheader.for.end32_crit_edge, label %for.cond26.preheader.for.body29_crit_edge

for.cond26.preheader.for.body29_crit_edge:        ; preds = %for.cond26.preheader
  br label %for.body29

for.cond26.preheader.for.end32_crit_edge:         ; preds = %for.cond26.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end32

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.body18.lr.ph
  %sgpio_out.072 = phi i32 [ %31, %for.body18.lr.ph ], [ %shr22, %for.body18.for.body18_crit_edge ]
  %i.171 = phi i32 [ 0, %for.body18.lr.ph ], [ %inc24, %for.body18.for.body18_crit_edge ]
  %56 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx20, align 4
  %and21 = and i32 %sgpio_out.072, 1
  tail call void @gpiod_set_value(ptr noundef %57, i32 noundef %and21) #6
  %shr22 = lshr i32 %sgpio_out.072, 1
  %58 = ptrtoint ptr %sgpio_gpiod.i64 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sgpio_gpiod.i64, align 4
  tail call void @gpiod_set_value(ptr noundef %59, i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 10737400) #6
  %61 = ptrtoint ptr %sgpio_gpiod.i64 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sgpio_gpiod.i64, align 4
  tail call void @gpiod_set_value(ptr noundef %62, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 10737400) #6
  %inc24 = add nuw i32 %i.171, 1
  %64 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %5, align 4
  %mul = mul i32 %65, 3
  %cmp16 = icmp ult i32 %inc24, %mul
  br i1 %cmp16, label %for.body18.for.body18_crit_edge, label %for.body18.for.cond26.preheader_crit_edge

for.body18.for.cond26.preheader_crit_edge:        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond26.preheader

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %for.cond26.preheader.for.body29_crit_edge
  %i.274 = phi i32 [ %inc31, %for.body29.for.body29_crit_edge ], [ 0, %for.cond26.preheader.for.body29_crit_edge ]
  %66 = ptrtoint ptr %sgpio_gpiod.i64 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sgpio_gpiod.i64, align 4
  tail call void @gpiod_set_value(ptr noundef %67, i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 10737400) #6
  %69 = ptrtoint ptr %sgpio_gpiod.i64 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sgpio_gpiod.i64, align 4
  tail call void @gpiod_set_value(ptr noundef %70, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 10737400) #6
  %inc31 = add nuw i32 %i.274, 1
  %72 = ptrtoint ptr %post_clocks to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %post_clocks, align 4
  %cmp27 = icmp ult i32 %inc31, %73
  br i1 %cmp27, label %for.body29.for.body29_crit_edge, label %for.body29.for.end32_crit_edge

for.body29.for.end32_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end32

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body29

for.end32:                                        ; preds = %for.body29.for.end32_crit_edge, %for.cond26.preheader.for.end32_crit_edge
  %led_state = getelementptr %struct.ahci_port_priv, ptr %7, i32 0, i32 13, i32 %shr, i32 4
  %74 = ptrtoint ptr %led_state to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %state, ptr %led_state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sgpio_lock, i32 noundef %call7) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end32, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %for.end32 ], [ -22, %entry.cleanup_crit_edge ], [ %size, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tf_to_fis(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_hardreset(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_dev_classify(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @combo_phy_read(i8 noundef zeroext %sata_port, i32 noundef %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom.i.i = zext i8 %sata_port to i32
  %arrayidx.i.i = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %idxprom.i.i
  %phy_devs.i.i = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %idxprom.i.i, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %entry
  %0 = ptrtoint ptr %phy_devs.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phy_devs.i.i, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @cphy_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %2 = and i8 %1, 31
  %and.i.i = zext i8 %2 to i32
  %shl.i.i = shl nuw nsw i32 %and.i.i, 7
  %or.i.i = or i32 %shl.i.i, 64
  %3 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %3) #6, !srcloc !106
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %7, i32 640
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #6, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cphy_lock) #6
  %9 = and i32 %8, 16777216
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %combo_phy_wait_for_ready.exit, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 1073740) #6
  br label %while.cond.i

combo_phy_wait_for_ready.exit:                    ; preds = %while.cond.i
  %11 = ptrtoint ptr %phy_devs.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %phy_devs.i.i, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @cphy_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %13 = and i8 %12, 31
  %and.i = zext i8 %13 to i32
  %shl.i = shl nuw nsw i32 %and.i, 7
  %or.i = or i32 %shl.i, 64
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #6, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %addr) #6
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %19, i32 644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %17) #6, !srcloc !106
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cphy_lock) #6
  %20 = ptrtoint ptr %phy_devs.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %phy_devs.i.i, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @cphy_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %22 = and i8 %21, 31
  %and.i8 = zext i8 %22 to i32
  %shl.i9 = shl nuw nsw i32 %and.i8, 7
  %or.i10 = or i32 %shl.i9, 64
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i10) #6
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %25, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %23) #6, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr12.i12 = getelementptr i8, ptr %27, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i12, i32 16777216) #6, !srcloc !106
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cphy_lock) #6
  br label %while.cond.i22

while.cond.i22:                                   ; preds = %while.body.i23, %combo_phy_wait_for_ready.exit
  %28 = ptrtoint ptr %phy_devs.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %phy_devs.i.i, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @cphy_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %30 = and i8 %29, 31
  %and.i.i16 = zext i8 %30 to i32
  %shl.i.i17 = shl nuw nsw i32 %and.i.i16, 7
  %or.i.i18 = or i32 %shl.i.i17, 64
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i.i18) #6
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %33, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i19, i32 %31) #6, !srcloc !106
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr9.i.i20 = getelementptr i8, ptr %35, i32 640
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i20) #6, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cphy_lock) #6
  %37 = and i32 %36, 16777216
  %tobool.not.i21 = icmp eq i32 %37, 0
  br i1 %tobool.not.i21, label %combo_phy_wait_for_ready.exit24, label %while.body.i23

while.body.i23:                                   ; preds = %while.cond.i22
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 1073740) #6
  br label %while.cond.i22

combo_phy_wait_for_ready.exit24:                  ; preds = %while.cond.i22
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %phy_devs.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %phy_devs.i.i, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @cphy_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %41 = and i8 %40, 31
  %and.i28 = zext i8 %41 to i32
  %shl.i29 = shl nuw nsw i32 %and.i28, 7
  %or.i30 = or i32 %shl.i29, 64
  %42 = tail call i32 @llvm.bswap.i32(i32 %or.i30) #6
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %44, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %42) #6, !srcloc !106
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %46, i32 648
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #6, !srcloc !107
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cphy_lock) #6
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @combo_phy_write(i8 noundef zeroext %sata_port, i32 noundef %addr, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom.i.i = zext i8 %sata_port to i32
  %arrayidx.i.i = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %idxprom.i.i
  %phy_devs.i.i = getelementptr [24 x %struct.phy_lane_info], ptr @port_data, i32 0, i32 %idxprom.i.i, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %entry
  %0 = ptrtoint ptr %phy_devs.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phy_devs.i.i, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @cphy_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %2 = and i8 %1, 31
  %and.i.i = zext i8 %2 to i32
  %shl.i.i = shl nuw nsw i32 %and.i.i, 7
  %or.i.i = or i32 %shl.i.i, 64
  %3 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %3) #6, !srcloc !106
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %7, i32 640
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #6, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cphy_lock) #6
  %9 = and i32 %8, 16777216
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %combo_phy_wait_for_ready.exit, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 1073740) #6
  br label %while.cond.i

combo_phy_wait_for_ready.exit:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %phy_devs.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %phy_devs.i.i, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @cphy_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %13 = and i8 %12, 31
  %and.i = zext i8 %13 to i32
  %shl.i = shl nuw nsw i32 %and.i, 7
  %or.i = or i32 %shl.i, 64
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #6, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %addr) #6
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %19, i32 644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %17) #6, !srcloc !106
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cphy_lock) #6
  %20 = ptrtoint ptr %phy_devs.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %phy_devs.i.i, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @cphy_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %22 = and i8 %21, 31
  %and.i7 = zext i8 %22 to i32
  %shl.i8 = shl nuw nsw i32 %and.i7, 7
  %or.i9 = or i32 %shl.i8, 64
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i9) #6
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %25, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %23) #6, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %26 = tail call i32 @llvm.bswap.i32(i32 %data) #6
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr12.i11 = getelementptr i8, ptr %28, i32 648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i11, i32 %26) #6, !srcloc !106
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cphy_lock) #6
  %29 = ptrtoint ptr %phy_devs.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %phy_devs.i.i, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @cphy_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %31 = and i8 %30, 31
  %and.i15 = zext i8 %31 to i32
  %shl.i16 = shl nuw nsw i32 %and.i15, 7
  %or.i17 = or i32 %shl.i16, 64
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i17) #6
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %34, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %32) #6, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr12.i19 = getelementptr i8, ptr %36, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i19, i32 50331648) #6, !srcloc !106
  tail call void @_raw_spin_unlock(ptr noundef nonnull @cphy_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_highbank_suspend(ptr noundef %dev) #2 align 64 {
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
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mmio1 = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio1, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  %9 = and i32 %8, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #6, !srcloc !106
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  %call15 = tail call i32 @ata_host_suspend(ptr noundef %1, [1 x i32] [i32 2]) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %call15, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_highbank_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %power = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @ahci_reset_controller(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ahci_init_controller(ptr noundef %1) #6
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  tail call void @ata_host_resume(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %call1, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !55, !56, !58, !60, !62, !64, !66, !68, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_sata_highbank__322_625_ahci_highbank_driver_init6, !1, !"__initcall__kmod_sata_highbank__322_625_ahci_highbank_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/sata_highbank.c", i32 625, i32 1}
!2 = !{ptr @__exitcall_ahci_highbank_driver_exit, !1, !"__exitcall_ahci_highbank_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description323, !4, !"__UNIQUE_ID_description323", i1 false, i1 false}
!4 = !{!"../drivers/ata/sata_highbank.c", i32 627, i32 1}
!5 = !{ptr @__UNIQUE_ID_author324, !6, !"__UNIQUE_ID_author324", i1 false, i1 false}
!6 = !{!"../drivers/ata/sata_highbank.c", i32 628, i32 1}
!7 = !{ptr @__UNIQUE_ID_file325, !8, !"__UNIQUE_ID_file325", i1 false, i1 false}
!8 = !{!"../drivers/ata/sata_highbank.c", i32 629, i32 1}
!9 = !{ptr @__UNIQUE_ID_license326, !8, !"__UNIQUE_ID_license326", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias327, !11, !"__UNIQUE_ID_alias327", i1 false, i1 false}
!11 = !{!"../drivers/ata/sata_highbank.c", i32 630, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/ata/sata_highbank.c", i32 618, i32 25}
!14 = !{ptr @ahci_highbank_driver, !15, !"ahci_highbank_driver", i1 false, i1 false}
!15 = !{!"../drivers/ata/sata_highbank.c", i32 615, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/ata/sata_highbank.c", i32 467, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ahci_highbank_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ahci_highbank_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ata/sata_highbank.c", i32 479, i32 3}
!26 = !{ptr @ahci_highbank_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ahci_highbank_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/ata/sata_highbank.c", i32 484, i32 3}
!30 = !{ptr @ahci_highbank_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ahci_highbank_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/ata/sata_highbank.c", i32 493, i32 3}
!34 = !{ptr @ahci_highbank_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ahci_highbank_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/ata/sata_highbank.c", i32 539, i32 21}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/ata/sata_highbank.c", i32 540, i32 21}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/ata/sata_highbank.c", i32 556, i32 24}
!42 = !{ptr @ahci_highbank_port_info, !43, !"ahci_highbank_port_info", i1 false, i1 false}
!43 = !{!"../drivers/ata/sata_highbank.c", i32 434, i32 35}
!44 = !{ptr @ahci_highbank_ops, !45, !"ahci_highbank_ops", i1 false, i1 false}
!45 = !{!"../drivers/ata/sata_highbank.c", i32 428, i32 35}
!46 = !{ptr @ahci_highbank_hardreset.timing, !47, !"timing", i1 false, i1 false}
!47 = !{!"../drivers/ata/sata_highbank.c", i32 388, i32 29}
!48 = !{ptr @port_data, !49, !"port_data", i1 false, i1 false}
!49 = !{!"../drivers/ata/sata_highbank.c", i32 62, i32 29}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/ata/sata_highbank.c", i32 52, i32 8}
!52 = !{ptr @cphy_lock, !51, !"cphy_lock", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/ata/sata_highbank.c", i32 64, i32 8}
!55 = !{ptr @sgpio_lock, !54, !"sgpio_lock", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/ata/sata_highbank.c", i32 340, i32 5}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/ata/sata_highbank.c", i32 340, i32 26}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/ata/sata_highbank.c", i32 356, i32 40}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/ata/sata_highbank.c", i32 362, i32 40}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/ata/sata_highbank.c", i32 188, i32 37}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/ata/sata_highbank.c", i32 191, i32 4}
!68 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @highbank_set_em_messages._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @highbank_set_em_messages._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/ata/sata_highbank.c", i32 194, i32 34}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/ata/sata_highbank.c", i32 198, i32 33}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/ata/sata_highbank.c", i32 201, i32 31}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/ata/sata_highbank.c", i32 203, i32 31}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/ata/sata_highbank.c", i32 442, i32 2}
!81 = !{ptr @ahci_highbank_platform_sht, !82, !"ahci_highbank_platform_sht", i1 false, i1 false}
!82 = !{!"../drivers/ata/sata_highbank.c", i32 441, i32 34}
!83 = !{ptr @ahci_of_match, !84, !"ahci_of_match", i1 false, i1 false}
!84 = !{!"../drivers/ata/sata_highbank.c", i32 445, i32 34}
!85 = !{ptr @ahci_highbank_pm_ops, !86, !"ahci_highbank_pm_ops", i1 false, i1 false}
!86 = !{!"../drivers/ata/sata_highbank.c", i32 612, i32 8}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/ata/sata_highbank.c", i32 576, i32 3}
!89 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ahci_highbank_suspend._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @ahci_highbank_suspend._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"auto-init"}
!102 = !{i32 0, i32 33}
!103 = !{!"branch_weights", i32 1, i32 2000}
!104 = !{i8 0, i8 2}
!105 = !{i64 2156466095}
!106 = !{i64 4051259}
!107 = !{i64 4051677}
!108 = !{i64 2156467112}
!109 = !{i64 2156467453}
!110 = !{i64 2156468079}
!111 = !{i64 2156481081}
!112 = !{i64 2156481293}
!113 = !{i64 2156481944}
