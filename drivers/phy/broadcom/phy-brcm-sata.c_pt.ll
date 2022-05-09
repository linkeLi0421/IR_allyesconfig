; ModuleID = '/llk/IR_all_yes/drivers/phy/broadcom/phy-brcm-sata.c_pt.bc'
source_filename = "../drivers/phy/broadcom/phy-brcm-sata.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.brcm_sata_phy = type { ptr, ptr, ptr, i32, [2 x %struct.brcm_sata_port] }
%struct.brcm_sata_port = type { i32, ptr, ptr, i8, i32, i32, i32 }

@__initcall__kmod_phy_brcm_sata__292_854_brcm_sata_phy_driver_init6 = internal global ptr @brcm_sata_phy_driver_init, section ".initcall6.init", align 4
@brcm_sata_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @brcm_sata_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcm_sata_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_brcm_sata_phy_driver_exit = internal global ptr @brcm_sata_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [51 x i8] c"phy_brcm_sata.description=Broadcom SATA PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [54 x i8] c"phy_brcm_sata.file=drivers/phy/broadcom/phy-brcm-sata\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [26 x i8] c"phy_brcm_sata.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [33 x i8] c"phy_brcm_sata.author=Marc Carino\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [34 x i8] c"phy_brcm_sata.author=Brian Norris\00", section ".modinfo", align 1
@__UNIQUE_ID_alias298 = internal constant [43 x i8] c"phy_brcm_sata.alias=platform:phy-brcm-sata\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"brcm-sata-phy\00", [18 x i8] zeroinitializer }, align 32
@brcm_sata_phy_of_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7216-sata-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7445-sata-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7425-sata-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-ns2-sata-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-nsp-sata-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,iproc-sr-sata-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm63138-sata-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phy-ctrl\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@brcm_sata_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 791, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"missing reg property in node %pOFn\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"brcm_sata_phy_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/phy/broadcom/phy-brcm-sata.c\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcm_sata_phy_probe._entry_ptr = internal global ptr @brcm_sata_phy_probe._entry, section ".printk_index", align 4
@brcm_sata_phy_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 797, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid reg: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@brcm_sata_phy_probe._entry_ptr.11 = internal global ptr @brcm_sata_phy_probe._entry.9, section ".printk_index", align 4
@brcm_sata_phy_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 802, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"already registered port %u\0A\00", [36 x i8] zeroinitializer }, align 32
@brcm_sata_phy_probe._entry_ptr.14 = internal global ptr @brcm_sata_phy_probe._entry.12, section ".printk_index", align 4
@phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @brcm_sata_phy_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_sata_phy_calibrate, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcm,rxaeq-mode\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"brcm,rxaeq-value\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"brcm,tx-amplitude-millivolt\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcm,enable-ssc\00", [16 x i8] zeroinitializer }, align 32
@brcm_sata_phy_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.6, i32 824, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@brcm_sata_phy_probe._entry_ptr.21 = internal global ptr @brcm_sata_phy_probe._entry.19, section ".printk_index", align 4
@brcm_sata_phy_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.6, i32 835, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not register PHY provider\0A\00", [63 x i8] zeroinitializer }, align 32
@brcm_sata_phy_probe._entry_ptr.24 = internal global ptr @brcm_sata_phy_probe._entry.22, section ".printk_index", align 4
@brcm_sata_phy_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.5, ptr @.str.6, i32 839, ptr @.str.27, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"registered %d port(s)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@brcm_sata_phy_probe._entry_ptr.28 = internal global ptr @brcm_sata_phy_probe._entry.25, section ".printk_index", align 4
@brcm_stb_sata_ssc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.6, i32 264, ptr @.str.27, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enabling SSC on port%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcm_stb_sata_ssc_init\00", [41 x i8] zeroinitializer }, align 32
@brcm_stb_sata_ssc_init._entry_ptr = internal global ptr @brcm_stb_sata_ssc_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@brcm_ns2_sata_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.6, i32 479, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"port%d PLL did not lock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcm_ns2_sata_init\00", [45 x i8] zeroinitializer }, align 32
@brcm_ns2_sata_init._entry_ptr = internal global ptr @brcm_ns2_sata_init._entry, section ".printk_index", align 4
@brcm_ns2_sata_init.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.32, ptr @.str.6, ptr @.str.34, i8 0, i8 120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"phy_brcm_sata\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"port%d initialized\0A\00", [44 x i8] zeroinitializer }, align 32
@brcm_sata_ctrl_base._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.6, i32 204, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid phy version\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"brcm_sata_ctrl_base\00", [44 x i8] zeroinitializer }, align 32
@brcm_sata_ctrl_base._entry_ptr = internal global ptr @brcm_sata_ctrl_base._entry, section ".printk_index", align 4
@brcm_nsp_sata_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.37, ptr @.str.6, i32 544, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcm_nsp_sata_init\00", [45 x i8] zeroinitializer }, align 32
@brcm_nsp_sata_init._entry_ptr = internal global ptr @brcm_nsp_sata_init._entry, section ".printk_index", align 4
@brcm_nsp_sata_init.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.37, ptr @.str.6, ptr @.str.34, i8 0, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@brcm_sr_sata_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.38, ptr @.str.6, i32 591, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcm_sr_sata_init\00", [46 x i8] zeroinitializer }, align 32
@brcm_sr_sata_init._entry_ptr = internal global ptr @brcm_sr_sata_init._entry, section ".printk_index", align 4
@brcm_dsl_sata_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.39, ptr @.str.6, i32 658, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcm_dsl_sata_init\00", [45 x i8] zeroinitializer }, align 32
@brcm_dsl_sata_init._entry_ptr = internal global ptr @brcm_dsl_sata_init._entry, section ".printk_index", align 4
@brcm_dsl_sata_init.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.39, ptr @.str.6, ptr @.str.34, i8 0, i8 -91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manual\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 400, i64 500, i64 600, i64 800]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.45 = private unnamed_addr constant [21 x i8] c"brcm_sata_phy_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 847, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 851, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant [23 x i8] c"brcm_sata_phy_of_match\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 731, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 769, i32 63 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 780, i32 65 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 789, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 790, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 797, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 802, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant [8 x i8] c"phy_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 725, i32 29 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 812, i32 39 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 816, i32 32 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 819, i32 31 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 822, i32 47 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 824, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 835, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 839, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 264, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 479, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 483, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 204, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 544, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 591, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 658, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 53, i32 17 }
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private constant [40 x i8] c"../drivers/phy/broadcom/phy-brcm-sata.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 55, i32 22 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_alias298, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_brcm_sata_phy_driver_exit, ptr @__initcall__kmod_phy_brcm_sata__292_854_brcm_sata_phy_driver_init6, ptr @brcm_dsl_sata_init._entry, ptr @brcm_dsl_sata_init._entry_ptr, ptr @brcm_ns2_sata_init._entry, ptr @brcm_ns2_sata_init._entry_ptr, ptr @brcm_nsp_sata_init._entry, ptr @brcm_nsp_sata_init._entry_ptr, ptr @brcm_sata_ctrl_base._entry, ptr @brcm_sata_ctrl_base._entry_ptr, ptr @brcm_sata_phy_driver_exit, ptr @brcm_sata_phy_probe._entry, ptr @brcm_sata_phy_probe._entry.12, ptr @brcm_sata_phy_probe._entry.19, ptr @brcm_sata_phy_probe._entry.22, ptr @brcm_sata_phy_probe._entry.25, ptr @brcm_sata_phy_probe._entry.9, ptr @brcm_sata_phy_probe._entry_ptr, ptr @brcm_sata_phy_probe._entry_ptr.11, ptr @brcm_sata_phy_probe._entry_ptr.14, ptr @brcm_sata_phy_probe._entry_ptr.21, ptr @brcm_sata_phy_probe._entry_ptr.24, ptr @brcm_sata_phy_probe._entry_ptr.28, ptr @brcm_sr_sata_init._entry, ptr @brcm_sr_sata_init._entry_ptr, ptr @brcm_stb_sata_ssc_init._entry, ptr @brcm_stb_sata_ssc_init._entry_ptr, ptr @brcm_sata_phy_driver, ptr @.str, ptr @brcm_sata_phy_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @phy_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_sata_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_sata_phy_of_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_sata_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_sata_phy_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_sata_phy_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_sata_phy_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_sata_phy_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_sata_phy_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_stb_sata_ssc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_ns2_sata_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_sata_ctrl_base._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_nsp_sata_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_sr_sata_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_dsl_sata_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_sata_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcm_sata_phy_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @brcm_sata_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcm_sata_phy_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_sata_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %rxaeq_mode = alloca ptr, align 4
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rxaeq_mode) #7
  %0 = ptrtoint ptr %rxaeq_mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rxaeq_mode, align 4, !annotation !113
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_get_next_child(ptr noundef %2, ptr noundef null) #7
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %entry.cleanup88_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup88_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup88

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %2, ptr noundef nonnull %child.06.i) #7
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %cmp = icmp eq i32 %inc.i, 0
  br i1 %cmp, label %of_get_child_count.exit.cleanup88_crit_edge, label %if.end

of_get_child_count.exit.cleanup88_crit_edge:      ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup88

if.end:                                           ; preds = %of_get_child_count.exit
  %call.i151 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 72, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i151, null
  br i1 %tobool.not, label %if.end.cleanup88_crit_edge, label %if.end4

if.end.cleanup88_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup88

if.end4:                                          ; preds = %if.end
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i151, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %call.i151 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %call.i151, align 4
  %call6 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #7
  %phy_base = getelementptr inbounds %struct.brcm_sata_phy, ptr %call.i151, i32 0, i32 1
  %5 = ptrtoint ptr %phy_base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %phy_base, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call6 to i32
  br label %cleanup88

if.end12:                                         ; preds = %if.end4
  %call13 = tail call ptr @of_match_node(ptr noundef nonnull @brcm_sata_phy_of_match, ptr noundef %2) #7
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end17.thread, label %if.end17

if.end17.thread:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %7 = getelementptr inbounds %struct.brcm_sata_phy, ptr %call.i151, i32 0, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %7, align 4
  br label %if.end28

if.end17:                                         ; preds = %if.end12
  %data = getelementptr inbounds %struct.of_device_id, ptr %call13, i32 0, i32 3
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = getelementptr inbounds %struct.brcm_sata_phy, ptr %call.i151, i32 0, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %12, align 4
  %cmp19 = icmp eq ptr %10, inttoptr (i32 3 to ptr)
  br i1 %cmp19, label %if.then20, label %if.end17.if.end28_crit_edge

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then20:                                        ; preds = %if.end17
  %call21 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #7
  %ctrl_base = getelementptr inbounds %struct.brcm_sata_phy, ptr %call.i151, i32 0, i32 2
  %14 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call21, ptr %ctrl_base, align 4
  %cmp.i152 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152, label %if.then24, label %if.then20.if.end28_crit_edge

if.then20.if.end28_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call21 to i32
  br label %cleanup88

if.end28:                                         ; preds = %if.then20.if.end28_crit_edge, %if.end17.if.end28_crit_edge, %if.end17.thread
  %call29 = tail call ptr @of_get_next_available_child(ptr noundef %2, ptr noundef null) #7
  %cmp30.not178 = icmp eq ptr %call29, null
  br i1 %cmp30.not178, label %if.end28.for.end_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  br label %for.body

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end28.for.body_crit_edge
  %count.0180 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end28.for.body_crit_edge ]
  %child.0179 = phi ptr [ %call76, %for.inc.for.body_crit_edge ], [ %call29, %if.end28.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #7
  %16 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %id, align 4, !annotation !113
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0179, ptr noundef nonnull @.str.3, ptr noundef nonnull %id, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool32.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool32.not, label %if.end34, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull %child.0179) #10
  br label %put_child

if.end34:                                         ; preds = %for.body
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp35 = icmp ugt i32 %18, 1
  br i1 %cmp35, label %do.end39, label %if.end40

do.end39:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %18) #10
  br label %put_child

if.end40:                                         ; preds = %if.end34
  %arrayidx = getelementptr %struct.brcm_sata_phy, ptr %call.i151, i32 0, i32 4, i32 %18
  %phy = getelementptr %struct.brcm_sata_phy, ptr %call.i151, i32 0, i32 4, i32 %18, i32 1
  %19 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy, align 4
  %tobool41.not = icmp eq ptr %20, null
  br i1 %tobool41.not, label %if.end46, label %do.end45

do.end45:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %18) #10
  br label %put_child

if.end46:                                         ; preds = %if.end40
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %arrayidx, align 4
  %phy_priv = getelementptr %struct.brcm_sata_phy, ptr %call.i151, i32 0, i32 4, i32 %18, i32 2
  %22 = ptrtoint ptr %phy_priv to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i151, ptr %phy_priv, align 4
  %call49 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef nonnull %child.0179, ptr noundef nonnull @phy_ops) #7
  %23 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call49, ptr %phy, align 4
  %rxaeq_mode51 = getelementptr %struct.brcm_sata_phy, ptr %call.i151, i32 0, i32 4, i32 %18, i32 4
  %24 = ptrtoint ptr %rxaeq_mode51 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %rxaeq_mode51, align 4
  %call52 = call i32 @of_property_read_string(ptr noundef nonnull %child.0179, ptr noundef nonnull @.str.15, ptr noundef nonnull %rxaeq_mode) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then54, label %if.end57thread-pre-split

if.then54:                                        ; preds = %if.end46
  %25 = ptrtoint ptr %rxaeq_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rxaeq_mode, align 4
  %call.i153 = call i32 @strcmp(ptr noundef %26, ptr noundef nonnull dereferenceable(5) @.str.40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %tobool.not.i = icmp eq i32 %call.i153, 0
  br i1 %tobool.not.i, label %if.then54.rxaeq_to_val.exit_crit_edge, label %if.else.i

if.then54.rxaeq_to_val.exit_crit_edge:            ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %rxaeq_to_val.exit

if.else.i:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i154 = call i32 @strcmp(ptr noundef %26, ptr noundef nonnull dereferenceable(7) @.str.41) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i154)
  %tobool2.not.i = icmp eq i32 %call1.i154, 0
  %..i = select i1 %tobool2.not.i, i32 2, i32 0
  br label %rxaeq_to_val.exit

rxaeq_to_val.exit:                                ; preds = %if.else.i, %if.then54.rxaeq_to_val.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.then54.rxaeq_to_val.exit_crit_edge ], [ %..i, %if.else.i ]
  %27 = ptrtoint ptr %rxaeq_mode51 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i, ptr %rxaeq_mode51, align 4
  br label %if.end57

if.end57thread-pre-split:                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %rxaeq_mode51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %rxaeq_mode51, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.end57thread-pre-split, %rxaeq_to_val.exit
  %29 = phi i32 [ %.pr, %if.end57thread-pre-split ], [ %retval.0.i, %rxaeq_to_val.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp59 = icmp eq i32 %29, 2
  br i1 %cmp59, label %if.then60, label %if.end57.if.end62_crit_edge

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %rxaeq_val = getelementptr %struct.brcm_sata_phy, ptr %call.i151, i32 0, i32 4, i32 %18, i32 5
  %call.i.i155 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0179, ptr noundef nonnull @.str.16, ptr noundef %rxaeq_val, i32 noundef 1, i32 noundef 0) #7
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end57.if.end62_crit_edge
  %tx_amplitude_val = getelementptr %struct.brcm_sata_phy, ptr %call.i151, i32 0, i32 4, i32 %18, i32 6
  %call.i.i156 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0179, ptr noundef nonnull @.str.17, ptr noundef %tx_amplitude_val, i32 noundef 1, i32 noundef 0) #7
  %call.i157 = call ptr @of_find_property(ptr noundef nonnull %child.0179, ptr noundef nonnull @.str.18, ptr noundef null) #7
  %tobool.i = icmp ne ptr %call.i157, null
  %ssc_en = getelementptr %struct.brcm_sata_phy, ptr %call.i151, i32 0, i32 4, i32 %18, i32 3
  %frombool = zext i1 %tobool.i to i8
  %30 = ptrtoint ptr %ssc_en to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool, ptr %ssc_en, align 4
  %31 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phy, align 4
  %cmp.i158 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %do.end70, label %for.inc

do.end70:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #10
  %33 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy, align 4
  %35 = ptrtoint ptr %34 to i32
  br label %put_child

for.inc:                                          ; preds = %if.end62
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx, ptr %driver_data.i.i, align 4
  %inc = add i32 %count.0180, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  %call76 = call ptr @of_get_next_available_child(ptr noundef %2, ptr noundef nonnull %child.0179) #7
  %cmp30.not = icmp eq ptr %call76, null
  br i1 %cmp30.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end28.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %if.end28.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %call77 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #7
  %cmp.i159 = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %do.end82, label %do.end87

do.end82:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #10
  %37 = ptrtoint ptr %call77 to i32
  br label %cleanup88

do.end87:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %count.0.lcssa) #10
  br label %cleanup88

put_child:                                        ; preds = %do.end70, %do.end45, %do.end39, %do.end
  %ret.1.ph = phi i32 [ %35, %do.end70 ], [ -22, %do.end45 ], [ -22, %do.end39 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  call void @of_node_put(ptr noundef nonnull %child.0179) #7
  br label %cleanup88

cleanup88:                                        ; preds = %put_child, %do.end87, %do.end82, %if.then24, %if.then9, %if.end.cleanup88_crit_edge, %of_get_child_count.exit.cleanup88_crit_edge, %entry.cleanup88_crit_edge
  %retval.0 = phi i32 [ %6, %if.then9 ], [ %15, %if.then24 ], [ %ret.1.ph, %put_child ], [ %37, %do.end82 ], [ 0, %do.end87 ], [ -19, %of_get_child_count.exit.cleanup88_crit_edge ], [ -12, %if.end.cleanup88_crit_edge ], [ -19, %entry.cleanup88_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rxaeq_mode) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_sata_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %phy_priv = getelementptr inbounds %struct.brcm_sata_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_priv, align 4
  %version = getelementptr inbounds %struct.brcm_sata_phy, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb2_crit_edge
    i32 2, label %entry.sw.bb2_crit_edge32
    i32 3, label %sw.bb4
    i32 4, label %sw.bb6
    i32 5, label %sw.bb8
    i32 6, label %sw.bb10
  ]

entry.sw.bb2_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %phy_base.i.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %phy_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_base.i.i.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %mul2.i.i.i = shl i32 %10, 12
  %pcb_base.0.i.i.i = getelementptr i8, ptr %8, i32 %mul2.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %add.ptr3.i.i.i = getelementptr i8, ptr %pcb_base.0.i.i.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 1610612736) #7, !srcloc !115
  %add.ptr5.i.i.i = getelementptr i8, ptr %pcb_base.0.i.i.i, i32 536
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i.i, i32 1090584576) #7, !srcloc !115
  %12 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_priv, align 4
  %phy_base.i2.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %phy_base.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_base.i2.i.i, align 4
  %version.i3.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %version.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %version.i3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i4.i.i = icmp eq i32 %17, 2
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %mul.i5.i.i = shl i32 %19, 4
  %mul2.i6.i.i = shl i32 %19, 12
  %pcb_base.0.idx.i7.i.i = select i1 %cmp.i4.i.i, i32 0, i32 %mul2.i6.i.i
  %pcb_base.0.i8.i.i = getelementptr i8, ptr %15, i32 %pcb_base.0.idx.i7.i.i
  %mul.i5.op.i.i = add i32 %mul.i5.i.i, 96
  %bank.addr.0.i10.i.i = select i1 %cmp.i4.i.i, i32 %mul.i5.op.i.i, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i10.i.i) #7
  %add.ptr3.i11.i.i = getelementptr i8, ptr %pcb_base.0.i8.i.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i11.i.i, i32 %20) #7, !srcloc !115
  %add.ptr5.i12.i.i = getelementptr i8, ptr %pcb_base.0.i8.i.i, i32 544
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i12.i.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i12.i.i, i32 113246208) #7, !srcloc !115
  %22 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_priv, align 4
  %phy_base.i14.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %phy_base.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy_base.i14.i.i, align 4
  %version.i15.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %23, i32 0, i32 3
  %26 = ptrtoint ptr %version.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %version.i15.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i16.i.i = icmp eq i32 %27, 2
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  %mul.i17.i.i = shl i32 %29, 4
  %mul2.i18.i.i = shl i32 %29, 12
  %pcb_base.0.idx.i19.i.i = select i1 %cmp.i16.i.i, i32 0, i32 %mul2.i18.i.i
  %pcb_base.0.i20.i.i = getelementptr i8, ptr %25, i32 %pcb_base.0.idx.i19.i.i
  %mul.i17.op.i.i = add i32 %mul.i17.i.i, 208
  %bank.addr.0.i22.i.i = select i1 %cmp.i16.i.i, i32 %mul.i17.op.i.i, i32 208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i22.i.i) #7
  %add.ptr3.i23.i.i = getelementptr i8, ptr %pcb_base.0.i20.i.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i23.i.i, i32 %30) #7, !srcloc !115
  %add.ptr5.i24.i.i = getelementptr i8, ptr %pcb_base.0.i20.i.i, i32 524
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i24.i.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %32 = and i32 %31, 16711679
  %33 = or i32 %32, -2097152000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i24.i.i, i32 %33) #7, !srcloc !115
  %ssc_en.i.i = getelementptr inbounds %struct.brcm_sata_port, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %ssc_en.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ssc_en.i.i, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i.i = icmp eq i8 %35, 0
  %..i.i = select i1 %tobool.not.i.i, i32 0, i32 82
  %36 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy_priv, align 4
  %phy_base.i26.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %phy_base.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy_base.i26.i.i, align 4
  %version.i27.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %37, i32 0, i32 3
  %40 = ptrtoint ptr %version.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %version.i27.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp.i28.i.i = icmp eq i32 %41, 2
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %1, align 4
  %mul.i29.i.i = shl i32 %43, 4
  %mul2.i30.i.i = shl i32 %43, 12
  %pcb_base.0.idx.i31.i.i = select i1 %cmp.i28.i.i, i32 0, i32 %mul2.i30.i.i
  %pcb_base.0.i32.i.i = getelementptr i8, ptr %39, i32 %pcb_base.0.idx.i31.i.i
  %mul.i29.op.i.i = add i32 %mul.i29.i.i, 448
  %bank.addr.0.i34.i.i = select i1 %cmp.i28.i.i, i32 %mul.i29.op.i.i, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %44 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i34.i.i) #7
  %add.ptr3.i35.i.i = getelementptr i8, ptr %pcb_base.0.i32.i.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i35.i.i, i32 %44) #7, !srcloc !115
  %add.ptr5.i36.i.i = getelementptr i8, ptr %pcb_base.0.i32.i.i, i32 516
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i36.i.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %46 = and i32 %45, 16711679
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #7
  %or.i38.i.i = or i32 %47, %..i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %48 = tail call i32 @llvm.bswap.i32(i32 %or.i38.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i36.i.i, i32 %48) #7, !srcloc !115
  %49 = ptrtoint ptr %ssc_en.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %ssc_en.i.i, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool4.not.i.i = icmp eq i8 %50, 0
  %value.1.i.i = select i1 %tobool4.not.i.i, i32 73, i32 146
  %51 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %phy_priv, align 4
  %phy_base.i40.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %phy_base.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %phy_base.i40.i.i, align 4
  %version.i41.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %52, i32 0, i32 3
  %55 = ptrtoint ptr %version.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %version.i41.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp.i42.i.i = icmp eq i32 %56, 2
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %1, align 4
  %mul.i43.i.i = shl i32 %58, 4
  %mul2.i44.i.i = shl i32 %58, 12
  %pcb_base.0.idx.i45.i.i = select i1 %cmp.i42.i.i, i32 0, i32 %mul2.i44.i.i
  %pcb_base.0.i46.i.i = getelementptr i8, ptr %54, i32 %pcb_base.0.idx.i45.i.i
  %mul.i43.op.i.i = add i32 %mul.i43.i.i, 448
  %bank.addr.0.i48.i.i = select i1 %cmp.i42.i.i, i32 %mul.i43.op.i.i, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %59 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i48.i.i) #7
  %add.ptr3.i49.i.i = getelementptr i8, ptr %pcb_base.0.i46.i.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i49.i.i, i32 %59) #7, !srcloc !115
  %add.ptr5.i50.i.i = getelementptr i8, ptr %pcb_base.0.i46.i.i, i32 520
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i50.i.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %61 = and i32 %60, 16711679
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #7
  %or.i52.i.i = or i32 %62, %value.1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %63 = tail call i32 @llvm.bswap.i32(i32 %or.i52.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i50.i.i, i32 %63) #7, !srcloc !115
  %64 = ptrtoint ptr %ssc_en.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ssc_en.i.i, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool10.not.i.i = icmp eq i8 %65, 0
  %value.2.i.i = select i1 %tobool10.not.i.i, i32 0, i32 73
  %66 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %phy_priv, align 4
  %phy_base.i54.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %phy_base.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %phy_base.i54.i.i, align 4
  %version.i55.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %67, i32 0, i32 3
  %70 = ptrtoint ptr %version.i55.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %version.i55.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp.i56.i.i = icmp eq i32 %71, 2
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %1, align 4
  %mul.i57.i.i = shl i32 %73, 4
  %mul2.i58.i.i = shl i32 %73, 12
  %pcb_base.0.idx.i59.i.i = select i1 %cmp.i56.i.i, i32 0, i32 %mul2.i58.i.i
  %pcb_base.0.i60.i.i = getelementptr i8, ptr %69, i32 %pcb_base.0.idx.i59.i.i
  %mul.i57.op.i.i = add i32 %mul.i57.i.i, 448
  %bank.addr.0.i62.i.i = select i1 %cmp.i56.i.i, i32 %mul.i57.op.i.i, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %74 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i62.i.i) #7
  %add.ptr3.i63.i.i = getelementptr i8, ptr %pcb_base.0.i60.i.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i63.i.i, i32 %74) #7, !srcloc !115
  %add.ptr5.i64.i.i = getelementptr i8, ptr %pcb_base.0.i60.i.i, i32 524
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i64.i.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %76 = and i32 %75, 16711679
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #7
  %or.i66.i.i = or i32 %77, %value.2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %78 = tail call i32 @llvm.bswap.i32(i32 %or.i66.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i64.i.i, i32 %78) #7, !srcloc !115
  %79 = ptrtoint ptr %ssc_en.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ssc_en.i.i, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool16.not.i.i = icmp eq i8 %80, 0
  %value.3.i.i = select i1 %tobool16.not.i.i, i32 0, i32 73
  %81 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %phy_priv, align 4
  %phy_base.i68.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %phy_base.i68.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %phy_base.i68.i.i, align 4
  %version.i69.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %82, i32 0, i32 3
  %85 = ptrtoint ptr %version.i69.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %version.i69.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %86)
  %cmp.i70.i.i = icmp eq i32 %86, 2
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %1, align 4
  %mul.i71.i.i = shl i32 %88, 4
  %mul2.i72.i.i = shl i32 %88, 12
  %pcb_base.0.idx.i73.i.i = select i1 %cmp.i70.i.i, i32 0, i32 %mul2.i72.i.i
  %pcb_base.0.i74.i.i = getelementptr i8, ptr %84, i32 %pcb_base.0.idx.i73.i.i
  %mul.i71.op.i.i = add i32 %mul.i71.i.i, 448
  %bank.addr.0.i76.i.i = select i1 %cmp.i70.i.i, i32 %mul.i71.op.i.i, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %89 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i76.i.i) #7
  %add.ptr3.i77.i.i = getelementptr i8, ptr %pcb_base.0.i74.i.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i77.i.i, i32 %89) #7, !srcloc !115
  %add.ptr5.i78.i.i = getelementptr i8, ptr %pcb_base.0.i74.i.i, i32 528
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i78.i.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %91 = and i32 %90, 16711679
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #7
  %or.i80.i.i = or i32 %92, %value.3.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %93 = tail call i32 @llvm.bswap.i32(i32 %or.i80.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i78.i.i, i32 %93) #7, !srcloc !115
  %94 = ptrtoint ptr %ssc_en.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %ssc_en.i.i, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool22.not.i.i = icmp eq i8 %95, 0
  %value.4.i.i = select i1 %tobool22.not.i.i, i32 256, i32 337
  %96 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %phy_priv, align 4
  %phy_base.i82.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %phy_base.i82.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %phy_base.i82.i.i, align 4
  %version.i83.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %97, i32 0, i32 3
  %100 = ptrtoint ptr %version.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %version.i83.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %101)
  %cmp.i84.i.i = icmp eq i32 %101, 2
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %1, align 4
  %mul.i85.i.i = shl i32 %103, 4
  %mul2.i86.i.i = shl i32 %103, 12
  %pcb_base.0.idx.i87.i.i = select i1 %cmp.i84.i.i, i32 0, i32 %mul2.i86.i.i
  %pcb_base.0.i88.i.i = getelementptr i8, ptr %99, i32 %pcb_base.0.idx.i87.i.i
  %mul.i85.op.i.i = add i32 %mul.i85.i.i, 448
  %bank.addr.0.i90.i.i = select i1 %cmp.i84.i.i, i32 %mul.i85.op.i.i, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %104 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i90.i.i) #7
  %add.ptr3.i91.i.i = getelementptr i8, ptr %pcb_base.0.i88.i.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i91.i.i, i32 %104) #7, !srcloc !115
  %add.ptr5.i92.i.i = getelementptr i8, ptr %pcb_base.0.i88.i.i, i32 540
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i92.i.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %106 = and i32 %105, 16711679
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #7
  %or.i94.i.i = or i32 %107, %value.4.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %108 = tail call i32 @llvm.bswap.i32(i32 %or.i94.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i92.i.i, i32 %108) #7, !srcloc !115
  %tx_amplitude_val.i.i = getelementptr inbounds %struct.brcm_sata_port, ptr %1, i32 0, i32 6
  %109 = ptrtoint ptr %tx_amplitude_val.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tx_amplitude_val.i.i, align 4
  %111 = zext i32 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %110, label %sw.bb.brcm_stb_sata_16nm_init.exit_crit_edge [
    i32 400, label %sw.bb.if.then31.i.i_crit_edge
    i32 500, label %sw.bb28.i.i
    i32 600, label %sw.bb29.i.i
    i32 800, label %sw.bb30.i.i
  ]

sw.bb.if.then31.i.i_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31.i.i

sw.bb.brcm_stb_sata_16nm_init.exit_crit_edge:     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcm_stb_sata_16nm_init.exit

sw.bb28.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31.i.i

sw.bb29.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31.i.i

sw.bb30.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31.i.i

if.then31.i.i:                                    ; preds = %sw.bb30.i.i, %sw.bb29.i.i, %sw.bb28.i.i, %sw.bb.if.then31.i.i_crit_edge
  %value.5.ph.i.i = phi i32 [ 12288, %sw.bb.if.then31.i.i_crit_edge ], [ 8192, %sw.bb28.i.i ], [ 4096, %sw.bb29.i.i ], [ 0, %sw.bb30.i.i ]
  %112 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %phy_priv, align 4
  %phy_base.i96.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %phy_base.i96.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %phy_base.i96.i.i, align 4
  %version.i97.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %113, i32 0, i32 3
  %116 = ptrtoint ptr %version.i97.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %version.i97.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %117)
  %cmp.i98.i.i = icmp eq i32 %117, 2
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %1, align 4
  %mul.i99.i.i = shl i32 %119, 4
  %mul2.i100.i.i = shl i32 %119, 12
  %pcb_base.0.idx.i101.i.i = select i1 %cmp.i98.i.i, i32 0, i32 %mul2.i100.i.i
  %pcb_base.0.i102.i.i = getelementptr i8, ptr %115, i32 %pcb_base.0.idx.i101.i.i
  %mul.i99.op.i.i = add i32 %mul.i99.i.i, 16
  %bank.addr.0.i104.i.i = select i1 %cmp.i98.i.i, i32 %mul.i99.op.i.i, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %120 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i104.i.i) #7
  %add.ptr3.i105.i.i = getelementptr i8, ptr %pcb_base.0.i102.i.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i105.i.i, i32 %120) #7, !srcloc !115
  %add.ptr5.i106.i.i = getelementptr i8, ptr %pcb_base.0.i102.i.i, i32 524
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i106.i.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %122 = and i32 %121, -15728641
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #7
  %or.i108.i.i = or i32 %123, %value.5.ph.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %124 = tail call i32 @llvm.bswap.i32(i32 %or.i108.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i106.i.i, i32 %124) #7, !srcloc !115
  br label %brcm_stb_sata_16nm_init.exit

brcm_stb_sata_16nm_init.exit:                     ; preds = %if.then31.i.i, %sw.bb.brcm_stb_sata_16nm_init.exit_crit_edge
  %125 = ptrtoint ptr %ssc_en.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %ssc_en.i.i, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool35.not.i.i = icmp eq i8 %126, 0
  %cond.i.i = select i1 %tobool35.not.i.i, i32 0, i32 2048
  %127 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %phy_priv, align 4
  %phy_base.i110.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %phy_base.i110.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %phy_base.i110.i.i, align 4
  %version.i111.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %128, i32 0, i32 3
  %131 = ptrtoint ptr %version.i111.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %version.i111.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %132)
  %cmp.i112.i.i = icmp eq i32 %132, 2
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %1, align 4
  %mul.i113.i.i = shl i32 %134, 4
  %mul2.i114.i.i = shl i32 %134, 12
  %pcb_base.0.idx.i115.i.i = select i1 %cmp.i112.i.i, i32 0, i32 %mul2.i114.i.i
  %pcb_base.0.i116.i.i = getelementptr i8, ptr %130, i32 %pcb_base.0.idx.i115.i.i
  %mul.i113.op.i.i = add i32 %mul.i113.i.i, 112
  %bank.addr.0.i118.i.i = select i1 %cmp.i112.i.i, i32 %mul.i113.op.i.i, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %135 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i118.i.i) #7
  %add.ptr3.i119.i.i = getelementptr i8, ptr %pcb_base.0.i116.i.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i119.i.i, i32 %135) #7, !srcloc !115
  %add.ptr5.i120.i.i = getelementptr i8, ptr %pcb_base.0.i116.i.i, i32 532
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i120.i.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %137 = and i32 %136, -524289
  %138 = tail call i32 @llvm.bswap.i32(i32 %137) #7
  %or.i122.i.i = or i32 %138, %cond.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %139 = tail call i32 @llvm.bswap.i32(i32 %or.i122.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i120.i.i, i32 %139) #7, !srcloc !115
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge32
  %phy_base.i.i.i18 = getelementptr inbounds %struct.brcm_sata_phy, ptr %3, i32 0, i32 1
  %140 = ptrtoint ptr %phy_base.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %phy_base.i.i.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i.i.i20 = icmp eq i32 %5, 2
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %1, align 4
  %mul.i.i.i21 = shl i32 %143, 4
  %mul2.i.i.i22 = shl i32 %143, 12
  %pcb_base.0.idx.i.i.i23 = select i1 %cmp.i.i.i20, i32 0, i32 %mul2.i.i.i22
  %pcb_base.0.i.i.i24 = getelementptr i8, ptr %141, i32 %pcb_base.0.idx.i.i.i23
  %mul.i.op.i.i25 = add i32 %mul.i.i.i21, 416
  %bank.addr.0.i.i.i26 = select i1 %cmp.i.i.i20, i32 %mul.i.op.i.i25, i32 416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %144 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i.i.i26) #7
  %add.ptr3.i.i.i27 = getelementptr i8, ptr %pcb_base.0.i.i.i24, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i27, i32 %144) #7, !srcloc !115
  %add.ptr5.i.i.i28 = getelementptr i8, ptr %pcb_base.0.i.i.i24, i32 516
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i28) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %146 = or i32 %145, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i.i28, i32 %146) #7, !srcloc !115
  %147 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %phy_priv, align 4
  %phy_base.i9.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %phy_base.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %phy_base.i9.i.i, align 4
  %version.i10.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %148, i32 0, i32 3
  %151 = ptrtoint ptr %version.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %version.i10.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %152)
  %cmp.i11.i.i = icmp eq i32 %152, 2
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %1, align 4
  %mul.i12.i.i = shl i32 %154, 4
  %mul2.i13.i.i = shl i32 %154, 12
  %pcb_base.0.idx.i14.i.i = select i1 %cmp.i11.i.i, i32 0, i32 %mul2.i13.i.i
  %pcb_base.0.i15.i.i = getelementptr i8, ptr %150, i32 %pcb_base.0.idx.i14.i.i
  %mul.i12.op.i.i = add i32 %mul.i12.i.i, 416
  %bank.addr.0.i17.i.i = select i1 %cmp.i11.i.i, i32 %mul.i12.op.i.i, i32 416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %155 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i17.i.i) #7
  %add.ptr3.i18.i.i = getelementptr i8, ptr %pcb_base.0.i15.i.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i18.i.i, i32 %155) #7, !srcloc !115
  %add.ptr5.i19.i.i = getelementptr i8, ptr %pcb_base.0.i15.i.i, i32 524
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i19.i.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %157 = and i32 %156, 16580607
  %158 = or i32 %157, -553451520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i19.i.i, i32 %158) #7, !srcloc !115
  %ssc_en.i.i29 = getelementptr inbounds %struct.brcm_sata_port, ptr %1, i32 0, i32 3
  %159 = ptrtoint ptr %ssc_en.i.i29 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %ssc_en.i.i29, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool.not.i.i30 = icmp eq i8 %160, 0
  br i1 %tobool.not.i.i30, label %sw.bb2.brcm_stb_sata_ssc_init.exit.i_crit_edge, label %do.end.i.i

sw.bb2.brcm_stb_sata_ssc_init.exit.i_crit_edge:   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcm_stb_sata_ssc_init.exit.i

do.end.i.i:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %161 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %3, align 4
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %162, ptr noundef nonnull @.str.29, i32 noundef %164) #10
  br label %brcm_stb_sata_ssc_init.exit.i

brcm_stb_sata_ssc_init.exit.i:                    ; preds = %do.end.i.i, %sw.bb2.brcm_stb_sata_ssc_init.exit.i_crit_edge
  %tmp.0.i.i = phi i32 [ 131, %do.end.i.i ], [ 991, %sw.bb2.brcm_stb_sata_ssc_init.exit.i_crit_edge ]
  %165 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %phy_priv, align 4
  %phy_base.i23.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %phy_base.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %phy_base.i23.i.i, align 4
  %version.i24.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %166, i32 0, i32 3
  %169 = ptrtoint ptr %version.i24.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %version.i24.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %170)
  %cmp.i25.i.i = icmp eq i32 %170, 2
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %1, align 4
  %mul.i26.i.i = shl i32 %172, 4
  %mul2.i27.i.i = shl i32 %172, 12
  %pcb_base.0.idx.i28.i.i = select i1 %cmp.i25.i.i, i32 0, i32 %mul2.i27.i.i
  %pcb_base.0.i29.i.i = getelementptr i8, ptr %168, i32 %pcb_base.0.idx.i28.i.i
  %mul.i26.op.i.i = add i32 %mul.i26.i.i, 416
  %bank.addr.0.i31.i.i = select i1 %cmp.i25.i.i, i32 %mul.i26.op.i.i, i32 416
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %173 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i31.i.i) #7
  %add.ptr3.i32.i.i = getelementptr i8, ptr %pcb_base.0.i29.i.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i32.i.i, i32 %173) #7, !srcloc !115
  %add.ptr5.i33.i.i = getelementptr i8, ptr %pcb_base.0.i29.i.i, i32 528
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i33.i.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %175 = and i32 %174, 16580607
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #7
  %or.i35.i.i = or i32 %176, %tmp.0.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %177 = tail call i32 @llvm.bswap.i32(i32 %or.i35.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i33.i.i, i32 %177) #7, !srcloc !115
  %rxaeq_mode.i.i = getelementptr inbounds %struct.brcm_sata_port, ptr %1, i32 0, i32 4
  %178 = ptrtoint ptr %rxaeq_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %rxaeq_mode.i.i, align 4
  %180 = zext i32 %179 to i64
  call void @__sanitizer_cov_trace_switch(i64 %180, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %179, label %brcm_stb_sata_ssc_init.exit.i.sw.epilog.i.i_crit_edge [
    i32 0, label %brcm_stb_sata_ssc_init.exit.i.sw.epilog_crit_edge
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb2.i.i
  ]

brcm_stb_sata_ssc_init.exit.i.sw.epilog_crit_edge: ; preds = %brcm_stb_sata_ssc_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

brcm_stb_sata_ssc_init.exit.i.sw.epilog.i.i_crit_edge: ; preds = %brcm_stb_sata_ssc_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %brcm_stb_sata_ssc_init.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %brcm_stb_sata_ssc_init.exit.i
  %rxaeq_val.i.i = getelementptr inbounds %struct.brcm_sata_port, ptr %1, i32 0, i32 5
  %181 = ptrtoint ptr %rxaeq_val.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %rxaeq_val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %182)
  %cmp.i.i = icmp ugt i32 %182, 63
  br i1 %cmp.i.i, label %sw.bb2.i.i.sw.epilog_crit_edge, label %if.end.i.i

sw.bb2.i.i.sw.epilog_crit_edge:                   ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i = shl nuw nsw i32 %182, 2
  %or.i.i = or i32 %shl.i.i, 3
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %if.end.i.i, %sw.bb1.i.i, %brcm_stb_sata_ssc_init.exit.i.sw.epilog.i.i_crit_edge
  %tmp.0.i2.i = phi i32 [ 0, %brcm_stb_sata_ssc_init.exit.i.sw.epilog.i.i_crit_edge ], [ %or.i.i, %if.end.i.i ], [ 12, %sw.bb1.i.i ]
  %reg.0.i.i = phi i32 [ 0, %brcm_stb_sata_ssc_init.exit.i.sw.epilog.i.i_crit_edge ], [ 524, %if.end.i.i ], [ 516, %sw.bb1.i.i ]
  %183 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %phy_priv, align 4
  %phy_base.i.i3.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %phy_base.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %phy_base.i.i3.i, align 4
  %version.i.i4.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %184, i32 0, i32 3
  %187 = ptrtoint ptr %version.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %version.i.i4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %188)
  %cmp.i.i5.i = icmp eq i32 %188, 2
  %189 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %1, align 4
  %mul.i.i6.i = shl i32 %190, 4
  %mul2.i.i7.i = shl i32 %190, 12
  %pcb_base.0.idx.i.i8.i = select i1 %cmp.i.i5.i, i32 0, i32 %mul2.i.i7.i
  %pcb_base.0.i.i9.i = getelementptr i8, ptr %186, i32 %pcb_base.0.idx.i.i8.i
  %mul.i.op.i10.i = add i32 %mul.i.i6.i, 208
  %bank.addr.0.i.i11.i = select i1 %cmp.i.i5.i, i32 %mul.i.op.i10.i, i32 208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %191 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i.i11.i) #7
  %add.ptr3.i.i12.i = getelementptr i8, ptr %pcb_base.0.i.i9.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i12.i, i32 %191) #7, !srcloc !115
  %add.ptr5.i.i13.i = getelementptr i8, ptr %pcb_base.0.i.i9.i, i32 %reg.0.i.i
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i13.i) #7, !srcloc !116
  %193 = tail call i32 @llvm.bswap.i32(i32 %192) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %or.i.i.i = or i32 %193, %tmp.0.i2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %194 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i13.i, i32 %194) #7, !srcloc !115
  %195 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %phy_priv, align 4
  %phy_base.i16.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %196, i32 0, i32 1
  %197 = ptrtoint ptr %phy_base.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %phy_base.i16.i.i, align 4
  %version.i17.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %196, i32 0, i32 3
  %199 = ptrtoint ptr %version.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %version.i17.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %200)
  %cmp.i18.i.i = icmp eq i32 %200, 2
  %201 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %1, align 4
  %mul.i19.i.i = shl i32 %202, 4
  %mul2.i20.i.i = shl i32 %202, 12
  %pcb_base.0.idx.i21.i.i = select i1 %cmp.i18.i.i, i32 0, i32 %mul2.i20.i.i
  %pcb_base.0.i22.i.i = getelementptr i8, ptr %198, i32 %pcb_base.0.idx.i21.i.i
  %mul.i19.op.i.i = add i32 %mul.i19.i.i, 224
  %bank.addr.0.i24.i.i = select i1 %cmp.i18.i.i, i32 %mul.i19.op.i.i, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %203 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i24.i.i) #7
  %add.ptr3.i25.i.i = getelementptr i8, ptr %pcb_base.0.i22.i.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i25.i.i, i32 %203) #7, !srcloc !115
  %add.ptr5.i27.i.i = getelementptr i8, ptr %pcb_base.0.i22.i.i, i32 %reg.0.i.i
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i27.i.i) #7, !srcloc !116
  %205 = tail call i32 @llvm.bswap.i32(i32 %204) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %or.i29.i.i = or i32 %205, %tmp.0.i2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %206 = tail call i32 @llvm.bswap.i32(i32 %or.i29.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i27.i.i, i32 %206) #7, !srcloc !115
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call fastcc i32 @brcm_ns2_sata_init(ptr noundef %1)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call fastcc i32 @brcm_nsp_sata_init(ptr noundef %1)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %207 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %3, align 4
  %phy_base.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %3, i32 0, i32 1
  %209 = ptrtoint ptr %phy_base.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %phy_base.i.i, align 4
  %211 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %1, align 4
  %mul2.i.i = shl i32 %212, 12
  %pcb_base.0.i.i = getelementptr i8, ptr %210, i32 %mul2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %add.ptr3.i.i = getelementptr i8, ptr %pcb_base.0.i.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 1610612736) #7, !srcloc !115
  %add.ptr5.i.i = getelementptr i8, ptr %pcb_base.0.i.i, i32 520
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 838860800) #7, !srcloc !115
  %214 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %phy_priv, align 4
  %phy_base.i29.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %phy_base.i29.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %phy_base.i29.i, align 4
  %version.i30.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %215, i32 0, i32 3
  %218 = ptrtoint ptr %version.i30.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %version.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %219)
  %cmp.i31.i = icmp eq i32 %219, 2
  %220 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %1, align 4
  %mul.i32.i = shl i32 %221, 4
  %mul2.i33.i = shl i32 %221, 12
  %pcb_base.0.idx.i34.i = select i1 %cmp.i31.i, i32 0, i32 %mul2.i33.i
  %pcb_base.0.i35.i = getelementptr i8, ptr %217, i32 %pcb_base.0.idx.i34.i
  %mul.i32.op.i = add i32 %mul.i32.i, 96
  %bank.addr.0.i37.i = select i1 %cmp.i31.i, i32 %mul.i32.op.i, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %222 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i37.i) #7
  %add.ptr3.i38.i = getelementptr i8, ptr %pcb_base.0.i35.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i38.i, i32 %222) #7, !srcloc !115
  %add.ptr5.i39.i = getelementptr i8, ptr %pcb_base.0.i35.i, i32 524
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i39.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i39.i, i32 33554432) #7, !srcloc !115
  %224 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %phy_priv, align 4
  %phy_base.i41.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %225, i32 0, i32 1
  %226 = ptrtoint ptr %phy_base.i41.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %phy_base.i41.i, align 4
  %version.i42.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %225, i32 0, i32 3
  %228 = ptrtoint ptr %version.i42.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %version.i42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %229)
  %cmp.i43.i = icmp eq i32 %229, 2
  %230 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %1, align 4
  %mul.i44.i = shl i32 %231, 4
  %mul2.i45.i = shl i32 %231, 12
  %pcb_base.0.idx.i46.i = select i1 %cmp.i43.i, i32 0, i32 %mul2.i45.i
  %pcb_base.0.i47.i = getelementptr i8, ptr %227, i32 %pcb_base.0.idx.i46.i
  %mul.i44.op.i = add i32 %mul.i44.i, 96
  %bank.addr.0.i49.i = select i1 %cmp.i43.i, i32 %mul.i44.op.i, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %232 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i49.i) #7
  %add.ptr3.i50.i = getelementptr i8, ptr %pcb_base.0.i47.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i50.i, i32 %232) #7, !srcloc !115
  %add.ptr5.i51.i = getelementptr i8, ptr %pcb_base.0.i47.i, i32 528
  %233 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i51.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i51.i, i32 -402456576) #7, !srcloc !115
  %234 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %phy_priv, align 4
  %phy_base.i53.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %235, i32 0, i32 1
  %236 = ptrtoint ptr %phy_base.i53.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %phy_base.i53.i, align 4
  %version.i54.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %235, i32 0, i32 3
  %238 = ptrtoint ptr %version.i54.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %version.i54.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %239)
  %cmp.i55.i = icmp eq i32 %239, 2
  %240 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %1, align 4
  %mul.i56.i = shl i32 %241, 4
  %mul2.i57.i = shl i32 %241, 12
  %pcb_base.0.idx.i58.i = select i1 %cmp.i55.i, i32 0, i32 %mul2.i57.i
  %pcb_base.0.i59.i = getelementptr i8, ptr %237, i32 %pcb_base.0.idx.i58.i
  %mul.i56.op.i = add i32 %mul.i56.i, 80
  %bank.addr.0.i61.i = select i1 %cmp.i55.i, i32 %mul.i56.op.i, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %242 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i61.i) #7
  %add.ptr3.i62.i = getelementptr i8, ptr %pcb_base.0.i59.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i62.i, i32 %242) #7, !srcloc !115
  %add.ptr5.i63.i = getelementptr i8, ptr %pcb_base.0.i59.i, i32 536
  %243 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i63.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i63.i, i32 167772160) #7, !srcloc !115
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %sw.bb8
  %try.0.i = phi i32 [ 50, %sw.bb8 ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  %244 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %phy_priv, align 4
  %phy_base.i65.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %phy_base.i65.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %phy_base.i65.i, align 4
  %version.i66.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %245, i32 0, i32 3
  %248 = ptrtoint ptr %version.i66.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %version.i66.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %249)
  %cmp.i67.i = icmp eq i32 %249, 2
  %250 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %1, align 4
  %mul.i68.i = shl i32 %251, 4
  %mul2.i69.i = shl i32 %251, 12
  %pcb_base.0.idx.i70.i = select i1 %cmp.i67.i, i32 0, i32 %mul2.i69.i
  %pcb_base.0.i71.i = getelementptr i8, ptr %247, i32 %pcb_base.0.idx.i70.i
  %bank.addr.0.i72.i = select i1 %cmp.i67.i, i32 %mul.i68.i, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void @arm_heavy_mb() #7
  %252 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i72.i) #7
  %add.ptr3.i73.i = getelementptr i8, ptr %pcb_base.0.i71.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i73.i, i32 %252) #7, !srcloc !115
  %add.ptr5.i74.i = getelementptr i8, ptr %pcb_base.0.i71.i, i32 516
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i74.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %254 = and i32 %253, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %cond.i = icmp eq i32 %254, 0
  br i1 %cond.i, label %if.end.i, label %if.end8.i

if.end.i:                                         ; preds = %do.body.i
  tail call void @msleep(i32 noundef 20) #7
  %dec.i = add nsw i32 %try.0.i, -1
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %do.end7.i, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %255 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %208, ptr noundef nonnull @.str.31, i32 noundef %256) #10
  br label %sw.epilog

if.end8.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %257 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %phy_priv, align 4
  %phy_base.i76.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %258, i32 0, i32 1
  %259 = ptrtoint ptr %phy_base.i76.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %phy_base.i76.i, align 4
  %version.i77.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %258, i32 0, i32 3
  %261 = ptrtoint ptr %version.i77.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %version.i77.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %262)
  %cmp.i78.i = icmp eq i32 %262, 2
  %263 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %1, align 4
  %mul.i79.i = shl i32 %264, 4
  %mul2.i80.i = shl i32 %264, 12
  %pcb_base.0.idx.i81.i = select i1 %cmp.i78.i, i32 0, i32 %mul2.i80.i
  %pcb_base.0.i82.i = getelementptr i8, ptr %260, i32 %pcb_base.0.idx.i81.i
  %mul.i79.op.i = add i32 %mul.i79.i, 112
  %bank.addr.0.i84.i = select i1 %cmp.i78.i, i32 %mul.i79.op.i, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %265 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i84.i) #7
  %add.ptr3.i85.i = getelementptr i8, ptr %pcb_base.0.i82.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i85.i, i32 %265) #7, !srcloc !115
  %add.ptr5.i86.i = getelementptr i8, ptr %pcb_base.0.i82.i, i32 512
  %266 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i86.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %267 = or i32 %266, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i86.i, i32 %267) #7, !srcloc !115
  %268 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %phy_priv, align 4
  %phy_base.i88.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %269, i32 0, i32 1
  %270 = ptrtoint ptr %phy_base.i88.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %phy_base.i88.i, align 4
  %version.i89.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %269, i32 0, i32 3
  %272 = ptrtoint ptr %version.i89.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %version.i89.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %273)
  %cmp.i90.i = icmp eq i32 %273, 2
  %274 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %1, align 4
  %mul.i91.i = shl i32 %275, 4
  %mul2.i92.i = shl i32 %275, 12
  %pcb_base.0.idx.i93.i = select i1 %cmp.i90.i, i32 0, i32 %mul2.i92.i
  %pcb_base.0.i94.i = getelementptr i8, ptr %271, i32 %pcb_base.0.idx.i93.i
  %mul.i91.op.i = add i32 %mul.i91.i, 336
  %bank.addr.0.i96.i = select i1 %cmp.i90.i, i32 %mul.i91.op.i, i32 336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %276 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i96.i) #7
  %add.ptr3.i97.i = getelementptr i8, ptr %pcb_base.0.i94.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i97.i, i32 %276) #7, !srcloc !115
  %add.ptr5.i98.i = getelementptr i8, ptr %pcb_base.0.i94.i, i32 512
  %277 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i98.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i98.i, i32 -2084306944) #7, !srcloc !115
  %278 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %phy_priv, align 4
  %phy_base.i100.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %279, i32 0, i32 1
  %280 = ptrtoint ptr %phy_base.i100.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %phy_base.i100.i, align 4
  %version.i101.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %279, i32 0, i32 3
  %282 = ptrtoint ptr %version.i101.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %version.i101.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %283)
  %cmp.i102.i = icmp eq i32 %283, 2
  %284 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %1, align 4
  %mul.i103.i = shl i32 %285, 4
  %mul2.i104.i = shl i32 %285, 12
  %pcb_base.0.idx.i105.i = select i1 %cmp.i102.i, i32 0, i32 %mul2.i104.i
  %pcb_base.0.i106.i = getelementptr i8, ptr %281, i32 %pcb_base.0.idx.i105.i
  %mul.i103.op.i = add i32 %mul.i103.i, 336
  %bank.addr.0.i108.i = select i1 %cmp.i102.i, i32 %mul.i103.op.i, i32 336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %286 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i108.i) #7
  %add.ptr3.i109.i = getelementptr i8, ptr %pcb_base.0.i106.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i109.i, i32 %286) #7, !srcloc !115
  %add.ptr5.i110.i = getelementptr i8, ptr %pcb_base.0.i106.i, i32 516
  %287 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i110.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i110.i, i32 -1994719232) #7, !srcloc !115
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call fastcc i32 @brcm_dsl_sata_init(ptr noundef %1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %if.end8.i, %do.end7.i, %sw.bb6, %sw.bb4, %sw.epilog.i.i, %sw.bb2.i.i.sw.epilog_crit_edge, %brcm_stb_sata_ssc_init.exit.i.sw.epilog_crit_edge, %brcm_stb_sata_16nm_init.exit, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ %call11, %sw.bb10 ], [ %call7, %sw.bb6 ], [ %call5, %sw.bb4 ], [ 0, %brcm_stb_sata_16nm_init.exit ], [ -19, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.i.i ], [ %179, %brcm_stb_sata_ssc_init.exit.i.sw.epilog_crit_edge ], [ -22, %sw.bb2.i.i.sw.epilog_crit_edge ], [ -110, %do.end7.i ], [ 0, %if.end8.i ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_sata_phy_calibrate(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %phy_priv = getelementptr inbounds %struct.brcm_sata_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_priv, align 4
  %version = getelementptr inbounds %struct.brcm_sata_phy, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version, align 4
  %.off = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %phy_base.i.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %phy_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_base.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 2
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %mul.i.i = shl i32 %9, 4
  %mul2.i.i = shl i32 %9, 12
  %pcb_base.0.idx.i.i = select i1 %cmp.i.i, i32 0, i32 %mul2.i.i
  %pcb_base.0.i.i = getelementptr i8, ptr %7, i32 %pcb_base.0.idx.i.i
  %mul.i.op.i = add i32 %mul.i.i, 448
  %bank.addr.0.i.i = select i1 %cmp.i.i, i32 %mul.i.op.i, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i.i) #7
  %add.ptr3.i.i = getelementptr i8, ptr %pcb_base.0.i.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %10) #7, !srcloc !115
  %add.ptr5.i.i = getelementptr i8, ptr %pcb_base.0.i.i, i32 540
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %12 = or i32 %11, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %12) #7, !srcloc !115
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcm_ns2_sata_init(ptr nocapture noundef readonly %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_priv.i = getelementptr inbounds %struct.brcm_sata_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %phy_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_priv.i, align 4
  %version.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cond.i = icmp eq i32 %3, 3
  br i1 %cond.i, label %entry.brcm_sata_ctrl_base.exit_crit_edge, label %do.end.i

entry.brcm_sata_ctrl_base.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %brcm_sata_ctrl_base.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.35) #10
  br label %brcm_sata_ctrl_base.exit

brcm_sata_ctrl_base.exit:                         ; preds = %do.end.i, %entry.brcm_sata_ctrl_base.exit_crit_edge
  %size.0.i = phi i32 [ 0, %do.end.i ], [ 8, %entry.brcm_sata_ctrl_base.exit_crit_edge ]
  %ctrl_base.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ctrl_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_base.i, align 4
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %mul.i = mul i32 %9, %size.0.i
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  %10 = ptrtoint ptr %phy_priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_priv.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %phy_base.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_base.i, align 4
  %version.i60 = getelementptr inbounds %struct.brcm_sata_phy, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %version.i60 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %version.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i = icmp eq i32 %17, 2
  %mul.i61 = shl i32 %9, 4
  %mul2.i = shl i32 %9, 12
  %pcb_base.0.idx.i = select i1 %cmp.i, i32 0, i32 %mul2.i
  %pcb_base.0.i = getelementptr i8, ptr %15, i32 %pcb_base.0.idx.i
  %mul.i61.op = add i32 %mul.i61, 336
  %bank.addr.0.i = select i1 %cmp.i, i32 %mul.i61.op, i32 336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i) #7
  %add.ptr3.i = getelementptr i8, ptr %pcb_base.0.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %18) #7, !srcloc !115
  %add.ptr5.i = getelementptr i8, ptr %pcb_base.0.i, i32 512
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 -1815871488) #7, !srcloc !115
  %20 = ptrtoint ptr %phy_priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy_priv.i, align 4
  %phy_base.i63 = getelementptr inbounds %struct.brcm_sata_phy, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %phy_base.i63 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_base.i63, align 4
  %version.i64 = getelementptr inbounds %struct.brcm_sata_phy, ptr %21, i32 0, i32 3
  %24 = ptrtoint ptr %version.i64 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %version.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp.i65 = icmp eq i32 %25, 2
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %mul.i66 = shl i32 %27, 4
  %mul2.i67 = shl i32 %27, 12
  %pcb_base.0.idx.i68 = select i1 %cmp.i65, i32 0, i32 %mul2.i67
  %pcb_base.0.i69 = getelementptr i8, ptr %23, i32 %pcb_base.0.idx.i68
  %mul.i66.op = add i32 %mul.i66, 336
  %bank.addr.0.i71 = select i1 %cmp.i65, i32 %mul.i66.op, i32 336
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %28 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i71) #7
  %add.ptr3.i72 = getelementptr i8, ptr %pcb_base.0.i69, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i72, i32 %28) #7, !srcloc !115
  %add.ptr5.i73 = getelementptr i8, ptr %pcb_base.0.i69, i32 516
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i73) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i73, i32 -1994719232) #7, !srcloc !115
  %30 = ptrtoint ptr %phy_priv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy_priv.i, align 4
  %phy_base.i75 = getelementptr inbounds %struct.brcm_sata_phy, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %phy_base.i75 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy_base.i75, align 4
  %version.i76 = getelementptr inbounds %struct.brcm_sata_phy, ptr %31, i32 0, i32 3
  %34 = ptrtoint ptr %version.i76 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %version.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp.i77 = icmp eq i32 %35, 2
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %mul.i78 = shl i32 %37, 4
  %mul2.i79 = shl i32 %37, 12
  %pcb_base.0.idx.i80 = select i1 %cmp.i77, i32 0, i32 %mul2.i79
  %pcb_base.0.i81 = getelementptr i8, ptr %33, i32 %pcb_base.0.idx.i80
  %mul.i78.op = add i32 %mul.i78, 96
  %bank.addr.0.i83 = select i1 %cmp.i77, i32 %mul.i78.op, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %38 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i83) #7
  %add.ptr3.i84 = getelementptr i8, ptr %pcb_base.0.i81, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i84, i32 %38) #7, !srcloc !115
  %add.ptr5.i85 = getelementptr i8, ptr %pcb_base.0.i81, i32 520
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i85) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i85, i32 -132317184) #7, !srcloc !115
  %40 = ptrtoint ptr %phy_priv.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %phy_priv.i, align 4
  %phy_base.i87 = getelementptr inbounds %struct.brcm_sata_phy, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %phy_base.i87 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phy_base.i87, align 4
  %version.i88 = getelementptr inbounds %struct.brcm_sata_phy, ptr %41, i32 0, i32 3
  %44 = ptrtoint ptr %version.i88 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %version.i88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp.i89 = icmp eq i32 %45, 2
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  %mul.i90 = shl i32 %47, 4
  %mul2.i91 = shl i32 %47, 12
  %pcb_base.0.idx.i92 = select i1 %cmp.i89, i32 0, i32 %mul2.i91
  %pcb_base.0.i93 = getelementptr i8, ptr %43, i32 %pcb_base.0.idx.i92
  %mul.i90.op = add i32 %mul.i90, 96
  %bank.addr.0.i95 = select i1 %cmp.i89, i32 %mul.i90.op, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %48 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i95) #7
  %add.ptr3.i96 = getelementptr i8, ptr %pcb_base.0.i93, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i96, i32 %48) #7, !srcloc !115
  %add.ptr5.i97 = getelementptr i8, ptr %pcb_base.0.i93, i32 524
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i97) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i97, i32 2818048) #7, !srcloc !115
  %50 = ptrtoint ptr %phy_priv.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %phy_priv.i, align 4
  %phy_base.i99 = getelementptr inbounds %struct.brcm_sata_phy, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %phy_base.i99 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %phy_base.i99, align 4
  %version.i100 = getelementptr inbounds %struct.brcm_sata_phy, ptr %51, i32 0, i32 3
  %54 = ptrtoint ptr %version.i100 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %version.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp.i101 = icmp eq i32 %55, 2
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port, align 4
  %mul.i102 = shl i32 %57, 4
  %mul2.i103 = shl i32 %57, 12
  %pcb_base.0.idx.i104 = select i1 %cmp.i101, i32 0, i32 %mul2.i103
  %pcb_base.0.i105 = getelementptr i8, ptr %53, i32 %pcb_base.0.idx.i104
  %mul.i102.op = add i32 %mul.i102, 96
  %bank.addr.0.i107 = select i1 %cmp.i101, i32 %mul.i102.op, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %58 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i107) #7
  %add.ptr3.i108 = getelementptr i8, ptr %pcb_base.0.i105, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i108, i32 %58) #7, !srcloc !115
  %add.ptr5.i109 = getelementptr i8, ptr %pcb_base.0.i105, i32 528
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i109) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i109, i32 612892672) #7, !srcloc !115
  %60 = ptrtoint ptr %phy_priv.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %phy_priv.i, align 4
  %phy_base.i111 = getelementptr inbounds %struct.brcm_sata_phy, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %phy_base.i111 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %phy_base.i111, align 4
  %version.i112 = getelementptr inbounds %struct.brcm_sata_phy, ptr %61, i32 0, i32 3
  %64 = ptrtoint ptr %version.i112 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %version.i112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp.i113 = icmp eq i32 %65, 2
  %66 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port, align 4
  %mul.i114 = shl i32 %67, 4
  %mul2.i115 = shl i32 %67, 12
  %pcb_base.0.idx.i116 = select i1 %cmp.i113, i32 0, i32 %mul2.i115
  %pcb_base.0.i117 = getelementptr i8, ptr %63, i32 %pcb_base.0.idx.i116
  %add.i118 = select i1 %cmp.i113, i32 %mul.i114, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %68 = tail call i32 @llvm.bswap.i32(i32 %add.i118) #7
  %add.ptr3.i119 = getelementptr i8, ptr %pcb_base.0.i117, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i119, i32 %68) #7, !srcloc !115
  %add.ptr5.i120 = getelementptr i8, ptr %pcb_base.0.i117, i32 564
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i120) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %70 = and i32 %69, -50331649
  %71 = or i32 %70, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i120, i32 %71) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #7
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %brcm_sata_ctrl_base.exit
  %try.0133 = phi i32 [ 50, %brcm_sata_ctrl_base.exit ], [ %dec, %if.end.while.body_crit_edge ]
  %74 = ptrtoint ptr %phy_priv.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %phy_priv.i, align 4
  %phy_base.i122 = getelementptr inbounds %struct.brcm_sata_phy, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %phy_base.i122 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %phy_base.i122, align 4
  %version.i123 = getelementptr inbounds %struct.brcm_sata_phy, ptr %75, i32 0, i32 3
  %78 = ptrtoint ptr %version.i123 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %version.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %79)
  %cmp.i124 = icmp eq i32 %79, 2
  %80 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port, align 4
  %mul.i125 = shl i32 %81, 4
  %mul2.i126 = shl i32 %81, 12
  %pcb_base.0.idx.i127 = select i1 %cmp.i124, i32 0, i32 %mul2.i126
  %pcb_base.0.i128 = getelementptr i8, ptr %77, i32 %pcb_base.0.idx.i127
  %bank.addr.0.i129 = select i1 %cmp.i124, i32 %mul.i125, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void @arm_heavy_mb() #7
  %82 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i129) #7
  %add.ptr3.i130 = getelementptr i8, ptr %pcb_base.0.i128, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i130, i32 %82) #7, !srcloc !115
  %add.ptr5.i131 = getelementptr i8, ptr %pcb_base.0.i128, i32 516
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i131) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %84 = and i32 %83, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool13.not = icmp eq i32 %84, 0
  br i1 %tobool13.not, label %if.end, label %do.body20

if.end:                                           ; preds = %while.body
  tail call void @msleep(i32 noundef 20) #7
  %dec = add nsw i32 %try.0133, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end18.critedge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.end18.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %port, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.31, i32 noundef %86) #10
  br label %cleanup

do.body20:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcm_ns2_sata_init.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcm_ns2_sata_init, %if.then25)) #7
          to label %cleanup [label %if.then25], !srcloc !124

if.then25:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %port, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcm_ns2_sata_init.__UNIQUE_ID_ddebug289, ptr noundef %13, ptr noundef nonnull @.str.34, i32 noundef %88) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %do.body20, %do.end18.critedge
  %retval.0 = phi i32 [ -110, %do.end18.critedge ], [ 0, %if.then25 ], [ 0, %do.body20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcm_nsp_sata_init(ptr nocapture noundef readonly %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_priv = getelementptr inbounds %struct.brcm_sata_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end6_crit_edge
    i32 1, label %if.then4
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %entry.if.end6_crit_edge
  %oob_bank.0 = phi i32 [ 352, %if.then4 ], [ 336, %entry.if.end6_crit_edge ]
  %phy_base.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_base.i, align 4
  %version.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i = icmp eq i32 %10, 2
  %mul.i = shl nuw nsw i32 %5, 4
  %mul2.i = shl nuw nsw i32 %5, 12
  %pcb_base.0.idx.i = select i1 %cmp.i, i32 0, i32 %mul2.i
  %pcb_base.0.i = getelementptr i8, ptr %8, i32 %pcb_base.0.idx.i
  %add.i = select i1 %cmp.i, i32 %mul.i, i32 0
  %bank.addr.0.i = add nuw nsw i32 %add.i, %oob_bank.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i) #7
  %add.ptr3.i = getelementptr i8, ptr %pcb_base.0.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %11) #7, !srcloc !115
  %add.ptr5.i = getelementptr i8, ptr %pcb_base.0.i, i32 512
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 -151650304) #7, !srcloc !115
  %13 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy_priv, align 4
  %phy_base.i70 = getelementptr inbounds %struct.brcm_sata_phy, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %phy_base.i70 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy_base.i70, align 4
  %version.i71 = getelementptr inbounds %struct.brcm_sata_phy, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %version.i71 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %version.i71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i72 = icmp eq i32 %18, 2
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port, align 4
  %mul.i73 = shl i32 %20, 4
  %mul2.i74 = shl i32 %20, 12
  %pcb_base.0.idx.i75 = select i1 %cmp.i72, i32 0, i32 %mul2.i74
  %pcb_base.0.i76 = getelementptr i8, ptr %16, i32 %pcb_base.0.idx.i75
  %add.i77 = select i1 %cmp.i72, i32 %mul.i73, i32 0
  %bank.addr.0.i78 = add i32 %add.i77, %oob_bank.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i78) #7
  %add.ptr3.i79 = getelementptr i8, ptr %pcb_base.0.i76, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i79, i32 %21) #7, !srcloc !115
  %add.ptr5.i80 = getelementptr i8, ptr %pcb_base.0.i76, i32 516
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i80) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i80, i32 -1775370240) #7, !srcloc !115
  %23 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy_priv, align 4
  %phy_base.i82 = getelementptr inbounds %struct.brcm_sata_phy, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %phy_base.i82 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy_base.i82, align 4
  %version.i83 = getelementptr inbounds %struct.brcm_sata_phy, ptr %24, i32 0, i32 3
  %27 = ptrtoint ptr %version.i83 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %version.i83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.i84 = icmp eq i32 %28, 2
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port, align 4
  %mul.i85 = shl i32 %30, 4
  %mul2.i86 = shl i32 %30, 12
  %pcb_base.0.idx.i87 = select i1 %cmp.i84, i32 0, i32 %mul2.i86
  %pcb_base.0.i88 = getelementptr i8, ptr %26, i32 %pcb_base.0.idx.i87
  %mul.i85.op = add i32 %mul.i85, 80
  %bank.addr.0.i90 = select i1 %cmp.i84, i32 %mul.i85.op, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %31 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i90) #7
  %add.ptr3.i91 = getelementptr i8, ptr %pcb_base.0.i88, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i91, i32 %31) #7, !srcloc !115
  %add.ptr5.i92 = getelementptr i8, ptr %pcb_base.0.i88, i32 556
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i92) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %33 = and i32 %32, -4063233
  %34 = or i32 %33, 1572864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i92, i32 %34) #7, !srcloc !115
  %35 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy_priv, align 4
  %phy_base.i94 = getelementptr inbounds %struct.brcm_sata_phy, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %phy_base.i94 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phy_base.i94, align 4
  %version.i95 = getelementptr inbounds %struct.brcm_sata_phy, ptr %36, i32 0, i32 3
  %39 = ptrtoint ptr %version.i95 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %version.i95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp.i96 = icmp eq i32 %40, 2
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port, align 4
  %mul.i97 = shl i32 %42, 4
  %mul2.i98 = shl i32 %42, 12
  %pcb_base.0.idx.i99 = select i1 %cmp.i96, i32 0, i32 %mul2.i98
  %pcb_base.0.i100 = getelementptr i8, ptr %38, i32 %pcb_base.0.idx.i99
  %mul.i97.op = add i32 %mul.i97, 80
  %bank.addr.0.i102 = select i1 %cmp.i96, i32 %mul.i97.op, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %43 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i102) #7
  %add.ptr3.i103 = getelementptr i8, ptr %pcb_base.0.i100, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i103, i32 %43) #7, !srcloc !115
  %add.ptr5.i104 = getelementptr i8, ptr %pcb_base.0.i100, i32 532
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i104) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %45 = and i32 %44, 720896
  %46 = or i32 %45, -268173312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i104, i32 %46) #7, !srcloc !115
  %47 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %phy_priv, align 4
  %phy_base.i108 = getelementptr inbounds %struct.brcm_sata_phy, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %phy_base.i108 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %phy_base.i108, align 4
  %version.i109 = getelementptr inbounds %struct.brcm_sata_phy, ptr %48, i32 0, i32 3
  %51 = ptrtoint ptr %version.i109 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %version.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp.i110 = icmp eq i32 %52, 2
  %53 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port, align 4
  %mul.i111 = shl i32 %54, 4
  %mul2.i112 = shl i32 %54, 12
  %pcb_base.0.idx.i113 = select i1 %cmp.i110, i32 0, i32 %mul2.i112
  %pcb_base.0.i114 = getelementptr i8, ptr %50, i32 %pcb_base.0.idx.i113
  %mul.i111.op = add i32 %mul.i111, 80
  %bank.addr.0.i116 = select i1 %cmp.i110, i32 %mul.i111.op, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %55 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i116) #7
  %add.ptr3.i117 = getelementptr i8, ptr %pcb_base.0.i114, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i117, i32 %55) #7, !srcloc !115
  %add.ptr5.i118 = getelementptr i8, ptr %pcb_base.0.i114, i32 516
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i118) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %57 = or i32 %56, 3145728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i118, i32 %57) #7, !srcloc !115
  %58 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %phy_priv, align 4
  %phy_base.i122 = getelementptr inbounds %struct.brcm_sata_phy, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %phy_base.i122 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %phy_base.i122, align 4
  %version.i123 = getelementptr inbounds %struct.brcm_sata_phy, ptr %59, i32 0, i32 3
  %62 = ptrtoint ptr %version.i123 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %version.i123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp.i124 = icmp eq i32 %63, 2
  %64 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port, align 4
  %mul.i125 = shl i32 %65, 4
  %mul2.i126 = shl i32 %65, 12
  %pcb_base.0.idx.i127 = select i1 %cmp.i124, i32 0, i32 %mul2.i126
  %pcb_base.0.i128 = getelementptr i8, ptr %61, i32 %pcb_base.0.idx.i127
  %mul.i125.op = add i32 %mul.i125, 80
  %bank.addr.0.i130 = select i1 %cmp.i124, i32 %mul.i125.op, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %66 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i130) #7
  %add.ptr3.i131 = getelementptr i8, ptr %pcb_base.0.i128, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i131, i32 %66) #7, !srcloc !115
  %add.ptr5.i132 = getelementptr i8, ptr %pcb_base.0.i128, i32 516
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i132) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %68 = and i32 %67, -8388609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i132, i32 %68) #7, !srcloc !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748000) #7
  %79 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %phy_priv, align 4
  %phy_base.i135 = getelementptr inbounds %struct.brcm_sata_phy, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %phy_base.i135 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %phy_base.i135, align 4
  %version.i136 = getelementptr inbounds %struct.brcm_sata_phy, ptr %80, i32 0, i32 3
  %83 = ptrtoint ptr %version.i136 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %version.i136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp.i137 = icmp eq i32 %84, 2
  %85 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %port, align 4
  %mul.i138 = shl i32 %86, 4
  %mul2.i139 = shl i32 %86, 12
  %pcb_base.0.idx.i140 = select i1 %cmp.i137, i32 0, i32 %mul2.i139
  %pcb_base.0.i141 = getelementptr i8, ptr %82, i32 %pcb_base.0.idx.i140
  %mul.i138.op = add i32 %mul.i138, 80
  %bank.addr.0.i143 = select i1 %cmp.i137, i32 %mul.i138.op, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %87 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i143) #7
  %add.ptr3.i144 = getelementptr i8, ptr %pcb_base.0.i141, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i144, i32 %87) #7, !srcloc !115
  %add.ptr5.i145 = getelementptr i8, ptr %pcb_base.0.i141, i32 516
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i145) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  %89 = or i32 %88, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i145, i32 %89) #7, !srcloc !115
  br label %while.body18

while.body18:                                     ; preds = %if.end21.while.body18_crit_edge, %if.end6
  %dec16161 = phi i32 [ 49, %if.end6 ], [ %dec16, %if.end21.while.body18_crit_edge ]
  %90 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %phy_priv, align 4
  %phy_base.i149 = getelementptr inbounds %struct.brcm_sata_phy, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %phy_base.i149 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %phy_base.i149, align 4
  %version.i150 = getelementptr inbounds %struct.brcm_sata_phy, ptr %91, i32 0, i32 3
  %94 = ptrtoint ptr %version.i150 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %version.i150, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %95)
  %cmp.i151 = icmp eq i32 %95, 2
  %96 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %port, align 4
  %mul.i152 = shl i32 %97, 4
  %mul2.i153 = shl i32 %97, 12
  %pcb_base.0.idx.i154 = select i1 %cmp.i151, i32 0, i32 %mul2.i153
  %pcb_base.0.i155 = getelementptr i8, ptr %93, i32 %pcb_base.0.idx.i154
  %bank.addr.0.i156 = select i1 %cmp.i151, i32 %mul.i152, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void @arm_heavy_mb() #7
  %98 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i156) #7
  %add.ptr3.i157 = getelementptr i8, ptr %pcb_base.0.i155, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i157, i32 %98) #7, !srcloc !115
  %add.ptr5.i158 = getelementptr i8, ptr %pcb_base.0.i155, i32 516
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i158) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %100 = and i32 %99, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool19.not = icmp eq i32 %100, 0
  br i1 %tobool19.not, label %if.end21, label %do.body27

if.end21:                                         ; preds = %while.body18
  tail call void @msleep(i32 noundef 20) #7
  %dec16 = add nsw i32 %dec16161, -1
  %tobool17.not = icmp eq i32 %dec16, 0
  br i1 %tobool17.not, label %do.end.critedge, label %if.end21.while.body18_crit_edge

if.end21.while.body18_crit_edge:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body18

do.end.critedge:                                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %port, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.31, i32 noundef %102) #10
  br label %cleanup

do.body27:                                        ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcm_nsp_sata_init.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcm_nsp_sata_init, %if.then32)) #7
          to label %cleanup [label %if.then32], !srcloc !124

if.then32:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %port, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcm_nsp_sata_init.__UNIQUE_ID_ddebug290, ptr noundef %3, ptr noundef nonnull @.str.34, i32 noundef %104) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %do.body27, %do.end.critedge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end.critedge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %do.body27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcm_dsl_sata_init(ptr noundef readonly %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_priv = getelementptr inbounds %struct.brcm_sata_port, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %phy_base.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %phy_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_base.i, align 4
  %version.i = getelementptr inbounds %struct.brcm_sata_phy, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %mul.i = shl i32 %9, 4
  %mul2.i = shl i32 %9, 12
  %pcb_base.0.idx.i = select i1 %cmp.i, i32 0, i32 %mul2.i
  %pcb_base.0.i = getelementptr i8, ptr %5, i32 %pcb_base.0.idx.i
  %mul.i.op = add i32 %mul.i, 96
  %bank.addr.0.i = select i1 %cmp.i, i32 %mul.i.op, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i) #7
  %add.ptr3.i = getelementptr i8, ptr %pcb_base.0.i, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %10) #7, !srcloc !115
  %add.ptr5.i = getelementptr i8, ptr %pcb_base.0.i, i32 540
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 1929904128) #7, !srcloc !115
  %12 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_priv, align 4
  %phy_base.i35 = getelementptr inbounds %struct.brcm_sata_phy, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %phy_base.i35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_base.i35, align 4
  %version.i36 = getelementptr inbounds %struct.brcm_sata_phy, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %version.i36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %version.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i37 = icmp eq i32 %17, 2
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %mul.i38 = shl i32 %19, 4
  %mul2.i39 = shl i32 %19, 12
  %pcb_base.0.idx.i40 = select i1 %cmp.i37, i32 0, i32 %mul2.i39
  %pcb_base.0.i41 = getelementptr i8, ptr %15, i32 %pcb_base.0.idx.i40
  %mul.i38.op = add i32 %mul.i38, 96
  %bank.addr.0.i43 = select i1 %cmp.i37, i32 %mul.i38.op, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i43) #7
  %add.ptr3.i44 = getelementptr i8, ptr %pcb_base.0.i41, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i44, i32 %20) #7, !srcloc !115
  %add.ptr5.i45 = getelementptr i8, ptr %pcb_base.0.i41, i32 536
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i45) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i45, i32 12582912) #7, !srcloc !115
  %22 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_priv, align 4
  %phy_base.i47 = getelementptr inbounds %struct.brcm_sata_phy, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %phy_base.i47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy_base.i47, align 4
  %version.i48 = getelementptr inbounds %struct.brcm_sata_phy, ptr %23, i32 0, i32 3
  %26 = ptrtoint ptr %version.i48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %version.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i49 = icmp eq i32 %27, 2
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port, align 4
  %mul.i50 = shl i32 %29, 4
  %mul2.i51 = shl i32 %29, 12
  %pcb_base.0.idx.i52 = select i1 %cmp.i49, i32 0, i32 %mul2.i51
  %pcb_base.0.i53 = getelementptr i8, ptr %25, i32 %pcb_base.0.idx.i52
  %mul.i50.op = add i32 %mul.i50, 80
  %bank.addr.0.i55 = select i1 %cmp.i49, i32 %mul.i50.op, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i55) #7
  %add.ptr3.i56 = getelementptr i8, ptr %pcb_base.0.i53, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i56, i32 %30) #7, !srcloc !115
  %add.ptr5.i57 = getelementptr i8, ptr %pcb_base.0.i53, i32 516
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i57) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i57, i32 -1993342976) #7, !srcloc !115
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %32 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy_priv, align 4
  %phy_base.i59 = getelementptr inbounds %struct.brcm_sata_phy, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %phy_base.i59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phy_base.i59, align 4
  %version.i60 = getelementptr inbounds %struct.brcm_sata_phy, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %version.i60 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %version.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp.i61 = icmp eq i32 %37, 2
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port, align 4
  %mul.i62 = shl i32 %39, 4
  %mul2.i63 = shl i32 %39, 12
  %pcb_base.0.idx.i64 = select i1 %cmp.i61, i32 0, i32 %mul2.i63
  %pcb_base.0.i65 = getelementptr i8, ptr %35, i32 %pcb_base.0.idx.i64
  %mul.i62.op = add i32 %mul.i62, 80
  %bank.addr.0.i67 = select i1 %cmp.i61, i32 %mul.i62.op, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i67) #7
  %add.ptr3.i68 = getelementptr i8, ptr %pcb_base.0.i65, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i68, i32 %40) #7, !srcloc !115
  %add.ptr5.i69 = getelementptr i8, ptr %pcb_base.0.i65, i32 516
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i69) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i69, i32 -2010120192) #7, !srcloc !115
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %42 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phy_priv, align 4
  %phy_base.i71 = getelementptr inbounds %struct.brcm_sata_phy, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %phy_base.i71 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %phy_base.i71, align 4
  %version.i72 = getelementptr inbounds %struct.brcm_sata_phy, ptr %43, i32 0, i32 3
  %46 = ptrtoint ptr %version.i72 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %version.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp.i73 = icmp eq i32 %47, 2
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %mul.i74 = shl i32 %49, 4
  %mul2.i75 = shl i32 %49, 12
  %pcb_base.0.idx.i76 = select i1 %cmp.i73, i32 0, i32 %mul2.i75
  %pcb_base.0.i77 = getelementptr i8, ptr %45, i32 %pcb_base.0.idx.i76
  %mul.i74.op = add i32 %mul.i74, 224
  %bank.addr.0.i79 = select i1 %cmp.i73, i32 %mul.i74.op, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %50 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i79) #7
  %add.ptr3.i80 = getelementptr i8, ptr %pcb_base.0.i77, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i80, i32 %50) #7, !srcloc !115
  %add.ptr5.i81 = getelementptr i8, ptr %pcb_base.0.i77, i32 520
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i81) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i81, i32 3145728) #7, !srcloc !115
  %52 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %phy_priv, align 4
  %phy_base.i83 = getelementptr inbounds %struct.brcm_sata_phy, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %phy_base.i83 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %phy_base.i83, align 4
  %version.i84 = getelementptr inbounds %struct.brcm_sata_phy, ptr %53, i32 0, i32 3
  %56 = ptrtoint ptr %version.i84 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %version.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp.i85 = icmp eq i32 %57, 2
  %58 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %port, align 4
  %mul.i86 = shl i32 %59, 4
  %mul2.i87 = shl i32 %59, 12
  %pcb_base.0.idx.i88 = select i1 %cmp.i85, i32 0, i32 %mul2.i87
  %pcb_base.0.i89 = getelementptr i8, ptr %55, i32 %pcb_base.0.idx.i88
  %mul.i86.op = add i32 %mul.i86, 224
  %bank.addr.0.i91 = select i1 %cmp.i85, i32 %mul.i86.op, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %60 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i91) #7
  %add.ptr3.i92 = getelementptr i8, ptr %pcb_base.0.i89, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i92, i32 %60) #7, !srcloc !115
  %add.ptr5.i93 = getelementptr i8, ptr %pcb_base.0.i89, i32 536
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i93) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i93, i32 3145728) #7, !srcloc !115
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %62 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %phy_priv, align 4
  %phy_base.i95 = getelementptr inbounds %struct.brcm_sata_phy, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %phy_base.i95 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %phy_base.i95, align 4
  %version.i96 = getelementptr inbounds %struct.brcm_sata_phy, ptr %63, i32 0, i32 3
  %66 = ptrtoint ptr %version.i96 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %version.i96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp.i97 = icmp eq i32 %67, 2
  %68 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port, align 4
  %mul.i98 = shl i32 %69, 4
  %mul2.i99 = shl i32 %69, 12
  %pcb_base.0.idx.i100 = select i1 %cmp.i97, i32 0, i32 %mul2.i99
  %pcb_base.0.i101 = getelementptr i8, ptr %65, i32 %pcb_base.0.idx.i100
  %mul.i98.op = add i32 %mul.i98, 80
  %bank.addr.0.i103 = select i1 %cmp.i97, i32 %mul.i98.op, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %70 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i103) #7
  %add.ptr3.i104 = getelementptr i8, ptr %pcb_base.0.i101, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i104, i32 %70) #7, !srcloc !115
  %add.ptr5.i105 = getelementptr i8, ptr %pcb_base.0.i101, i32 524
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i105) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i105, i32 838860800) #7, !srcloc !115
  %72 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %phy_priv, align 4
  %phy_base.i107 = getelementptr inbounds %struct.brcm_sata_phy, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %phy_base.i107 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %phy_base.i107, align 4
  %version.i108 = getelementptr inbounds %struct.brcm_sata_phy, ptr %73, i32 0, i32 3
  %76 = ptrtoint ptr %version.i108 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %version.i108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %77)
  %cmp.i109 = icmp eq i32 %77, 2
  %78 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %port, align 4
  %mul.i110 = shl i32 %79, 4
  %mul2.i111 = shl i32 %79, 12
  %pcb_base.0.idx.i112 = select i1 %cmp.i109, i32 0, i32 %mul2.i111
  %pcb_base.0.i113 = getelementptr i8, ptr %75, i32 %pcb_base.0.idx.i112
  %mul.i110.op = add i32 %mul.i110, 80
  %bank.addr.0.i115 = select i1 %cmp.i109, i32 %mul.i110.op, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %80 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i115) #7
  %add.ptr3.i116 = getelementptr i8, ptr %pcb_base.0.i113, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i116, i32 %80) #7, !srcloc !115
  %add.ptr5.i117 = getelementptr i8, ptr %pcb_base.0.i113, i32 528
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i117) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i117, i32 167772160) #7, !srcloc !115
  %82 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %phy_priv, align 4
  %phy_base.i119 = getelementptr inbounds %struct.brcm_sata_phy, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %phy_base.i119 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %phy_base.i119, align 4
  %version.i120 = getelementptr inbounds %struct.brcm_sata_phy, ptr %83, i32 0, i32 3
  %86 = ptrtoint ptr %version.i120 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %version.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %87)
  %cmp.i121 = icmp eq i32 %87, 2
  %88 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port, align 4
  %mul.i122 = shl i32 %89, 4
  %mul2.i123 = shl i32 %89, 12
  %pcb_base.0.idx.i124 = select i1 %cmp.i121, i32 0, i32 %mul2.i123
  %pcb_base.0.i125 = getelementptr i8, ptr %85, i32 %pcb_base.0.idx.i124
  %mul.i122.op = add i32 %mul.i122, 80
  %bank.addr.0.i127 = select i1 %cmp.i121, i32 %mul.i122.op, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %90 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i127) #7
  %add.ptr3.i128 = getelementptr i8, ptr %pcb_base.0.i125, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i128, i32 %90) #7, !srcloc !115
  %add.ptr5.i129 = getelementptr i8, ptr %pcb_base.0.i125, i32 536
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i129) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i129, i32 1677721600) #7, !srcloc !115
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %try.0142 = phi i32 [ 50, %entry ], [ %dec, %if.end.while.body_crit_edge ]
  %92 = ptrtoint ptr %phy_priv to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %phy_priv, align 4
  %phy_base.i131 = getelementptr inbounds %struct.brcm_sata_phy, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %phy_base.i131 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %phy_base.i131, align 4
  %version.i132 = getelementptr inbounds %struct.brcm_sata_phy, ptr %93, i32 0, i32 3
  %96 = ptrtoint ptr %version.i132 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %version.i132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp.i133 = icmp eq i32 %97, 2
  %98 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %port, align 4
  %mul.i134 = shl i32 %99, 4
  %mul2.i135 = shl i32 %99, 12
  %pcb_base.0.idx.i136 = select i1 %cmp.i133, i32 0, i32 %mul2.i135
  %pcb_base.0.i137 = getelementptr i8, ptr %95, i32 %pcb_base.0.idx.i136
  %bank.addr.0.i138 = select i1 %cmp.i133, i32 %mul.i134, i32 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void @arm_heavy_mb() #7
  %100 = tail call i32 @llvm.bswap.i32(i32 %bank.addr.0.i138) #7
  %add.ptr3.i139 = getelementptr i8, ptr %pcb_base.0.i137, i32 572
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i139, i32 %100) #7, !srcloc !115
  %add.ptr5.i140 = getelementptr i8, ptr %pcb_base.0.i137, i32 516
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i140) #7, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  %102 = and i32 %101, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool2.not = icmp eq i32 %102, 0
  br i1 %tobool2.not, label %if.end, label %do.body6

if.end:                                           ; preds = %while.body
  tail call void @msleep(i32 noundef 20) #7
  %dec = add nsw i32 %try.0142, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end.critedge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.end.critedge:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %port, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.31, i32 noundef %104) #10
  br label %cleanup

do.body6:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @brcm_dsl_sata_init.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@brcm_dsl_sata_init, %if.then12)) #7
          to label %cleanup [label %if.then12], !srcloc !124

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %port, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @brcm_dsl_sata_init.__UNIQUE_ID_ddebug291, ptr noundef %3, ptr noundef nonnull @.str.34, i32 noundef %106) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %do.body6, %do.end.critedge
  %retval.0 = phi i32 [ -110, %do.end.critedge ], [ 0, %if.then12 ], [ 0, %do.body6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !90, !91, !92, !94, !95, !96, !98, !100, !102}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__initcall__kmod_phy_brcm_sata__292_854_brcm_sata_phy_driver_init6, !1, !"__initcall__kmod_phy_brcm_sata__292_854_brcm_sata_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 854, i32 1}
!2 = !{ptr @__exitcall_brcm_sata_phy_driver_exit, !1, !"__exitcall_brcm_sata_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description293, !4, !"__UNIQUE_ID_description293", i1 false, i1 false}
!4 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 856, i32 1}
!5 = !{ptr @__UNIQUE_ID_file294, !6, !"__UNIQUE_ID_file294", i1 false, i1 false}
!6 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 857, i32 1}
!7 = !{ptr @__UNIQUE_ID_license295, !6, !"__UNIQUE_ID_license295", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author296, !9, !"__UNIQUE_ID_author296", i1 false, i1 false}
!9 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 858, i32 1}
!10 = !{ptr @__UNIQUE_ID_author297, !11, !"__UNIQUE_ID_author297", i1 false, i1 false}
!11 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 859, i32 1}
!12 = !{ptr @__UNIQUE_ID_alias298, !13, !"__UNIQUE_ID_alias298", i1 false, i1 false}
!13 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 860, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 851, i32 12}
!16 = !{ptr @brcm_sata_phy_driver, !17, !"brcm_sata_phy_driver", i1 false, i1 false}
!17 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 847, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 769, i32 63}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 780, i32 65}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 789, i32 35}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 790, i32 4}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @brcm_sata_phy_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @brcm_sata_phy_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 797, i32 4}
!34 = !{ptr @brcm_sata_phy_probe._entry.9, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @brcm_sata_phy_probe._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 802, i32 4}
!38 = !{ptr @brcm_sata_phy_probe._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @brcm_sata_phy_probe._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 812, i32 39}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 816, i32 32}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 819, i32 31}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 822, i32 47}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 824, i32 4}
!50 = !{ptr @brcm_sata_phy_probe._entry.19, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @brcm_sata_phy_probe._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 835, i32 3}
!54 = !{ptr @brcm_sata_phy_probe._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @brcm_sata_phy_probe._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 839, i32 2}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @brcm_sata_phy_probe._entry.25, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @brcm_sata_phy_probe._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @phy_ops, !62, !"phy_ops", i1 false, i1 false}
!62 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 725, i32 29}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 264, i32 3}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @brcm_stb_sata_ssc_init._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @brcm_stb_sata_ssc_init._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 479, i32 3}
!70 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @brcm_ns2_sata_init._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @brcm_ns2_sata_init._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 483, i32 2}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @brcm_ns2_sata_init.__UNIQUE_ID_ddebug289, !74, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 204, i32 3}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @brcm_sata_ctrl_base._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @brcm_sata_ctrl_base._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 544, i32 3}
!84 = !{ptr @brcm_nsp_sata_init._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @brcm_nsp_sata_init._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @brcm_nsp_sata_init.__UNIQUE_ID_ddebug290, !87, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!87 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 548, i32 2}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 591, i32 3}
!90 = !{ptr @brcm_sr_sata_init._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @brcm_sr_sata_init._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 658, i32 3}
!94 = !{ptr @brcm_dsl_sata_init._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @brcm_dsl_sata_init._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @brcm_dsl_sata_init.__UNIQUE_ID_ddebug291, !97, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!97 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 662, i32 2}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 53, i32 17}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 55, i32 22}
!102 = !{ptr @brcm_sata_phy_of_match, !103, !"brcm_sata_phy_of_match", i1 false, i1 false}
!103 = !{!"../drivers/phy/broadcom/phy-brcm-sata.c", i32 731, i32 34}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{!"auto-init"}
!114 = !{i64 2155044515}
!115 = !{i64 4887894}
!116 = !{i64 4888312}
!117 = !{i64 2155045222}
!118 = !{i64 2155045459}
!119 = !{i8 0, i8 2}
!120 = !{i64 2155045873}
!121 = !{i64 2155046580}
!122 = !{i64 2155049482}
!123 = !{i64 2155051208}
!124 = !{i64 2148778117, i64 2148778122, i64 2148778135, i64 2148778179, i64 2148778213, i64 2148778234}
