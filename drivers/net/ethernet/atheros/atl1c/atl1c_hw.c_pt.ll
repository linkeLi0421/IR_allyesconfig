; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/atheros/atl1c/atl1c_hw.c_pt.bc'
source_filename = "../drivers/net/ethernet/atheros/atl1c/atl1c_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.atl1c_hw = type { ptr, ptr, i32, i32, i32, i32, i16, i16, i16, i16, i8, i16, i16, %struct.spinlock, i32, i8, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i8, i8, i32, i32, [6 x i8], [6 x i8], i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atl1c_adapter = type { ptr, ptr, i32, %struct.atl1c_hw, %struct.atl1c_hw_stats, %struct.mii_if_info, i16, i32, i32, i32, i32, i32, i8, i32, i16, i16, %struct.spinlock, %struct.atomic_t, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.atl1c_ring_header, [4 x %struct.atl1c_tpd_ring], [4 x %struct.atl1c_rfd_ring], [4 x %struct.atl1c_rrd_ring], i32 }
%struct.atl1c_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.atl1c_ring_header = type { ptr, i32, i32 }
%struct.atl1c_tpd_ring = type { ptr, ptr, i32, i16, i16, i16, i16, %struct.atomic_t, ptr, %struct.napi_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.atl1c_rfd_ring = type { ptr, i32, i16, i16, i16, i16, ptr }
%struct.atl1c_rrd_ring = type { ptr, ptr, i32, i16, i16, i16, i16, i16, %struct.napi_struct, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.144, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.144 = type { ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@atl1c_phy_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 584, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error enable PHY linkChange Interrupt\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atl1c_phy_reset\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/atheros/atl1c/atl1c_hw.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atl1c_phy_reset._entry_ptr = internal global ptr @atl1c_phy_reset._entry, section ".printk_index", align 4
@atl1c_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 604, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Error get phy ID\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atl1c_phy_init\00", [17 x i8] zeroinitializer }, align 32
@atl1c_phy_init._entry_ptr = internal global ptr @atl1c_phy_init._entry, section ".printk_index", align 4
@atl1c_phy_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 613, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error Setting up Auto-Negotiation\0A\00", [61 x i8] zeroinitializer }, align 32
@atl1c_phy_init._entry_ptr.9 = internal global ptr @atl1c_phy_init._entry.7, section ".printk_index", align 4
@atl1c_phy_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 632, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Wrong Media type %d\0A\00", [43 x i8] zeroinitializer }, align 32
@atl1c_phy_init._entry_ptr.12 = internal global ptr @atl1c_phy_init._entry.10, section ".printk_index", align 4
@atl1c_phy_to_ps_link.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"atl1c\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atl1c_phy_to_ps_link\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"phy autoneg failed\0A\00", [44 x i8] zeroinitializer }, align 32
@atl1c_phy_to_ps_link.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 -68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"get speed and duplex failed\0A\00", [35 x i8] zeroinitializer }, align 32
@atl1c_power_saving.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 -50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atl1c_power_saving\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: write phy MII_IER failed.\0A\00", [33 x i8] zeroinitializer }, align 32
@atl1c_driver_name = external dso_local global [0 x i8], align 1
@atl1c_power_saving.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 0, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: suspend MAC=%x,MASTER=%x,PHY=0x%x,WOL=%x\0A\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.21 = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 16384, i64 32768]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 583, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 604, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 612, i32 5 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 631, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 740, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 751, i32 7 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 824, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [49 x i8] c"../drivers/net/ethernet/atheros/atl1c/atl1c_hw.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 831, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @atl1c_phy_init._entry, ptr @atl1c_phy_init._entry.10, ptr @atl1c_phy_init._entry.7, ptr @atl1c_phy_init._entry_ptr, ptr @atl1c_phy_init._entry_ptr.12, ptr @atl1c_phy_init._entry_ptr.9, ptr @atl1c_phy_reset._entry, ptr @atl1c_phy_reset._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_phy_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_phy_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1c_phy_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1c_check_eeprom_exist(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hibernate = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 20
  %0 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hibernate, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr14 = getelementptr i8, ptr %3, i32 4360
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7
  br i1 %tobool.not, label %if.else, label %if.then, !prof !46

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 4360
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !48
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %data.0 = phi i32 [ %8, %if.then ], [ %9, %if.else ]
  %and = and i32 %data.0, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %do.body21, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body21:                                        ; preds = %do.end
  %10 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hibernate, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool23.not = icmp eq i8 %11, 0
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %add.ptr49 = getelementptr i8, ptr %13, i32 5120
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #7
  br i1 %tobool23.not, label %if.else45, label %if.then30, !prof !46

if.then30:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %add.ptr41 = getelementptr i8, ptr %16, i32 5120
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #7, !srcloc !48
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  br label %do.end55

if.else45:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %19 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  br label %do.end55

do.end55:                                         ; preds = %if.else45, %if.then30
  %data.1 = phi i32 [ %18, %if.then30 ], [ %19, %if.else45 ]
  %data.1.lobit = lshr i32 %data.1, 31
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end.cleanup_crit_edge ], [ %data.1.lobit, %do.end55 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atl1c_hw_set_mac_addr(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %mac_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %mac_addr, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx1 = getelementptr i8, ptr %mac_addr, i32 3
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl3 = shl nuw nsw i32 %conv2, 16
  %or = or i32 %shl3, %shl
  %arrayidx4 = getelementptr i8, ptr %mac_addr, i32 4
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %arrayidx8 = getelementptr i8, ptr %mac_addr, i32 5
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %or10 = or i32 %or7, %conv9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %or10)
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 5256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #7, !srcloc !55
  %11 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mac_addr, align 1
  %conv13 = zext i8 %12 to i32
  %shl14 = shl nuw nsw i32 %conv13, 8
  %arrayidx15 = getelementptr i8, ptr %mac_addr, i32 1
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %14 to i32
  %or17 = or i32 %shl14, %conv16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %add.ptr23 = getelementptr i8, ptr %17, i32 5260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %15) #7, !srcloc !55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @atl1c_read_eeprom(ptr nocapture noundef readonly %hw, i32 noundef %offset, ptr nocapture noundef writeonly %p_value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %offset, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %hibernate = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 20
  %0 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hibernate, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr17 = getelementptr i8, ptr %3, i32 4848
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #7
  br i1 %tobool2.not, label %if.else, label %if.then5, !prof !46

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %add.ptr10 = getelementptr i8, ptr %6, i32 4848
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #7, !srcloc !48
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  br label %do.end

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then5
  %otp_ctrl_data.0 = phi i32 [ %8, %if.then5 ], [ %9, %if.else ]
  %and22 = and i32 %otp_ctrl_data.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body25, label %do.end.do.body31_crit_edge

do.end.do.body31_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body31

do.body25:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %or = or i32 %otp_ctrl_data.0, 2
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %add.ptr29 = getelementptr i8, ptr %12, i32 4848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %10) #7, !srcloc !55
  br label %do.body31

do.body31:                                        ; preds = %do.body25, %do.end.do.body31_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %add.ptr35 = getelementptr i8, ptr %14, i32 4804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 0) #7, !srcloc !55
  %and36 = shl i32 %offset, 16
  %shl = and i32 %and36, 67043328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %add.ptr41 = getelementptr i8, ptr %17, i32 4800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %15) #7, !srcloc !55
  br label %for.body

for.cond:                                         ; preds = %do.end76
  %inc = add nuw nsw i32 %i.0208, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.0208)
  %cmp = icmp ult i32 %i.0208, 9
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.cond.if.end157_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.if.end157_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %do.body31
  %cmp209 = phi i1 [ true, %do.body31 ], [ %cmp, %for.cond.for.body_crit_edge ]
  %i.0208 = phi i32 [ 0, %do.body31 ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 21474800) #7
  %19 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hibernate, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool44.not = icmp eq i8 %20, 0
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %add.ptr70 = getelementptr i8, ptr %22, i32 4800
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #7
  br i1 %tobool44.not, label %if.else66, label %if.then51, !prof !46

if.then51:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %add.ptr62 = getelementptr i8, ptr %25, i32 4800
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #7, !srcloc !48
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  br label %do.end76

if.else66:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %28 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %do.end76

do.end76:                                         ; preds = %if.else66, %if.then51
  %control.1 = phi i32 [ %27, %if.then51 ], [ %28, %if.else66 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %control.1)
  %tobool78.not = icmp sgt i32 %control.1, -1
  br i1 %tobool78.not, label %for.cond, label %do.body84

do.body84:                                        ; preds = %do.end76
  %29 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %hibernate, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool86.not = icmp eq i8 %30, 0
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw, align 4
  %add.ptr112 = getelementptr i8, ptr %32, i32 4800
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr112) #7
  br i1 %tobool86.not, label %if.else108, label %if.then93, !prof !46

if.then93:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  %add.ptr104 = getelementptr i8, ptr %35, i32 4800
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104) #7, !srcloc !48
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  br label %do.body119

if.else108:                                       ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #9
  %38 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  br label %do.body119

do.body119:                                       ; preds = %if.else108, %if.then93
  %data.0 = phi i32 [ %37, %if.then93 ], [ %38, %if.else108 ]
  %39 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %hibernate, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool121.not = icmp eq i8 %40, 0
  %41 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw, align 4
  %add.ptr147 = getelementptr i8, ptr %42, i32 4804
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr147) #7
  br i1 %tobool121.not, label %if.else143, label %if.then128, !prof !46

if.then128:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %44 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw, align 4
  %add.ptr139 = getelementptr i8, ptr %45, i32 4804
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr139) #7, !srcloc !48
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  br label %do.end153

if.else143:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #9
  %48 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  br label %do.end153

do.end153:                                        ; preds = %if.else143, %if.then128
  %storemerge = phi i32 [ %48, %if.else143 ], [ %47, %if.then128 ]
  %or156 = tail call i32 @llvm.fshl.i32(i32 %data.0, i32 %storemerge, i32 16)
  %49 = tail call i32 @llvm.bswap.i32(i32 %or156)
  %50 = ptrtoint ptr %p_value to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %p_value, align 4
  br label %if.end157

if.end157:                                        ; preds = %do.end153, %for.cond.if.end157_crit_edge
  %cmp207 = phi i1 [ %cmp209, %do.end153 ], [ %cmp, %for.cond.if.end157_crit_edge ]
  br i1 %tobool23.not, label %do.body161, label %if.end157.cleanup_crit_edge

if.end157.cleanup_crit_edge:                      ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body161:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %51 = tail call i32 @llvm.bswap.i32(i32 %otp_ctrl_data.0)
  %52 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw, align 4
  %add.ptr165 = getelementptr i8, ptr %53, i32 4848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr165, i32 %51) #7, !srcloc !55
  br label %cleanup

cleanup:                                          ; preds = %do.body161, %if.end157.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %cmp207, %do.body161 ], [ %cmp207, %if.end157.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1c_read_mac_addr(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data.i) #7
  %0 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data.i, align 2, !annotation !73
  %perm_mac_addr.i = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 38
  %hibernate.i.i = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 20
  %1 = ptrtoint ptr %hibernate.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %hibernate.i.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.i = icmp eq i8 %2, 0
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %4, i32 5256
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i) #7
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !46

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %7, i32 5256
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #7, !srcloc !48
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  br label %do.body19.i.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  br label %do.body19.i.i

do.body19.i.i:                                    ; preds = %if.else.i.i, %if.then.i.i
  %addr.sroa.0.0.i.i = phi i32 [ %9, %if.then.i.i ], [ %10, %if.else.i.i ]
  %11 = ptrtoint ptr %hibernate.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hibernate.i.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool21.not.i.i = icmp eq i8 %12, 0
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %add.ptr51.i.i = getelementptr i8, ptr %14, i32 5260
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i.i) #7
  br i1 %tobool21.not.i.i, label %if.else46.i.i, label %if.then28.i.i, !prof !46

if.then28.i.i:                                    ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %add.ptr41.i.i = getelementptr i8, ptr %17, i32 5260
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i.i) #7, !srcloc !48
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  br label %do.end58.i.i

if.else46.i.i:                                    ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  br label %do.end58.i.i

do.end58.i.i:                                     ; preds = %if.else46.i.i, %if.then28.i.i
  %addr.sroa.6.0.i.i = phi i32 [ %19, %if.then28.i.i ], [ %20, %if.else46.i.i ]
  %arrayidx60.i.i = getelementptr %struct.atl1c_hw, ptr %hw, i32 0, i32 38, i32 2
  %21 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %addr.sroa.0.0.i.i, ptr %arrayidx60.i.i, align 4
  %conv.i.i = trunc i32 %addr.sroa.6.0.i.i to i16
  %22 = ptrtoint ptr %perm_mac_addr.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i.i, ptr %perm_mac_addr.i, align 2
  %23 = load i32, ptr %perm_mac_addr.i, align 4
  %24 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not.i.i.i = icmp eq i32 %24, 0
  br i1 %tobool.i.not.i.i.i, label %atl1c_read_current_addr.exit.i, label %do.end58.i.i.do.body.i_crit_edge

do.end58.i.i.do.body.i_crit_edge:                 ; preds = %do.end58.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

atl1c_read_current_addr.exit.i:                   ; preds = %do.end58.i.i
  %add.ptr.i.i.i.i = getelementptr %struct.atl1c_hw, ptr %hw, i32 0, i32 38, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %26 to i32
  %or.i.i.i.i = or i32 %23, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.i.not.i = icmp eq i32 %or.i.i.i.i, 0
  br i1 %cmp.i.i.i.not.i, label %atl1c_read_current_addr.exit.i.do.body.i_crit_edge, label %atl1c_get_permanent_address.exit.thread12

atl1c_read_current_addr.exit.i.do.body.i_crit_edge: ; preds = %atl1c_read_current_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

atl1c_get_permanent_address.exit.thread12:        ; preds = %atl1c_read_current_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data.i) #7
  br label %if.end

do.body.i:                                        ; preds = %atl1c_read_current_addr.exit.i.do.body.i_crit_edge, %do.end58.i.i.do.body.i_crit_edge
  %27 = ptrtoint ptr %hibernate.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hibernate.i.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %add.ptr16.i = getelementptr i8, ptr %30, i32 4848
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #7
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i, !prof !46

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 4
  %add.ptr9.i = getelementptr i8, ptr %33, i32 4848
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #7, !srcloc !48
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  br label %do.end.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  br label %do.end.i

do.end.i:                                         ; preds = %if.else.i, %if.then3.i
  %otp_ctrl_data.0.i = phi i32 [ %35, %if.then3.i ], [ %36, %if.else.i ]
  %37 = ptrtoint ptr %hibernate.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hibernate.i.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i230.i = icmp eq i8 %38, 0
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw, align 4
  %add.ptr14.i231.i = getelementptr i8, ptr %40, i32 4360
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i231.i) #7
  br i1 %tobool.not.i230.i, label %if.else.i234.i, label %if.then.i233.i, !prof !46

if.then.i233.i:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 4
  %add.ptr7.i232.i = getelementptr i8, ptr %43, i32 4360
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i232.i) #7, !srcloc !48
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  br label %do.end.i.i

if.else.i234.i:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = tail call i32 @llvm.bswap.i32(i32 %41) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.else.i234.i, %if.then.i233.i
  %data.0.i.i = phi i32 [ %45, %if.then.i233.i ], [ %46, %if.else.i234.i ]
  %and.i.i = and i32 %data.0.i.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool18.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool18.not.i.i, label %do.body21.i.i, label %do.end.i.i.if.then23.i_crit_edge

do.end.i.i.if.then23.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i

do.body21.i.i:                                    ; preds = %do.end.i.i
  %47 = ptrtoint ptr %hibernate.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %hibernate.i.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool23.not.i.i = icmp eq i8 %48, 0
  %49 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw, align 4
  %add.ptr49.i.i = getelementptr i8, ptr %50, i32 5120
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49.i.i) #7
  br i1 %tobool23.not.i.i, label %if.else45.i.i, label %if.then30.i.i, !prof !46

if.then30.i.i:                                    ; preds = %do.body21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  %52 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw, align 4
  %add.ptr41.i235.i = getelementptr i8, ptr %53, i32 5120
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i235.i) #7, !srcloc !48
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  br label %atl1c_check_eeprom_exist.exit.i

if.else45.i.i:                                    ; preds = %do.body21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = tail call i32 @llvm.bswap.i32(i32 %51) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  br label %atl1c_check_eeprom_exist.exit.i

atl1c_check_eeprom_exist.exit.i:                  ; preds = %if.else45.i.i, %if.then30.i.i
  %data.1.i.i = phi i32 [ %55, %if.then30.i.i ], [ %56, %if.else45.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %data.1.i.i)
  %tobool22.not.i = icmp sgt i32 %data.1.i.i, -1
  br i1 %tobool22.not.i, label %atl1c_check_eeprom_exist.exit.i.if.end145.i_crit_edge, label %atl1c_check_eeprom_exist.exit.i.if.then23.i_crit_edge

atl1c_check_eeprom_exist.exit.i.if.then23.i_crit_edge: ; preds = %atl1c_check_eeprom_exist.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i

atl1c_check_eeprom_exist.exit.i.if.end145.i_crit_edge: ; preds = %atl1c_check_eeprom_exist.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145.i

if.then23.i:                                      ; preds = %atl1c_check_eeprom_exist.exit.i.if.then23.i_crit_edge, %do.end.i.i.if.then23.i_crit_edge
  %nic_type.i = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 2
  %57 = ptrtoint ptr %nic_type.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nic_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %switch.i = icmp ult i32 %58, 2
  %and.i = and i32 %otp_ctrl_data.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool27.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %switch.i, i1 %tobool27.not.i, i1 false
  br i1 %or.cond.i, label %if.then28.i, label %if.then23.i.if.end41.i_crit_edge

if.then23.i.if.end41.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

if.then28.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %otp_ctrl_data.0.i, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %59 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %60 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw, align 4
  %add.ptr33.i = getelementptr i8, ptr %61, i32 4848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %59) #7, !srcloc !55
  %62 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw, align 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @msleep(i32 noundef 1) #7
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then28.i, %if.then23.i.if.end41.i_crit_edge
  %otp_ctrl_data.1.i = phi i32 [ %or.i, %if.then28.i ], [ %otp_ctrl_data.0.i, %if.then23.i.if.end41.i_crit_edge ]
  %65 = ptrtoint ptr %nic_type.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nic_type.i, align 4
  %67 = and i32 %66, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %switch227.i = icmp eq i32 %67, 2
  br i1 %switch227.i, label %if.then47.i, label %if.end41.i.do.body58.i_crit_edge

if.end41.i.do.body58.i_crit_edge:                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body58.i

if.then47.i:                                      ; preds = %if.end41.i
  %call.i.i.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i236.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i236.i, label %if.else.i237.i, label %if.then47.i.atl1c_read_phy_dbg.exit.i_crit_edge, !prof !46

if.then47.i.atl1c_read_phy_dbg.exit.i_crit_edge:  ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_read_phy_dbg.exit.i

if.else.i237.i:                                   ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i.i = call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, ptr noundef nonnull %phy_data.i) #7
  br label %atl1c_read_phy_dbg.exit.i

atl1c_read_phy_dbg.exit.i:                        ; preds = %if.else.i237.i, %if.then47.i.atl1c_read_phy_dbg.exit.i_crit_edge
  %68 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %phy_data.i, align 2
  %70 = and i16 %69, -129
  store i16 %70, ptr %phy_data.i, align 2
  %call.i.i239.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i239.i)
  %tobool.not.i240.i = icmp eq i32 %call.i.i239.i, 0
  br i1 %tobool.not.i240.i, label %if.else.i242.i, label %atl1c_read_phy_dbg.exit.i.atl1c_write_phy_dbg.exit.i_crit_edge, !prof !46

atl1c_read_phy_dbg.exit.i.atl1c_write_phy_dbg.exit.i_crit_edge: ; preds = %atl1c_read_phy_dbg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_write_phy_dbg.exit.i

if.else.i242.i:                                   ; preds = %atl1c_read_phy_dbg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i241.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, i16 noundef zeroext %70) #7
  br label %atl1c_write_phy_dbg.exit.i

atl1c_write_phy_dbg.exit.i:                       ; preds = %if.else.i242.i, %atl1c_read_phy_dbg.exit.i.atl1c_write_phy_dbg.exit.i_crit_edge
  %call.i.i244.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 59) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i244.i)
  %tobool.not.i245.i = icmp eq i32 %call.i.i244.i, 0
  br i1 %tobool.not.i245.i, label %if.else.i247.i, label %atl1c_write_phy_dbg.exit.i.atl1c_read_phy_dbg.exit249.i_crit_edge, !prof !46

atl1c_write_phy_dbg.exit.i.atl1c_read_phy_dbg.exit249.i_crit_edge: ; preds = %atl1c_write_phy_dbg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_read_phy_dbg.exit249.i

if.else.i247.i:                                   ; preds = %atl1c_write_phy_dbg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i246.i = call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, ptr noundef nonnull %phy_data.i) #7
  br label %atl1c_read_phy_dbg.exit249.i

atl1c_read_phy_dbg.exit249.i:                     ; preds = %if.else.i247.i, %atl1c_write_phy_dbg.exit.i.atl1c_read_phy_dbg.exit249.i_crit_edge
  %71 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %phy_data.i, align 2
  %73 = or i16 %72, 8
  store i16 %73, ptr %phy_data.i, align 2
  %call.i.i250.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 59) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i250.i)
  %tobool.not.i251.i = icmp eq i32 %call.i.i250.i, 0
  br i1 %tobool.not.i251.i, label %if.else.i253.i, label %atl1c_read_phy_dbg.exit249.i.atl1c_write_phy_dbg.exit255.i_crit_edge, !prof !46

atl1c_read_phy_dbg.exit249.i.atl1c_write_phy_dbg.exit255.i_crit_edge: ; preds = %atl1c_read_phy_dbg.exit249.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_write_phy_dbg.exit255.i

if.else.i253.i:                                   ; preds = %atl1c_read_phy_dbg.exit249.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i252.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, i16 noundef zeroext %73) #7
  br label %atl1c_write_phy_dbg.exit255.i

atl1c_write_phy_dbg.exit255.i:                    ; preds = %if.else.i253.i, %atl1c_read_phy_dbg.exit249.i.atl1c_write_phy_dbg.exit255.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 4294960) #7
  br label %do.body58.i

do.body58.i:                                      ; preds = %atl1c_write_phy_dbg.exit255.i, %if.end41.i.do.body58.i_crit_edge
  %75 = ptrtoint ptr %hibernate.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %hibernate.i.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool60.not.i = icmp eq i8 %76, 0
  %77 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw, align 4
  %add.ptr86.i = getelementptr i8, ptr %78, i32 536
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86.i) #7
  br i1 %tobool60.not.i, label %if.else82.i, label %if.then67.i, !prof !46

if.then67.i:                                      ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %80 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw, align 4
  %add.ptr78.i = getelementptr i8, ptr %81, i32 536
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78.i) #7, !srcloc !48
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  br label %do.end92.i

if.else82.i:                                      ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = tail call i32 @llvm.bswap.i32(i32 %79) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  br label %do.end92.i

do.end92.i:                                       ; preds = %if.else82.i, %if.then67.i
  %twsi_ctrl_data.0.i = phi i32 [ %83, %if.then67.i ], [ %84, %if.else82.i ]
  %or93.i = or i32 %twsi_ctrl_data.0.i, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %85 = tail call i32 @llvm.bswap.i32(i32 %or93.i) #7
  %86 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw, align 4
  %add.ptr98.i = getelementptr i8, ptr %87, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i, i32 %85) #7, !srcloc !55
  br label %for.body.i

for.cond.i:                                       ; preds = %do.end135.i
  %inc.i = add nuw nsw i32 %i.0307.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %for.cond.i.atl1c_get_permanent_address.exit.thread_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.atl1c_get_permanent_address.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_get_permanent_address.exit.thread

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %do.end92.i
  %i.0307.i = phi i32 [ 0, %do.end92.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  tail call void @msleep(i32 noundef 10) #7
  %88 = ptrtoint ptr %hibernate.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %hibernate.i.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool103.not.i = icmp eq i8 %89, 0
  %90 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw, align 4
  %add.ptr129.i = getelementptr i8, ptr %91, i32 536
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr129.i) #7
  br i1 %tobool103.not.i, label %if.else125.i, label %if.then110.i, !prof !46

if.then110.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %93 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw, align 4
  %add.ptr121.i = getelementptr i8, ptr %94, i32 536
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr121.i) #7, !srcloc !48
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  br label %do.end135.i

if.else125.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %97 = tail call i32 @llvm.bswap.i32(i32 %92) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  br label %do.end135.i

do.end135.i:                                      ; preds = %if.else125.i, %if.then110.i
  %twsi_ctrl_data.1.i = phi i32 [ %96, %if.then110.i ], [ %97, %if.else125.i ]
  %and136.i = and i32 %twsi_ctrl_data.1.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136.i)
  %cmp137.i = icmp eq i32 %and136.i, 0
  br i1 %cmp137.i, label %do.end135.i.if.end145.i_crit_edge, label %for.cond.i

do.end135.i.if.end145.i_crit_edge:                ; preds = %do.end135.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end145.i

if.end145.i:                                      ; preds = %do.end135.i.if.end145.i_crit_edge, %atl1c_check_eeprom_exist.exit.i.if.end145.i_crit_edge
  %raise_vol.1.off0.i = phi i1 [ false, %atl1c_check_eeprom_exist.exit.i.if.end145.i_crit_edge ], [ %switch227.i, %do.end135.i.if.end145.i_crit_edge ]
  %otp_ctrl_data.2.i = phi i32 [ %otp_ctrl_data.0.i, %atl1c_check_eeprom_exist.exit.i.if.end145.i_crit_edge ], [ %otp_ctrl_data.1.i, %do.end135.i.if.end145.i_crit_edge ]
  %nic_type146.i = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 2
  %98 = ptrtoint ptr %nic_type146.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %nic_type146.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %99)
  %switch228.i = icmp ult i32 %99, 2
  br i1 %switch228.i, label %if.then153.i, label %if.end145.i.if.end160.i_crit_edge

if.end145.i.if.end160.i_crit_edge:                ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end160.i

if.then153.i:                                     ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #9
  %and154.i = and i32 %otp_ctrl_data.2.i, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  tail call void @arm_heavy_mb() #7
  %100 = tail call i32 @llvm.bswap.i32(i32 %and154.i) #7
  %101 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hw, align 4
  %add.ptr159.i = getelementptr i8, ptr %102, i32 4848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159.i, i32 %100) #7, !srcloc !55
  tail call void @msleep(i32 noundef 1) #7
  br label %if.end160.i

if.end160.i:                                      ; preds = %if.then153.i, %if.end145.i.if.end160.i_crit_edge
  br i1 %raise_vol.1.off0.i, label %if.then162.i, label %if.end160.i.if.end173.i_crit_edge

if.end160.i.if.end173.i_crit_edge:                ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end173.i

if.then162.i:                                     ; preds = %if.end160.i
  %call.i.i256.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i256.i)
  %tobool.not.i257.i = icmp eq i32 %call.i.i256.i, 0
  br i1 %tobool.not.i257.i, label %if.else.i259.i, label %if.then162.i.atl1c_read_phy_dbg.exit261.i_crit_edge, !prof !46

if.then162.i.atl1c_read_phy_dbg.exit261.i_crit_edge: ; preds = %if.then162.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_read_phy_dbg.exit261.i

if.else.i259.i:                                   ; preds = %if.then162.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i258.i = call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, ptr noundef nonnull %phy_data.i) #7
  br label %atl1c_read_phy_dbg.exit261.i

atl1c_read_phy_dbg.exit261.i:                     ; preds = %if.else.i259.i, %if.then162.i.atl1c_read_phy_dbg.exit261.i_crit_edge
  %103 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %phy_data.i, align 2
  %105 = or i16 %104, 128
  store i16 %105, ptr %phy_data.i, align 2
  %call.i.i262.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i262.i)
  %tobool.not.i263.i = icmp eq i32 %call.i.i262.i, 0
  br i1 %tobool.not.i263.i, label %if.else.i265.i, label %atl1c_read_phy_dbg.exit261.i.atl1c_write_phy_dbg.exit267.i_crit_edge, !prof !46

atl1c_read_phy_dbg.exit261.i.atl1c_write_phy_dbg.exit267.i_crit_edge: ; preds = %atl1c_read_phy_dbg.exit261.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_write_phy_dbg.exit267.i

if.else.i265.i:                                   ; preds = %atl1c_read_phy_dbg.exit261.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i264.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, i16 noundef zeroext %105) #7
  br label %atl1c_write_phy_dbg.exit267.i

atl1c_write_phy_dbg.exit267.i:                    ; preds = %if.else.i265.i, %atl1c_read_phy_dbg.exit261.i.atl1c_write_phy_dbg.exit267.i_crit_edge
  %call.i.i268.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 59) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i268.i)
  %tobool.not.i269.i = icmp eq i32 %call.i.i268.i, 0
  br i1 %tobool.not.i269.i, label %if.else.i271.i, label %atl1c_write_phy_dbg.exit267.i.atl1c_read_phy_dbg.exit273.i_crit_edge, !prof !46

atl1c_write_phy_dbg.exit267.i.atl1c_read_phy_dbg.exit273.i_crit_edge: ; preds = %atl1c_write_phy_dbg.exit267.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_read_phy_dbg.exit273.i

if.else.i271.i:                                   ; preds = %atl1c_write_phy_dbg.exit267.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i270.i = call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, ptr noundef nonnull %phy_data.i) #7
  br label %atl1c_read_phy_dbg.exit273.i

atl1c_read_phy_dbg.exit273.i:                     ; preds = %if.else.i271.i, %atl1c_write_phy_dbg.exit267.i.atl1c_read_phy_dbg.exit273.i_crit_edge
  %106 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %phy_data.i, align 2
  %108 = and i16 %107, -9
  store i16 %108, ptr %phy_data.i, align 2
  %call.i.i274.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 59) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i274.i)
  %tobool.not.i275.i = icmp eq i32 %call.i.i274.i, 0
  br i1 %tobool.not.i275.i, label %if.else.i277.i, label %atl1c_read_phy_dbg.exit273.i.atl1c_write_phy_dbg.exit279.i_crit_edge, !prof !46

atl1c_read_phy_dbg.exit273.i.atl1c_write_phy_dbg.exit279.i_crit_edge: ; preds = %atl1c_read_phy_dbg.exit273.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_write_phy_dbg.exit279.i

if.else.i277.i:                                   ; preds = %atl1c_read_phy_dbg.exit273.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i276.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, i16 noundef zeroext %108) #7
  br label %atl1c_write_phy_dbg.exit279.i

atl1c_write_phy_dbg.exit279.i:                    ; preds = %if.else.i277.i, %atl1c_read_phy_dbg.exit273.i.atl1c_write_phy_dbg.exit279.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %109(i32 noundef 4294960) #7
  br label %if.end173.i

if.end173.i:                                      ; preds = %atl1c_write_phy_dbg.exit279.i, %if.end160.i.if.end173.i_crit_edge
  %110 = ptrtoint ptr %hibernate.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %hibernate.i.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.not.i281.i = icmp eq i8 %111, 0
  %112 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hw, align 4
  %add.ptr14.i282.i = getelementptr i8, ptr %113, i32 5256
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i282.i) #7
  br i1 %tobool.not.i281.i, label %if.else.i285.i, label %if.then.i284.i, !prof !46

if.then.i284.i:                                   ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %115 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hw, align 4
  %add.ptr7.i283.i = getelementptr i8, ptr %116, i32 5256
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i283.i) #7, !srcloc !48
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  br label %do.body19.i289.i

if.else.i285.i:                                   ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #9
  %119 = tail call i32 @llvm.bswap.i32(i32 %114) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  br label %do.body19.i289.i

do.body19.i289.i:                                 ; preds = %if.else.i285.i, %if.then.i284.i
  %addr.sroa.0.0.i286.i = phi i32 [ %118, %if.then.i284.i ], [ %119, %if.else.i285.i ]
  %120 = ptrtoint ptr %hibernate.i.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %hibernate.i.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool21.not.i287.i = icmp eq i8 %121, 0
  %122 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hw, align 4
  %add.ptr51.i288.i = getelementptr i8, ptr %123, i32 5260
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51.i288.i) #7
  br i1 %tobool21.not.i287.i, label %if.else46.i292.i, label %if.then28.i291.i, !prof !46

if.then28.i291.i:                                 ; preds = %do.body19.i289.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %125 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hw, align 4
  %add.ptr41.i290.i = getelementptr i8, ptr %126, i32 5260
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i290.i) #7, !srcloc !48
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  br label %do.end58.i297.i

if.else46.i292.i:                                 ; preds = %do.body19.i289.i
  call void @__sanitizer_cov_trace_pc() #9
  %129 = tail call i32 @llvm.bswap.i32(i32 %124) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  br label %do.end58.i297.i

do.end58.i297.i:                                  ; preds = %if.else46.i292.i, %if.then28.i291.i
  %addr.sroa.6.0.i293.i = phi i32 [ %128, %if.then28.i291.i ], [ %129, %if.else46.i292.i ]
  %130 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %addr.sroa.0.0.i286.i, ptr %arrayidx60.i.i, align 4
  %conv.i295.i = trunc i32 %addr.sroa.6.0.i293.i to i16
  %131 = ptrtoint ptr %perm_mac_addr.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv.i295.i, ptr %perm_mac_addr.i, align 2
  %132 = load i32, ptr %perm_mac_addr.i, align 4
  %133 = and i32 %132, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool.i.not.i.i296.i = icmp eq i32 %133, 0
  br i1 %tobool.i.not.i.i296.i, label %atl1c_get_permanent_address.exit, label %do.end58.i297.i.atl1c_get_permanent_address.exit.thread_crit_edge

do.end58.i297.i.atl1c_get_permanent_address.exit.thread_crit_edge: ; preds = %do.end58.i297.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_get_permanent_address.exit.thread

atl1c_get_permanent_address.exit.thread:          ; preds = %do.end58.i297.i.atl1c_get_permanent_address.exit.thread_crit_edge, %for.cond.i.atl1c_get_permanent_address.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data.i) #7
  br label %if.then

atl1c_get_permanent_address.exit:                 ; preds = %do.end58.i297.i
  %add.ptr.i.i.i298.i = getelementptr %struct.atl1c_hw, ptr %hw, i32 0, i32 38, i32 4
  %134 = ptrtoint ptr %add.ptr.i.i.i298.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %add.ptr.i.i.i298.i, align 2
  %conv.i.i.i299.i = zext i16 %135 to i32
  %or.i.i.i300.i = or i32 %132, %conv.i.i.i299.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i300.i)
  %cmp.i.i.i301.not.i.not = icmp eq i32 %or.i.i.i300.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data.i) #7
  br i1 %cmp.i.i.i301.not.i.not, label %atl1c_get_permanent_address.exit.if.then_crit_edge, label %atl1c_get_permanent_address.exit.if.end_crit_edge

atl1c_get_permanent_address.exit.if.end_crit_edge: ; preds = %atl1c_get_permanent_address.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

atl1c_get_permanent_address.exit.if.then_crit_edge: ; preds = %atl1c_get_permanent_address.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %atl1c_get_permanent_address.exit.if.then_crit_edge, %atl1c_get_permanent_address.exit.thread
  tail call void @get_random_bytes(ptr noundef %perm_mac_addr.i, i32 noundef 6) #7
  %136 = ptrtoint ptr %perm_mac_addr.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %perm_mac_addr.i, align 1
  %138 = and i8 %137, -4
  %139 = or i8 %138, 2
  store i8 %139, ptr %perm_mac_addr.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %atl1c_get_permanent_address.exit.if.end_crit_edge, %atl1c_get_permanent_address.exit.thread12
  %retval.0.i11 = phi i32 [ -1, %if.then ], [ 0, %atl1c_get_permanent_address.exit.if.end_crit_edge ], [ 0, %atl1c_get_permanent_address.exit.thread12 ]
  %mac_addr = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 37
  %140 = call ptr @memcpy(ptr %mac_addr, ptr %perm_mac_addr.i, i32 6)
  ret i32 %retval.0.i11
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1c_hash_mc_addr(ptr nocapture noundef readnone %hw, ptr noundef %mc_addr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %mc_addr, i32 noundef 6) #10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %value.05 = phi i32 [ 0, %entry ], [ %or, %for.body.for.body_crit_edge ]
  %shr = lshr i32 %call, %i.06
  %and = and i32 %shr, 1
  %sub = sub nuw nsw i32 31, %i.06
  %shl = shl nuw i32 %and, %sub
  %or = or i32 %shl, %value.05
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 %or
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atl1c_hash_set(ptr nocapture noundef readonly %hw, i32 noundef %hash_value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shr1 = lshr i32 %hash_value, 26
  %and2 = and i32 %shr1, 31
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 5264
  %2 = lshr i32 %hash_value, 29
  %shl = and i32 %2, 4
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %shl
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #7, !srcloc !48
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  %shl5 = shl nuw i32 1, %and2
  %or = or i32 %4, %shl5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 5264
  %add.ptr9 = getelementptr i8, ptr %add.ptr7, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %5) #7, !srcloc !55
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @atl1c_wait_mdio_idle(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hibernate = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 20
  br label %do.body

do.body:                                          ; preds = %if.end20.do.body_crit_edge, %entry
  %i.027 = phi i32 [ 0, %entry ], [ %inc, %if.end20.do.body_crit_edge ]
  %0 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hibernate, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr14 = getelementptr i8, ptr %3, i32 5140
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #7
  br i1 %tobool.not, label %if.else, label %if.then, !prof !46

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 5140
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !48
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  br label %do.end

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %val.0 = phi i32 [ %8, %if.then ], [ %9, %if.else ]
  %and = and i32 %val.0, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %do.end.for.end_crit_edge, label %if.end20

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end20:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #7
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, 120
  br i1 %exitcond.not, label %if.end20.for.end_crit_edge, label %if.end20.do.body_crit_edge

if.end20.do.body_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end20.for.end_crit_edge, %do.end.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %i.027, %do.end.for.end_crit_edge ], [ 120, %if.end20.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %i.0.lcssa)
  %cmp21 = icmp ne i32 %i.0.lcssa, 120
  ret i1 %cmp21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atl1c_stop_phy_polling(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_flags = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 28
  %0 = ptrtoint ptr %ctrl_flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ctrl_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %tobool.not = icmp sgt i16 %1, -1
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !55
  %hibernate.i = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 20
  br label %do.body.i

do.body.i:                                        ; preds = %if.end20.i.do.body.i_crit_edge, %do.body
  %i.027.i = phi i32 [ 0, %do.body ], [ %inc.i, %if.end20.i.do.body.i_crit_edge ]
  %4 = ptrtoint ptr %hibernate.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hibernate.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr14.i = getelementptr i8, ptr %7, i32 5140
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #7
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !46

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %add.ptr7.i = getelementptr i8, ptr %10, i32 5140
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !48
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  br label %do.end.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  br label %do.end.i

do.end.i:                                         ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %12, %if.then.i ], [ %13, %if.else.i ]
  %and.i = and i32 %val.0.i, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool18.not.i, label %do.end.i.return_crit_edge, label %if.end20.i

do.end.i.return_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end20.i:                                       ; preds = %do.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #7
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 120
  br i1 %exitcond.not.i, label %if.end20.i.return_crit_edge, label %if.end20.i.do.body.i_crit_edge

if.end20.i.do.body.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end20.i.return_crit_edge:                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %if.end20.i.return_crit_edge, %do.end.i.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atl1c_start_phy_polling(ptr nocapture noundef readonly %hw, i16 noundef zeroext %clk_sel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_flags = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 28
  %0 = ptrtoint ptr %ctrl_flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ctrl_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %tobool.not = icmp sgt i16 %1, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = and i16 %clk_sel, 7
  %and2 = zext i16 %2 to i32
  %shl = shl nuw nsw i32 %and2, 24
  %or5 = or i32 %shl, 14745600
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %or5)
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #7, !srcloc !55
  %hibernate.i = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 20
  br label %do.body.i

do.body.i:                                        ; preds = %if.end20.i.do.body.i_crit_edge, %if.end
  %i.027.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end20.i.do.body.i_crit_edge ]
  %6 = ptrtoint ptr %hibernate.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hibernate.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %add.ptr14.i = getelementptr i8, ptr %9, i32 5140
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #7
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !46

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %add.ptr7.i = getelementptr i8, ptr %12, i32 5140
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !48
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  br label %do.end.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  br label %do.end.i

do.end.i:                                         ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %14, %if.then.i ], [ %15, %if.else.i ]
  %and.i = and i32 %val.0.i, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool18.not.i, label %do.end.i.atl1c_wait_mdio_idle.exit_crit_edge, label %if.end20.i

do.end.i.atl1c_wait_mdio_idle.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_wait_mdio_idle.exit

if.end20.i:                                       ; preds = %do.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #7
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 120
  br i1 %exitcond.not.i, label %if.end20.i.atl1c_wait_mdio_idle.exit_crit_edge, label %if.end20.i.do.body.i_crit_edge

if.end20.i.do.body.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end20.i.atl1c_wait_mdio_idle.exit_crit_edge:   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_wait_mdio_idle.exit

atl1c_wait_mdio_idle.exit:                        ; preds = %if.end20.i.atl1c_wait_mdio_idle.exit_crit_edge, %do.end.i.atl1c_wait_mdio_idle.exit_crit_edge
  %or6 = or i32 %shl, 274792448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %or6)
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %add.ptr12 = getelementptr i8, ptr %19, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %17) #7, !srcloc !55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 6442440) #7
  br label %cleanup

cleanup:                                          ; preds = %atl1c_wait_mdio_idle.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1c_read_phy_core(ptr nocapture noundef readonly %hw, i1 noundef zeroext %ext, i8 noundef zeroext %dev, i16 noundef zeroext %reg, ptr nocapture noundef writeonly %phy_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_flags.i = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 28
  %0 = ptrtoint ptr %ctrl_flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ctrl_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %tobool.not.i = icmp sgt i16 %1, -1
  br i1 %tobool.not.i, label %entry.atl1c_stop_phy_polling.exit_crit_edge, label %do.body.i

entry.atl1c_stop_phy_polling.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_stop_phy_polling.exit

do.body.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !55
  %hibernate.i.i = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 20
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end20.i.i.do.body.i.i_crit_edge, %do.body.i
  %i.027.i.i = phi i32 [ 0, %do.body.i ], [ %inc.i.i, %if.end20.i.i.do.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %hibernate.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hibernate.i.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %7, i32 5140
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i) #7
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !46

if.then.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %10, i32 5140
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #7, !srcloc !48
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  br label %do.end.i.i

if.else.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %val.0.i.i = phi i32 [ %12, %if.then.i.i ], [ %13, %if.else.i.i ]
  %and.i.i = and i32 %val.0.i.i, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool18.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool18.not.i.i, label %do.end.i.i.atl1c_stop_phy_polling.exit_crit_edge, label %if.end20.i.i

do.end.i.i.atl1c_stop_phy_polling.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_stop_phy_polling.exit

if.end20.i.i:                                     ; preds = %do.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #7
  %inc.i.i = add nuw nsw i32 %i.027.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 120
  br i1 %exitcond.not.i.i, label %if.end20.i.i.atl1c_stop_phy_polling.exit_crit_edge, label %if.end20.i.i.do.body.i.i_crit_edge

if.end20.i.i.do.body.i.i_crit_edge:               ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

if.end20.i.i.atl1c_stop_phy_polling.exit_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_stop_phy_polling.exit

atl1c_stop_phy_polling.exit:                      ; preds = %if.end20.i.i.atl1c_stop_phy_polling.exit_crit_edge, %do.end.i.i.atl1c_stop_phy_polling.exit_crit_edge, %entry.atl1c_stop_phy_polling.exit_crit_edge
  %15 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %phy_data, align 2
  %nic_type = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 2
  %16 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nic_type, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %atl1c_stop_phy_polling.exit.if.end_crit_edge [
    i32 3, label %atl1c_stop_phy_polling.exit.land.lhs.true_crit_edge
    i32 5, label %atl1c_stop_phy_polling.exit.land.lhs.true_crit_edge91
  ]

atl1c_stop_phy_polling.exit.land.lhs.true_crit_edge91: ; preds = %atl1c_stop_phy_polling.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

atl1c_stop_phy_polling.exit.land.lhs.true_crit_edge: ; preds = %atl1c_stop_phy_polling.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

atl1c_stop_phy_polling.exit.if.end_crit_edge:     ; preds = %atl1c_stop_phy_polling.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %atl1c_stop_phy_polling.exit.land.lhs.true_crit_edge, %atl1c_stop_phy_polling.exit.land.lhs.true_crit_edge91
  %hibernate = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 20
  %19 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hibernate, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  %spec.select = select i1 %tobool.not, i16 0, i16 7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %atl1c_stop_phy_polling.exit.if.end_crit_edge
  %clk_sel.0 = phi i16 [ 0, %atl1c_stop_phy_polling.exit.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  br i1 %ext, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %21 = and i8 %dev, 31
  %and = zext i8 %21 to i32
  %shl = shl nuw nsw i32 %and, 16
  %conv5 = zext i16 %reg to i32
  %or = or i32 %shl, %conv5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %or)
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 5192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %22) #7, !srcloc !55
  %conv8 = zext i16 %clk_sel.0 to i32
  %shl10 = shl nuw nsw i32 %conv8, 24
  %or14 = or i32 %shl10, 1088421888
  br label %do.body26

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv15 = zext i16 %clk_sel.0 to i32
  %shl17 = shl nuw nsw i32 %conv15, 24
  %25 = and i16 %reg, 31
  %and20 = zext i16 %25 to i32
  %shl21 = shl nuw nsw i32 %and20, 16
  %or18 = or i32 %shl17, %shl21
  %or24 = or i32 %or18, 14680064
  br label %do.body26

do.body26:                                        ; preds = %if.else, %if.then4
  %val.0 = phi i32 [ %or14, %if.then4 ], [ %or24, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %add.ptr30 = getelementptr i8, ptr %28, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %26) #7, !srcloc !55
  %hibernate.i = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 20
  br label %do.body.i82

do.body.i82:                                      ; preds = %if.end20.i.do.body.i82_crit_edge, %do.body26
  %i.027.i = phi i32 [ 0, %do.body26 ], [ %inc.i, %if.end20.i.do.body.i82_crit_edge ]
  %29 = ptrtoint ptr %hibernate.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %hibernate.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i81 = icmp eq i8 %30, 0
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw, align 4
  %add.ptr14.i = getelementptr i8, ptr %32, i32 5140
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #7
  br i1 %tobool.not.i81, label %if.else.i, label %if.then.i, !prof !46

if.then.i:                                        ; preds = %do.body.i82
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  %add.ptr7.i = getelementptr i8, ptr %35, i32 5140
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !48
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  br label %do.end.i

if.else.i:                                        ; preds = %do.body.i82
  call void @__sanitizer_cov_trace_pc() #9
  %38 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  br label %do.end.i

do.end.i:                                         ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %37, %if.then.i ], [ %38, %if.else.i ]
  %and.i = and i32 %val.0.i, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool18.not.i, label %atl1c_wait_mdio_idle.exit, label %if.end20.i

if.end20.i:                                       ; preds = %do.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 2147480) #7
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 120
  br i1 %exitcond.not.i, label %if.end20.i.cleanup_crit_edge, label %if.end20.i.do.body.i82_crit_edge

if.end20.i.do.body.i82_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i82

if.end20.i.cleanup_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

atl1c_wait_mdio_idle.exit:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %i.027.i)
  %cmp21.i.not = icmp eq i32 %i.027.i, 120
  br i1 %cmp21.i.not, label %atl1c_wait_mdio_idle.exit.cleanup_crit_edge, label %do.body33

atl1c_wait_mdio_idle.exit.cleanup_crit_edge:      ; preds = %atl1c_wait_mdio_idle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body33:                                        ; preds = %atl1c_wait_mdio_idle.exit
  %40 = ptrtoint ptr %hibernate.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %hibernate.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool35.not = icmp eq i8 %41, 0
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 4
  %add.ptr54 = getelementptr i8, ptr %43, i32 5140
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #7
  br i1 %tobool35.not, label %if.else50, label %if.then38, !prof !46

if.then38:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw, align 4
  %add.ptr46 = getelementptr i8, ptr %46, i32 5140
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #7, !srcloc !48
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  br label %do.end60

if.else50:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  %49 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  br label %do.end60

do.end60:                                         ; preds = %if.else50, %if.then38
  %val.1 = phi i32 [ %48, %if.then38 ], [ %49, %if.else50 ]
  %conv62 = trunc i32 %val.1 to i16
  %50 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv62, ptr %phy_data, align 2
  tail call void @atl1c_start_phy_polling(ptr noundef %hw, i16 noundef zeroext %clk_sel.0)
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %atl1c_wait_mdio_idle.exit.cleanup_crit_edge, %if.end20.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end60 ], [ -1, %atl1c_wait_mdio_idle.exit.cleanup_crit_edge ], [ -1, %if.end20.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1c_write_phy_core(ptr nocapture noundef readonly %hw, i1 noundef zeroext %ext, i8 noundef zeroext %dev, i16 noundef zeroext %reg, i16 noundef zeroext %phy_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_flags.i = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 28
  %0 = ptrtoint ptr %ctrl_flags.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ctrl_flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %tobool.not.i = icmp sgt i16 %1, -1
  br i1 %tobool.not.i, label %entry.atl1c_stop_phy_polling.exit_crit_edge, label %do.body.i

entry.atl1c_stop_phy_polling.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_stop_phy_polling.exit

do.body.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !55
  %hibernate.i.i = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 20
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end20.i.i.do.body.i.i_crit_edge, %do.body.i
  %i.027.i.i = phi i32 [ 0, %do.body.i ], [ %inc.i.i, %if.end20.i.i.do.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %hibernate.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hibernate.i.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr14.i.i = getelementptr i8, ptr %7, i32 5140
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i.i) #7
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !46

if.then.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %10, i32 5140
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #7, !srcloc !48
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  br label %do.end.i.i

if.else.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %val.0.i.i = phi i32 [ %12, %if.then.i.i ], [ %13, %if.else.i.i ]
  %and.i.i = and i32 %val.0.i.i, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool18.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool18.not.i.i, label %do.end.i.i.atl1c_stop_phy_polling.exit_crit_edge, label %if.end20.i.i

do.end.i.i.atl1c_stop_phy_polling.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_stop_phy_polling.exit

if.end20.i.i:                                     ; preds = %do.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #7
  %inc.i.i = add nuw nsw i32 %i.027.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 120
  br i1 %exitcond.not.i.i, label %if.end20.i.i.atl1c_stop_phy_polling.exit_crit_edge, label %if.end20.i.i.do.body.i.i_crit_edge

if.end20.i.i.do.body.i.i_crit_edge:               ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

if.end20.i.i.atl1c_stop_phy_polling.exit_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_stop_phy_polling.exit

atl1c_stop_phy_polling.exit:                      ; preds = %if.end20.i.i.atl1c_stop_phy_polling.exit_crit_edge, %do.end.i.i.atl1c_stop_phy_polling.exit_crit_edge, %entry.atl1c_stop_phy_polling.exit_crit_edge
  %nic_type = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 2
  %15 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nic_type, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %16, label %atl1c_stop_phy_polling.exit.if.end_crit_edge [
    i32 3, label %atl1c_stop_phy_polling.exit.land.lhs.true_crit_edge
    i32 5, label %atl1c_stop_phy_polling.exit.land.lhs.true_crit_edge62
  ]

atl1c_stop_phy_polling.exit.land.lhs.true_crit_edge62: ; preds = %atl1c_stop_phy_polling.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

atl1c_stop_phy_polling.exit.land.lhs.true_crit_edge: ; preds = %atl1c_stop_phy_polling.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

atl1c_stop_phy_polling.exit.if.end_crit_edge:     ; preds = %atl1c_stop_phy_polling.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %atl1c_stop_phy_polling.exit.land.lhs.true_crit_edge, %atl1c_stop_phy_polling.exit.land.lhs.true_crit_edge62
  %hibernate = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 20
  %18 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hibernate, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  %spec.select = select i1 %tobool.not, i16 0, i16 7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %atl1c_stop_phy_polling.exit.if.end_crit_edge
  %clk_sel.0 = phi i16 [ 0, %atl1c_stop_phy_polling.exit.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  br i1 %ext, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %20 = and i8 %dev, 31
  %and = zext i8 %20 to i32
  %shl = shl nuw nsw i32 %and, 16
  %conv5 = zext i16 %reg to i32
  %or = or i32 %shl, %conv5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %or)
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 5192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #7, !srcloc !55
  %conv8 = zext i16 %clk_sel.0 to i32
  %shl10 = shl nuw nsw i32 %conv8, 24
  %conv12 = zext i16 %phy_data to i32
  %or11 = or i32 %shl10, %conv12
  %or17 = or i32 %or11, 1086324736
  br label %do.body32

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv18 = zext i16 %clk_sel.0 to i32
  %shl20 = shl nuw nsw i32 %conv18, 24
  %conv22 = zext i16 %phy_data to i32
  %or21 = or i32 %shl20, %conv22
  %24 = and i16 %reg, 31
  %and27 = zext i16 %24 to i32
  %shl28 = shl nuw nsw i32 %and27, 16
  %or25 = or i32 %or21, %shl28
  %or30 = or i32 %or25, 12582912
  br label %do.body32

do.body32:                                        ; preds = %if.else, %if.then4
  %val.0 = phi i32 [ %or17, %if.then4 ], [ %or30, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %add.ptr36 = getelementptr i8, ptr %27, i32 5140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %25) #7, !srcloc !55
  %hibernate.i = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 20
  br label %do.body.i53

do.body.i53:                                      ; preds = %if.end20.i.do.body.i53_crit_edge, %do.body32
  %i.027.i = phi i32 [ 0, %do.body32 ], [ %inc.i, %if.end20.i.do.body.i53_crit_edge ]
  %28 = ptrtoint ptr %hibernate.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %hibernate.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i52 = icmp eq i8 %29, 0
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 4
  %add.ptr14.i = getelementptr i8, ptr %31, i32 5140
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #7
  br i1 %tobool.not.i52, label %if.else.i, label %if.then.i, !prof !46

if.then.i:                                        ; preds = %do.body.i53
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 4
  %add.ptr7.i = getelementptr i8, ptr %34, i32 5140
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !48
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  br label %do.end.i

if.else.i:                                        ; preds = %do.body.i53
  call void @__sanitizer_cov_trace_pc() #9
  %37 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  br label %do.end.i

do.end.i:                                         ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %36, %if.then.i ], [ %37, %if.else.i ]
  %and.i = and i32 %val.0.i, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool18.not.i, label %atl1c_wait_mdio_idle.exit, label %if.end20.i

if.end20.i:                                       ; preds = %do.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 2147480) #7
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 120
  br i1 %exitcond.not.i, label %if.end20.i.cleanup_crit_edge, label %if.end20.i.do.body.i53_crit_edge

if.end20.i.do.body.i53_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i53

if.end20.i.cleanup_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

atl1c_wait_mdio_idle.exit:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %i.027.i)
  %cmp21.i.not = icmp eq i32 %i.027.i, 120
  br i1 %cmp21.i.not, label %atl1c_wait_mdio_idle.exit.cleanup_crit_edge, label %if.end38

atl1c_wait_mdio_idle.exit.cleanup_crit_edge:      ; preds = %atl1c_wait_mdio_idle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %atl1c_wait_mdio_idle.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @atl1c_start_phy_polling(ptr noundef %hw, i16 noundef zeroext %clk_sel.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %atl1c_wait_mdio_idle.exit.cleanup_crit_edge, %if.end20.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ -1, %atl1c_wait_mdio_idle.exit.cleanup_crit_edge ], [ -1, %if.end20.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1c_read_phy_reg(ptr nocapture noundef readonly %hw, i16 noundef zeroext %reg_addr, ptr nocapture noundef writeonly %phy_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext %reg_addr, ptr noundef %phy_data)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1c_write_phy_reg(ptr nocapture noundef readonly %hw, i32 noundef %reg_addr, i16 noundef zeroext %phy_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %reg_addr to i16
  %call = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext %conv, i16 noundef zeroext %phy_data)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1c_read_phy_ext(ptr nocapture noundef readonly %hw, i8 noundef zeroext %dev_addr, i16 noundef zeroext %reg_addr, ptr nocapture noundef writeonly %phy_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext true, i8 noundef zeroext %dev_addr, i16 noundef zeroext %reg_addr, ptr noundef %phy_data)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1c_write_phy_ext(ptr nocapture noundef readonly %hw, i8 noundef zeroext %dev_addr, i16 noundef zeroext %reg_addr, i16 noundef zeroext %phy_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext true, i8 noundef zeroext %dev_addr, i16 noundef zeroext %reg_addr, i16 noundef zeroext %phy_data)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1c_read_phy_dbg(ptr nocapture noundef readonly %hw, i16 noundef zeroext %reg_addr, ptr nocapture noundef writeonly %phy_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext %reg_addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.else, label %entry.cleanup_crit_edge, !prof !46

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7 = tail call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, ptr noundef %phy_data) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i7, %if.else ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1c_write_phy_dbg(ptr nocapture noundef readonly %hw, i16 noundef zeroext %reg_addr, i16 noundef zeroext %phy_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext %reg_addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.else, label %entry.cleanup_crit_edge, !prof !46

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, i16 noundef zeroext %phy_data) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i7, %if.else ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atl1c_phy_disable(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atl1c_power_saving(ptr noundef %hw, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1c_power_saving(ptr noundef %hw, i32 noundef %wufc) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %pdev2 = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #7
  %4 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %phy_data, align 2, !annotation !73
  %link_speed = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %link_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %6)
  %cmp = icmp eq i16 %6, 1000
  %cond = select i1 %cmp, i32 2097152, i32 1048576
  %hibernate = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 20
  %7 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hibernate, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %add.ptr17 = getelementptr i8, ptr %10, i32 5120
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #7
  br i1 %tobool.not, label %if.else, label %if.then, !prof !46

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %add.ptr10 = getelementptr i8, ptr %13, i32 5120
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #7, !srcloc !48
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  br label %do.body21

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  br label %do.body21

do.body21:                                        ; preds = %if.else, %if.then
  %master_ctrl.0 = phi i32 [ %15, %if.then ], [ %16, %if.else ]
  %17 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hibernate, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool23.not = icmp eq i8 %18, 0
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %add.ptr49 = getelementptr i8, ptr %20, i32 5248
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #7
  br i1 %tobool23.not, label %if.else45, label %if.then30, !prof !46

if.then30:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %add.ptr41 = getelementptr i8, ptr %23, i32 5248
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #7, !srcloc !48
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  br label %do.body56

if.else45:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  br label %do.body56

do.body56:                                        ; preds = %if.else45, %if.then30
  %mac_ctrl.0 = phi i32 [ %25, %if.then30 ], [ %26, %if.else45 ]
  %27 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hibernate, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool58.not = icmp eq i8 %28, 0
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %add.ptr84 = getelementptr i8, ptr %30, i32 5132
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84) #7
  br i1 %tobool58.not, label %if.else80, label %if.then65, !prof !46

if.then65:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 4
  %add.ptr76 = getelementptr i8, ptr %33, i32 5132
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #7, !srcloc !48
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  br label %do.end90

if.else80:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  %36 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  br label %do.end90

do.end90:                                         ; preds = %if.else80, %if.then65
  %phy_ctrl.0 = phi i32 [ %35, %if.then65 ], [ %36, %if.else80 ]
  %and = and i32 %master_ctrl.0, -4097
  %and91 = and i32 %mac_ctrl.0, -3145764
  %or = or i32 %and91, %cond
  %link_duplex = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 15
  %37 = ptrtoint ptr %link_duplex to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %link_duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %38)
  %cmp95 = icmp eq i16 %38, 2
  %or98 = or i32 %or, 32
  %spec.select = select i1 %cmp95, i32 %or98, i32 %or
  %and100 = and i32 %phy_ctrl.0, -146438
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wufc)
  %tobool102.not = icmp eq i32 %wufc, 0
  br i1 %tobool102.not, label %if.then103, label %if.end126

if.then103:                                       ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #9
  %or104 = or i32 %master_ctrl.0, 4096
  %or105 = or i32 %and100, 23680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %39 = tail call i32 @llvm.bswap.i32(i32 %or104)
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 4
  %add.ptr110 = getelementptr i8, ptr %41, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 %39) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  %42 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %43 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw, align 4
  %add.ptr115 = getelementptr i8, ptr %44, i32 5248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %42) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %45 = tail call i32 @llvm.bswap.i32(i32 %or105)
  %46 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw, align 4
  %add.ptr120 = getelementptr i8, ptr %47, i32 5132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120, i32 %45) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw, align 4
  %add.ptr125 = getelementptr i8, ptr %49, i32 5280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 0) #7, !srcloc !55
  %phy_configured = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 39
  %50 = ptrtoint ptr %phy_configured to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %phy_configured, align 4
  br label %cleanup

if.end126:                                        ; preds = %do.end90
  %or127 = or i32 %and100, 7169
  %and128 = and i32 %wufc, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end126.if.end141_crit_edge, label %if.then130

if.end126.if.end141_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.then130:                                       ; preds = %if.end126
  %or131 = or i32 %spec.select, 67108866
  %nic_type = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 2
  %51 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nic_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp133 = icmp eq i32 %52, 2
  br i1 %cmp133, label %land.lhs.true, label %if.then130.if.end141_crit_edge

if.then130.if.end141_crit_edge:                   ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

land.lhs.true:                                    ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #9
  %revision_id = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 10
  %53 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %revision_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -63, i8 %54)
  %cmp136 = icmp eq i8 %54, -63
  %spec.select261 = select i1 %cmp136, i32 15, i32 12
  br label %if.end141

if.end141:                                        ; preds = %land.lhs.true, %if.then130.if.end141_crit_edge, %if.end126.if.end141_crit_edge
  %wol_ctrl.0 = phi i32 [ 12, %if.then130.if.end141_crit_edge ], [ 0, %if.end126.if.end141_crit_edge ], [ %spec.select261, %land.lhs.true ]
  %mac_ctrl.2 = phi i32 [ %or131, %if.then130.if.end141_crit_edge ], [ %spec.select, %if.end126.if.end141_crit_edge ], [ %or131, %land.lhs.true ]
  %and142 = and i32 %wufc, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.end141.if.end165_crit_edge, label %if.then144

if.end141.if.end165_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165

if.then144:                                       ; preds = %if.end141
  %or145 = or i32 %wol_ctrl.0, 48
  %call.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 18, i16 noundef zeroext 1024) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp147.not = icmp eq i32 %call.i, 0
  br i1 %cmp147.not, label %if.then144.if.end165_crit_edge, label %do.body150

if.then144.if.end165_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end165

do.body150:                                       ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1c_power_saving.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1c_power_saving, %if.then160)) #7
          to label %if.end165 [label %if.then160], !srcloc !121

if.then160:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atl1c_power_saving.__UNIQUE_ID_ddebug500, ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @atl1c_driver_name) #7
  br label %if.end165

if.end165:                                        ; preds = %if.then160, %do.body150, %if.then144.if.end165_crit_edge, %if.end141.if.end165_crit_edge
  %wol_ctrl.1 = phi i32 [ %or145, %if.then160 ], [ %or145, %if.then144.if.end165_crit_edge ], [ %wol_ctrl.0, %if.end141.if.end165_crit_edge ], [ %or145, %do.body150 ]
  %call.i265 = call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 19, ptr noundef nonnull %phy_data) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1c_power_saving.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1c_power_saving, %if.then179)) #7
          to label %do.body184 [label %if.then179], !srcloc !121

if.then179:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  %dev180 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atl1c_power_saving.__UNIQUE_ID_ddebug501, ptr noundef %dev180, ptr noundef nonnull @.str.19, ptr noundef nonnull @atl1c_driver_name, i32 noundef %mac_ctrl.2, i32 noundef %and, i32 noundef %or127, i32 noundef %wol_ctrl.1) #7
  br label %do.body184

do.body184:                                       ; preds = %if.then179, %if.end165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %55 = tail call i32 @llvm.bswap.i32(i32 %and)
  %56 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw, align 4
  %add.ptr188 = getelementptr i8, ptr %57, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188, i32 %55) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %58 = tail call i32 @llvm.bswap.i32(i32 %mac_ctrl.2)
  %59 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw, align 4
  %add.ptr193 = getelementptr i8, ptr %60, i32 5248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr193, i32 %58) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %61 = tail call i32 @llvm.bswap.i32(i32 %or127)
  %62 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw, align 4
  %add.ptr198 = getelementptr i8, ptr %63, i32 5132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr198, i32 %61) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @arm_heavy_mb() #7
  %64 = tail call i32 @llvm.bswap.i32(i32 %wol_ctrl.1)
  %65 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw, align 4
  %add.ptr203 = getelementptr i8, ptr %66, i32 5280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr203, i32 %64) #7, !srcloc !55
  br label %cleanup

cleanup:                                          ; preds = %do.body184, %if.then103
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1c_phy_reset(ptr noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %pdev2 = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #7
  %4 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %phy_data, align 2, !annotation !73
  %hibernate = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 20
  %5 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hibernate, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %add.ptr16 = getelementptr i8, ptr %8, i32 5132
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #7
  br i1 %tobool.not, label %if.else, label %if.then, !prof !46

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 5132
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !48
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %phy_ctrl_data.0 = phi i32 [ %13, %if.then ], [ %14, %if.else ]
  %ctrl_flags = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 28
  %15 = ptrtoint ptr %ctrl_flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ctrl_flags, align 4
  %17 = and i16 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool21.not = icmp eq i16 %17, 0
  %or = and i32 %phy_ctrl_data.0, -162982
  %phy_ctrl_data.1.v = select i1 %tobool21.not, i32 7168, i32 4096
  %phy_ctrl_data.1 = or i32 %phy_ctrl_data.1.v, %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %phy_ctrl_data.1)
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %add.ptr31 = getelementptr i8, ptr %20, i32 5132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %18) #7, !srcloc !55
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %or41 = or i32 %phy_ctrl_data.1, 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %or41)
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %add.ptr43 = getelementptr i8, ptr %27, i32 5132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %25) #7, !srcloc !55
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #7, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 171798400) #7
  %nic_type = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 2
  %32 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nic_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp = icmp eq i32 %33, 2
  br i1 %cmp, label %if.then51, label %do.end.if.end57_crit_edge

do.end.if.end57_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then51:                                        ; preds = %do.end
  %call.i.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then51.atl1c_read_phy_dbg.exit_crit_edge, !prof !46

if.then51.atl1c_read_phy_dbg.exit_crit_edge:      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_read_phy_dbg.exit

if.else.i:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i = call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, ptr noundef nonnull %phy_data) #7
  br label %atl1c_read_phy_dbg.exit

atl1c_read_phy_dbg.exit:                          ; preds = %if.else.i, %if.then51.atl1c_read_phy_dbg.exit_crit_edge
  %34 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %phy_data, align 2
  %call.i.i245 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i245)
  %tobool.not.i246 = icmp eq i32 %call.i.i245, 0
  br i1 %tobool.not.i246, label %if.else.i248, label %atl1c_read_phy_dbg.exit.if.end57_crit_edge, !prof !46

atl1c_read_phy_dbg.exit.if.end57_crit_edge:       ; preds = %atl1c_read_phy_dbg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.else.i248:                                     ; preds = %atl1c_read_phy_dbg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %36 = and i16 %35, -8193
  %call.i7.i247 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, i16 noundef zeroext %36) #7
  br label %if.end57

if.end57:                                         ; preds = %if.else.i248, %atl1c_read_phy_dbg.exit.if.end57_crit_edge, %do.end.if.end57_crit_edge
  %37 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nic_type, align 4
  %39 = and i32 %38, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %switch = icmp eq i32 %39, 2
  br i1 %switch, label %if.then64, label %if.end57.if.end70_crit_edge

if.end57.if.end70_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then64:                                        ; preds = %if.end57
  %call.i.i250 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i250)
  %tobool.not.i251 = icmp eq i32 %call.i.i250, 0
  br i1 %tobool.not.i251, label %if.else.i253, label %if.then64.atl1c_read_phy_dbg.exit255_crit_edge, !prof !46

if.then64.atl1c_read_phy_dbg.exit255_crit_edge:   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_read_phy_dbg.exit255

if.else.i253:                                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i252 = call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, ptr noundef nonnull %phy_data) #7
  br label %atl1c_read_phy_dbg.exit255

atl1c_read_phy_dbg.exit255:                       ; preds = %if.else.i253, %if.then64.atl1c_read_phy_dbg.exit255_crit_edge
  %40 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %phy_data, align 2
  %42 = or i16 %41, -32768
  store i16 %42, ptr %phy_data, align 2
  %call.i.i256 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i256)
  %tobool.not.i257 = icmp eq i32 %call.i.i256, 0
  br i1 %tobool.not.i257, label %if.else.i259, label %atl1c_read_phy_dbg.exit255.if.end70_crit_edge, !prof !46

atl1c_read_phy_dbg.exit255.if.end70_crit_edge:    ; preds = %atl1c_read_phy_dbg.exit255
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.else.i259:                                     ; preds = %atl1c_read_phy_dbg.exit255
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i258 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, i16 noundef zeroext %42) #7
  br label %if.end70

if.end70:                                         ; preds = %if.else.i259, %atl1c_read_phy_dbg.exit255.if.end70_crit_edge, %if.end57.if.end70_crit_edge
  %43 = ptrtoint ptr %ctrl_flags to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %ctrl_flags, align 4
  %45 = and i16 %44, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool74.not = icmp eq i16 %45, 0
  br i1 %tobool74.not, label %if.then75, label %if.else99

if.then75:                                        ; preds = %if.end70
  %46 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nic_type, align 4
  %48 = and i32 %47, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %switch242 = icmp eq i32 %48, 2
  br i1 %switch242, label %if.then83, label %if.then75.if.end89_crit_edge

if.then75.if.end89_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then83:                                        ; preds = %if.then75
  %call.i.i262 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 59) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i262)
  %tobool.not.i263 = icmp eq i32 %call.i.i262, 0
  br i1 %tobool.not.i263, label %if.else.i265, label %if.then83.atl1c_read_phy_dbg.exit267_crit_edge, !prof !46

if.then83.atl1c_read_phy_dbg.exit267_crit_edge:   ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_read_phy_dbg.exit267

if.else.i265:                                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i264 = call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, ptr noundef nonnull %phy_data) #7
  br label %atl1c_read_phy_dbg.exit267

atl1c_read_phy_dbg.exit267:                       ; preds = %if.else.i265, %if.then83.atl1c_read_phy_dbg.exit267_crit_edge
  %49 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %phy_data, align 2
  %call.i.i268 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 59) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i268)
  %tobool.not.i269 = icmp eq i32 %call.i.i268, 0
  br i1 %tobool.not.i269, label %if.else.i271, label %atl1c_read_phy_dbg.exit267.if.end89_crit_edge, !prof !46

atl1c_read_phy_dbg.exit267.if.end89_crit_edge:    ; preds = %atl1c_read_phy_dbg.exit267
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.else.i271:                                     ; preds = %atl1c_read_phy_dbg.exit267
  call void @__sanitizer_cov_trace_pc() #9
  %51 = and i16 %50, -9
  %call.i7.i270 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, i16 noundef zeroext %51) #7
  br label %if.end89

if.end89:                                         ; preds = %if.else.i271, %atl1c_read_phy_dbg.exit267.if.end89_crit_edge, %if.then75.if.end89_crit_edge
  %52 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nic_type, align 4
  %54 = and i32 %53, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %55 = icmp eq i32 %54, 4
  %56 = select i1 %55, i16 4765, i16 14045
  %57 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %phy_data, align 2
  %call.i.i274 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i274)
  %tobool.not.i275 = icmp eq i32 %call.i.i274, 0
  br i1 %tobool.not.i275, label %if.else.i277, label %if.end89.atl1c_write_phy_dbg.exit279_crit_edge, !prof !46

if.end89.atl1c_write_phy_dbg.exit279_crit_edge:   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_write_phy_dbg.exit279

if.else.i277:                                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i276 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, i16 noundef zeroext %56) #7
  br label %atl1c_write_phy_dbg.exit279

atl1c_write_phy_dbg.exit279:                      ; preds = %if.else.i277, %if.end89.atl1c_write_phy_dbg.exit279_crit_edge
  %call.i.i280 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i280)
  %tobool.not.i281 = icmp eq i32 %call.i.i280, 0
  br i1 %tobool.not.i281, label %atl1c_write_phy_dbg.exit279.if.end110.sink.split_crit_edge, label %atl1c_write_phy_dbg.exit279.if.end110_crit_edge, !prof !46

atl1c_write_phy_dbg.exit279.if.end110_crit_edge:  ; preds = %atl1c_write_phy_dbg.exit279
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

atl1c_write_phy_dbg.exit279.if.end110.sink.split_crit_edge: ; preds = %atl1c_write_phy_dbg.exit279
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.sink.split

if.else99:                                        ; preds = %if.end70
  %call.i.i286 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i286)
  %tobool.not.i287 = icmp eq i32 %call.i.i286, 0
  br i1 %tobool.not.i287, label %if.else.i289, label %if.else99.atl1c_read_phy_dbg.exit291_crit_edge, !prof !46

if.else99.atl1c_read_phy_dbg.exit291_crit_edge:   ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_read_phy_dbg.exit291

if.else.i289:                                     ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i288 = call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, ptr noundef nonnull %phy_data) #7
  br label %atl1c_read_phy_dbg.exit291

atl1c_read_phy_dbg.exit291:                       ; preds = %if.else.i289, %if.else99.atl1c_read_phy_dbg.exit291_crit_edge
  %58 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %phy_data, align 2
  %call.i.i292 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i292)
  %tobool.not.i293 = icmp eq i32 %call.i.i292, 0
  br i1 %tobool.not.i293, label %if.else.i295, label %atl1c_read_phy_dbg.exit291.atl1c_write_phy_dbg.exit297_crit_edge, !prof !46

atl1c_read_phy_dbg.exit291.atl1c_write_phy_dbg.exit297_crit_edge: ; preds = %atl1c_read_phy_dbg.exit291
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_write_phy_dbg.exit297

if.else.i295:                                     ; preds = %atl1c_read_phy_dbg.exit291
  call void @__sanitizer_cov_trace_pc() #9
  %60 = and i16 %59, 32767
  %call.i7.i294 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, i16 noundef zeroext %60) #7
  br label %atl1c_write_phy_dbg.exit297

atl1c_write_phy_dbg.exit297:                      ; preds = %if.else.i295, %atl1c_read_phy_dbg.exit291.atl1c_write_phy_dbg.exit297_crit_edge
  %call.i.i298 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i298)
  %tobool.not.i299 = icmp eq i32 %call.i.i298, 0
  br i1 %tobool.not.i299, label %if.else.i301, label %atl1c_write_phy_dbg.exit297.atl1c_read_phy_dbg.exit303_crit_edge, !prof !46

atl1c_write_phy_dbg.exit297.atl1c_read_phy_dbg.exit303_crit_edge: ; preds = %atl1c_write_phy_dbg.exit297
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_read_phy_dbg.exit303

if.else.i301:                                     ; preds = %atl1c_write_phy_dbg.exit297
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i300 = call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, ptr noundef nonnull %phy_data) #7
  br label %atl1c_read_phy_dbg.exit303

atl1c_read_phy_dbg.exit303:                       ; preds = %if.else.i301, %atl1c_write_phy_dbg.exit297.atl1c_read_phy_dbg.exit303_crit_edge
  %61 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %phy_data, align 2
  %call.i.i304 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i304)
  %tobool.not.i305 = icmp eq i32 %call.i.i304, 0
  br i1 %tobool.not.i305, label %if.else.i307, label %atl1c_read_phy_dbg.exit303.if.end110_crit_edge, !prof !46

atl1c_read_phy_dbg.exit303.if.end110_crit_edge:   ; preds = %atl1c_read_phy_dbg.exit303
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.else.i307:                                     ; preds = %atl1c_read_phy_dbg.exit303
  call void @__sanitizer_cov_trace_pc() #9
  %63 = and i16 %62, -32768
  br label %if.end110.sink.split

if.end110.sink.split:                             ; preds = %if.else.i307, %atl1c_write_phy_dbg.exit279.if.end110.sink.split_crit_edge
  %.sink = phi i16 [ %63, %if.else.i307 ], [ -30533, %atl1c_write_phy_dbg.exit279.if.end110.sink.split_crit_edge ]
  %call.i7.i306 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, i16 noundef zeroext %.sink) #7
  br label %if.end110

if.end110:                                        ; preds = %if.end110.sink.split, %atl1c_read_phy_dbg.exit303.if.end110_crit_edge, %atl1c_write_phy_dbg.exit279.if.end110_crit_edge
  %64 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nic_type, align 4
  %.off243 = add i32 %65, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off243)
  %switch244 = icmp ult i32 %.off243, 3
  br i1 %switch244, label %do.body123, label %if.end110.if.end166_crit_edge

if.end110.if.end166_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end166

do.body123:                                       ; preds = %if.end110
  %66 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %hibernate, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool125.not = icmp eq i8 %67, 0
  %68 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw, align 4
  %add.ptr151 = getelementptr i8, ptr %69, i32 5184
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr151) #7
  br i1 %tobool125.not, label %if.else147, label %if.then132, !prof !46

if.then132:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %71 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw, align 4
  %add.ptr143 = getelementptr i8, ptr %72, i32 5184
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr143) #7, !srcloc !48
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  br label %do.body158

if.else147:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #9
  %75 = tail call i32 @llvm.bswap.i32(i32 %70)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  br label %do.body158

do.body158:                                       ; preds = %if.else147, %if.then132
  %lpi_ctrl.0 = phi i32 [ %74, %if.then132 ], [ %75, %if.else147 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %and161 = and i32 %lpi_ctrl.0, -2
  %76 = tail call i32 @llvm.bswap.i32(i32 %and161)
  %77 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw, align 4
  %add.ptr163 = getelementptr i8, ptr %78, i32 5184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr163, i32 %76) #7, !srcloc !55
  %call.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext true, i8 noundef zeroext 7, i16 noundef zeroext 60, i16 noundef zeroext 0) #7
  %call.i310 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext true, i8 noundef zeroext 3, i16 noundef zeroext -32765, i16 noundef zeroext 19737) #7
  br label %if.end166

if.end166:                                        ; preds = %do.body158, %if.end110.if.end166_crit_edge
  %call.i.i311 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i311)
  %tobool.not.i312 = icmp eq i32 %call.i.i311, 0
  br i1 %tobool.not.i312, label %if.else.i314, label %if.end166.atl1c_write_phy_dbg.exit316_crit_edge, !prof !46

if.end166.atl1c_write_phy_dbg.exit316_crit_edge:  ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_write_phy_dbg.exit316

if.else.i314:                                     ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i313 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, i16 noundef zeroext 751) #7
  br label %atl1c_write_phy_dbg.exit316

atl1c_write_phy_dbg.exit316:                      ; preds = %if.else.i314, %if.end166.atl1c_write_phy_dbg.exit316_crit_edge
  %call.i.i317 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i317)
  %tobool.not.i318 = icmp eq i32 %call.i.i317, 0
  br i1 %tobool.not.i318, label %if.else.i320, label %atl1c_write_phy_dbg.exit316.atl1c_write_phy_dbg.exit322_crit_edge, !prof !46

atl1c_write_phy_dbg.exit316.atl1c_write_phy_dbg.exit322_crit_edge: ; preds = %atl1c_write_phy_dbg.exit316
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_write_phy_dbg.exit322

if.else.i320:                                     ; preds = %atl1c_write_phy_dbg.exit316
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i319 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, i16 noundef zeroext 11334) #7
  br label %atl1c_write_phy_dbg.exit322

atl1c_write_phy_dbg.exit322:                      ; preds = %if.else.i320, %atl1c_write_phy_dbg.exit316.atl1c_write_phy_dbg.exit322_crit_edge
  %call.i.i323 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i323)
  %tobool.not.i324 = icmp eq i32 %call.i.i323, 0
  br i1 %tobool.not.i324, label %if.else.i326, label %atl1c_write_phy_dbg.exit322.atl1c_write_phy_dbg.exit328_crit_edge, !prof !46

atl1c_write_phy_dbg.exit322.atl1c_write_phy_dbg.exit328_crit_edge: ; preds = %atl1c_write_phy_dbg.exit322
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_write_phy_dbg.exit328

if.else.i326:                                     ; preds = %atl1c_write_phy_dbg.exit322
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i325 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, i16 noundef zeroext 19460) #7
  br label %atl1c_write_phy_dbg.exit328

atl1c_write_phy_dbg.exit328:                      ; preds = %if.else.i326, %atl1c_write_phy_dbg.exit322.atl1c_write_phy_dbg.exit328_crit_edge
  %call.i.i329 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i329)
  %tobool.not.i330 = icmp eq i32 %call.i.i329, 0
  br i1 %tobool.not.i330, label %if.else.i332, label %atl1c_write_phy_dbg.exit328.atl1c_write_phy_dbg.exit334_crit_edge, !prof !46

atl1c_write_phy_dbg.exit328.atl1c_write_phy_dbg.exit334_crit_edge: ; preds = %atl1c_write_phy_dbg.exit328
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_write_phy_dbg.exit334

if.else.i332:                                     ; preds = %atl1c_write_phy_dbg.exit328
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i331 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, i16 noundef zeroext -7764) #7
  br label %atl1c_write_phy_dbg.exit334

atl1c_write_phy_dbg.exit334:                      ; preds = %if.else.i332, %atl1c_write_phy_dbg.exit328.atl1c_write_phy_dbg.exit334_crit_edge
  %call.i335 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 18, i16 noundef zeroext 3072) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i335)
  %tobool172.not = icmp eq i32 %call.i335, 0
  br i1 %tobool172.not, label %atl1c_write_phy_dbg.exit334.cleanup_crit_edge, label %if.then173

atl1c_write_phy_dbg.exit334.cleanup_crit_edge:    ; preds = %atl1c_write_phy_dbg.exit334
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then173:                                       ; preds = %atl1c_write_phy_dbg.exit334
  %msg_enable = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 11
  %79 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %msg_enable, align 8
  %and174 = and i32 %80, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %if.then173.cleanup_crit_edge, label %do.end179

if.then173.cleanup_crit_edge:                     ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end179:                                        ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end179, %if.then173.cleanup_crit_edge, %atl1c_write_phy_dbg.exit334.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #7
  ret i32 %call.i335
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1c_phy_init(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %pdev2 = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 4
  %nic_type = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nic_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp = icmp eq i32 %5, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %phy_configured = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 39
  %6 = ptrtoint ptr %phy_configured to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %phy_configured, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy_id1 = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 11
  %call.i = tail call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %phy_id1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.not = icmp eq i32 %call.i, 0
  br i1 %cmp3.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %phy_id2 = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 12
  %call.i73 = tail call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 3, ptr noundef %phy_id2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %cmp5.not = icmp eq i32 %call.i73, 0
  br i1 %cmp5.not, label %if.end7, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %media_type = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 21
  %7 = ptrtoint ptr %media_type to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %media_type, align 2
  %conv = zext i16 %8 to i32
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %8, label %sw.default [
    i16 0, label %sw.bb
    i16 1, label %sw.bb20
    i16 2, label %sw.bb24
    i16 3, label %sw.bb28
    i16 4, label %if.end7.sw.epilog_crit_edge
  ]

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end7
  %autoneg_advertised.i = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 22
  %10 = ptrtoint ptr %autoneg_advertised.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %autoneg_advertised.i, align 4
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i = icmp eq i16 %12, 0
  %spec.select.i = select i1 %tobool.not.i, i16 3072, i16 3104
  %13 = shl i16 %11, 5
  %14 = and i16 %13, 448
  %15 = or i16 %spec.select.i, %14
  %16 = and i16 %11, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool33.not.i = icmp eq i16 %16, 0
  %mii_adv_data.4.i = select i1 %tobool33.not.i, i16 %15, i16 3552
  %link_cap_flags.i = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 29
  %17 = ptrtoint ptr %link_cap_flags.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %link_cap_flags.i, align 2
  %call.i.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 4, i16 noundef zeroext %mii_adv_data.4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %atl1c_phy_setup_adv.exit, label %sw.bb.if.then9_crit_edge

sw.bb.if.then9_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

atl1c_phy_setup_adv.exit:                         ; preds = %sw.bb
  %19 = and i16 %18, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool41.not.i = icmp eq i16 %19, 0
  %20 = shl i16 %11, 4
  %21 = and i16 %20, 768
  %spec.select98.i = select i1 %tobool33.not.i, i16 %21, i16 768
  %mii_giga_ctrl_data.2.i = select i1 %tobool41.not.i, i16 0, i16 %spec.select98.i
  %call.i99.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 9, i16 noundef zeroext %mii_giga_ctrl_data.2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99.i)
  %cmp73.not.i.not = icmp eq i32 %call.i99.i, 0
  br i1 %cmp73.not.i.not, label %atl1c_phy_setup_adv.exit.sw.epilog_crit_edge, label %atl1c_phy_setup_adv.exit.if.then9_crit_edge

atl1c_phy_setup_adv.exit.if.then9_crit_edge:      ; preds = %atl1c_phy_setup_adv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

atl1c_phy_setup_adv.exit.sw.epilog_crit_edge:     ; preds = %atl1c_phy_setup_adv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then9:                                         ; preds = %atl1c_phy_setup_adv.exit.if.then9_crit_edge, %sw.bb.if.then9_crit_edge
  %msg_enable = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable, align 8
  %and = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.then9.cleanup_crit_edge, label %do.end14

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end14:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.8) #11
  br label %cleanup

sw.bb20:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7
  %msg_enable32 = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %msg_enable32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable32, align 8
  %and33 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %sw.default.cleanup_crit_edge, label %do.end38

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end38:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.11, i32 noundef %conv) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb28, %sw.bb24, %sw.bb20, %atl1c_phy_setup_adv.exit.sw.epilog_crit_edge, %if.end7.sw.epilog_crit_edge
  %mii_bmcr_data.0 = phi i16 [ -32768, %if.end7.sw.epilog_crit_edge ], [ -32512, %sw.bb28 ], [ -24576, %sw.bb24 ], [ -24320, %sw.bb20 ], [ -28160, %atl1c_phy_setup_adv.exit.sw.epilog_crit_edge ]
  %call.i74 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext %mii_bmcr_data.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool44.not = icmp eq i32 %call.i74, 0
  br i1 %tobool44.not, label %if.end46, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end46:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %phy_configured47 = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 39
  %26 = ptrtoint ptr %phy_configured47 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %phy_configured47, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %sw.epilog.cleanup_crit_edge, %do.end38, %sw.default.cleanup_crit_edge, %do.end14, %if.then9.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %do.end ], [ 0, %if.end46 ], [ -1, %do.end14 ], [ -1, %if.then9.cleanup_crit_edge ], [ -1, %do.end38 ], [ -1, %sw.default.cleanup_crit_edge ], [ -1, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @atl1c_get_link_status(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #7
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !73
  %nic_type = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nic_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp = icmp eq i32 %2, 6
  br i1 %cmp, label %if.then, label %if.end24

if.then:                                          ; preds = %entry
  %hibernate = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 20
  %3 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hibernate, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %add.ptr15 = getelementptr i8, ptr %6, i32 7944
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #7
  br i1 %tobool.not, label %if.else, label %if.then3, !prof !46

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 7944
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !48
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  br label %do.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then3
  %spd.0 = phi i32 [ %11, %if.then3 ], [ %12, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spd.0)
  %tobool19 = icmp ne i32 %spd.0, 0
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %phy_data) #7
  %call.i38 = call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %phy_data) #7
  %13 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %phy_data, align 2
  %15 = and i16 %14, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool27 = icmp ne i16 %15, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i1 [ %tobool19, %do.end ], [ %tobool27, %if.end24 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #7
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1c_get_speed_and_duplex(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %speed, ptr nocapture noundef writeonly %duplex) local_unnamed_addr #0 align 64 {
entry:
  %phy_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data) #7
  %0 = ptrtoint ptr %phy_data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_data, align 2, !annotation !73
  %nic_type = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nic_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp = icmp eq i32 %2, 6
  br i1 %cmp, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  %hibernate = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 20
  %3 = ptrtoint ptr %hibernate to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hibernate, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %add.ptr15 = getelementptr i8, ptr %6, i32 7944
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #7
  br i1 %tobool.not, label %if.else, label %if.then3, !prof !46

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 7944
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !48
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  br label %do.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then3
  %spd.0 = phi i32 [ %11, %if.then3 ], [ %12, %if.else ]
  %conv = trunc i32 %spd.0 to i16
  %13 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %speed, align 2
  br label %cleanup.sink.split

if.end19:                                         ; preds = %entry
  %call.i = call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef nonnull %phy_data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not = icmp eq i32 %call.i, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %14 = ptrtoint ptr %phy_data to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %phy_data, align 2
  %16 = and i16 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool25.not = icmp eq i16 %16, 0
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %and29 = and i16 %15, -16384
  %17 = zext i16 %and29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %and29, label %if.end27.cleanup_crit_edge [
    i16 -32768, label %if.end27.sw.epilog_crit_edge
    i16 16384, label %sw.bb30
    i16 0, label %sw.bb31
  ]

if.end27.sw.epilog_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb30:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb31, %sw.bb30, %if.end27.sw.epilog_crit_edge
  %.sink = phi i16 [ 10, %sw.bb31 ], [ 100, %sw.bb30 ], [ 1000, %if.end27.sw.epilog_crit_edge ]
  %18 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %.sink, ptr %speed, align 2
  %19 = and i16 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool34.not = icmp eq i16 %19, 0
  %. = select i1 %tobool34.not, i16 1, i16 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.epilog, %do.end
  %..sink = phi i16 [ %., %sw.epilog ], [ 2, %do.end ]
  %20 = ptrtoint ptr %duplex to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %..sink, ptr %duplex, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end27.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end19.cleanup_crit_edge ], [ -1, %if.end23.cleanup_crit_edge ], [ -1, %if.end27.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1c_phy_to_ps_link(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %phy_data.i104 = alloca i16, align 2
  %phy_data.i85 = alloca i16, align 2
  %phy_data.i = alloca i16, align 2
  %mii_lpa_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %pdev2 = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mii_lpa_data) #7
  %4 = ptrtoint ptr %mii_lpa_data to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %mii_lpa_data, align 2, !annotation !73
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data.i) #7
  %5 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %phy_data.i, align 2, !annotation !73
  %nic_type.i = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %nic_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nic_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp.i = icmp eq i32 %7, 6
  br i1 %cmp.i, label %if.then.i, label %atl1c_get_link_status.exit

if.then.i:                                        ; preds = %entry
  %hibernate.i = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 20
  %8 = ptrtoint ptr %hibernate.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hibernate.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %add.ptr15.i = getelementptr i8, ptr %11, i32 7944
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #7
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i, !prof !46

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %add.ptr8.i = getelementptr i8, ptr %14, i32 7944
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #7, !srcloc !48
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  br label %do.end.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  br label %do.end.i

do.end.i:                                         ; preds = %if.else.i, %if.then3.i
  %spd.0.i = phi i32 [ %16, %if.then3.i ], [ %17, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spd.0.i)
  %tobool19.i.not = icmp eq i32 %spd.0.i, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data.i) #7
  br i1 %tobool19.i.not, label %do.end.i.if.end67_crit_edge, label %do.end.i.if.then_crit_edge

do.end.i.if.then_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

do.end.i.if.end67_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

atl1c_get_link_status.exit:                       ; preds = %entry
  %call.i.i = call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %phy_data.i) #7
  %call.i38.i = call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %phy_data.i) #7
  %18 = ptrtoint ptr %phy_data.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %phy_data.i, align 2
  %20 = and i16 %19, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool27.i.not = icmp eq i16 %20, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data.i) #7
  br i1 %tobool27.i.not, label %atl1c_get_link_status.exit.if.end67_crit_edge, label %atl1c_get_link_status.exit.if.then_crit_edge

atl1c_get_link_status.exit.if.then_crit_edge:     ; preds = %atl1c_get_link_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

atl1c_get_link_status.exit.if.end67_crit_edge:    ; preds = %atl1c_get_link_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then:                                          ; preds = %atl1c_get_link_status.exit.if.then_crit_edge, %do.end.i.if.then_crit_edge
  %call.i = call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 5, ptr noundef nonnull %mii_lpa_data) #7
  %21 = ptrtoint ptr %mii_lpa_data to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mii_lpa_data, align 2
  %conv = zext i16 %22 to i32
  %and = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then.if.end21_crit_edge

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.else:                                          ; preds = %if.then
  %and6 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else9, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.else9:                                         ; preds = %if.else
  %and11 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else14, label %if.else9.if.end21_crit_edge

if.else9.if.end21_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.else14:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  %and16 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %spec.select = select i1 %tobool17.not, i16 1, i16 8
  br label %if.end21

if.end21:                                         ; preds = %if.else14, %if.else9.if.end21_crit_edge, %if.else.if.end21_crit_edge, %if.then.if.end21_crit_edge
  %autoneg_advertised.0 = phi i16 [ 2, %if.then.if.end21_crit_edge ], [ 1, %if.else.if.end21_crit_edge ], [ 4, %if.else9.if.end21_crit_edge ], [ %spec.select, %if.else14 ]
  %autoneg_advertised22 = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 22
  %23 = ptrtoint ptr %autoneg_advertised22 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %autoneg_advertised22, align 4
  %phy_configured = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 39
  %25 = ptrtoint ptr %phy_configured to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %phy_configured, align 4
  store i16 %autoneg_advertised.0, ptr %autoneg_advertised22, align 4
  %call24 = tail call i32 @atl1c_restart_autoneg(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp.not = icmp eq i32 %call24, 0
  br i1 %cmp.not, label %if.end21.if.end33_crit_edge, label %do.body

if.end21.if.end33_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

do.body:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1c_phy_to_ps_link.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1c_phy_to_ps_link, %if.then31)) #7
          to label %if.end33 [label %if.then31], !srcloc !121

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atl1c_phy_to_ps_link.__UNIQUE_ID_ddebug498, ptr noundef %dev, ptr noundef nonnull @.str.15) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %do.body, %if.end21.if.end33_crit_edge
  %ret.0 = phi i32 [ 0, %if.end21.if.end33_crit_edge ], [ -1, %if.then31 ], [ -1, %do.body ]
  %26 = ptrtoint ptr %autoneg_advertised22 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %24, ptr %autoneg_advertised22, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool35.not = icmp eq i16 %22, 0
  br i1 %tobool35.not, label %if.end33.if.end67_crit_edge, label %for.cond.preheader

if.end33.if.end67_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

for.cond.preheader:                               ; preds = %if.end33
  %hibernate.i88 = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 20
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %for.cond.preheader
  %i.0127 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.while.cond.preheader_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader
  %__ms.0126 = phi i32 [ 100, %while.cond.preheader ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0126, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #7
  %tobool39.not = icmp eq i32 %dec, 0
  br i1 %tobool39.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data.i85) #7
  %28 = ptrtoint ptr %phy_data.i85 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %phy_data.i85, align 2, !annotation !73
  %29 = ptrtoint ptr %nic_type.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nic_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %30)
  %cmp.i87 = icmp eq i32 %30, 6
  br i1 %cmp.i87, label %if.then.i91, label %atl1c_get_link_status.exit103

if.then.i91:                                      ; preds = %while.end
  %31 = ptrtoint ptr %hibernate.i88 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %hibernate.i88, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i89 = icmp eq i8 %32, 0
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 4
  %add.ptr15.i90 = getelementptr i8, ptr %34, i32 7944
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i90) #7
  br i1 %tobool.not.i89, label %if.else.i94, label %if.then3.i93, !prof !46

if.then3.i93:                                     ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 4
  %add.ptr8.i92 = getelementptr i8, ptr %37, i32 7944
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i92) #7, !srcloc !48
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  br label %do.end.i97

if.else.i94:                                      ; preds = %if.then.i91
  call void @__sanitizer_cov_trace_pc() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  br label %do.end.i97

do.end.i97:                                       ; preds = %if.else.i94, %if.then3.i93
  %spd.0.i95 = phi i32 [ %39, %if.then3.i93 ], [ %40, %if.else.i94 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spd.0.i95)
  %tobool19.i96.not = icmp eq i32 %spd.0.i95, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data.i85) #7
  br i1 %tobool19.i96.not, label %do.end.i97.for.inc_crit_edge, label %do.end.i97.if.then41_crit_edge

do.end.i97.if.then41_crit_edge:                   ; preds = %do.end.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

do.end.i97.for.inc_crit_edge:                     ; preds = %do.end.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

atl1c_get_link_status.exit103:                    ; preds = %while.end
  %call.i.i98 = call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %phy_data.i85) #7
  %call.i38.i99 = call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef nonnull %phy_data.i85) #7
  %41 = ptrtoint ptr %phy_data.i85 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %phy_data.i85, align 2
  %43 = and i16 %42, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool27.i100.not = icmp eq i16 %43, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data.i85) #7
  br i1 %tobool27.i100.not, label %atl1c_get_link_status.exit103.for.inc_crit_edge, label %atl1c_get_link_status.exit103.if.then41_crit_edge

atl1c_get_link_status.exit103.if.then41_crit_edge: ; preds = %atl1c_get_link_status.exit103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

atl1c_get_link_status.exit103.for.inc_crit_edge:  ; preds = %atl1c_get_link_status.exit103
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then41:                                        ; preds = %atl1c_get_link_status.exit103.if.then41_crit_edge, %do.end.i97.if.then41_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_data.i104) #7
  %44 = ptrtoint ptr %phy_data.i104 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 -1, ptr %phy_data.i104, align 2, !annotation !73
  %45 = ptrtoint ptr %nic_type.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nic_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %46)
  %cmp.i106 = icmp eq i32 %46, 6
  br i1 %cmp.i106, label %if.then.i110, label %if.end19.i

if.then.i110:                                     ; preds = %if.then41
  %47 = ptrtoint ptr %hibernate.i88 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %hibernate.i88, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i108 = icmp eq i8 %48, 0
  %49 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hw, align 4
  %add.ptr15.i109 = getelementptr i8, ptr %50, i32 7944
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i109) #7
  br i1 %tobool.not.i108, label %if.else.i113, label %if.then3.i112, !prof !46

if.then3.i112:                                    ; preds = %if.then.i110
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %52 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw, align 4
  %add.ptr8.i111 = getelementptr i8, ptr %53, i32 7944
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i111) #7, !srcloc !48
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  br label %do.end.i115

if.else.i113:                                     ; preds = %if.then.i110
  call void @__sanitizer_cov_trace_pc() #9
  %56 = tail call i32 @llvm.bswap.i32(i32 %51) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  br label %do.end.i115

do.end.i115:                                      ; preds = %if.else.i113, %if.then3.i112
  %spd.0.i114 = phi i32 [ %55, %if.then3.i112 ], [ %56, %if.else.i113 ]
  %conv.i = trunc i32 %spd.0.i114 to i16
  br label %atl1c_get_speed_and_duplex.exit

if.end19.i:                                       ; preds = %if.then41
  %call.i.i116 = call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef nonnull %phy_data.i104) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i116)
  %tobool21.not.i = icmp eq i32 %call.i.i116, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end19.i.do.body46_crit_edge

if.end19.i.do.body46_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body46

if.end23.i:                                       ; preds = %if.end19.i
  %57 = ptrtoint ptr %phy_data.i104 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %phy_data.i104, align 2
  %59 = and i16 %58, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool25.not.i = icmp eq i16 %59, 0
  br i1 %tobool25.not.i, label %if.end23.i.do.body46_crit_edge, label %if.end27.i

if.end23.i.do.body46_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body46

if.end27.i:                                       ; preds = %if.end23.i
  %and29.i = and i16 %58, -16384
  %60 = zext i16 %and29.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %and29.i, label %if.end27.i.do.body46_crit_edge [
    i16 -32768, label %if.end27.i.sw.epilog.i_crit_edge
    i16 16384, label %sw.bb30.i
    i16 0, label %sw.bb31.i
  ]

if.end27.i.sw.epilog.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end27.i.do.body46_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body46

sw.bb30.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb31.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb31.i, %sw.bb30.i, %if.end27.i.sw.epilog.i_crit_edge
  %.sink.i = phi i16 [ 10, %sw.bb31.i ], [ 100, %sw.bb30.i ], [ 1000, %if.end27.i.sw.epilog.i_crit_edge ]
  %61 = and i16 %58, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool34.not.i = icmp eq i16 %61, 0
  %..i = select i1 %tobool34.not.i, i16 1, i16 2
  br label %atl1c_get_speed_and_duplex.exit

atl1c_get_speed_and_duplex.exit:                  ; preds = %sw.epilog.i, %do.end.i115
  %speed.1 = phi i16 [ %conv.i, %do.end.i115 ], [ %.sink.i, %sw.epilog.i ]
  %duplex.0 = phi i16 [ 2, %do.end.i115 ], [ %..i, %sw.epilog.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data.i104) #7
  br label %if.end67

do.body46:                                        ; preds = %if.end27.i.do.body46_crit_edge, %if.end23.i.do.body46_crit_edge, %if.end19.i.do.body46_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_data.i104) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1c_phy_to_ps_link.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1c_phy_to_ps_link, %if.then58)) #7
          to label %if.end67 [label %if.then58], !srcloc !121

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  %dev59 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atl1c_phy_to_ps_link.__UNIQUE_ID_ddebug499, ptr noundef %dev59, ptr noundef nonnull @.str.16) #7
  br label %if.end67

for.inc:                                          ; preds = %atl1c_get_link_status.exit103.for.inc_crit_edge, %do.end.i97.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0127, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.inc.if.end67_crit_edge, label %for.inc.while.cond.preheader_crit_edge

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader

for.inc.if.end67_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.end67:                                         ; preds = %for.inc.if.end67_crit_edge, %if.then58, %do.body46, %atl1c_get_speed_and_duplex.exit, %if.end33.if.end67_crit_edge, %atl1c_get_link_status.exit.if.end67_crit_edge, %do.end.i.if.end67_crit_edge
  %speed.2 = phi i16 [ -1, %if.end33.if.end67_crit_edge ], [ %speed.1, %atl1c_get_speed_and_duplex.exit ], [ -1, %if.then58 ], [ -1, %do.body46 ], [ 10, %do.end.i.if.end67_crit_edge ], [ 10, %atl1c_get_link_status.exit.if.end67_crit_edge ], [ -1, %for.inc.if.end67_crit_edge ]
  %duplex.1 = phi i16 [ 2, %if.end33.if.end67_crit_edge ], [ %duplex.0, %atl1c_get_speed_and_duplex.exit ], [ 2, %if.then58 ], [ 2, %do.body46 ], [ 1, %do.end.i.if.end67_crit_edge ], [ 1, %atl1c_get_link_status.exit.if.end67_crit_edge ], [ 2, %for.inc.if.end67_crit_edge ]
  %ret.1 = phi i32 [ %ret.0, %if.end33.if.end67_crit_edge ], [ %ret.0, %atl1c_get_speed_and_duplex.exit ], [ %ret.0, %if.then58 ], [ %ret.0, %do.body46 ], [ 0, %do.end.i.if.end67_crit_edge ], [ 0, %atl1c_get_link_status.exit.if.end67_crit_edge ], [ %ret.0, %for.inc.if.end67_crit_edge ]
  %link_speed = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 14
  %62 = ptrtoint ptr %link_speed to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %speed.2, ptr %link_speed, align 4
  %link_duplex = getelementptr inbounds %struct.atl1c_adapter, ptr %1, i32 0, i32 15
  %63 = ptrtoint ptr %link_duplex to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %duplex.1, ptr %link_duplex, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mii_lpa_data) #7
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atl1c_restart_autoneg(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg_advertised.i = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 22
  %0 = ptrtoint ptr %autoneg_advertised.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %autoneg_advertised.i, align 4
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not.i = icmp eq i16 %2, 0
  %spec.select.i = select i1 %tobool.not.i, i16 3072, i16 3104
  %3 = shl i16 %1, 5
  %4 = and i16 %3, 448
  %5 = or i16 %spec.select.i, %4
  %6 = and i16 %1, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool33.not.i = icmp eq i16 %6, 0
  %mii_adv_data.4.i = select i1 %tobool33.not.i, i16 %5, i16 3552
  %link_cap_flags.i = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 29
  %7 = ptrtoint ptr %link_cap_flags.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %link_cap_flags.i, align 2
  %call.i.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 4, i16 noundef zeroext %mii_adv_data.4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %atl1c_phy_setup_adv.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

atl1c_phy_setup_adv.exit:                         ; preds = %entry
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool41.not.i = icmp eq i16 %9, 0
  %10 = shl i16 %1, 4
  %11 = and i16 %10, 768
  %spec.select98.i = select i1 %tobool33.not.i, i16 %11, i16 768
  %mii_giga_ctrl_data.2.i = select i1 %tobool41.not.i, i16 0, i16 %spec.select98.i
  %call.i99.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 9, i16 noundef zeroext %mii_giga_ctrl_data.2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99.i)
  %cmp73.not.i.not = icmp eq i32 %call.i99.i, 0
  br i1 %cmp73.not.i.not, label %if.end, label %atl1c_phy_setup_adv.exit.cleanup_crit_edge

atl1c_phy_setup_adv.exit.cleanup_crit_edge:       ; preds = %atl1c_phy_setup_adv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %atl1c_phy_setup_adv.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext -28160) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %atl1c_phy_setup_adv.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -1, %atl1c_phy_setup_adv.exit.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @atl1c_post_phy_linkchg(ptr nocapture noundef readonly %hw, i16 noundef zeroext %link_speed) local_unnamed_addr #0 align 64 {
entry:
  %phy_val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %phy_val) #7
  %0 = ptrtoint ptr %phy_val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phy_val, align 2, !annotation !73
  %nic_type = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %nic_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nic_type, align 4
  %.off = add i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %link_speed)
  %cmp9.not = icmp eq i16 %link_speed, -1
  br i1 %cmp9.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %cmp13 = icmp eq i32 %2, 5
  br i1 %cmp13, label %if.then15, label %if.then11.if.end23_crit_edge

if.then11.if.end23_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then15:                                        ; preds = %if.then11
  %call.i = call i32 @atl1c_read_phy_core(ptr noundef %hw, i1 noundef zeroext true, i8 noundef zeroext 3, i16 noundef zeroext -32762, ptr noundef nonnull %phy_val) #7
  %3 = ptrtoint ptr %phy_val to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %phy_val, align 2
  %5 = and i16 %4, 511
  call void @__sanitizer_cov_trace_const_cmp2(i16 80, i16 %5)
  %cmp19 = icmp ugt i16 %5, 80
  %conv21 = select i1 %cmp19, i16 -19952, i16 12832
  %6 = ptrtoint ptr %phy_val to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv21, ptr %phy_val, align 2
  %call.i.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then15.if.end23_crit_edge, !prof !46

if.then15.if.end23_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.else.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, i16 noundef zeroext %conv21) #7
  br label %if.end23

if.end23:                                         ; preds = %if.else.i, %if.then15.if.end23_crit_edge, %if.then11.if.end23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %link_speed)
  %cmp26 = icmp eq i16 %link_speed, 100
  %or.cond = and i1 %cmp26, %switch
  br i1 %or.cond, label %land.lhs.true28, label %if.end23.if.end45_crit_edge

if.end23.if.end45_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

land.lhs.true28:                                  ; preds = %if.end23
  %msi_lnkpatch = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 42
  %7 = ptrtoint ptr %msi_lnkpatch to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %msi_lnkpatch, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool29.not = icmp eq i8 %8, 0
  br i1 %tobool29.not, label %land.lhs.true28.if.end45_crit_edge, label %if.then31

land.lhs.true28.if.end45_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then31:                                        ; preds = %land.lhs.true28
  %call.i.i60 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i60)
  %tobool.not.i61 = icmp eq i32 %call.i.i60, 0
  br i1 %tobool.not.i61, label %if.else.i63, label %if.then31.atl1c_write_phy_dbg.exit65_crit_edge, !prof !46

if.then31.atl1c_write_phy_dbg.exit65_crit_edge:   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_write_phy_dbg.exit65

if.else.i63:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i62 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, i16 noundef zeroext 1514) #7
  br label %atl1c_write_phy_dbg.exit65

atl1c_write_phy_dbg.exit65:                       ; preds = %if.else.i63, %if.then31.atl1c_write_phy_dbg.exit65_crit_edge
  %call.i.i66 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i66)
  %tobool.not.i67 = icmp eq i32 %call.i.i66, 0
  br i1 %tobool.not.i67, label %atl1c_write_phy_dbg.exit65.if.end45.sink.split_crit_edge, label %atl1c_write_phy_dbg.exit65.if.end45_crit_edge, !prof !46

atl1c_write_phy_dbg.exit65.if.end45_crit_edge:    ; preds = %atl1c_write_phy_dbg.exit65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

atl1c_write_phy_dbg.exit65.if.end45.sink.split_crit_edge: ; preds = %atl1c_write_phy_dbg.exit65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.sink.split

if.else:                                          ; preds = %entry
  br i1 %switch, label %land.lhs.true37, label %if.else.if.end45_crit_edge

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

land.lhs.true37:                                  ; preds = %if.else
  %msi_lnkpatch38 = getelementptr inbounds %struct.atl1c_hw, ptr %hw, i32 0, i32 42
  %9 = ptrtoint ptr %msi_lnkpatch38 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %msi_lnkpatch38, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool39.not = icmp eq i8 %10, 0
  br i1 %tobool39.not, label %land.lhs.true37.if.end45_crit_edge, label %if.then41

land.lhs.true37.if.end45_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then41:                                        ; preds = %land.lhs.true37
  %call.i.i72 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i72)
  %tobool.not.i73 = icmp eq i32 %call.i.i72, 0
  br i1 %tobool.not.i73, label %if.else.i75, label %if.then41.atl1c_write_phy_dbg.exit77_crit_edge, !prof !46

if.then41.atl1c_write_phy_dbg.exit77_crit_edge:   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %atl1c_write_phy_dbg.exit77

if.else.i75:                                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %call.i7.i74 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, i16 noundef zeroext -30533) #7
  br label %atl1c_write_phy_dbg.exit77

atl1c_write_phy_dbg.exit77:                       ; preds = %if.else.i75, %if.then41.atl1c_write_phy_dbg.exit77_crit_edge
  %call.i.i78 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 29, i16 noundef zeroext 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i78)
  %tobool.not.i79 = icmp eq i32 %call.i.i78, 0
  br i1 %tobool.not.i79, label %atl1c_write_phy_dbg.exit77.if.end45.sink.split_crit_edge, label %atl1c_write_phy_dbg.exit77.if.end45_crit_edge, !prof !46

atl1c_write_phy_dbg.exit77.if.end45_crit_edge:    ; preds = %atl1c_write_phy_dbg.exit77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

atl1c_write_phy_dbg.exit77.if.end45.sink.split_crit_edge: ; preds = %atl1c_write_phy_dbg.exit77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.sink.split

if.end45.sink.split:                              ; preds = %atl1c_write_phy_dbg.exit77.if.end45.sink.split_crit_edge, %atl1c_write_phy_dbg.exit65.if.end45.sink.split_crit_edge
  %.sink = phi i16 [ 20411, %atl1c_write_phy_dbg.exit65.if.end45.sink.split_crit_edge ], [ 746, %atl1c_write_phy_dbg.exit77.if.end45.sink.split_crit_edge ]
  %call.i7.i80 = tail call i32 @atl1c_write_phy_core(ptr noundef %hw, i1 noundef zeroext false, i8 noundef zeroext 0, i16 noundef zeroext 30, i16 noundef zeroext %.sink) #7
  br label %if.end45

if.end45:                                         ; preds = %if.end45.sink.split, %atl1c_write_phy_dbg.exit77.if.end45_crit_edge, %land.lhs.true37.if.end45_crit_edge, %if.else.if.end45_crit_edge, %atl1c_write_phy_dbg.exit65.if.end45_crit_edge, %land.lhs.true28.if.end45_crit_edge, %if.end23.if.end45_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %phy_val) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !31, !32, !33, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_hw.c", i32 583, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @atl1c_phy_reset._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @atl1c_phy_reset._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_hw.c", i32 604, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @atl1c_phy_init._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @atl1c_phy_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_hw.c", i32 612, i32 5}
!15 = !{ptr @atl1c_phy_init._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @atl1c_phy_init._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_hw.c", i32 631, i32 4}
!19 = !{ptr @atl1c_phy_init._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @atl1c_phy_init._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_hw.c", i32 740, i32 4}
!23 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @atl1c_phy_to_ps_link.__UNIQUE_ID_ddebug498, !22, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_hw.c", i32 751, i32 7}
!28 = !{ptr @atl1c_phy_to_ps_link.__UNIQUE_ID_ddebug499, !27, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_hw.c", i32 824, i32 4}
!31 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @atl1c_power_saving.__UNIQUE_ID_ddebug500, !30, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/atheros/atl1c/atl1c_hw.c", i32 831, i32 2}
!35 = !{ptr @atl1c_power_saving.__UNIQUE_ID_ddebug501, !34, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i8 0, i8 2}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 2158024249}
!48 = !{i64 5001667}
!49 = !{i64 2158024763}
!50 = !{i64 2158025277}
!51 = !{i64 2158026195}
!52 = !{i64 2158026709}
!53 = !{i64 2158027223}
!54 = !{i64 2158027644}
!55 = !{i64 5001249}
!56 = !{i64 2158028201}
!57 = !{i64 2158042555}
!58 = !{i64 2158043069}
!59 = !{i64 2158043583}
!60 = !{i64 2158044127}
!61 = !{i64 2158044743}
!62 = !{i64 2158045245}
!63 = !{i64 2158046842}
!64 = !{i64 2158047356}
!65 = !{i64 2158047870}
!66 = !{i64 2158048726}
!67 = !{i64 2158049240}
!68 = !{i64 2158049754}
!69 = !{i64 2158050592}
!70 = !{i64 2158051106}
!71 = !{i64 2158051620}
!72 = !{i64 2158052094}
!73 = !{!"auto-init"}
!74 = !{i64 2158029261}
!75 = !{i64 2158029775}
!76 = !{i64 2158030289}
!77 = !{i64 2158031157}
!78 = !{i64 2158031687}
!79 = !{i64 2158032217}
!80 = !{i64 2158033248}
!81 = !{i64 2158033762}
!82 = !{i64 2158034276}
!83 = !{i64 2158034754}
!84 = !{i64 2158035488}
!85 = !{i64 2158036905}
!86 = !{i64 2158037415}
!87 = !{i64 2158037925}
!88 = !{i64 2158038322}
!89 = !{i64 2158039401}
!90 = !{i64 2158039911}
!91 = !{i64 2158040421}
!92 = !{i64 2158040905}
!93 = !{i64 2158053051}
!94 = !{i64 2158053398}
!95 = !{i64 2158054455}
!96 = !{i64 2158054969}
!97 = !{i64 2158055483}
!98 = !{i64 2158056494}
!99 = !{i64 2158057507}
!100 = !{i64 2158058166}
!101 = !{i64 2158059464}
!102 = !{i64 2158060959}
!103 = !{i64 2158061988}
!104 = !{i64 2158062502}
!105 = !{i64 2158063016}
!106 = !{i64 2158067765}
!107 = !{i64 2158069364}
!108 = !{i64 2158098979}
!109 = !{i64 2158099493}
!110 = !{i64 2158100007}
!111 = !{i64 2158100849}
!112 = !{i64 2158101363}
!113 = !{i64 2158101877}
!114 = !{i64 2158102719}
!115 = !{i64 2158103233}
!116 = !{i64 2158103747}
!117 = !{i64 2158105648}
!118 = !{i64 2158106173}
!119 = !{i64 2158106689}
!120 = !{i64 2158107191}
!121 = !{i64 2148506652, i64 2148506657, i64 2148506670, i64 2148506714, i64 2148506748, i64 2148506769}
!122 = !{i64 2158113601}
!123 = !{i64 2158114126}
!124 = !{i64 2158114642}
!125 = !{i64 2158115158}
!126 = !{i64 2158072061}
!127 = !{i64 2158072575}
!128 = !{i64 2158073089}
!129 = !{i64 2158074484}
!130 = !{i64 2158075218}
!131 = !{i64 2158076216}
!132 = !{i64 2158077040}
!133 = !{i64 2158078577}
!134 = !{i64 2158079091}
!135 = !{i64 2158079605}
!136 = !{i64 2158080055}
!137 = !{i64 2158088487}
!138 = !{i64 2158089001}
!139 = !{i64 2158089515}
!140 = !{i64 2158090364}
!141 = !{i64 2158090878}
!142 = !{i64 2158091392}
