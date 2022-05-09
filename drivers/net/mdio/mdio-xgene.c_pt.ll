; ModuleID = '/llk/IR_all_yes/drivers/net/mdio/mdio-xgene.c_pt.bc'
source_filename = "../drivers/net/mdio/mdio-xgene.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+xgene_mdio_rd_mac\22, \22a\22\09"
module asm "\09.weak\09__crc_xgene_mdio_rd_mac\09\09\09\09"
module asm "\09.long\09__crc_xgene_mdio_rd_mac\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xgene_mdio_rd_mac:\09\09\09\09\09"
module asm "\09.asciz \09\22xgene_mdio_rd_mac\22\09\09\09\09\09"
module asm "__kstrtabns_xgene_mdio_rd_mac:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xgene_mdio_wr_mac\22, \22a\22\09"
module asm "\09.weak\09__crc_xgene_mdio_wr_mac\09\09\09\09"
module asm "\09.long\09__crc_xgene_mdio_wr_mac\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xgene_mdio_wr_mac:\09\09\09\09\09"
module asm "\09.asciz \09\22xgene_mdio_wr_mac\22\09\09\09\09\09"
module asm "__kstrtabns_xgene_mdio_wr_mac:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xgene_mdio_rgmii_read\22, \22a\22\09"
module asm "\09.weak\09__crc_xgene_mdio_rgmii_read\09\09\09\09"
module asm "\09.long\09__crc_xgene_mdio_rgmii_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xgene_mdio_rgmii_read:\09\09\09\09\09"
module asm "\09.asciz \09\22xgene_mdio_rgmii_read\22\09\09\09\09\09"
module asm "__kstrtabns_xgene_mdio_rgmii_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xgene_mdio_rgmii_write\22, \22a\22\09"
module asm "\09.weak\09__crc_xgene_mdio_rgmii_write\09\09\09\09"
module asm "\09.long\09__crc_xgene_mdio_rgmii_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xgene_mdio_rgmii_write:\09\09\09\09\09"
module asm "\09.asciz \09\22xgene_mdio_rgmii_write\22\09\09\09\09\09"
module asm "__kstrtabns_xgene_mdio_rgmii_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+xgene_enet_phy_register\22, \22a\22\09"
module asm "\09.weak\09__crc_xgene_enet_phy_register\09\09\09\09"
module asm "\09.long\09__crc_xgene_enet_phy_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xgene_enet_phy_register:\09\09\09\09\09"
module asm "\09.asciz \09\22xgene_enet_phy_register\22\09\09\09\09\09"
module asm "__kstrtabns_xgene_enet_phy_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.xgene_mdio_pdata = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_xgene_mdio_rd_mac = external dso_local constant [0 x i8], align 1
@__kstrtabns_xgene_mdio_rd_mac = external dso_local constant [0 x i8], align 1
@__ksymtab_xgene_mdio_rd_mac = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xgene_mdio_rd_mac to i32), ptr @__kstrtab_xgene_mdio_rd_mac, ptr @__kstrtabns_xgene_mdio_rd_mac }, section "___ksymtab+xgene_mdio_rd_mac", align 4
@xgene_mdio_wr_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013MCX mac write failed, addr: 0x%04x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgene_mdio_wr_mac\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/mdio/mdio-xgene.c\00", [34 x i8] zeroinitializer }, align 32
@xgene_mdio_wr_mac._entry_ptr = internal global ptr @xgene_mdio_wr_mac._entry, section ".printk_index", align 4
@__kstrtab_xgene_mdio_wr_mac = external dso_local constant [0 x i8], align 1
@__kstrtabns_xgene_mdio_wr_mac = external dso_local constant [0 x i8], align 1
@__ksymtab_xgene_mdio_wr_mac = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xgene_mdio_wr_mac to i32), ptr @__kstrtab_xgene_mdio_wr_mac, ptr @__kstrtabns_xgene_mdio_wr_mac }, section "___ksymtab+xgene_mdio_wr_mac", align 4
@xgene_mdio_rgmii_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 95, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MII_MGMT read failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xgene_mdio_rgmii_read\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xgene_mdio_rgmii_read._entry_ptr = internal global ptr @xgene_mdio_rgmii_read._entry, section ".printk_index", align 4
@__kstrtab_xgene_mdio_rgmii_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_xgene_mdio_rgmii_read = external dso_local constant [0 x i8], align 1
@__ksymtab_xgene_mdio_rgmii_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xgene_mdio_rgmii_read to i32), ptr @__kstrtab_xgene_mdio_rgmii_read, ptr @__kstrtabns_xgene_mdio_rgmii_read }, section "___ksymtab+xgene_mdio_rgmii_read", align 4
@xgene_mdio_rgmii_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 122, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MII_MGMT write failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xgene_mdio_rgmii_write\00", [41 x i8] zeroinitializer }, align 32
@xgene_mdio_rgmii_write._entry_ptr = internal global ptr @xgene_mdio_rgmii_write._entry, section ".printk_index", align 4
@__kstrtab_xgene_mdio_rgmii_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_xgene_mdio_rgmii_write = external dso_local constant [0 x i8], align 1
@__ksymtab_xgene_mdio_rgmii_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xgene_mdio_rgmii_write to i32), ptr @__kstrtab_xgene_mdio_rgmii_write, ptr @__kstrtabns_xgene_mdio_rgmii_write }, section "___ksymtab+xgene_mdio_rgmii_write", align 4
@__kstrtab_xgene_enet_phy_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_xgene_enet_phy_register = external dso_local constant [0 x i8], align 1
@__ksymtab_xgene_enet_phy_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xgene_enet_phy_register to i32), ptr @__kstrtab_xgene_enet_phy_register, ptr @__kstrtabns_xgene_enet_phy_register }, section "___ksymtab+xgene_enet_phy_register", align 4
@__initcall__kmod_mdio_xgene__504_462_xgene_mdio_driver_init6 = internal global ptr @xgene_mdio_driver_init, section ".initcall6.init", align 4
@xgene_mdio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xgene_mdio_probe, ptr @xgene_mdio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.9, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xgene_mdio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xgene_mdio_driver_exit = internal global ptr @xgene_mdio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description505 = internal constant [50 x i8] c"mdio_xgene.description=APM X-Gene SoC MDIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author506 = internal constant [61 x i8] c"mdio_xgene.author=Iyappan Subramanian <isubramanian@apm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file507 = internal constant [44 x i8] c"mdio_xgene.file=drivers/net/mdio/mdio-xgene\00", section ".modinfo", align 1
@__UNIQUE_ID_license508 = internal constant [23 x i8] c"mdio_xgene.license=GPL\00", section ".modinfo", align 1
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xgene-mdio\00", [21 x i8] zeroinitializer }, align 32
@xgene_mdio_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene-mdio-rgmii\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene-mdio-xfi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@xgene_mdio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pdata->mac_lock\00", [47 x i8] zeroinitializer }, align 32
@xgene_mdio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 370, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to retrieve clk\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xgene_mdio_probe\00", [47 x i8] zeroinitializer }, align 32
@xgene_mdio_probe._entry_ptr = internal global ptr @xgene_mdio_probe._entry, section ".printk_index", align 4
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"APM X-Gene MDIO bus\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xgene-mii-rgmii\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xgene-mii-xfi\00", [18 x i8] zeroinitializer }, align 32
@xgene_enet_ecc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 153, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to release memory from shutdown\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xgene_enet_ecc_init\00", [44 x i8] zeroinitializer }, align 32
@xgene_enet_ecc_init._entry_ptr = internal global ptr @xgene_enet_ecc_init._entry, section ".printk_index", align 4
@xgene_xfi_mdio_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013XGENET_MII_MGMT write failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xgene_xfi_mdio_read\00", [44 x i8] zeroinitializer }, align 32
@xgene_xfi_mdio_read._entry_ptr = internal global ptr @xgene_xfi_mdio_read._entry, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 73, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 95, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 122, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"xgene_mdio_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 452, i32 31 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 454, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant [20 x i8] c"xgene_mdio_of_match\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 302, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 365, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 370, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 385, i32 19 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 392, i32 5 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 398, i32 5 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 153, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [33 x i8] c"../drivers/net/mdio/mdio-xgene.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 253, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author506, ptr @__UNIQUE_ID_description505, ptr @__UNIQUE_ID_file507, ptr @__UNIQUE_ID_license508, ptr @__exitcall_xgene_mdio_driver_exit, ptr @__initcall__kmod_mdio_xgene__504_462_xgene_mdio_driver_init6, ptr @__ksymtab_xgene_enet_phy_register, ptr @__ksymtab_xgene_mdio_rd_mac, ptr @__ksymtab_xgene_mdio_rgmii_read, ptr @__ksymtab_xgene_mdio_rgmii_write, ptr @__ksymtab_xgene_mdio_wr_mac, ptr @xgene_enet_ecc_init._entry, ptr @xgene_enet_ecc_init._entry_ptr, ptr @xgene_mdio_driver_exit, ptr @xgene_mdio_probe._entry, ptr @xgene_mdio_probe._entry_ptr, ptr @xgene_mdio_rgmii_read._entry, ptr @xgene_mdio_rgmii_read._entry_ptr, ptr @xgene_mdio_rgmii_write._entry, ptr @xgene_mdio_rgmii_write._entry_ptr, ptr @xgene_mdio_wr_mac._entry, ptr @xgene_mdio_wr_mac._entry_ptr, ptr @xgene_xfi_mdio_read._entry, ptr @xgene_xfi_mdio_read._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @xgene_mdio_driver, ptr @.str.9, ptr @xgene_mdio_of_match, ptr @xgene_mdio_probe.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_mdio_wr_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_mdio_rgmii_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_mdio_rgmii_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_mdio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_mdio_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_mdio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_mdio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_enet_ecc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_xfi_mdio_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xgene_mdio_rd_mac(ptr noundef %pdata, i32 noundef %rd_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_csr_addr = getelementptr inbounds %struct.xgene_mdio_pdata, ptr %pdata, i32 0, i32 2
  %0 = ptrtoint ptr %mac_csr_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_csr_addr, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 12
  %add.ptr4 = getelementptr i8, ptr %1, i32 4
  %add.ptr6 = getelementptr i8, ptr %1, i32 16
  %mac_lock = getelementptr inbounds %struct.xgene_mdio_pdata, ptr %pdata, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %mac_lock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %rd_addr) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %2) #5, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 64) #5, !srcloc !82
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not17 = icmp eq i32 %3, 0
  br i1 %tobool.not17, label %entry.while.body_crit_edge, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %wait.019 = phi i8 [ %dec, %while.body.while.body_crit_edge ], [ 10, %entry.while.body_crit_edge ]
  %dec = add nsw i8 %wait.019, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #5
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool7.not = icmp eq i8 %dec, 0
  %or.cond = select i1 %tobool.not.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  br i1 %tobool.not, label %while.end.if.end_crit_edge, label %while.end.if.then_crit_edge

while.end.if.then_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %while.end.if.then_crit_edge, %entry.if.then_crit_edge
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !83
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  %rd_data.0 = phi i32 [ %7, %if.then ], [ 1, %while.end.if.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #5, !srcloc !82
  tail call void @_raw_spin_unlock(ptr noundef %mac_lock) #5
  ret i32 %rd_data.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xgene_mdio_wr_mac(ptr noundef %pdata, i32 noundef %wr_addr, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_csr_addr = getelementptr inbounds %struct.xgene_mdio_pdata, ptr %pdata, i32 0, i32 2
  %0 = ptrtoint ptr %mac_csr_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_csr_addr, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 8
  %add.ptr4 = getelementptr i8, ptr %1, i32 4
  %add.ptr6 = getelementptr i8, ptr %1, i32 16
  %mac_lock = getelementptr inbounds %struct.xgene_mdio_pdata, ptr %pdata, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %mac_lock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %wr_addr) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %2) #5, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %3 = tail call i32 @llvm.bswap.i32(i32 %data) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %3) #5, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 128) #5, !srcloc !82
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not18 = icmp eq i32 %4, 0
  br i1 %tobool.not18, label %entry.while.body_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %wait.020 = phi i8 [ %dec, %while.body.while.body_crit_edge ], [ 10, %entry.while.body_crit_edge ]
  %dec = add nsw i8 %wait.020, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool7.not = icmp eq i8 %dec, 0
  %or.cond = select i1 %tobool.not.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  br i1 %tobool.not, label %do.end, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %wr_addr) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %while.end.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #5, !srcloc !82
  tail call void @_raw_spin_unlock(ptr noundef %mac_lock) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xgene_mdio_rgmii_read(ptr noundef %bus, i32 noundef %phy_id, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = shl i32 %phy_id, 8
  %3 = and i32 %2, 7936
  %4 = and i32 %reg, 31
  %or26 = or i32 %3, %4
  tail call void @xgene_mdio_wr_mac(ptr noundef %1, i32 noundef 40, i32 noundef %or26)
  tail call void @xgene_mdio_wr_mac(ptr noundef %1, i32 noundef 36, i32 noundef 1)
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %wait.0 = phi i8 [ 10, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 5, i32 noundef 10, i32 noundef 2) #5
  %call4 = tail call i32 @xgene_mdio_rd_mac(ptr noundef %1, i32 noundef 52)
  %and = and i32 %call4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %dec = add nsw i8 %wait.0, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wait.0)
  %tobool6.not = icmp eq i8 %wait.0, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %do.body
  br i1 %tobool.not, label %if.end, label %do.end11

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 @xgene_mdio_rd_mac(ptr noundef %1, i32 noundef 48)
  tail call void @xgene_mdio_wr_mac(ptr noundef %1, i32 noundef 36, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end11
  %retval.0 = phi i32 [ -16, %do.end11 ], [ %call12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xgene_mdio_rgmii_write(ptr noundef %bus, i32 noundef %phy_id, i32 noundef %reg, i16 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = shl i32 %phy_id, 8
  %3 = and i32 %2, 7936
  %4 = and i32 %reg, 31
  %or23 = or i32 %3, %4
  tail call void @xgene_mdio_wr_mac(ptr noundef %1, i32 noundef 40, i32 noundef %or23)
  %conv4 = zext i16 %data to i32
  tail call void @xgene_mdio_wr_mac(ptr noundef %1, i32 noundef 44, i32 noundef %conv4)
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %wait.0 = phi i8 [ 10, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 5, i32 noundef 10, i32 noundef 2) #5
  %call5 = tail call i32 @xgene_mdio_rd_mac(ptr noundef %1, i32 noundef 52)
  %and = and i32 %call5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %dec = add nsw i8 %wait.0, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wait.0)
  %tobool7.not = icmp eq i8 %wait.0, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %do.body
  br i1 %tobool.not, label %do.end.cleanup_crit_edge, label %do.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end12 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xgene_enet_phy_register(ptr noundef %bus, i32 noundef %phy_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_phy_device(ptr noundef %bus, i32 noundef %phy_addr, i1 noundef zeroext false) #5
  %tobool.not = icmp eq ptr %call, null
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @phy_device_register(ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @phy_device_free(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call, %if.then4 ], [ %call, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_phy_device(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_device_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_mdio_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xgene_mdio_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xgene_mdio_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @xgene_mdio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_mdio_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @xgene_mdio_of_match, ptr noundef %dev1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 72, i32 noundef 3520) #5
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %mdio_id10 = getelementptr inbounds %struct.xgene_mdio_pdata, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %mdio_id10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %mdio_id10, align 4
  %dev11 = getelementptr inbounds %struct.xgene_mdio_pdata, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %dev11, align 4
  %call12 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %mac_csr_addr = getelementptr inbounds %struct.xgene_mdio_pdata, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %mac_csr_addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call12, ptr %mac_csr_addr, align 4
  %add.ptr = getelementptr i8, ptr %call12, i32 20480
  %mdio_csr_addr = getelementptr inbounds %struct.xgene_mdio_pdata, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %mdio_csr_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %mdio_csr_addr, align 4
  %add.ptr17 = getelementptr i8, ptr %call12, i32 53248
  %diag_csr_addr = getelementptr inbounds %struct.xgene_mdio_pdata, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %diag_csr_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr17, ptr %diag_csr_addr, align 4
  %cmp = icmp eq ptr %1, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %do.body, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

do.body:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %mac_lock = getelementptr inbounds %struct.xgene_mdio_pdata, ptr %call.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %mac_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @xgene_mdio_probe.__key, i16 noundef signext 3) #5
  br label %if.end20

if.end20:                                         ; preds = %do.body, %if.end16.if.end20_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %tobool21.not = icmp eq ptr %10, null
  br i1 %tobool21.not, label %if.end20.if.end33_crit_edge, label %if.then22

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then22:                                        ; preds = %if.end20
  %call23 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #5
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call23, ptr %call.i, align 4
  %cmp.i126 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %do.end29, label %if.then22.if.end33_crit_edge

if.then22.if.end33_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

do.end29:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #8
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.then22.if.end33_crit_edge, %if.end20.if.end33_crit_edge
  %15 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev11, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.end33.if.end.i_crit_edge, label %if.then.i

if.end33.if.end.i_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end33
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.clk_prepare_enable.exit.i_crit_edge

if.then.i.clk_prepare_enable.exit.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.clk_prepare_enable.exit.i_crit_edge, label %if.then3.i.i

if.end.i.i.clk_prepare_enable.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %20) #5
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end.i.i.clk_prepare_enable.exit.i_crit_edge, %if.then.i.clk_prepare_enable.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 1073740) #5
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  tail call void @clk_disable(ptr noundef %23) #5
  tail call void @clk_unprepare(ptr noundef %23) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 1073740) #5
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %call.i22.i = tail call i32 @clk_prepare(ptr noundef %26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i)
  %tobool.not.i23.i = icmp eq i32 %call.i22.i, 0
  br i1 %tobool.not.i23.i, label %if.end.i26.i, label %clk_prepare_enable.exit.i.clk_prepare_enable.exit28.i_crit_edge

clk_prepare_enable.exit.i.clk_prepare_enable.exit28.i_crit_edge: ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit28.i

if.end.i26.i:                                     ; preds = %clk_prepare_enable.exit.i
  %call1.i24.i = tail call i32 @clk_enable(ptr noundef %26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24.i)
  %tobool2.not.i25.i = icmp eq i32 %call1.i24.i, 0
  br i1 %tobool2.not.i25.i, label %if.end.i26.i.clk_prepare_enable.exit28.i_crit_edge, label %if.then3.i27.i

if.end.i26.i.clk_prepare_enable.exit28.i_crit_edge: ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit28.i

if.then3.i27.i:                                   ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %26) #5
  br label %clk_prepare_enable.exit28.i

clk_prepare_enable.exit28.i:                      ; preds = %if.then3.i27.i, %if.end.i26.i.clk_prepare_enable.exit28.i_crit_edge, %clk_prepare_enable.exit.i.clk_prepare_enable.exit28.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 1073740) #5
  br label %if.end.i

if.end.i:                                         ; preds = %clk_prepare_enable.exit28.i, %if.end33.if.end.i_crit_edge
  %28 = ptrtoint ptr %diag_csr_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %diag_csr_addr, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #5, !srcloc !82
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end.i
  %wait.0.i.i = phi i8 [ 10, %if.end.i ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #5
  %30 = ptrtoint ptr %diag_csr_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %diag_csr_addr, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %31, i32 116
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i.i) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.not.i.i = icmp eq i32 %32, -1
  %dec.i.i = add nsw i8 %wait.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %wait.0.i.i)
  %tobool.not.i29.i = icmp eq i8 %wait.0.i.i, 0
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 true, i1 %tobool.not.i29.i
  br i1 %or.cond.i.i, label %do.end.i.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  br i1 %cmp.not.i.i, label %if.end37, label %if.then6.i

if.then6.i:                                       ; preds = %do.end.i.i
  %33 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.17) #8
  %35 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev11, align 4
  %of_node8.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %of_node8.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node8.i, align 8
  %tobool9.not.i = icmp eq ptr %38, null
  br i1 %tobool9.not.i, label %if.then6.i.cleanup_crit_edge, label %if.then10.i

if.then6.i.cleanup_crit_edge:                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  tail call void @clk_disable(ptr noundef %40) #5
  tail call void @clk_unprepare(ptr noundef %40) #5
  br label %cleanup

if.end37:                                         ; preds = %do.end.i.i
  tail call void @xgene_mdio_wr_mac(ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef -2147483648) #5
  tail call void @xgene_mdio_wr_mac(ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef 0) #5
  %call.i127 = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #5
  %tobool39.not = icmp eq ptr %call.i127, null
  br i1 %tobool39.not, label %if.end37.out_clk_crit_edge, label %if.end41

if.end37.out_clk_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_clk

if.end41:                                         ; preds = %if.end37
  %name = getelementptr inbounds %struct.mii_bus, ptr %call.i127, i32 0, i32 1
  %41 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.13, ptr %name, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %call.i127, i32 0, i32 4
  br i1 %cmp, label %if.then43, label %if.else45

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @xgene_mdio_rgmii_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %call.i127, i32 0, i32 5
  %43 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @xgene_mdio_rgmii_write, ptr %write, align 8
  %id = getelementptr inbounds %struct.mii_bus, ptr %call.i127, i32 0, i32 2
  %44 = call ptr @memcpy(ptr %id, ptr @.str.15, i32 16)
  br label %if.end53

if.else45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @xgene_xfi_mdio_read, ptr %read, align 4
  %write47 = getelementptr inbounds %struct.mii_bus, ptr %call.i127, i32 0, i32 5
  %46 = ptrtoint ptr %write47 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @xgene_xfi_mdio_write, ptr %write47, align 8
  %47 = ptrtoint ptr %mdio_csr_addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mdio_csr_addr, align 4
  %id50 = getelementptr inbounds %struct.mii_bus, ptr %call.i127, i32 0, i32 2
  %49 = call ptr @memcpy(ptr %id50, ptr @.str.16, i32 14)
  br label %if.end53

if.end53:                                         ; preds = %if.else45, %if.then43
  %.sink = phi ptr [ %call.i, %if.then43 ], [ %48, %if.else45 ]
  %50 = getelementptr inbounds %struct.mii_bus, ptr %call.i127, i32 0, i32 3
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %.sink, ptr %50, align 8
  %parent = getelementptr inbounds %struct.mii_bus, ptr %call.i127, i32 0, i32 9
  %52 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %dev1, ptr %parent, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %53 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %54 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %of_node, align 8
  %tobool55.not = icmp eq ptr %55, null
  br i1 %tobool55.not, label %if.end53.if.end63_crit_edge, label %if.end60

if.end53.if.end63_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.end60:                                         ; preds = %if.end53
  %call58 = tail call i32 @of_mdiobus_register(ptr noundef nonnull %call.i127, ptr noundef nonnull %55) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool61.not = icmp eq i32 %call58, 0
  br i1 %tobool61.not, label %if.end60.if.end63_crit_edge, label %out_mdiobus

if.end60.if.end63_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.end63:                                         ; preds = %if.end60.if.end63_crit_edge, %if.end53.if.end63_crit_edge
  %mdio_bus64 = getelementptr inbounds %struct.xgene_mdio_pdata, ptr %call.i, i32 0, i32 5
  %56 = ptrtoint ptr %mdio_bus64 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i127, ptr %mdio_bus64, align 4
  br label %cleanup

out_mdiobus:                                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mdiobus_free(ptr noundef nonnull %call.i127) #5
  br label %out_clk

out_clk:                                          ; preds = %out_mdiobus, %if.end37.out_clk_crit_edge
  %ret.1 = phi i32 [ %call58, %out_mdiobus ], [ -12, %if.end37.out_clk_crit_edge ]
  %57 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %of_node, align 8
  %tobool66.not = icmp eq ptr %58, null
  br i1 %tobool66.not, label %out_clk.cleanup_crit_edge, label %if.then67

out_clk.cleanup_crit_edge:                        ; preds = %out_clk
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then67:                                        ; preds = %out_clk
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 4
  tail call void @clk_disable(ptr noundef %60) #5
  tail call void @clk_unprepare(ptr noundef %60) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %out_clk.cleanup_crit_edge, %if.end63, %if.then10.i, %if.then6.i.cleanup_crit_edge, %do.end29, %if.then14, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then14 ], [ %14, %do.end29 ], [ 0, %if.end63 ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %ret.1, %if.then67 ], [ %ret.1, %out_clk.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then10.i ], [ -19, %if.then6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_mdio_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mdio_bus1 = getelementptr inbounds %struct.xgene_mdio_pdata, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mdio_bus1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdio_bus1, align 4
  tail call void @mdiobus_unregister(ptr noundef %3) #5
  tail call void @mdiobus_free(ptr noundef %3) #5
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_xfi_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = shl i32 %phy_id, 23
  %3 = and i32 %2, 260046848
  %4 = shl i32 %reg, 18
  %5 = and i32 %4, 8126464
  %or32 = or i32 %5, %3
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %or32) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #5, !srcloc !82
  %add.ptr.i25 = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 167772160) #5, !srcloc !82
  %add.ptr.i26 = getelementptr i8, ptr %1, i32 48
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 100, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 5, i32 noundef 10, i32 noundef 2) #5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %dec = add nsw i32 %timeout.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %tobool7.not = icmp eq i32 %timeout.0, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %do.body
  br i1 %tobool.not, label %if.end, label %do.end12

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #8
  br label %cleanup

if.end:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i27 = getelementptr i8, ptr %1, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #5, !srcloc !83
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 0) #5, !srcloc !82
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end12
  %retval.0 = phi i32 [ -16, %do.end12 ], [ %10, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_xfi_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %reg, i16 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = shl i32 %phy_id, 23
  %3 = and i32 %2, 260046848
  %4 = shl i32 %reg, 18
  %5 = and i32 %4, 8126464
  %or23 = or i32 %5, %3
  %conv3 = zext i16 %data to i32
  %or5 = or i32 %or23, %conv3
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %or5) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #5, !srcloc !82
  %add.ptr.i18 = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 150994944) #5, !srcloc !82
  %add.ptr.i19 = getelementptr i8, ptr %1, i32 48
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 100, %entry ], [ %dec, %do.body.do.body_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 5, i32 noundef 10, i32 noundef 2) #5
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %8 = and i32 %7, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %dec = add nsw i32 %timeout.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %tobool10.not = icmp eq i32 %timeout.0, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 0) #5, !srcloc !82
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !16, !17, !19, !21, !22, !23, !24, !26, !28, !30, !31, !33, !35, !37, !38, !40, !42, !44, !45, !47, !48, !49, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__ksymtab_xgene_mdio_rd_mac, !1, !"__ksymtab_xgene_mdio_rd_mac", i1 false, i1 false}
!1 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 51, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 73, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @xgene_mdio_wr_mac._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @xgene_mdio_wr_mac._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_xgene_mdio_wr_mac, !9, !"__ksymtab_xgene_mdio_wr_mac", i1 false, i1 false}
!9 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 78, i32 1}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 95, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @xgene_mdio_rgmii_read._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @xgene_mdio_rgmii_read._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_xgene_mdio_rgmii_read, !18, !"__ksymtab_xgene_mdio_rgmii_read", i1 false, i1 false}
!18 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 104, i32 1}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 122, i32 3}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @xgene_mdio_rgmii_write._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @xgene_mdio_rgmii_write._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_xgene_mdio_rgmii_write, !25, !"__ksymtab_xgene_mdio_rgmii_write", i1 false, i1 false}
!25 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 128, i32 1}
!26 = !{ptr @__ksymtab_xgene_enet_phy_register, !27, !"__ksymtab_xgene_enet_phy_register", i1 false, i1 false}
!27 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 276, i32 1}
!28 = !{ptr @__initcall__kmod_mdio_xgene__504_462_xgene_mdio_driver_init6, !29, !"__initcall__kmod_mdio_xgene__504_462_xgene_mdio_driver_init6", i1 false, i1 false}
!29 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 462, i32 1}
!30 = !{ptr @__exitcall_xgene_mdio_driver_exit, !29, !"__exitcall_xgene_mdio_driver_exit", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_description505, !32, !"__UNIQUE_ID_description505", i1 false, i1 false}
!32 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 464, i32 1}
!33 = !{ptr @__UNIQUE_ID_author506, !34, !"__UNIQUE_ID_author506", i1 false, i1 false}
!34 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 465, i32 1}
!35 = !{ptr @__UNIQUE_ID_file507, !36, !"__UNIQUE_ID_file507", i1 false, i1 false}
!36 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 466, i32 1}
!37 = !{ptr @__UNIQUE_ID_license508, !36, !"__UNIQUE_ID_license508", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 454, i32 11}
!40 = !{ptr @xgene_mdio_driver, !41, !"xgene_mdio_driver", i1 false, i1 false}
!41 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 452, i32 31}
!42 = !{ptr @xgene_mdio_probe.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 365, i32 3}
!44 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 370, i32 4}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @xgene_mdio_probe._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @xgene_mdio_probe._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 385, i32 19}
!52 = distinct !{null, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 391, i32 43}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 392, i32 5}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 398, i32 5}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 153, i32 3}
!60 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @xgene_enet_ecc_init._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @xgene_enet_ecc_init._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 253, i32 3}
!65 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @xgene_xfi_mdio_read._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @xgene_xfi_mdio_read._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = distinct !{null, !69, !"xgene_mdio_status", i1 false, i1 false}
!69 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 23, i32 13}
!70 = !{ptr @xgene_mdio_of_match, !71, !"xgene_mdio_of_match", i1 false, i1 false}
!71 = !{!"../drivers/net/mdio/mdio-xgene.c", i32 302, i32 34}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 2154240100}
!82 = !{i64 6705468}
!83 = !{i64 6705886}
!84 = !{i64 2154238745}
