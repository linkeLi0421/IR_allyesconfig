; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/hisilicon/hns_mdio.c_pt.bc'
source_filename = "../drivers/net/ethernet/hisilicon/hns_mdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hns_mdio_device = type { ptr, ptr, %struct.hns_mdio_sc_reg }
%struct.hns_mdio_sc_reg = type { i16, i16, i16, i16, i16, i16 }

@__initcall__kmod_hns_mdio__353_569_hns_mdio_driver_init6 = internal global ptr @hns_mdio_driver_init, section ".initcall6.init", align 4
@hns_mdio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hns_mdio_probe, ptr @hns_mdio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hns_mdio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hns_mdio_driver_exit = internal global ptr @hns_mdio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file354 = internal constant [54 x i8] c"hns_mdio.file=drivers/net/ethernet/hisilicon/hns_mdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license355 = internal constant [21 x i8] c"hns_mdio.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author356 = internal constant [39 x i8] c"hns_mdio.author=Huawei Tech. Co., Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_description357 = internal constant [47 x i8] c"hns_mdio.description=Hisilicon HNS MDIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias358 = internal constant [36 x i8] c"hns_mdio.alias=platform:Hi-HNS_MDIO\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Hi-HNS_MDIO\00", [20 x i8] zeroinitializer }, align 32
@hns_mdio_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,mdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hns-mdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@hns_mdio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 426, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pdev is NULL!\0D\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hns_mdio_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/hisilicon/hns_mdio.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hns_mdio_probe._entry_ptr = internal global ptr @hns_mdio_probe._entry, section ".printk_index", align 4
@hns_mdio_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 436, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mdiobus_alloc fail!\0A\00", [43 x i8] zeroinitializer }, align 32
@hns_mdio_probe._entry_ptr.8 = internal global ptr @hns_mdio_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Hisilicon MII Bus\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%s\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mii\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"subctrl-vbase\00", [18 x i8] zeroinitializer }, align 32
@hns_mdio_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 468, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"syscon_node_to_regmap error\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hns_mdio_probe._entry_ptr.16 = internal global ptr @hns_mdio_probe._entry.13, section ".printk_index", align 4
@hns_mdio_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 501, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"find syscon ret = %#x\0A\00", [41 x i8] zeroinitializer }, align 32
@hns_mdio_probe._entry_ptr.19 = internal global ptr @hns_mdio_probe._entry.17, section ".printk_index", align 4
@hns_mdio_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 516, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Can not get cfg data from DT or ACPI\0A\00", [58 x i8] zeroinitializer }, align 32
@hns_mdio_probe._entry_ptr.22 = internal global ptr @hns_mdio_probe._entry.20, section ".printk_index", align 4
@hns_mdio_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 521, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot register as MDIO bus!\0A\00", [34 x i8] zeroinitializer }, align 32
@hns_mdio_probe._entry_ptr.25 = internal global ptr @hns_mdio_probe._entry.23, section ".printk_index", align 4
@hns_mdio_read.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hns_mdio\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hns_mdio_read\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mdio read %s,base is %p\0A\00", [39 x i8] zeroinitializer }, align 32
@hns_mdio_read.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.27, ptr @.str.3, ptr @.str.29, i8 0, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"phy id=%d, is_c45=%d, devad=%d, reg=%#x!\0A\00", [54 x i8] zeroinitializer }, align 32
@hns_mdio_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.3, i32 296, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MDIO bus is busy\0A\00", [46 x i8] zeroinitializer }, align 32
@hns_mdio_read._entry_ptr = internal global ptr @hns_mdio_read._entry, section ".printk_index", align 4
@hns_mdio_read._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.3, i32 314, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@hns_mdio_read._entry_ptr.32 = internal global ptr @hns_mdio_read._entry.31, section ".printk_index", align 4
@hns_mdio_read._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.3, i32 326, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@hns_mdio_read._entry_ptr.34 = internal global ptr @hns_mdio_read._entry.33, section ".printk_index", align 4
@hns_mdio_read._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.27, ptr @.str.3, i32 332, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c" ERROR! MDIO Read failed!\0A\00", [37 x i8] zeroinitializer }, align 32
@hns_mdio_read._entry_ptr.37 = internal global ptr @hns_mdio_read._entry.35, section ".printk_index", align 4
@hns_mdio_write.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hns_mdio_write\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mdio write %s,base is %p\0A\00", [38 x i8] zeroinitializer }, align 32
@hns_mdio_write.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.38, ptr @.str.3, ptr @.str.40, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"phy id=%d, is_c45=%d, devad=%d, reg=%#x, write data=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@hns_mdio_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.38, ptr @.str.3, i32 236, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@hns_mdio_write._entry_ptr = internal global ptr @hns_mdio_write._entry, section ".printk_index", align 4
@hns_mdio_write._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.38, ptr @.str.3, i32 254, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@hns_mdio_write._entry_ptr.42 = internal global ptr @hns_mdio_write._entry.41, section ".printk_index", align 4
@hns_mdio_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 357, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mdio sys ctl reg has not mapped\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hns_mdio_reset\00", [17 x i8] zeroinitializer }, align 32
@hns_mdio_reset._entry_ptr = internal global ptr @hns_mdio_reset._entry, section ".printk_index", align 4
@hns_mdio_reset._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 367, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MDIO reset fail\0A\00", [47 x i8] zeroinitializer }, align 32
@hns_mdio_reset._entry_ptr.47 = internal global ptr @hns_mdio_reset._entry.45, section ".printk_index", align 4
@hns_mdio_reset._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.3, i32 376, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MDIO dis clk fail\0A\00", [45 x i8] zeroinitializer }, align 32
@hns_mdio_reset._entry_ptr.50 = internal global ptr @hns_mdio_reset._entry.48, section ".printk_index", align 4
@hns_mdio_reset._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.3, i32 385, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@hns_mdio_reset._entry_ptr.52 = internal global ptr @hns_mdio_reset._entry.51, section ".printk_index", align 4
@hns_mdio_reset._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.44, ptr @.str.3, i32 394, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MDIO en clk fail\0A\00", [46 x i8] zeroinitializer }, align 32
@hns_mdio_reset._entry_ptr.55 = internal global ptr @hns_mdio_reset._entry.53, section ".printk_index", align 4
@hns_mdio_reset._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.44, ptr @.str.3, i32 401, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Reset failed, return:%#x\0A\00", [38 x i8] zeroinitializer }, align 32
@hns_mdio_reset._entry_ptr.59 = internal global ptr @hns_mdio_reset._entry.57, section ".printk_index", align 4
@hns_mdio_reset._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.44, ptr @.str.3, i32 407, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@hns_mdio_reset._entry_ptr.61 = internal global ptr @hns_mdio_reset._entry.60, section ".printk_index", align 4
@___asan_gen_.62 = private unnamed_addr constant [16 x i8] c"hns_mdio_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 559, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 563, i32 14 }
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"hns_mdio_match\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 546, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 426, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 436, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 440, i32 18 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 454, i32 41 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 454, i32 50 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 460, i32 14 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 468, i32 5 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 501, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 516, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 521, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 288, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 290, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 296, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 314, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 326, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 332, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 228, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 230, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 236, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 254, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 357, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 367, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 376, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 385, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 394, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 401, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private constant [45 x i8] c"../drivers/net/ethernet/hisilicon/hns_mdio.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 407, i32 3 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_alias358, ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_description357, ptr @__UNIQUE_ID_file354, ptr @__UNIQUE_ID_license355, ptr @__exitcall_hns_mdio_driver_exit, ptr @__initcall__kmod_hns_mdio__353_569_hns_mdio_driver_init6, ptr @hns_mdio_driver_exit, ptr @hns_mdio_probe._entry, ptr @hns_mdio_probe._entry.13, ptr @hns_mdio_probe._entry.17, ptr @hns_mdio_probe._entry.20, ptr @hns_mdio_probe._entry.23, ptr @hns_mdio_probe._entry.6, ptr @hns_mdio_probe._entry_ptr, ptr @hns_mdio_probe._entry_ptr.16, ptr @hns_mdio_probe._entry_ptr.19, ptr @hns_mdio_probe._entry_ptr.22, ptr @hns_mdio_probe._entry_ptr.25, ptr @hns_mdio_probe._entry_ptr.8, ptr @hns_mdio_read._entry, ptr @hns_mdio_read._entry.31, ptr @hns_mdio_read._entry.33, ptr @hns_mdio_read._entry.35, ptr @hns_mdio_read._entry_ptr, ptr @hns_mdio_read._entry_ptr.32, ptr @hns_mdio_read._entry_ptr.34, ptr @hns_mdio_read._entry_ptr.37, ptr @hns_mdio_reset._entry, ptr @hns_mdio_reset._entry.45, ptr @hns_mdio_reset._entry.48, ptr @hns_mdio_reset._entry.51, ptr @hns_mdio_reset._entry.53, ptr @hns_mdio_reset._entry.57, ptr @hns_mdio_reset._entry.60, ptr @hns_mdio_reset._entry_ptr, ptr @hns_mdio_reset._entry_ptr.47, ptr @hns_mdio_reset._entry_ptr.50, ptr @hns_mdio_reset._entry_ptr.52, ptr @hns_mdio_reset._entry_ptr.55, ptr @hns_mdio_reset._entry_ptr.59, ptr @hns_mdio_reset._entry_ptr.61, ptr @hns_mdio_write._entry, ptr @hns_mdio_write._entry.41, ptr @hns_mdio_write._entry_ptr, ptr @hns_mdio_write._entry_ptr.42, ptr @hns_mdio_driver, ptr @.str, ptr @hns_mdio_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.54, ptr @.str.58], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mdio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mdio_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mdio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mdio_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mdio_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mdio_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mdio_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mdio_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mdio_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mdio_read._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mdio_read._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mdio_read._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mdio_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mdio_write._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mdio_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mdio_reset._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mdio_reset._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mdio_reset._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mdio_reset._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mdio_reset._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hns_mdio_reset._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_mdio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hns_mdio_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hns_mdio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @hns_mdio_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_mdio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %reg_args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pdev, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef null, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #7
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i166 = tail call ptr @devm_mdiobus_alloc_size(ptr noundef %dev, i32 noundef 0) #7
  %tobool6.not = icmp eq ptr %call.i166, null
  br i1 %tobool6.not, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end3
  %name = getelementptr inbounds %struct.mii_bus, ptr %call.i166, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.9, ptr %name, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %call.i166, i32 0, i32 4
  %1 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @hns_mdio_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %call.i166, i32 0, i32 5
  %2 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @hns_mdio_write, ptr %write, align 8
  %reset = getelementptr inbounds %struct.mii_bus, ptr %call.i166, i32 0, i32 6
  %3 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @hns_mdio_reset, ptr %reset, align 4
  %priv = getelementptr inbounds %struct.mii_bus, ptr %call.i166, i32 0, i32 3
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %priv, align 8
  %parent = getelementptr inbounds %struct.mii_bus, ptr %call.i166, i32 0, i32 9
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %parent, align 4
  %call14 = tail call ptr @devm_platform_ioremap_resource(ptr noundef nonnull %pdev, i32 noundef 0) #7
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call14, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i166, ptr %driver_data.i.i, align 4
  %id = getelementptr inbounds %struct.mii_bus, ptr %call.i166, i32 0, i32 2
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.dev_name.exit_crit_edge

if.end20.dev_name.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end20.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %if.end20.dev_name.exit_crit_edge ]
  %call23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %retval.0.i)
  %tobool.not.i167 = icmp eq ptr %dev, null
  br i1 %tobool.not.i167, label %dev_name.exit.if.end104.thread_crit_edge, label %dev_of_node.exit

dev_name.exit.if.end104.thread_crit_edge:         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104.thread

dev_of_node.exit:                                 ; preds = %dev_name.exit
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %13 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node.i, align 8
  %tobool26.not = icmp eq ptr %14, null
  br i1 %tobool26.not, label %dev_of_node.exit.if.end104.thread_crit_edge, label %if.then27

dev_of_node.exit.if.end104.thread_crit_edge:      ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104.thread

if.then27:                                        ; preds = %dev_of_node.exit
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %reg_args) #7
  %15 = call ptr @memset(ptr %reg_args, i32 255, i32 72)
  %16 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i, align 8
  %call.i170 = call i32 @__of_parse_phandle_with_args(ptr noundef %17, ptr noundef nonnull @.str.12, ptr noundef null, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %reg_args) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170)
  %tobool30.not = icmp eq i32 %call.i170, 0
  br i1 %tobool30.not, label %if.then31, label %do.end85

if.then31:                                        ; preds = %if.then27
  %18 = ptrtoint ptr %reg_args to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_args, align 4
  %call32 = call ptr @syscon_node_to_regmap(ptr noundef %19) #7
  %subctrl_vbase = getelementptr inbounds %struct.hns_mdio_device, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %subctrl_vbase to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call32, ptr %subctrl_vbase, align 4
  %cmp.i171 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171, label %do.end38, label %if.else

do.end38:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %dev, ptr noundef nonnull @.str.14) #10
  %21 = ptrtoint ptr %subctrl_vbase to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %subctrl_vbase, align 4
  br label %if.end104

if.else:                                          ; preds = %if.then31
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %reg_args, i32 0, i32 1
  %22 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp = icmp eq i32 %23, 4
  br i1 %cmp, label %if.then41, label %if.else67

if.then41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %reg_args, i32 0, i32 2
  %24 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %args, align 4
  %conv = trunc i32 %25 to i16
  %sc_reg = getelementptr inbounds %struct.hns_mdio_device, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %sc_reg to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv, ptr %sc_reg, align 4
  %conv46 = add i16 %conv, 4
  %mdio_clk_dis = getelementptr inbounds %struct.hns_mdio_device, ptr %call.i, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %mdio_clk_dis to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv46, ptr %mdio_clk_dis, align 2
  %arrayidx49 = getelementptr inbounds %struct.of_phandle_args, ptr %reg_args, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx49, align 4
  %conv50 = trunc i32 %29 to i16
  %mdio_reset_req = getelementptr inbounds %struct.hns_mdio_device, ptr %call.i, i32 0, i32 2, i32 2
  %30 = ptrtoint ptr %mdio_reset_req to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv50, ptr %mdio_reset_req, align 4
  %conv57 = add i16 %conv50, 4
  %mdio_reset_dreq = getelementptr inbounds %struct.hns_mdio_device, ptr %call.i, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %mdio_reset_dreq to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv57, ptr %mdio_reset_dreq, align 2
  %arrayidx60 = getelementptr inbounds %struct.of_phandle_args, ptr %reg_args, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx60, align 4
  %conv61 = trunc i32 %33 to i16
  %mdio_clk_st = getelementptr inbounds %struct.hns_mdio_device, ptr %call.i, i32 0, i32 2, i32 4
  %34 = ptrtoint ptr %mdio_clk_st to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv61, ptr %mdio_clk_st, align 4
  %arrayidx64 = getelementptr inbounds %struct.of_phandle_args, ptr %reg_args, i32 0, i32 2, i32 3
  %35 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx64, align 4
  %conv65 = trunc i32 %36 to i16
  %mdio_reset_st = getelementptr inbounds %struct.hns_mdio_device, ptr %call.i, i32 0, i32 2, i32 5
  %37 = ptrtoint ptr %mdio_reset_st to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv65, ptr %mdio_reset_st, align 2
  br label %if.end104

if.else67:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sc_reg68 = getelementptr inbounds %struct.hns_mdio_device, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %sc_reg68 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 824, ptr %sc_reg68, align 4
  %mdio_clk_dis71 = getelementptr inbounds %struct.hns_mdio_device, ptr %call.i, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %mdio_clk_dis71 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 828, ptr %mdio_clk_dis71, align 2
  %mdio_reset_req73 = getelementptr inbounds %struct.hns_mdio_device, ptr %call.i, i32 0, i32 2, i32 2
  %40 = ptrtoint ptr %mdio_reset_req73 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 2616, ptr %mdio_reset_req73, align 4
  %mdio_reset_dreq75 = getelementptr inbounds %struct.hns_mdio_device, ptr %call.i, i32 0, i32 2, i32 3
  %41 = ptrtoint ptr %mdio_reset_dreq75 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 2620, ptr %mdio_reset_dreq75, align 2
  %mdio_clk_st77 = getelementptr inbounds %struct.hns_mdio_device, ptr %call.i, i32 0, i32 2, i32 4
  %42 = ptrtoint ptr %mdio_clk_st77 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 21276, ptr %mdio_clk_st77, align 4
  %mdio_reset_st79 = getelementptr inbounds %struct.hns_mdio_device, ptr %call.i, i32 0, i32 2, i32 5
  %43 = ptrtoint ptr %mdio_reset_st79 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 23068, ptr %mdio_reset_st79, align 2
  br label %if.end104

do.end85:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %dev, ptr noundef nonnull @.str.18, i32 noundef %call.i170) #10
  %subctrl_vbase87 = getelementptr inbounds %struct.hns_mdio_device, ptr %call.i, i32 0, i32 1
  %44 = ptrtoint ptr %subctrl_vbase87 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %subctrl_vbase87, align 4
  br label %if.end104

if.end104.thread:                                 ; preds = %dev_of_node.exit.if.end104.thread_crit_edge, %dev_name.exit.if.end104.thread_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #10
  br label %do.end109

if.end104:                                        ; preds = %do.end85, %if.else67, %if.then41, %do.end38
  %45 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %of_node.i, align 8
  %call91 = call i32 @of_mdiobus_register(ptr noundef nonnull %call.i166, ptr noundef %46) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %reg_args) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool105.not = icmp eq i32 %call91, 0
  br i1 %tobool105.not, label %if.end104.cleanup_crit_edge, label %if.end104.do.end109_crit_edge

if.end104.do.end109_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end109

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end109:                                        ; preds = %if.end104.do.end109_crit_edge, %if.end104.thread
  %ret.0177 = phi i32 [ -6, %if.end104.thread ], [ %call91, %if.end104.do.end109_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #10
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end109, %if.end104.cleanup_crit_edge, %if.then17, %do.end10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %7, %if.then17 ], [ %ret.0177, %do.end109 ], [ -12, %do.end10 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end104.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_mdio_remove(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mdiobus_unregister(ptr noundef %1) #7
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_mdio_read(ptr noundef %bus, i32 noundef %phy_id, i32 noundef %regnum) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i32 %regnum, 16
  %conv = and i32 %0, 31
  %and1 = lshr i32 %regnum, 30
  %1 = trunc i32 %and1 to i8
  %2 = and i8 %1, 1
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hns_mdio_read.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hns_mdio_read, %if.then)) #7
          to label %do.body12 [label %if.then], !srcloc !128

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  %id = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hns_mdio_read.__UNIQUE_ID_ddebug351, ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef %id, ptr noundef %6) #7
  br label %do.body12

do.body12:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hns_mdio_read.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hns_mdio_read, %if.then24)) #7
          to label %do.end31 [label %if.then24], !srcloc !128

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %dev25 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  %conv26 = zext i8 %2 to i32
  %conv28 = and i32 %regnum, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hns_mdio_read.__UNIQUE_ID_ddebug352, ptr noundef %dev25, ptr noundef nonnull @.str.29, i32 noundef %phy_id, i32 noundef %conv26, i32 noundef %conv, i32 noundef %conv28) #7
  br label %do.end31

do.end31:                                         ; preds = %if.then24, %do.body12
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end31
  %i.010.i = phi i32 [ 0, %do.end31 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !129
  %12 = and i32 %11, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000000
  br i1 %exitcond.not.i, label %for.inc.i.do.end37_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.do.end37_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %i.010.i)
  %cmp1.i = icmp eq i32 %i.010.i, 1000000
  br i1 %cmp1.i, label %for.end.i.do.end37_crit_edge, label %if.end39

for.end.i.do.end37_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

do.end37:                                         ; preds = %for.end.i.do.end37_crit_edge, %for.inc.i.do.end37_crit_edge
  %dev38 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.end39:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool40.not = icmp eq i8 %2, 0
  br i1 %tobool40.not, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %13 = shl i32 %phy_id, 5
  %shl6.i = and i32 %13, 992
  %14 = and i32 %regnum, 31
  %or7.i = or i32 %14, %shl6.i
  %or12.i = or i32 %or7.i, 22528
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %4, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %or12.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %17) #7, !srcloc !130
  br label %if.end57

if.else:                                          ; preds = %if.end39
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %4, align 4
  %conv44 = and i32 %regnum, 65535
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !129
  %21 = and i32 %20, 65535
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  %or.i = or i32 %22, %conv44
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %23) #7, !srcloc !130
  %24 = shl i32 %phy_id, 5
  %shl6.i124 = and i32 %24, 992
  %or11.i126 = or i32 %conv, %shl6.i124
  %or12.i127 = or i32 %or11.i126, 16384
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %4, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %or12.i127) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %27) #7, !srcloc !130
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 8
  br label %for.body.i131

for.body.i131:                                    ; preds = %for.inc.i134.for.body.i131_crit_edge, %if.else
  %i.010.i129 = phi i32 [ 0, %if.else ], [ %inc.i132, %for.inc.i134.for.body.i131_crit_edge ]
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #7, !srcloc !129
  %33 = and i32 %32, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i130 = icmp eq i32 %33, 0
  br i1 %tobool.not.i130, label %for.end.i136, label %for.inc.i134

for.inc.i134:                                     ; preds = %for.body.i131
  %inc.i132 = add nuw nsw i32 %i.010.i129, 1
  %exitcond.not.i133 = icmp eq i32 %inc.i132, 1000000
  br i1 %exitcond.not.i133, label %for.inc.i134.do.end52_crit_edge, label %for.inc.i134.for.body.i131_crit_edge

for.inc.i134.for.body.i131_crit_edge:             ; preds = %for.inc.i134
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i131

for.inc.i134.do.end52_crit_edge:                  ; preds = %for.inc.i134
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52

for.end.i136:                                     ; preds = %for.body.i131
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %i.010.i129)
  %cmp1.i135 = icmp eq i32 %i.010.i129, 1000000
  br i1 %cmp1.i135, label %for.end.i136.do.end52_crit_edge, label %if.end54

for.end.i136.do.end52_crit_edge:                  ; preds = %for.end.i136
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52

do.end52:                                         ; preds = %for.end.i136.do.end52_crit_edge, %for.inc.i134.do.end52_crit_edge
  %dev53 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.end54:                                         ; preds = %for.end.i136
  call void @__sanitizer_cov_trace_pc() #9
  %or12.i144 = or i32 %or11.i126, 19456
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %4, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %or12.i144) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %36) #7, !srcloc !130
  br label %if.end57

if.end57:                                         ; preds = %if.end54, %if.then41
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 8
  br label %for.body.i148

for.body.i148:                                    ; preds = %for.inc.i151.for.body.i148_crit_edge, %if.end57
  %i.010.i146 = phi i32 [ 0, %if.end57 ], [ %inc.i149, %for.inc.i151.for.body.i148_crit_edge ]
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #7, !srcloc !129
  %42 = and i32 %41, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i147 = icmp eq i32 %42, 0
  br i1 %tobool.not.i147, label %for.end.i153, label %for.inc.i151

for.inc.i151:                                     ; preds = %for.body.i148
  %inc.i149 = add nuw nsw i32 %i.010.i146, 1
  %exitcond.not.i150 = icmp eq i32 %inc.i149, 1000000
  br i1 %exitcond.not.i150, label %for.inc.i151.do.end63_crit_edge, label %for.inc.i151.for.body.i148_crit_edge

for.inc.i151.for.body.i148_crit_edge:             ; preds = %for.inc.i151
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i148

for.inc.i151.do.end63_crit_edge:                  ; preds = %for.inc.i151
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end63

for.end.i153:                                     ; preds = %for.body.i148
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %i.010.i146)
  %cmp1.i152 = icmp eq i32 %i.010.i146, 1000000
  br i1 %cmp1.i152, label %for.end.i153.do.end63_crit_edge, label %if.end65

for.end.i153.do.end63_crit_edge:                  ; preds = %for.end.i153
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end63

do.end63:                                         ; preds = %for.end.i153.do.end63_crit_edge, %for.inc.i151.do.end63_crit_edge
  %dev64 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev64, ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.end65:                                         ; preds = %for.end.i153
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %4, align 4
  %add.ptr.i.i156 = getelementptr i8, ptr %44, i32 16
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i156) #7, !srcloc !129
  %46 = and i32 %45, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool69.not = icmp eq i32 %46, 0
  br i1 %tobool69.not, label %if.end75, label %do.end73

do.end73:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %dev74 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev74, ptr noundef nonnull @.str.36) #10
  br label %cleanup

if.end75:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %4, align 4
  %add.ptr.i.i158 = getelementptr i8, ptr %48, i32 12
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i158) #7, !srcloc !129
  %50 = and i32 %49, -65536
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %do.end73, %do.end63, %do.end52, %do.end37
  %retval.0 = phi i32 [ -110, %do.end37 ], [ -110, %do.end52 ], [ -110, %do.end63 ], [ -16, %do.end73 ], [ %51, %if.end75 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_mdio_write(ptr noundef %bus, i32 noundef %phy_id, i32 noundef %regnum, i16 noundef zeroext %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = lshr i32 %regnum, 16
  %3 = trunc i32 %2 to i8
  %conv = and i8 %3, 31
  %and1 = lshr i32 %regnum, 30
  %4 = trunc i32 %and1 to i8
  %5 = and i8 %4, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hns_mdio_write.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hns_mdio_write, %if.then)) #7
          to label %do.body12 [label %if.then], !srcloc !128

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  %id = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hns_mdio_write.__UNIQUE_ID_ddebug349, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef %id, ptr noundef %7) #7
  br label %do.body12

do.body12:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hns_mdio_write.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hns_mdio_write, %if.then24)) #7
          to label %do.end32 [label %if.then24], !srcloc !128

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %dev25 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  %conv26 = zext i8 %5 to i32
  %conv27 = zext i8 %conv to i32
  %conv28 = and i32 %regnum, 65535
  %conv29 = zext i16 %data to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hns_mdio_write.__UNIQUE_ID_ddebug350, ptr noundef %dev25, ptr noundef nonnull @.str.40, i32 noundef %phy_id, i32 noundef %conv26, i32 noundef %conv27, i32 noundef %conv28, i32 noundef %conv29) #7
  br label %do.end32

do.end32:                                         ; preds = %if.then24, %do.body12
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end32
  %i.010.i = phi i32 [ 0, %do.end32 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !129
  %13 = and i32 %12, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000000
  br i1 %exitcond.not.i, label %for.inc.i.do.end38_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.do.end38_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end38

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %i.010.i)
  %cmp1.i = icmp eq i32 %i.010.i, 1000000
  br i1 %cmp1.i, label %for.end.i.do.end38_crit_edge, label %if.end40

for.end.i.do.end38_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end38

do.end38:                                         ; preds = %for.end.i.do.end38_crit_edge, %for.inc.i.do.end38_crit_edge
  %dev39 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.end40:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool41.not = icmp eq i8 %5, 0
  br i1 %tobool41.not, label %if.end40.if.end56_crit_edge, label %if.else

if.end40.if.end56_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = shl i32 %phy_id, 5
  %.pre123 = and i32 %.pre, 992
  br label %if.end56

if.else:                                          ; preds = %if.end40
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %conv44 = and i32 %regnum, 65535
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !129
  %17 = and i32 %16, 65535
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  %or.i = or i32 %18, %conv44
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %19) #7, !srcloc !130
  %conv46 = zext i8 %conv to i32
  %20 = shl i32 %phy_id, 5
  %shl6.i = and i32 %20, 992
  %or11.i = or i32 %shl6.i, %conv46
  %or12.i = or i32 %or11.i, 16384
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %or12.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %23) #7, !srcloc !130
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 8
  br label %for.body.i98

for.body.i98:                                     ; preds = %for.inc.i101.for.body.i98_crit_edge, %if.else
  %i.010.i96 = phi i32 [ 0, %if.else ], [ %inc.i99, %for.inc.i101.for.body.i98_crit_edge ]
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !129
  %29 = and i32 %28, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i97 = icmp eq i32 %29, 0
  br i1 %tobool.not.i97, label %for.end.i103, label %for.inc.i101

for.inc.i101:                                     ; preds = %for.body.i98
  %inc.i99 = add nuw nsw i32 %i.010.i96, 1
  %exitcond.not.i100 = icmp eq i32 %inc.i99, 1000000
  br i1 %exitcond.not.i100, label %for.inc.i101.do.end52_crit_edge, label %for.inc.i101.for.body.i98_crit_edge

for.inc.i101.for.body.i98_crit_edge:              ; preds = %for.inc.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i98

for.inc.i101.do.end52_crit_edge:                  ; preds = %for.inc.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52

for.end.i103:                                     ; preds = %for.body.i98
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %i.010.i96)
  %cmp1.i102 = icmp eq i32 %i.010.i96, 1000000
  br i1 %cmp1.i102, label %for.end.i103.do.end52_crit_edge, label %for.end.i103.if.end56_crit_edge

for.end.i103.if.end56_crit_edge:                  ; preds = %for.end.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

for.end.i103.do.end52_crit_edge:                  ; preds = %for.end.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end52

do.end52:                                         ; preds = %for.end.i103.do.end52_crit_edge, %for.inc.i101.do.end52_crit_edge
  %dev53 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.30) #10
  br label %cleanup

if.end56:                                         ; preds = %for.end.i103.if.end56_crit_edge, %if.end40.if.end56_crit_edge
  %shl6.i111.pre-phi = phi i32 [ %.pre123, %if.end40.if.end56_crit_edge ], [ %shl6.i, %for.end.i103.if.end56_crit_edge ]
  %cmd_reg_cfg.0 = phi i32 [ %regnum, %if.end40.if.end56_crit_edge ], [ %conv46, %for.end.i103.if.end56_crit_edge ]
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %conv58 = zext i16 %data to i32
  %add.ptr.i.i106 = getelementptr i8, ptr %31, i32 8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i106) #7, !srcloc !129
  %33 = and i32 %32, 65535
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  %or.i107 = or i32 %34, %conv58
  %35 = tail call i32 @llvm.bswap.i32(i32 %or.i107) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i106, i32 %35) #7, !srcloc !130
  %36 = zext i8 %5 to i32
  %37 = shl nuw nsw i32 %36, 12
  %38 = or i32 %37, %shl6.i111.pre-phi
  %39 = and i32 %cmd_reg_cfg.0, 31
  %40 = or i32 %39, %38
  %or12.i114 = xor i32 %40, 21504
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %or12.i114) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %43) #7, !srcloc !130
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %do.end52, %do.end38
  %retval.0 = phi i32 [ -110, %do.end38 ], [ -110, %do.end52 ], [ 0, %if.end56 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hns_mdio_reset(ptr noundef %bus) #2 align 64 {
entry:
  %reg_value.i134 = alloca i32, align 4
  %reg_value.i115 = alloca i32, align 4
  %reg_value.i98 = alloca i32, align 4
  %reg_value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %parent = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 9
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %dev_of_node.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

dev_of_node.exit:                                 ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %dev_of_node.exit.if.else_crit_edge, label %if.then

dev_of_node.exit.if.else_crit_edge:               ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %dev_of_node.exit
  %subctrl_vbase = getelementptr inbounds %struct.hns_mdio_device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %subctrl_vbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %subctrl_vbase, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %sc_reg3 = getelementptr inbounds %struct.hns_mdio_device, ptr %1, i32 0, i32 2
  %mdio_reset_req = getelementptr inbounds %struct.hns_mdio_device, ptr %1, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %mdio_reset_req to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mdio_reset_req, align 2
  %conv = zext i16 %9 to i32
  %mdio_reset_st = getelementptr inbounds %struct.hns_mdio_device, ptr %1, i32 0, i32 2, i32 5
  %10 = ptrtoint ptr %mdio_reset_st to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mdio_reset_st, align 2
  %conv4 = zext i16 %11 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_value.i) #7
  %12 = ptrtoint ptr %reg_value.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %reg_value.i, align 4, !annotation !131
  %call.i = tail call i32 @regmap_write(ptr noundef nonnull %7, i32 noundef %conv, i32 noundef 1) #7
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i96.for.body.i_crit_edge, %if.end
  %time_cnt.01.i = phi i32 [ 1000000, %if.end ], [ %dec.i, %if.end.i96.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %subctrl_vbase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %subctrl_vbase, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %14, i32 noundef %conv4, ptr noundef nonnull %reg_value.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i96, label %for.body.i.do.end10_crit_edge

for.body.i.do.end10_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

if.end.i96:                                       ; preds = %for.body.i
  %15 = ptrtoint ptr %reg_value.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg_value.i, align 4
  %and.i = and i32 %16, 1
  store i32 %and.i, ptr %reg_value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %17 = icmp ne i32 %and.i, 0
  %dec.i = add nsw i32 %time_cnt.01.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i95 = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %17, i1 true, i1 %tobool.not.i95
  br i1 %or.cond.i, label %for.end.i, label %if.end.i96.for.body.i_crit_edge

if.end.i96.for.body.i_crit_edge:                  ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i96
  br i1 %17, label %if.end12, label %for.end.i.do.end10_crit_edge

for.end.i.do.end10_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end10:                                         ; preds = %for.end.i.do.end10_crit_edge, %for.body.i.do.end10_crit_edge
  %retval.0.i97.ph = phi i32 [ -16, %for.end.i.do.end10_crit_edge ], [ %call2.i, %for.body.i.do.end10_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_value.i) #7
  %dev11 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.46) #10
  br label %cleanup

if.end12:                                         ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_value.i) #7
  %mdio_clk_dis = getelementptr inbounds %struct.hns_mdio_device, ptr %1, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %mdio_clk_dis to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %mdio_clk_dis, align 2
  %conv13 = zext i16 %19 to i32
  %mdio_clk_st = getelementptr inbounds %struct.hns_mdio_device, ptr %1, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %mdio_clk_st to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mdio_clk_st, align 2
  %conv14 = zext i16 %21 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_value.i98) #7
  %22 = ptrtoint ptr %reg_value.i98 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %reg_value.i98, align 4, !annotation !131
  %23 = ptrtoint ptr %subctrl_vbase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %subctrl_vbase, align 4
  %call.i100 = call i32 @regmap_write(ptr noundef %24, i32 noundef %conv13, i32 noundef 1) #7
  br label %for.body.i104

for.body.i104:                                    ; preds = %if.end.i109.for.body.i104_crit_edge, %if.end12
  %time_cnt.01.i101 = phi i32 [ 1000000, %if.end12 ], [ %dec.i106, %if.end.i109.for.body.i104_crit_edge ]
  %25 = ptrtoint ptr %subctrl_vbase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %subctrl_vbase, align 4
  %call2.i102 = call i32 @regmap_read(ptr noundef %26, i32 noundef %conv14, ptr noundef nonnull %reg_value.i98) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i102)
  %tobool3.not.i103 = icmp eq i32 %call2.i102, 0
  br i1 %tobool3.not.i103, label %if.end.i109, label %for.body.i104.do.end20_crit_edge

for.body.i104.do.end20_crit_edge:                 ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

if.end.i109:                                      ; preds = %for.body.i104
  %27 = ptrtoint ptr %reg_value.i98 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_value.i98, align 4
  %and.i105 = and i32 %28, 1
  store i32 %and.i105, ptr %reg_value.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105)
  %.not = icmp eq i32 %and.i105, 0
  %dec.i106 = add nsw i32 %time_cnt.01.i101, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i106)
  %tobool.not.i107 = icmp eq i32 %dec.i106, 0
  %or.cond.i108 = select i1 %.not, i1 true, i1 %tobool.not.i107
  br i1 %or.cond.i108, label %for.end.i112, label %if.end.i109.for.body.i104_crit_edge

if.end.i109.for.body.i104_crit_edge:              ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i104

for.end.i112:                                     ; preds = %if.end.i109
  br i1 %.not, label %if.end22, label %for.end.i112.do.end20_crit_edge

for.end.i112.do.end20_crit_edge:                  ; preds = %for.end.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

do.end20:                                         ; preds = %for.end.i112.do.end20_crit_edge, %for.body.i104.do.end20_crit_edge
  %retval.0.i113.ph = phi i32 [ -16, %for.end.i112.do.end20_crit_edge ], [ %call2.i102, %for.body.i104.do.end20_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_value.i98) #7
  %dev21 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.49) #10
  br label %cleanup

if.end22:                                         ; preds = %for.end.i112
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_value.i98) #7
  %mdio_reset_dreq = getelementptr inbounds %struct.hns_mdio_device, ptr %1, i32 0, i32 2, i32 3
  %29 = ptrtoint ptr %mdio_reset_dreq to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %mdio_reset_dreq, align 2
  %conv23 = zext i16 %30 to i32
  %31 = ptrtoint ptr %mdio_reset_st to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %mdio_reset_st, align 2
  %conv25 = zext i16 %32 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_value.i115) #7
  %33 = ptrtoint ptr %reg_value.i115 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %reg_value.i115, align 4, !annotation !131
  %34 = ptrtoint ptr %subctrl_vbase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %subctrl_vbase, align 4
  %call.i117 = call i32 @regmap_write(ptr noundef %35, i32 noundef %conv23, i32 noundef 1) #7
  br label %for.body.i121

for.body.i121:                                    ; preds = %if.end.i127.for.body.i121_crit_edge, %if.end22
  %time_cnt.01.i118 = phi i32 [ 1000000, %if.end22 ], [ %dec.i124, %if.end.i127.for.body.i121_crit_edge ]
  %36 = ptrtoint ptr %subctrl_vbase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %subctrl_vbase, align 4
  %call2.i119 = call i32 @regmap_read(ptr noundef %37, i32 noundef %conv25, ptr noundef nonnull %reg_value.i115) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i119)
  %tobool3.not.i120 = icmp eq i32 %call2.i119, 0
  br i1 %tobool3.not.i120, label %if.end.i127, label %for.body.i121.do.end31_crit_edge

for.body.i121.do.end31_crit_edge:                 ; preds = %for.body.i121
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

if.end.i127:                                      ; preds = %for.body.i121
  %38 = ptrtoint ptr %reg_value.i115 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg_value.i115, align 4
  %and.i122 = and i32 %39, 1
  store i32 %and.i122, ptr %reg_value.i115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i122)
  %.not168 = icmp eq i32 %and.i122, 0
  %dec.i124 = add nsw i32 %time_cnt.01.i118, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i124)
  %tobool.not.i125 = icmp eq i32 %dec.i124, 0
  %or.cond.i126 = select i1 %.not168, i1 true, i1 %tobool.not.i125
  br i1 %or.cond.i126, label %for.end.i131, label %if.end.i127.for.body.i121_crit_edge

if.end.i127.for.body.i121_crit_edge:              ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i121

for.end.i131:                                     ; preds = %if.end.i127
  br i1 %.not168, label %if.end33, label %for.end.i131.do.end31_crit_edge

for.end.i131.do.end31_crit_edge:                  ; preds = %for.end.i131
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

do.end31:                                         ; preds = %for.end.i131.do.end31_crit_edge, %for.body.i121.do.end31_crit_edge
  %retval.0.i132.ph = phi i32 [ -16, %for.end.i131.do.end31_crit_edge ], [ %call2.i119, %for.body.i121.do.end31_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_value.i115) #7
  %dev32 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.49) #10
  br label %cleanup

if.end33:                                         ; preds = %for.end.i131
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_value.i115) #7
  %40 = ptrtoint ptr %sc_reg3 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %sc_reg3, align 2
  %conv34 = zext i16 %41 to i32
  %42 = ptrtoint ptr %mdio_clk_st to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %mdio_clk_st, align 2
  %conv36 = zext i16 %43 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_value.i134) #7
  %44 = ptrtoint ptr %reg_value.i134 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %reg_value.i134, align 4, !annotation !131
  %45 = ptrtoint ptr %subctrl_vbase to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %subctrl_vbase, align 4
  %call.i136 = call i32 @regmap_write(ptr noundef %46, i32 noundef %conv34, i32 noundef 1) #7
  br label %for.body.i140

for.body.i140:                                    ; preds = %if.end.i145.for.body.i140_crit_edge, %if.end33
  %time_cnt.01.i137 = phi i32 [ 1000000, %if.end33 ], [ %dec.i142, %if.end.i145.for.body.i140_crit_edge ]
  %47 = ptrtoint ptr %subctrl_vbase to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %subctrl_vbase, align 4
  %call2.i138 = call i32 @regmap_read(ptr noundef %48, i32 noundef %conv36, ptr noundef nonnull %reg_value.i134) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i138)
  %tobool3.not.i139 = icmp eq i32 %call2.i138, 0
  br i1 %tobool3.not.i139, label %if.end.i145, label %for.body.i140.do.end42_crit_edge

for.body.i140.do.end42_crit_edge:                 ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

if.end.i145:                                      ; preds = %for.body.i140
  %49 = ptrtoint ptr %reg_value.i134 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reg_value.i134, align 4
  %and.i141 = and i32 %50, 1
  store i32 %and.i141, ptr %reg_value.i134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i141)
  %51 = icmp ne i32 %and.i141, 0
  %dec.i142 = add nsw i32 %time_cnt.01.i137, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i142)
  %tobool.not.i143 = icmp eq i32 %dec.i142, 0
  %or.cond.i144 = select i1 %51, i1 true, i1 %tobool.not.i143
  br i1 %or.cond.i144, label %for.end.i148, label %if.end.i145.for.body.i140_crit_edge

if.end.i145.for.body.i140_crit_edge:              ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i140

for.end.i148:                                     ; preds = %if.end.i145
  br i1 %51, label %mdio_sc_cfg_reg_write.exit150, label %for.end.i148.do.end42_crit_edge

for.end.i148.do.end42_crit_edge:                  ; preds = %for.end.i148
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

mdio_sc_cfg_reg_write.exit150:                    ; preds = %for.end.i148
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_value.i134) #7
  br label %cleanup

do.end42:                                         ; preds = %for.end.i148.do.end42_crit_edge, %for.body.i140.do.end42_crit_edge
  %retval.0.i149.ph = phi i32 [ -16, %for.end.i148.do.end42_crit_edge ], [ %call2.i138, %for.body.i140.do.end42_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_value.i134) #7
  %dev43 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43, ptr noundef nonnull @.str.54) #10
  br label %cleanup

if.else:                                          ; preds = %dev_of_node.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %dev61 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61, ptr noundef nonnull @.str.21) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end42, %mdio_sc_cfg_reg_write.exit150, %do.end31, %do.end20, %do.end10, %do.end
  %retval.0 = phi i32 [ %retval.0.i97.ph, %do.end10 ], [ %retval.0.i113.ph, %do.end20 ], [ %retval.0.i132.ph, %do.end31 ], [ -19, %do.end ], [ %retval.0.i149.ph, %do.end42 ], [ 0, %mdio_sc_cfg_reg_write.exit150 ], [ -6, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !63, !64, !65, !67, !68, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !110, !112, !113, !114, !116, !117}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @__initcall__kmod_hns_mdio__353_569_hns_mdio_driver_init6, !1, !"__initcall__kmod_hns_mdio__353_569_hns_mdio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 569, i32 1}
!2 = !{ptr @__exitcall_hns_mdio_driver_exit, !1, !"__exitcall_hns_mdio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file354, !4, !"__UNIQUE_ID_file354", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 571, i32 1}
!5 = !{ptr @__UNIQUE_ID_license355, !4, !"__UNIQUE_ID_license355", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author356, !7, !"__UNIQUE_ID_author356", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 572, i32 1}
!8 = !{ptr @__UNIQUE_ID_description357, !9, !"__UNIQUE_ID_description357", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 573, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias358, !11, !"__UNIQUE_ID_alias358", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 574, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 563, i32 14}
!14 = !{ptr @hns_mdio_driver, !15, !"hns_mdio_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 559, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 426, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hns_mdio_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @hns_mdio_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 436, i32 3}
!26 = !{ptr @hns_mdio_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hns_mdio_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 440, i32 18}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 454, i32 41}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 454, i32 50}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 460, i32 14}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 468, i32 5}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @hns_mdio_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @hns_mdio_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 501, i32 4}
!43 = !{ptr @hns_mdio_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @hns_mdio_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 516, i32 3}
!47 = !{ptr @hns_mdio_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @hns_mdio_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 521, i32 3}
!51 = !{ptr @hns_mdio_probe._entry.23, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @hns_mdio_probe._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 288, i32 2}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @hns_mdio_read.__UNIQUE_ID_ddebug351, !54, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 290, i32 2}
!60 = !{ptr @hns_mdio_read.__UNIQUE_ID_ddebug352, !59, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 296, i32 3}
!63 = !{ptr @hns_mdio_read._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @hns_mdio_read._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @hns_mdio_read._entry.31, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 314, i32 4}
!67 = !{ptr @hns_mdio_read._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @hns_mdio_read._entry.33, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 326, i32 3}
!70 = !{ptr @hns_mdio_read._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 332, i32 3}
!73 = !{ptr @hns_mdio_read._entry.35, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @hns_mdio_read._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 228, i32 2}
!77 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @hns_mdio_write.__UNIQUE_ID_ddebug349, !76, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 230, i32 2}
!81 = !{ptr @hns_mdio_write.__UNIQUE_ID_ddebug350, !80, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!82 = !{ptr @hns_mdio_write._entry, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 236, i32 3}
!84 = !{ptr @hns_mdio_write._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @hns_mdio_write._entry.41, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 254, i32 4}
!87 = !{ptr @hns_mdio_write._entry_ptr.42, !86, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 357, i32 4}
!90 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @hns_mdio_reset._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @hns_mdio_reset._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 367, i32 4}
!95 = !{ptr @hns_mdio_reset._entry.45, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @hns_mdio_reset._entry_ptr.47, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 376, i32 4}
!99 = !{ptr @hns_mdio_reset._entry.48, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @hns_mdio_reset._entry_ptr.50, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @hns_mdio_reset._entry.51, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 385, i32 4}
!103 = !{ptr @hns_mdio_reset._entry_ptr.52, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 394, i32 4}
!106 = !{ptr @hns_mdio_reset._entry.53, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @hns_mdio_reset._entry_ptr.55, !105, !"_entry_ptr", i1 false, i1 false}
!108 = distinct !{null, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 399, i32 7}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 401, i32 4}
!112 = !{ptr @hns_mdio_reset._entry.57, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @hns_mdio_reset._entry_ptr.59, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @hns_mdio_reset._entry.60, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 407, i32 3}
!116 = !{ptr @hns_mdio_reset._entry_ptr.61, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @hns_mdio_match, !118, !"hns_mdio_match", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/hisilicon/hns_mdio.c", i32 546, i32 34}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{i64 2148959948, i64 2148959953, i64 2148959966, i64 2148960010, i64 2148960044, i64 2148960065}
!129 = !{i64 7121187}
!130 = !{i64 7120769}
!131 = !{!"auto-init"}
