; ModuleID = '/llk/IR_all_yes/net/core/of_net.c_pt.bc'
source_filename = "../net/core/of_net.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+of_get_phy_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_of_get_phy_mode\09\09\09\09"
module asm "\09.long\09__crc_of_get_phy_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_phy_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_phy_mode\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_phy_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+of_get_mac_address\22, \22a\22\09"
module asm "\09.weak\09__crc_of_get_mac_address\09\09\09\09"
module asm "\09.long\09__crc_of_get_mac_address\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_mac_address:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_mac_address\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_mac_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+of_get_ethdev_address\22, \22a\22\09"
module asm "\09.weak\09__crc_of_get_ethdev_address\09\09\09\09"
module asm "\09.long\09__crc_of_get_ethdev_address\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_get_ethdev_address:\09\09\09\09\09"
module asm "\09.asciz \09\22of_get_ethdev_address\22\09\09\09\09\09"
module asm "__kstrtabns_of_get_ethdev_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phy-mode\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"phy-connection-type\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_of_get_phy_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_phy_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_phy_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_phy_mode to i32), ptr @__kstrtab_of_get_phy_mode, ptr @__kstrtabns_of_get_phy_mode }, section "___ksymtab_gpl+of_get_phy_mode", align 4
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mac-address\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"local-mac-address\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"address\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_of_get_mac_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_mac_address = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_mac_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_mac_address to i32), ptr @__kstrtab_of_get_mac_address, ptr @__kstrtabns_of_get_mac_address }, section "___ksymtab+of_get_mac_address", align 4
@__kstrtab_of_get_ethdev_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_get_ethdev_address = external dso_local constant [0 x i8], align 1
@__ksymtab_of_get_ethdev_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_get_ethdev_address to i32), ptr @__kstrtab_of_get_ethdev_address, ptr @__kstrtabns_of_get_ethdev_address }, section "___ksymtab+of_get_ethdev_address", align 4
@.str.5 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@switch.table.of_get_phy_mode = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.34, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 33, i32 36 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 35, i32 37 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 131, i32 28 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 135, i32 28 }
@___asan_gen_.49 = private constant [21 x i8] c"../net/core/of_net.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 139, i32 28 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 211, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 213, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 215, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 217, i32 10 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 219, i32 10 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 221, i32 10 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 223, i32 10 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 225, i32 10 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 227, i32 10 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 229, i32 10 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 231, i32 10 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 233, i32 10 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 235, i32 10 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 237, i32 10 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 239, i32 10 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 241, i32 10 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 243, i32 10 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 245, i32 10 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 247, i32 10 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 249, i32 10 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 251, i32 10 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 253, i32 10 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 255, i32 10 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 257, i32 10 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 259, i32 10 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 261, i32 10 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 263, i32 10 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 265, i32 10 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 267, i32 10 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 269, i32 10 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 271, i32 10 }
@___asan_gen_.144 = private unnamed_addr constant [29 x i8] c"switch.table.of_get_phy_mode\00", align 1
@llvm.compiler.used = appending global [40 x ptr] [ptr @__ksymtab_of_get_ethdev_address, ptr @__ksymtab_of_get_mac_address, ptr @__ksymtab_of_get_phy_mode, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @switch.table.of_get_phy_mode], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.of_get_phy_mode to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_get_phy_mode(ptr noundef %np, ptr nocapture noundef writeonly %interface) #0 align 64 {
entry:
  %pm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pm) #4
  %0 = ptrtoint ptr %pm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pm, align 4, !annotation !87
  %1 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %interface, align 4
  %call = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull %pm) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end, label %entry.for.cond.preheader_crit_edge

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.preheader

if.end:                                           ; preds = %entry
  %call1 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef nonnull %pm) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end.for.cond.preheader_crit_edge

if.end.for.cond.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  %2 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.020 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %i.020)
  %4 = icmp ult i32 %i.020, 30
  br i1 %4, label %switch.lookup, label %for.body.phy_modes.exit_crit_edge

for.body.phy_modes.exit_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %phy_modes.exit

switch.lookup:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.of_get_phy_mode, i32 0, i32 %i.020
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %phy_modes.exit

phy_modes.exit:                                   ; preds = %switch.lookup, %for.body.phy_modes.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.35, %for.body.phy_modes.exit_crit_edge ]
  %call7 = call i32 @strcasecmp(ptr noundef %3, ptr noundef nonnull %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.then8, label %for.inc

if.then8:                                         ; preds = %phy_modes.exit
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %interface to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %i.020, ptr %interface, align 4
  br label %cleanup

for.inc:                                          ; preds = %phy_modes.exit
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, 30
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then8, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then8 ], [ %call1, %if.end.cleanup_crit_edge ], [ -19, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pm) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_get_mac_address(ptr noundef %np, ptr noundef %addr) #0 align 64 {
entry:
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %np, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @of_find_property(ptr noundef nonnull %np, ptr noundef nonnull @.str.2, ptr noundef null) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.if.end3_crit_edge, label %land.lhs.true.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

land.lhs.true.i:                                  ; preds = %if.end
  %length.i = getelementptr inbounds %struct.property, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp.i = icmp eq i32 %1, 6
  br i1 %cmp.i, label %land.lhs.true1.i, label %land.lhs.true.i.if.end3_crit_edge

land.lhs.true.i.if.end3_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %value.i = getelementptr inbounds %struct.property, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %land.lhs.true1.i.if.end3_crit_edge

land.lhs.true1.i.if.end3_crit_edge:               ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

is_valid_ether_addr.exit.i:                       ; preds = %land.lhs.true1.i
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %8 to i32
  %or.i.i.i = or i32 %5, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.if.end3_crit_edge, label %of_get_mac_addr.exit

is_valid_ether_addr.exit.i.if.end3_crit_edge:     ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

of_get_mac_addr.exit:                             ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %9 = call ptr @memcpy(ptr %addr, ptr %3, i32 6)
  br label %cleanup

if.end3:                                          ; preds = %is_valid_ether_addr.exit.i.if.end3_crit_edge, %land.lhs.true1.i.if.end3_crit_edge, %land.lhs.true.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %call.i22 = tail call ptr @of_find_property(ptr noundef nonnull %np, ptr noundef nonnull @.str.3, ptr noundef null) #4
  %tobool.not.i23 = icmp eq ptr %call.i22, null
  br i1 %tobool.not.i23, label %if.end3.if.end7_crit_edge, label %land.lhs.true.i26

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

land.lhs.true.i26:                                ; preds = %if.end3
  %length.i24 = getelementptr inbounds %struct.property, ptr %call.i22, i32 0, i32 1
  %10 = ptrtoint ptr %length.i24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp.i25 = icmp eq i32 %11, 6
  br i1 %cmp.i25, label %land.lhs.true1.i29, label %land.lhs.true.i26.if.end7_crit_edge

land.lhs.true.i26.if.end7_crit_edge:              ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

land.lhs.true1.i29:                               ; preds = %land.lhs.true.i26
  %value.i27 = getelementptr inbounds %struct.property, ptr %call.i22, i32 0, i32 2
  %12 = ptrtoint ptr %value.i27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %value.i27, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i.i28 = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i.i28, label %is_valid_ether_addr.exit.i34, label %land.lhs.true1.i29.if.end7_crit_edge

land.lhs.true1.i29.if.end7_crit_edge:             ; preds = %land.lhs.true1.i29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

is_valid_ether_addr.exit.i34:                     ; preds = %land.lhs.true1.i29
  %add.ptr.i.i.i30 = getelementptr i8, ptr %13, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i.i30 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i.i30, align 2
  %conv.i.i.i31 = zext i16 %18 to i32
  %or.i.i.i32 = or i32 %15, %conv.i.i.i31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i32)
  %cmp.i.i.not.i33 = icmp eq i32 %or.i.i.i32, 0
  br i1 %cmp.i.i.not.i33, label %is_valid_ether_addr.exit.i34.if.end7_crit_edge, label %of_get_mac_addr.exit37

is_valid_ether_addr.exit.i34.if.end7_crit_edge:   ; preds = %is_valid_ether_addr.exit.i34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

of_get_mac_addr.exit37:                           ; preds = %is_valid_ether_addr.exit.i34
  call void @__sanitizer_cov_trace_pc() #6
  %19 = call ptr @memcpy(ptr %addr, ptr %13, i32 6)
  br label %cleanup

if.end7:                                          ; preds = %is_valid_ether_addr.exit.i34.if.end7_crit_edge, %land.lhs.true1.i29.if.end7_crit_edge, %land.lhs.true.i26.if.end7_crit_edge, %if.end3.if.end7_crit_edge
  %call.i38 = tail call ptr @of_find_property(ptr noundef nonnull %np, ptr noundef nonnull @.str.4, ptr noundef null) #4
  %tobool.not.i39 = icmp eq ptr %call.i38, null
  br i1 %tobool.not.i39, label %if.end7.if.end11_crit_edge, label %land.lhs.true.i42

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true.i42:                                ; preds = %if.end7
  %length.i40 = getelementptr inbounds %struct.property, ptr %call.i38, i32 0, i32 1
  %20 = ptrtoint ptr %length.i40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %21)
  %cmp.i41 = icmp eq i32 %21, 6
  br i1 %cmp.i41, label %land.lhs.true1.i45, label %land.lhs.true.i42.if.end11_crit_edge

land.lhs.true.i42.if.end11_crit_edge:             ; preds = %land.lhs.true.i42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true1.i45:                               ; preds = %land.lhs.true.i42
  %value.i43 = getelementptr inbounds %struct.property, ptr %call.i38, i32 0, i32 2
  %22 = ptrtoint ptr %value.i43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %value.i43, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not.i.i44 = icmp eq i32 %26, 0
  br i1 %tobool.i.not.i.i44, label %is_valid_ether_addr.exit.i50, label %land.lhs.true1.i45.if.end11_crit_edge

land.lhs.true1.i45.if.end11_crit_edge:            ; preds = %land.lhs.true1.i45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

is_valid_ether_addr.exit.i50:                     ; preds = %land.lhs.true1.i45
  %add.ptr.i.i.i46 = getelementptr i8, ptr %23, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i.i46 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i.i46, align 2
  %conv.i.i.i47 = zext i16 %28 to i32
  %or.i.i.i48 = or i32 %25, %conv.i.i.i47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i48)
  %cmp.i.i.not.i49 = icmp eq i32 %or.i.i.i48, 0
  br i1 %cmp.i.i.not.i49, label %is_valid_ether_addr.exit.i50.if.end11_crit_edge, label %of_get_mac_addr.exit53

is_valid_ether_addr.exit.i50.if.end11_crit_edge:  ; preds = %is_valid_ether_addr.exit.i50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

of_get_mac_addr.exit53:                           ; preds = %is_valid_ether_addr.exit.i50
  call void @__sanitizer_cov_trace_pc() #6
  %29 = call ptr @memcpy(ptr %addr, ptr %23, i32 6)
  br label %cleanup

if.end11:                                         ; preds = %is_valid_ether_addr.exit.i50.if.end11_crit_edge, %land.lhs.true1.i45.if.end11_crit_edge, %land.lhs.true.i42.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  %call.i54 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %np) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #4
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %len.i, align 4, !annotation !87
  %tobool.not.i55 = icmp eq ptr %call.i54, null
  br i1 %tobool.not.i55, label %if.end.i, label %if.then.i56

if.then.i56:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %call.i54, i32 0, i32 3
  %call1.i = tail call i32 @nvmem_get_mac_address(ptr noundef %dev.i, ptr noundef %addr) #4
  tail call void @put_device(ptr noundef %dev.i) #4
  br label %of_get_mac_addr_nvmem.exit

if.end.i:                                         ; preds = %if.end11
  %call3.i = tail call ptr @of_nvmem_cell_get(ptr noundef nonnull %np, ptr noundef nonnull @.str.2) #4
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %call3.i to i32
  br label %of_get_mac_addr_nvmem.exit

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = call ptr @nvmem_cell_read(ptr noundef %call3.i, ptr noundef nonnull %len.i) #4
  call void @nvmem_cell_put(ptr noundef %call3.i) #4
  %cmp.i32.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i32.i, label %if.then10.i, label %if.end12.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %call8.i to i32
  br label %of_get_mac_addr_nvmem.exit

if.end12.i:                                       ; preds = %if.end7.i
  %33 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %34)
  %cmp.not.i = icmp eq i32 %34, 6
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end12.i.if.then14.i_crit_edge

if.end12.i.if.then14.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

lor.lhs.false.i:                                  ; preds = %if.end12.i
  %35 = ptrtoint ptr %call8.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call8.i, align 4
  %37 = and i32 %36, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i.not.i.i57 = icmp eq i32 %37, 0
  br i1 %tobool.i.not.i.i57, label %is_valid_ether_addr.exit.i62, label %lor.lhs.false.i.if.then14.i_crit_edge

lor.lhs.false.i.if.then14.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

is_valid_ether_addr.exit.i62:                     ; preds = %lor.lhs.false.i
  %add.ptr.i.i.i58 = getelementptr i8, ptr %call8.i, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i.i58 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i.i.i58, align 2
  %conv.i.i.i59 = zext i16 %39 to i32
  %or.i.i.i60 = or i32 %36, %conv.i.i.i59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i60)
  %cmp.i.i.not.i61 = icmp eq i32 %or.i.i.i60, 0
  br i1 %cmp.i.i.not.i61, label %is_valid_ether_addr.exit.i62.if.then14.i_crit_edge, label %if.end15.i

is_valid_ether_addr.exit.i62.if.then14.i_crit_edge: ; preds = %is_valid_ether_addr.exit.i62
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14.i

if.then14.i:                                      ; preds = %is_valid_ether_addr.exit.i62.if.then14.i_crit_edge, %lor.lhs.false.i.if.then14.i_crit_edge, %if.end12.i.if.then14.i_crit_edge
  call void @kfree(ptr noundef %call8.i) #4
  br label %of_get_mac_addr_nvmem.exit

if.end15.i:                                       ; preds = %is_valid_ether_addr.exit.i62
  call void @__sanitizer_cov_trace_pc() #6
  %40 = call ptr @memcpy(ptr %addr, ptr %call8.i, i32 6)
  call void @kfree(ptr noundef %call8.i) #4
  br label %of_get_mac_addr_nvmem.exit

of_get_mac_addr_nvmem.exit:                       ; preds = %if.end15.i, %if.then14.i, %if.then10.i, %if.then5.i, %if.then.i56
  %retval.0.i63 = phi i32 [ %call1.i, %if.then.i56 ], [ %31, %if.then5.i ], [ %32, %if.then10.i ], [ -22, %if.then14.i ], [ 0, %if.end15.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #4
  br label %cleanup

cleanup:                                          ; preds = %of_get_mac_addr_nvmem.exit, %of_get_mac_addr.exit53, %of_get_mac_addr.exit37, %of_get_mac_addr.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i63, %of_get_mac_addr_nvmem.exit ], [ -19, %entry.cleanup_crit_edge ], [ 0, %of_get_mac_addr.exit ], [ 0, %of_get_mac_addr.exit37 ], [ 0, %of_get_mac_addr.exit53 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_get_ethdev_address(ptr noundef %np, ptr noundef %dev) #0 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #4
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %call = call i32 @of_get_mac_address(ptr noundef %np, ptr noundef nonnull %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmem_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_cell_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/core/of_net.c", i32 33, i32 36}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/core/of_net.c", i32 35, i32 37}
!4 = !{ptr @__ksymtab_of_get_phy_mode, !5, !"__ksymtab_of_get_phy_mode", i1 false, i1 false}
!5 = !{!"../net/core/of_net.c", i32 47, i32 1}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/core/of_net.c", i32 131, i32 28}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/core/of_net.c", i32 135, i32 28}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/core/of_net.c", i32 139, i32 28}
!12 = !{ptr @__ksymtab_of_get_mac_address, !13, !"__ksymtab_of_get_mac_address", i1 false, i1 false}
!13 = !{!"../net/core/of_net.c", i32 145, i32 1}
!14 = !{ptr @__ksymtab_of_get_ethdev_address, !15, !"__ksymtab_of_get_ethdev_address", i1 false, i1 false}
!15 = !{!"../net/core/of_net.c", i32 170, i32 1}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/phy.h", i32 211, i32 10}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/phy.h", i32 213, i32 10}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/phy.h", i32 215, i32 10}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/phy.h", i32 217, i32 10}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/phy.h", i32 219, i32 10}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/phy.h", i32 221, i32 10}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/phy.h", i32 223, i32 10}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/phy.h", i32 225, i32 10}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/phy.h", i32 227, i32 10}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/phy.h", i32 229, i32 10}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/phy.h", i32 231, i32 10}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/phy.h", i32 233, i32 10}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/phy.h", i32 235, i32 10}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/phy.h", i32 237, i32 10}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/phy.h", i32 239, i32 10}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/phy.h", i32 241, i32 10}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/phy.h", i32 243, i32 10}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../include/linux/phy.h", i32 245, i32 10}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/linux/phy.h", i32 247, i32 10}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/phy.h", i32 249, i32 10}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/phy.h", i32 251, i32 10}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/phy.h", i32 253, i32 10}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/phy.h", i32 255, i32 10}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../include/linux/phy.h", i32 257, i32 10}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/linux/phy.h", i32 259, i32 10}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/phy.h", i32 261, i32 10}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/linux/phy.h", i32 263, i32 10}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../include/linux/phy.h", i32 265, i32 10}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/phy.h", i32 267, i32 10}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/phy.h", i32 269, i32 10}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/phy.h", i32 271, i32 10}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"auto-init"}
