; ModuleID = '/llk/IR_all_yes/drivers/net/phy/fixed_phy.c_pt.bc'
source_filename = "../drivers/net/phy/fixed_phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fixed_phy_change_carrier\22, \22a\22\09"
module asm "\09.weak\09__crc_fixed_phy_change_carrier\09\09\09\09"
module asm "\09.long\09__crc_fixed_phy_change_carrier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fixed_phy_change_carrier:\09\09\09\09\09"
module asm "\09.asciz \09\22fixed_phy_change_carrier\22\09\09\09\09\09"
module asm "__kstrtabns_fixed_phy_change_carrier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fixed_phy_set_link_update\22, \22a\22\09"
module asm "\09.weak\09__crc_fixed_phy_set_link_update\09\09\09\09"
module asm "\09.long\09__crc_fixed_phy_set_link_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fixed_phy_set_link_update:\09\09\09\09\09"
module asm "\09.asciz \09\22fixed_phy_set_link_update\22\09\09\09\09\09"
module asm "__kstrtabns_fixed_phy_set_link_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fixed_phy_add\22, \22a\22\09"
module asm "\09.weak\09__crc_fixed_phy_add\09\09\09\09"
module asm "\09.long\09__crc_fixed_phy_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fixed_phy_add:\09\09\09\09\09"
module asm "\09.asciz \09\22fixed_phy_add\22\09\09\09\09\09"
module asm "__kstrtabns_fixed_phy_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fixed_phy_register\22, \22a\22\09"
module asm "\09.weak\09__crc_fixed_phy_register\09\09\09\09"
module asm "\09.long\09__crc_fixed_phy_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fixed_phy_register:\09\09\09\09\09"
module asm "\09.asciz \09\22fixed_phy_register\22\09\09\09\09\09"
module asm "__kstrtabns_fixed_phy_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fixed_phy_register_with_gpiod\22, \22a\22\09"
module asm "\09.weak\09__crc_fixed_phy_register_with_gpiod\09\09\09\09"
module asm "\09.long\09__crc_fixed_phy_register_with_gpiod\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fixed_phy_register_with_gpiod:\09\09\09\09\09"
module asm "\09.asciz \09\22fixed_phy_register_with_gpiod\22\09\09\09\09\09"
module asm "__kstrtabns_fixed_phy_register_with_gpiod:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fixed_phy_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_fixed_phy_unregister\09\09\09\09"
module asm "\09.long\09__crc_fixed_phy_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fixed_phy_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22fixed_phy_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_fixed_phy_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.fixed_mdio_bus = type { ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.fixed_phy = type { i32, ptr, %struct.fixed_phy_status, i8, ptr, %struct.list_head, ptr }
%struct.fixed_phy_status = type { i32, i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@platform_fmb = internal global { %struct.fixed_mdio_bus, [20 x i8] } { %struct.fixed_mdio_bus { ptr null, %struct.list_head { ptr getelementptr (i8, ptr @platform_fmb, i64 4), ptr getelementptr (i8, ptr @platform_fmb, i64 4) } }, [20 x i8] zeroinitializer }, align 32
@__kstrtab_fixed_phy_change_carrier = external dso_local constant [0 x i8], align 1
@__kstrtabns_fixed_phy_change_carrier = external dso_local constant [0 x i8], align 1
@__ksymtab_fixed_phy_change_carrier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fixed_phy_change_carrier to i32), ptr @__kstrtab_fixed_phy_change_carrier, ptr @__kstrtabns_fixed_phy_change_carrier }, section "___ksymtab_gpl+fixed_phy_change_carrier", align 4
@__kstrtab_fixed_phy_set_link_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_fixed_phy_set_link_update = external dso_local constant [0 x i8], align 1
@__ksymtab_fixed_phy_set_link_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fixed_phy_set_link_update to i32), ptr @__kstrtab_fixed_phy_set_link_update, ptr @__kstrtabns_fixed_phy_set_link_update }, section "___ksymtab_gpl+fixed_phy_set_link_update", align 4
@__kstrtab_fixed_phy_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_fixed_phy_add = external dso_local constant [0 x i8], align 1
@__ksymtab_fixed_phy_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fixed_phy_add to i32), ptr @__kstrtab_fixed_phy_add, ptr @__kstrtabns_fixed_phy_add }, section "___ksymtab_gpl+fixed_phy_add", align 4
@__kstrtab_fixed_phy_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_fixed_phy_register = external dso_local constant [0 x i8], align 1
@__ksymtab_fixed_phy_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fixed_phy_register to i32), ptr @__kstrtab_fixed_phy_register, ptr @__kstrtabns_fixed_phy_register }, section "___ksymtab_gpl+fixed_phy_register", align 4
@__kstrtab_fixed_phy_register_with_gpiod = external dso_local constant [0 x i8], align 1
@__kstrtabns_fixed_phy_register_with_gpiod = external dso_local constant [0 x i8], align 1
@__ksymtab_fixed_phy_register_with_gpiod = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fixed_phy_register_with_gpiod to i32), ptr @__kstrtab_fixed_phy_register_with_gpiod, ptr @__kstrtabns_fixed_phy_register_with_gpiod }, section "___ksymtab_gpl+fixed_phy_register_with_gpiod", align 4
@__kstrtab_fixed_phy_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_fixed_phy_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_fixed_phy_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fixed_phy_unregister to i32), ptr @__kstrtab_fixed_phy_unregister, ptr @__kstrtabns_fixed_phy_unregister }, section "___ksymtab_gpl+fixed_phy_unregister", align 4
@__initcall__kmod_fixed_phy__347_369_fixed_mdio_bus_init6 = internal global ptr @fixed_mdio_bus_init, section ".initcall6.init", align 4
@pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@phy_fixed_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.23 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_fixed_mdio_bus_exit = internal global ptr @fixed_mdio_bus_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description348 = internal constant [74 x i8] c"fixed_phy.description=Fixed MDIO bus (MDIO bus emulation with fixed PHYs)\00", section ".modinfo", align 1
@__UNIQUE_ID_author349 = internal constant [31 x i8] c"fixed_phy.author=Vitaly Bordug\00", section ".modinfo", align 1
@__UNIQUE_ID_file350 = internal constant [41 x i8] c"fixed_phy.file=drivers/net/phy/fixed_phy\00", section ".modinfo", align 1
@__UNIQUE_ID_license351 = internal constant [22 x i8] c"fixed_phy.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fixed-link\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@fixed_phy_get_gpiod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013error getting GPIO for fixed link %pOF, proceed without\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fixed_phy_get_gpiod\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/phy/fixed_phy.c\00", [36 x i8] zeroinitializer }, align 32
@fixed_phy_get_gpiod._entry_ptr = internal global ptr @fixed_phy_get_gpiod._entry, section ".printk_index", align 4
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Fixed MDIO bus\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Fixed MDIO Bus\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"phy_fixed_ida.xa_lock\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967294]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 1000]
@___asan_gen_.11 = private unnamed_addr constant [13 x i8] c"platform_fmb\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 44, i32 30 }
@___asan_gen_.14 = private unnamed_addr constant [5 x i8] c"pdev\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 43, i32 32 }
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"phy_fixed_ida\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 198, i32 45 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 208, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 208, i32 33 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 211, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 340, i32 41 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 351, i32 23 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [31 x i8] c"../drivers/net/phy/fixed_phy.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 170, i32 8 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author349, ptr @__UNIQUE_ID_description348, ptr @__UNIQUE_ID_file350, ptr @__UNIQUE_ID_license351, ptr @__exitcall_fixed_mdio_bus_exit, ptr @__initcall__kmod_fixed_phy__347_369_fixed_mdio_bus_init6, ptr @__ksymtab_fixed_phy_add, ptr @__ksymtab_fixed_phy_change_carrier, ptr @__ksymtab_fixed_phy_register, ptr @__ksymtab_fixed_phy_register_with_gpiod, ptr @__ksymtab_fixed_phy_set_link_update, ptr @__ksymtab_fixed_phy_unregister, ptr @fixed_mdio_bus_exit, ptr @fixed_phy_get_gpiod._entry, ptr @fixed_phy_get_gpiod._entry_ptr, ptr @platform_fmb, ptr @pdev, ptr @phy_fixed_ida, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_fmb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_fixed_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_phy_get_gpiod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fixed_phy_change_carrier(ptr nocapture noundef readonly %dev, i1 noundef zeroext %new_carrier) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bus = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %addr5 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1), %for.cond.preheader ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1)
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %fp.0 = getelementptr i8, ptr %.pn, i32 -36
  %5 = ptrtoint ptr %fp.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fp.0, align 4
  %7 = ptrtoint ptr %addr5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr5, align 8
  %cmp6 = icmp eq i32 %6, %8
  br i1 %cmp6, label %if.then7, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %lnot9 = xor i1 %new_carrier, true
  %no_carrier = getelementptr i8, ptr %.pn, i32 -8
  %frombool10 = zext i1 %lnot9 to i8
  %9 = ptrtoint ptr %no_carrier to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool10, ptr %no_carrier, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %for.cond.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then7 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fixed_phy_set_link_update(ptr noundef %phydev, ptr noundef %link_update) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %phydev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bus = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %addr4 = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1), %for.cond.preheader ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1)
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %fp.0 = getelementptr i8, ptr %.pn, i32 -36
  %3 = ptrtoint ptr %fp.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fp.0, align 4
  %5 = ptrtoint ptr %addr4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr4, align 8
  %cmp5 = icmp eq i32 %4, %6
  br i1 %cmp5, label %if.then6, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %link_update7 = getelementptr i8, ptr %.pn, i32 -4
  %7 = ptrtoint ptr %link_update7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %link_update, ptr %link_update7, align 4
  %phydev8 = getelementptr i8, ptr %.pn, i32 -32
  %8 = ptrtoint ptr %phydev8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %phydev, ptr %phydev8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %for.cond.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -2, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fixed_phy_add(i32 noundef %irq, i32 noundef %phy_addr, ptr noundef %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @swphy_validate_state(ptr noundef %status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.fixed_phy_add_gpiod.exit_crit_edge, label %if.end.i

entry.fixed_phy_add_gpiod.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %fixed_phy_add_gpiod.exit

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 48) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.fixed_phy_add_gpiod.exit_crit_edge, label %if.end3.i

if.end.i.fixed_phy_add_gpiod.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fixed_phy_add_gpiod.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %irq)
  %cmp4.not.i = icmp eq i32 %irq, -1
  br i1 %cmp4.not.i, label %if.end3.i.if.end7.i_crit_edge, label %if.then5.i

if.end3.i.if.end7.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load ptr, ptr @platform_fmb, align 4
  %arrayidx.i = getelementptr %struct.mii_bus, ptr %1, i32 0, i32 15, i32 %phy_addr
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %irq, ptr %arrayidx.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end3.i.if.end7.i_crit_edge
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %phy_addr, ptr %call7.i.i.i, align 8
  %status8.i = getelementptr inbounds %struct.fixed_phy, ptr %call7.i.i.i, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %status8.i, ptr %status, i32 20)
  %link_gpiod.i = getelementptr inbounds %struct.fixed_phy, ptr %call7.i.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %link_gpiod.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %link_gpiod.i, align 4
  %node.i = getelementptr inbounds %struct.fixed_phy, ptr %call7.i.i.i, i32 0, i32 5
  %6 = load ptr, ptr getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %6, ptr noundef getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1)) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end7.i.fixed_phy_add_gpiod.exit_crit_edge

if.end7.i.fixed_phy_add_gpiod.exit_crit_edge:     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fixed_phy_add_gpiod.exit

if.end.i.i.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %node.i, ptr getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1, i32 1), align 4
  %7 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1), ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.fixed_phy, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %prev3.i.i.i, align 8
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %node.i, ptr %6, align 4
  br label %fixed_phy_add_gpiod.exit

fixed_phy_add_gpiod.exit:                         ; preds = %if.end.i.i.i, %if.end7.i.fixed_phy_add_gpiod.exit_crit_edge, %if.end.i.fixed_phy_add_gpiod.exit_crit_edge, %entry.fixed_phy_add_gpiod.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.fixed_phy_add_gpiod.exit_crit_edge ], [ -12, %if.end.i.fixed_phy_add_gpiod.exit_crit_edge ], [ 0, %if.end7.i.fixed_phy_add_gpiod.exit_crit_edge ], [ 0, %if.end.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fixed_phy_register(i32 noundef %irq, ptr noundef %status, ptr noundef %np) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__fixed_phy_register(i32 noundef %irq, ptr noundef %status, ptr noundef %np, ptr noundef null)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__fixed_phy_register(i32 noundef %irq, ptr noundef %status, ptr noundef %np, ptr noundef %gpiod) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @platform_fmb, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 10
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp.not = icmp eq i32 %2, 2
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool2.not = icmp eq ptr %gpiod, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %tobool.not.i = icmp eq ptr %np, null
  br i1 %tobool.not.i, label %if.then3.if.end9_crit_edge, label %if.end.i

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end.i:                                         ; preds = %if.then3
  %call.i = tail call ptr @of_get_child_by_name(ptr noundef nonnull %np, ptr noundef nonnull @.str) #8
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.if.end9_crit_edge, label %cond.end.i

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

cond.end.i:                                       ; preds = %if.end.i
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %call.i, i32 0, i32 3
  %call5.i = tail call ptr @fwnode_gpiod_get_index(ptr noundef %fwnode.i, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.2) #8
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %land.lhs.true.i, label %cond.end.i.if.end9.sink.split_crit_edge

cond.end.i.if.end9.sink.split_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.sink.split

land.lhs.true.i:                                  ; preds = %cond.end.i
  %magicptr.i = ptrtoint ptr %call5.i to i32
  %3 = zext i32 %magicptr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr.i, label %do.end.i [
    i32 -517, label %fixed_phy_get_gpiod.exit.thread
    i32 -2, label %land.lhs.true.i.if.end9.sink.split_crit_edge
  ]

land.lhs.true.i.if.end9.sink.split_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.sink.split

fixed_phy_get_gpiod.exit.thread:                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @of_node_put(ptr noundef nonnull %call.i) #8
  br label %cleanup

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %call.i) #12
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %do.end.i, %land.lhs.true.i.if.end9.sink.split_crit_edge, %cond.end.i.if.end9.sink.split_crit_edge
  %gpiod.addr.0.ph = phi ptr [ null, %do.end.i ], [ null, %land.lhs.true.i.if.end9.sink.split_crit_edge ], [ %call5.i, %cond.end.i.if.end9.sink.split_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %call.i) #8
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.end.i.if.end9_crit_edge, %if.then3.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %gpiod.addr.0 = phi ptr [ %gpiod, %if.end.if.end9_crit_edge ], [ null, %if.then3.if.end9_crit_edge ], [ null, %if.end.i.if.end9_crit_edge ], [ %gpiod.addr.0.ph, %if.end9.sink.split ]
  %call10 = tail call i32 @ida_alloc_range(ptr noundef nonnull @phy_fixed_ida, i32 noundef 0, i32 noundef 31, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %4 = inttoptr i32 %call10 to ptr
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %call.i101 = tail call i32 @swphy_validate_state(ptr noundef %status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %cmp.i102 = icmp slt i32 %call.i101, 0
  br i1 %cmp.i102, label %if.end14.if.then17_crit_edge, label %if.end.i104

if.end14.if.then17_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.end.i104:                                      ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 48) #11
  %tobool.not.i103 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i103, label %if.end.i104.if.then17_crit_edge, label %if.end3.i

if.end.i104.if.then17_crit_edge:                  ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.end3.i:                                        ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %irq)
  %cmp4.not.i = icmp eq i32 %irq, -1
  br i1 %cmp4.not.i, label %if.end3.i.if.end7.i_crit_edge, label %if.then5.i

if.end3.i.if.end7.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = load ptr, ptr @platform_fmb, align 4
  %arrayidx.i = getelementptr %struct.mii_bus, ptr %6, i32 0, i32 15, i32 %call10
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %irq, ptr %arrayidx.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end3.i.if.end7.i_crit_edge
  %8 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call10, ptr %call7.i.i.i, align 8
  %status8.i = getelementptr inbounds %struct.fixed_phy, ptr %call7.i.i.i, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %status8.i, ptr %status, i32 20)
  %link_gpiod.i = getelementptr inbounds %struct.fixed_phy, ptr %call7.i.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %link_gpiod.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %gpiod.addr.0, ptr %link_gpiod.i, align 4
  %no_carrier.i.i = getelementptr inbounds %struct.fixed_phy, ptr %call7.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %no_carrier.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %no_carrier.i.i, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp ne i8 %12, 0
  %tobool1.not.i.i = icmp eq ptr %gpiod.addr.0, null
  %or.cond.i = or i1 %tobool1.not.i.i, %tobool.not.i.i
  br i1 %or.cond.i, label %if.end7.i.fixed_phy_update.exit.i_crit_edge, label %if.then.i.i

if.end7.i.fixed_phy_update.exit.i_crit_edge:      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fixed_phy_update.exit.i

if.then.i.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %gpiod.addr.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.i.i = icmp ne i32 %call.i.i, 0
  %lnot.ext.i.i = zext i1 %tobool3.i.i to i32
  %13 = ptrtoint ptr %status8.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %lnot.ext.i.i, ptr %status8.i, align 8
  br label %fixed_phy_update.exit.i

fixed_phy_update.exit.i:                          ; preds = %if.then.i.i, %if.end7.i.fixed_phy_update.exit.i_crit_edge
  %node.i = getelementptr inbounds %struct.fixed_phy, ptr %call7.i.i.i, i32 0, i32 5
  %14 = load ptr, ptr getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %14, ptr noundef getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1)) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %fixed_phy_update.exit.i.if.end19_crit_edge

fixed_phy_update.exit.i.if.end19_crit_edge:       ; preds = %fixed_phy_update.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end.i.i.i:                                     ; preds = %fixed_phy_update.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %node.i, ptr getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1, i32 1), align 4
  %15 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1), ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.fixed_phy, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %prev3.i.i.i, align 8
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %node.i, ptr %14, align 4
  br label %if.end19

if.then17:                                        ; preds = %if.end.i104.if.then17_crit_edge, %if.end14.if.then17_crit_edge
  %retval.0.i105.ph = phi i32 [ -12, %if.end.i104.if.then17_crit_edge ], [ %call.i101, %if.end14.if.then17_crit_edge ]
  tail call void @ida_free(ptr noundef nonnull @phy_fixed_ida, i32 noundef %call10) #8
  %18 = inttoptr i32 %retval.0.i105.ph to ptr
  br label %cleanup

if.end19:                                         ; preds = %if.end.i.i.i, %fixed_phy_update.exit.i.if.end19_crit_edge
  %19 = load ptr, ptr @platform_fmb, align 4
  %call21 = tail call ptr @get_phy_device(ptr noundef %19, i32 noundef %call10, i1 noundef zeroext false) #8
  %cmp.i106 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %if.end19.for.cond.i_crit_edge, label %if.end25

if.end19.for.cond.i_crit_edge:                    ; preds = %if.end19
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end19.for.cond.i_crit_edge
  %.pn.in.in.i = phi ptr [ %.pn.in.i, %for.body.i.for.cond.i_crit_edge ], [ getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1), %if.end19.for.cond.i_crit_edge ]
  %20 = ptrtoint ptr %.pn.in.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.in.i, getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1)
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %fp.0.i = getelementptr i8, ptr %.pn.in.i, i32 -36
  %21 = ptrtoint ptr %fp.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fp.0.i, align 4
  %cmp8.i = icmp eq i32 %22, %call10
  br i1 %cmp8.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %fp.0.i.le = getelementptr i8, ptr %.pn.in.i, i32 -36
  %call.i.i.i107 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i) #8
  br i1 %call.i.i.i107, label %if.end.i.i.i108, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i108:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %.pn.in.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i108, %if.then.i.list_del.exit.i_crit_edge
  %29 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %link_gpiod.i109 = getelementptr i8, ptr %.pn.in.i, i32 8
  %31 = ptrtoint ptr %link_gpiod.i109 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %link_gpiod.i109, align 4
  %tobool.not.i110 = icmp eq ptr %32, null
  br i1 %tobool.not.i110, label %list_del.exit.i.if.end.i111_crit_edge, label %if.then10.i

list_del.exit.i.if.end.i111_crit_edge:            ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i111

if.then10.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_put(ptr noundef nonnull %32) #8
  br label %if.end.i111

if.end.i111:                                      ; preds = %if.then10.i, %list_del.exit.i.if.end.i111_crit_edge
  tail call void @kfree(ptr noundef %fp.0.i.le) #8
  tail call void @ida_free(ptr noundef nonnull @phy_fixed_ida, i32 noundef %call10) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %33 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status, align 4
  %link26 = getelementptr inbounds %struct.phy_device, ptr %call21, i32 0, i32 4
  %35 = trunc i32 %34 to i16
  %36 = ptrtoint ptr %link26 to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load = load i16, ptr %link26, align 8
  %bf.value = shl i16 %35, 2
  %bf.shl = and i16 %bf.value, 4
  %bf.clear = and i16 %bf.load, -5
  %bf.set = or i16 %bf.shl, %bf.clear
  store i16 %bf.set, ptr %link26, align 8
  %37 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool28.not = icmp eq i32 %37, 0
  br i1 %tobool28.not, label %if.end25.if.end34_crit_edge, label %if.then29

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %speed = getelementptr inbounds %struct.fixed_phy_status, ptr %status, i32 0, i32 1
  %38 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %speed, align 4
  %speed30 = getelementptr inbounds %struct.phy_device, ptr %call21, i32 0, i32 8
  %40 = ptrtoint ptr %speed30 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %speed30, align 8
  %duplex = getelementptr inbounds %struct.fixed_phy_status, ptr %status, i32 0, i32 2
  %41 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %duplex, align 4
  %duplex31 = getelementptr inbounds %struct.phy_device, ptr %call21, i32 0, i32 9
  %43 = ptrtoint ptr %duplex31 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %duplex31, align 4
  %pause = getelementptr inbounds %struct.fixed_phy_status, ptr %status, i32 0, i32 3
  %44 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pause, align 4
  %pause32 = getelementptr inbounds %struct.phy_device, ptr %call21, i32 0, i32 11
  %46 = ptrtoint ptr %pause32 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %pause32, align 4
  %asym_pause = getelementptr inbounds %struct.fixed_phy_status, ptr %status, i32 0, i32 4
  %47 = ptrtoint ptr %asym_pause to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %asym_pause, align 4
  %asym_pause33 = getelementptr inbounds %struct.phy_device, ptr %call21, i32 0, i32 12
  %49 = ptrtoint ptr %asym_pause33 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %asym_pause33, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end25.if.end34_crit_edge
  %call35 = tail call ptr @of_node_get(ptr noundef %np) #8
  %of_node = getelementptr inbounds %struct.device, ptr %call21, i32 0, i32 27
  %50 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %np, ptr %of_node, align 8
  %51 = ptrtoint ptr %link26 to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load36 = load i16, ptr %link26, align 8
  %bf.set38 = or i16 %bf.load36, 8192
  store i16 %bf.set38, ptr %link26, align 8
  %speed39 = getelementptr inbounds %struct.fixed_phy_status, ptr %status, i32 0, i32 1
  %52 = ptrtoint ptr %speed39 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %speed39, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %53, label %if.end34.sw.default_crit_edge [
    i32 1000, label %sw.bb
    i32 100, label %if.end34.sw.bb42_crit_edge
  ]

if.end34.sw.bb42_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb42

if.end34.sw.default_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

sw.bb:                                            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %supported = getelementptr inbounds %struct.phy_device, ptr %call21, i32 0, i32 16
  %55 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %supported, align 4
  %or.i.i112 = or i32 %56, 48
  store i32 %or.i.i112, ptr %supported, align 4
  br label %sw.bb42

sw.bb42:                                          ; preds = %sw.bb, %if.end34.sw.bb42_crit_edge
  %supported43 = getelementptr inbounds %struct.phy_device, ptr %call21, i32 0, i32 16
  %57 = ptrtoint ptr %supported43 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %supported43, align 4
  %or.i.i114 = or i32 %58, 12
  store i32 %or.i.i114, ptr %supported43, align 4
  br label %sw.default

sw.default:                                       ; preds = %sw.bb42, %if.end34.sw.default_crit_edge
  %supported48 = getelementptr inbounds %struct.phy_device, ptr %call21, i32 0, i32 16
  %59 = ptrtoint ptr %supported48 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %supported48, align 4
  %or.i.i116 = or i32 %60, 3
  store i32 %or.i.i116, ptr %supported48, align 4
  tail call void @phy_advertise_supported(ptr noundef %call21) #8
  %call52 = tail call i32 @phy_device_register(ptr noundef %call21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %sw.default.cleanup_crit_edge, label %if.then54

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then54:                                        ; preds = %sw.default
  tail call void @phy_device_free(ptr noundef %call21) #8
  tail call void @of_node_put(ptr noundef %np) #8
  br label %for.cond.i120

for.cond.i120:                                    ; preds = %for.body.i123.for.cond.i120_crit_edge, %if.then54
  %.pn.in.in.i117 = phi ptr [ getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1), %if.then54 ], [ %.pn.in.i118, %for.body.i123.for.cond.i120_crit_edge ]
  %61 = ptrtoint ptr %.pn.in.in.i117 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn.in.i118 = load ptr, ptr %.pn.in.in.i117, align 4
  %cmp.not.i119 = icmp eq ptr %.pn.in.i118, getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1)
  br i1 %cmp.not.i119, label %for.cond.i120.fixed_phy_del.exit136_crit_edge, label %for.body.i123

for.cond.i120.fixed_phy_del.exit136_crit_edge:    ; preds = %for.cond.i120
  call void @__sanitizer_cov_trace_pc() #10
  br label %fixed_phy_del.exit136

for.body.i123:                                    ; preds = %for.cond.i120
  %fp.0.i121 = getelementptr i8, ptr %.pn.in.i118, i32 -36
  %62 = ptrtoint ptr %fp.0.i121 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fp.0.i121, align 4
  %cmp8.i122 = icmp eq i32 %63, %call10
  br i1 %cmp8.i122, label %if.then.i126, label %for.body.i123.for.cond.i120_crit_edge

for.body.i123.for.cond.i120_crit_edge:            ; preds = %for.body.i123
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i120

if.then.i126:                                     ; preds = %for.body.i123
  %fp.0.i121.le = getelementptr i8, ptr %.pn.in.i118, i32 -36
  %call.i.i.i125 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i118) #8
  br i1 %call.i.i.i125, label %if.end.i.i.i129, label %if.then.i126.list_del.exit.i133_crit_edge

if.then.i126.list_del.exit.i133_crit_edge:        ; preds = %if.then.i126
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i133

if.end.i.i.i129:                                  ; preds = %if.then.i126
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i127 = getelementptr inbounds %struct.list_head, ptr %.pn.in.i118, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i.i127, align 4
  %66 = ptrtoint ptr %.pn.in.i118 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %.pn.in.i118, align 4
  %prev1.i.i.i.i128 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i.i128, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %list_del.exit.i133

list_del.exit.i133:                               ; preds = %if.end.i.i.i129, %if.then.i126.list_del.exit.i133_crit_edge
  %70 = ptrtoint ptr %.pn.in.i118 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i118, align 4
  %prev.i.i130 = getelementptr inbounds %struct.list_head, ptr %.pn.in.i118, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i130 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i130, align 4
  %link_gpiod.i131 = getelementptr i8, ptr %.pn.in.i118, i32 8
  %72 = ptrtoint ptr %link_gpiod.i131 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %link_gpiod.i131, align 4
  %tobool.not.i132 = icmp eq ptr %73, null
  br i1 %tobool.not.i132, label %list_del.exit.i133.if.end.i135_crit_edge, label %if.then10.i134

list_del.exit.i133.if.end.i135_crit_edge:         ; preds = %list_del.exit.i133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i135

if.then10.i134:                                   ; preds = %list_del.exit.i133
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_put(ptr noundef nonnull %73) #8
  br label %if.end.i135

if.end.i135:                                      ; preds = %if.then10.i134, %list_del.exit.i133.if.end.i135_crit_edge
  tail call void @kfree(ptr noundef %fp.0.i121.le) #8
  tail call void @ida_free(ptr noundef nonnull @phy_fixed_ida, i32 noundef %call10) #8
  br label %fixed_phy_del.exit136

fixed_phy_del.exit136:                            ; preds = %if.end.i135, %for.cond.i120.fixed_phy_del.exit136_crit_edge
  %74 = inttoptr i32 %call52 to ptr
  br label %cleanup

cleanup:                                          ; preds = %fixed_phy_del.exit136, %sw.default.cleanup_crit_edge, %if.end.i111, %for.cond.i.cleanup_crit_edge, %if.then17, %if.then12, %fixed_phy_get_gpiod.exit.thread, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.then12 ], [ %18, %if.then17 ], [ %74, %fixed_phy_del.exit136 ], [ %call21, %sw.default.cleanup_crit_edge ], [ inttoptr (i32 -517 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -517 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i111 ], [ %call5.i, %fixed_phy_get_gpiod.exit.thread ], [ inttoptr (i32 -22 to ptr), %for.cond.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fixed_phy_register_with_gpiod(i32 noundef %irq, ptr noundef %status, ptr noundef %gpiod) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__fixed_phy_register(i32 noundef %irq, ptr noundef %status, ptr noundef null, ptr noundef %gpiod)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fixed_phy_unregister(ptr noundef %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @phy_device_remove(ptr noundef %phy) #8
  %of_node = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @of_node_put(ptr noundef %1) #8
  %addr = getelementptr inbounds %struct.mdio_device, ptr %phy, i32 0, i32 6
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.in.i = phi ptr [ getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1), %entry ], [ %.pn.in.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.in.i, getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1)
  br i1 %cmp.not.i, label %for.cond.i.fixed_phy_del.exit_crit_edge, label %for.body.i

for.cond.i.fixed_phy_del.exit_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fixed_phy_del.exit

for.body.i:                                       ; preds = %for.cond.i
  %fp.0.i = getelementptr i8, ptr %.pn.in.i, i32 -36
  %5 = ptrtoint ptr %fp.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fp.0.i, align 4
  %cmp8.i = icmp eq i32 %6, %3
  br i1 %cmp8.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %fp.0.i.le = getelementptr i8, ptr %.pn.in.i, i32 -36
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %link_gpiod.i = getelementptr i8, ptr %.pn.in.i, i32 8
  %15 = ptrtoint ptr %link_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link_gpiod.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %list_del.exit.i.if.end.i_crit_edge, label %if.then10.i

list_del.exit.i.if.end.i_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then10.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpiod_put(ptr noundef nonnull %16) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then10.i, %list_del.exit.i.if.end.i_crit_edge
  tail call void @kfree(ptr noundef %fp.0.i.le) #8
  tail call void @ida_free(ptr noundef nonnull @phy_fixed_ida, i32 noundef %3) #8
  br label %fixed_phy_del.exit

fixed_phy_del.exit:                               ; preds = %if.end.i, %for.cond.i.fixed_phy_del.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_device_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fixed_mdio_bus_init() #4 section ".init.text" align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  %0 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fwnode.i.i, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %0, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.6, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %properties.i.i, align 8
  %8 = call ptr @memset(ptr %id3.i.i, i32 0, i32 20)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  store ptr %call.i.i, ptr @pdev, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call ptr @mdiobus_alloc_size(i32 noundef 0) #8
  store ptr %call.i, ptr @platform_fmb, align 4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end.err_mdiobus_reg_crit_edge, label %if.end6

if.end.err_mdiobus_reg_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mdiobus_reg

if.end6:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 7379561841290981376, ptr %id, align 1
  %name = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.8, ptr %name, align 4
  %priv = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @platform_fmb, ptr %priv, align 8
  %13 = load ptr, ptr @pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %parent = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %parent, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @fixed_mdio_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @fixed_mdio_write, ptr %write, align 8
  %call15 = call i32 @__mdiobus_register(ptr noundef nonnull %call.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %err_mdiobus_alloc

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_mdiobus_alloc:                                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %17 = load ptr, ptr @platform_fmb, align 4
  call void @mdiobus_free(ptr noundef %17) #8
  br label %err_mdiobus_reg

err_mdiobus_reg:                                  ; preds = %err_mdiobus_alloc, %if.end.err_mdiobus_reg_crit_edge
  %ret.0 = phi i32 [ %call15, %err_mdiobus_alloc ], [ -12, %if.end.err_mdiobus_reg_crit_edge ]
  %18 = load ptr, ptr @pdev, align 4
  call void @platform_device_unregister(ptr noundef %18) #8
  br label %cleanup

cleanup:                                          ; preds = %err_mdiobus_reg, %if.end6.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %9, %if.then ], [ %ret.0, %err_mdiobus_reg ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fixed_mdio_bus_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @platform_fmb, align 4
  tail call void @mdiobus_unregister(ptr noundef %0) #8
  %1 = load ptr, ptr @platform_fmb, align 4
  tail call void @mdiobus_free(ptr noundef %1) #8
  %2 = load ptr, ptr @pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %2) #8
  %3 = load ptr, ptr getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1), align 4
  %cmp.not23 = icmp eq ptr %3, getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1)
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in24 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %fp.0 = getelementptr i8, ptr %.pn.in24, i32 -36
  %4 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in24, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in24) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in24, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn.in24 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in24, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in24, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %fp.0) #8
  %cmp.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.fixed_mdio_bus, ptr @platform_fmb, i32 0, i32 1)
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @ida_destroy(ptr noundef nonnull @phy_fixed_ida) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swphy_validate_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_phy_device(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_advertise_supported(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_device_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fixed_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %phy_addr, i32 noundef %reg_num) #2 align 64 {
entry:
  %state = alloca %struct.fixed_phy_status, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %phys = getelementptr inbounds %struct.fixed_mdio_bus, ptr %1, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %phys, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %phys
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %fp.0 = getelementptr i8, ptr %.pn, i32 -36
  %3 = ptrtoint ptr %fp.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fp.0, align 4
  %cmp2 = icmp eq i32 %4, %phy_addr
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %state) #8
  %no_carrier = getelementptr i8, ptr %.pn, i32 -8
  %5 = ptrtoint ptr %no_carrier to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %no_carrier, align 4, !range !57
  %7 = xor i8 %6, 1
  %8 = zext i8 %7 to i32
  %status = getelementptr i8, ptr %.pn, i32 -28
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %status, align 4
  %link_update = getelementptr i8, ptr %.pn, i32 -4
  %10 = ptrtoint ptr %link_update to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link_update, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %phydev = getelementptr i8, ptr %.pn, i32 -32
  %12 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phydev, align 4
  %attached_dev = getelementptr inbounds %struct.phy_device, ptr %13, i32 0, i32 36
  %14 = ptrtoint ptr %attached_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %attached_dev, align 8
  %call = tail call i32 %11(ptr noundef %15, ptr noundef %status) #8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %16 = ptrtoint ptr %no_carrier to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %no_carrier, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.fixed_phy_update.exit_crit_edge

if.end.fixed_phy_update.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fixed_phy_update.exit

land.lhs.true.i:                                  ; preds = %if.end
  %link_gpiod.i = getelementptr i8, ptr %.pn, i32 8
  %18 = ptrtoint ptr %link_gpiod.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link_gpiod.i, align 4
  %tobool1.not.i = icmp eq ptr %19, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.fixed_phy_update.exit_crit_edge, label %if.then.i

land.lhs.true.i.fixed_phy_update.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fixed_phy_update.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.i = icmp ne i32 %call.i, 0
  %lnot.ext.i = zext i1 %tobool3.i to i32
  %20 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %lnot.ext.i, ptr %status, align 4
  br label %fixed_phy_update.exit

fixed_phy_update.exit:                            ; preds = %if.then.i, %land.lhs.true.i.fixed_phy_update.exit_crit_edge, %if.end.fixed_phy_update.exit_crit_edge
  %21 = call ptr @memcpy(ptr %state, ptr %status, i32 20)
  %call9 = call i32 @swphy_read_reg(i32 noundef %reg_num, ptr noundef nonnull %state) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %state) #8
  br label %cleanup

cleanup:                                          ; preds = %fixed_phy_update.exit, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %fixed_phy_update.exit ], [ 65535, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fixed_mdio_write(ptr nocapture noundef readnone %bus, i32 noundef %phy_addr, i32 noundef %reg_num, i16 noundef zeroext %val) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @swphy_read_reg(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !36, !37, !38, !39, !41, !43, !45, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__ksymtab_fixed_phy_change_carrier, !1, !"__ksymtab_fixed_phy_change_carrier", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/fixed_phy.c", i32 65, i32 1}
!2 = !{ptr @__ksymtab_fixed_phy_set_link_update, !3, !"__ksymtab_fixed_phy_set_link_update", i1 false, i1 false}
!3 = !{!"../drivers/net/phy/fixed_phy.c", i32 131, i32 1}
!4 = !{ptr @__ksymtab_fixed_phy_add, !5, !"__ksymtab_fixed_phy_add", i1 false, i1 false}
!5 = !{!"../drivers/net/phy/fixed_phy.c", i32 168, i32 1}
!6 = !{ptr @__ksymtab_fixed_phy_register, !7, !"__ksymtab_fixed_phy_register", i1 false, i1 false}
!7 = !{!"../drivers/net/phy/fixed_phy.c", i32 316, i32 1}
!8 = !{ptr @__ksymtab_fixed_phy_register_with_gpiod, !9, !"__ksymtab_fixed_phy_register_with_gpiod", i1 false, i1 false}
!9 = !{!"../drivers/net/phy/fixed_phy.c", i32 325, i32 1}
!10 = !{ptr @__ksymtab_fixed_phy_unregister, !11, !"__ksymtab_fixed_phy_unregister", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/fixed_phy.c", i32 333, i32 1}
!12 = !{ptr @__initcall__kmod_fixed_phy__347_369_fixed_mdio_bus_init6, !13, !"__initcall__kmod_fixed_phy__347_369_fixed_mdio_bus_init6", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/fixed_phy.c", i32 369, i32 1}
!14 = !{ptr @__exitcall_fixed_mdio_bus_exit, !15, !"__exitcall_fixed_mdio_bus_exit", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/fixed_phy.c", i32 386, i32 1}
!16 = !{ptr @__UNIQUE_ID_description348, !17, !"__UNIQUE_ID_description348", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/fixed_phy.c", i32 388, i32 1}
!18 = !{ptr @__UNIQUE_ID_author349, !19, !"__UNIQUE_ID_author349", i1 false, i1 false}
!19 = !{!"../drivers/net/phy/fixed_phy.c", i32 389, i32 1}
!20 = !{ptr @__UNIQUE_ID_file350, !21, !"__UNIQUE_ID_file350", i1 false, i1 false}
!21 = !{!"../drivers/net/phy/fixed_phy.c", i32 390, i32 1}
!22 = !{ptr @__UNIQUE_ID_license351, !21, !"__UNIQUE_ID_license351", i1 false, i1 false}
!23 = !{ptr @pdev, !24, !"pdev", i1 false, i1 false}
!24 = !{!"../drivers/net/phy/fixed_phy.c", i32 43, i32 32}
!25 = !{ptr @platform_fmb, !26, !"platform_fmb", i1 false, i1 false}
!26 = !{!"../drivers/net/phy/fixed_phy.c", i32 44, i32 30}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/phy/fixed_phy.c", i32 198, i32 45}
!29 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/phy/fixed_phy.c", i32 208, i32 12}
!31 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/phy/fixed_phy.c", i32 208, i32 33}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/phy/fixed_phy.c", i32 211, i32 4}
!35 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @fixed_phy_get_gpiod._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @fixed_phy_get_gpiod._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/phy/fixed_phy.c", i32 340, i32 41}
!41 = distinct !{null, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/phy/fixed_phy.c", i32 350, i32 46}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/phy/fixed_phy.c", i32 351, i32 23}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/phy/fixed_phy.c", i32 170, i32 8}
!47 = !{ptr @phy_fixed_ida, !46, !"phy_fixed_ida", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i8 0, i8 2}
