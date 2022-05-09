; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb3/aq100x.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb3/aq100x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cphy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cphy = type { i8, i16, i32, ptr, ptr, i32, ptr, %struct.mdio_if_info, [1628 x i16] }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.mdio_ops = type { ptr, ptr, i32 }
%struct.adapter = type { %struct.t3cdev, %struct.list_head, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.adapter_params, i32, [3 x i32], i32, [9 x %struct.anon.120], [40 x i8], %struct.sge, %struct.mc7, %struct.mc7, %struct.mc7, %struct.mc5, [2 x ptr], i32, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, ptr, %struct.mutex, %struct.spinlock, %struct.spinlock, ptr, [56 x i8] }
%struct.t3cdev = type { [16 x i8], i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.adapter_params = type { %struct.sge_params, %struct.mc5_params, %struct.tp_params, %struct.vpd_params, %struct.pci_params, ptr, [16 x i16], [32 x i16], [32 x i16], i32, i32, i32, i32, i32, i32 }
%struct.sge_params = type { i32, [8 x %struct.qset_params] }
%struct.qset_params = type { i32, i32, i32, i32, i32, [3 x i32], i32, i32 }
%struct.mc5_params = type { i32, i32, i32, i32 }
%struct.tp_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vpd_params = type { i32, i32, i32, i32, i32, [17 x i8], [6 x i8], [2 x i8], [2 x i16] }
%struct.pci_params = type { i32, i16, i8, i8 }
%struct.anon.120 = type { i16, [22 x i8] }
%struct.sge = type { [8 x %struct.sge_qset], %struct.spinlock, [84 x i8] }
%struct.sge_qset = type { ptr, %struct.napi_struct, %struct.sge_rspq, [2 x %struct.sge_fl], [3 x %struct.sge_txq], i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.timer_list, [5 x i32], [40 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.sge_rspq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.sk_buff_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.40, i32, %struct.spinlock }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, %struct.fl_pg_chunk, i32, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.fl_pg_chunk = type { ptr, ptr, i32, ptr, i32 }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.spinlock, i32, i32, %struct.sk_buff_head, %struct.work_struct, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mc7 = type { ptr, i32, i32, i32, ptr, %struct.mc7_stats }
%struct.mc7_stats = type { i32, i32, i32, i32 }
%struct.mc5 = type { ptr, i32, i8, i8, i8, %struct.mc5_stats }
%struct.mc5_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.119, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%union.anon.119 = type { ptr }

@aq100x_ops = internal constant { %struct.cphy_ops, [44 x i8] } { %struct.cphy_ops { ptr @aq100x_reset, ptr @aq100x_intr_enable, ptr @aq100x_intr_disable, ptr @aq100x_intr_clear, ptr @aq100x_intr_handler, ptr @aq100x_autoneg_enable, ptr @aq100x_autoneg_restart, ptr @aq100x_advertise, ptr @aq100x_set_loopback, ptr @aq100x_set_speed_duplex, ptr @aq100x_get_link_status, ptr @aq100x_power_down, i32 26 }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"1000/10GBASE-T\00", [17 x i8] zeroinitializer }, align 32
@t3_aq100x_phy_prep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 298, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PHY%d: reset failed (0x%x, 0x%x).\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"t3_aq100x_phy_prep\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/chelsio/cxgb3/aq100x.c\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@t3_aq100x_phy_prep._entry_ptr = internal global ptr @t3_aq100x_phy_prep._entry, section ".printk_index", align 4
@t3_aq100x_phy_prep._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 308, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PHY%d: reset timed out (0x%x).\0A\00", [32 x i8] zeroinitializer }, align 32
@t3_aq100x_phy_prep._entry_ptr.8 = internal global ptr @t3_aq100x_phy_prep._entry.6, section ".printk_index", align 4
@t3_aq100x_phy_prep._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 316, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PHY%d: reset took %ums\0A\00", [40 x i8] zeroinitializer }, align 32
@t3_aq100x_phy_prep._entry_ptr.11 = internal global ptr @t3_aq100x_phy_prep._entry.9, section ".printk_index", align 4
@t3_aq100x_phy_prep._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PHY%d: unsupported firmware %d\0A\00", [32 x i8] zeroinitializer }, align 32
@t3_aq100x_phy_prep._entry_ptr.14 = internal global ptr @t3_aq100x_phy_prep._entry.12, section ".printk_index", align 4
@t3_aq100x_phy_prep._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 339, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PHY%d does not start in low power mode.\0A\00", [55 x i8] zeroinitializer }, align 32
@t3_aq100x_phy_prep._entry_ptr.17 = internal global ptr @t3_aq100x_phy_prep._entry.15, section ".printk_index", align 4
@t3_aq100x_phy_prep._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 350, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"PHY%d: incorrect XAUI settings (0x%x, 0x%x).\0A\00", [50 x i8] zeroinitializer }, align 32
@t3_aq100x_phy_prep._entry_ptr.20 = internal global ptr @t3_aq100x_phy_prep._entry.18, section ".printk_index", align 4
@aq100x_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 75, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PHY%d: reset failed (0x%x).\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aq100x_reset\00", [19 x i8] zeroinitializer }, align 32
@aq100x_reset._entry_ptr = internal global ptr @aq100x_reset._entry, section ".printk_index", align 4
@switch.table.aq100x_get_link_status = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 10, i32 10000, i32 100, i32 10000, i32 1000, i32 10000, i32 10000], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [11 x i8] c"aq100x_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 250, i32 30 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 275, i32 5 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 297, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 307, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 316, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 321, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 338, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 348, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [47 x i8] c"../drivers/net/ethernet/chelsio/cxgb3/aq100x.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 74, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [36 x i8] c"switch.table.aq100x_get_link_status\00", align 1
@llvm.compiler.used = appending global [29 x ptr] [ptr @aq100x_reset._entry, ptr @aq100x_reset._entry_ptr, ptr @t3_aq100x_phy_prep._entry, ptr @t3_aq100x_phy_prep._entry.12, ptr @t3_aq100x_phy_prep._entry.15, ptr @t3_aq100x_phy_prep._entry.18, ptr @t3_aq100x_phy_prep._entry.6, ptr @t3_aq100x_phy_prep._entry.9, ptr @t3_aq100x_phy_prep._entry_ptr, ptr @t3_aq100x_phy_prep._entry_ptr.11, ptr @t3_aq100x_phy_prep._entry_ptr.14, ptr @t3_aq100x_phy_prep._entry_ptr.17, ptr @t3_aq100x_phy_prep._entry_ptr.20, ptr @t3_aq100x_phy_prep._entry_ptr.8, ptr @aq100x_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @switch.table.aq100x_get_link_status], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq100x_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_aq100x_phy_prep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_aq100x_phy_prep._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_aq100x_phy_prep._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_aq100x_phy_prep._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_aq100x_phy_prep._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_aq100x_phy_prep._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aq100x_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.aq100x_get_link_status to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_aq100x_phy_prep(ptr noundef %phy, ptr noundef %adapter, i32 noundef %phy_addr, ptr noundef readonly %mdio_ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %caps1.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 2
  %0 = ptrtoint ptr %caps1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4576, ptr %caps1.i, align 4
  %adapter2.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 3
  %1 = ptrtoint ptr %adapter2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %adapter, ptr %adapter2.i, align 4
  %desc3.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 4
  %2 = ptrtoint ptr %desc3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str, ptr %desc3.i, align 4
  %ops.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 6
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @aq100x_ops, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %mdio_ops, null
  br i1 %tobool.not.i, label %entry.cphy_init.exit_crit_edge, label %if.then.i

entry.cphy_init.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cphy_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %phy_addr, ptr %mdio.i, align 4
  %mmds5.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %mmds5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 26, ptr %mmds5.i, align 4
  %mode_support.i = getelementptr inbounds %struct.mdio_ops, ptr %mdio_ops, i32 0, i32 2
  %6 = ptrtoint ptr %mode_support.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode_support.i, align 4
  %mode_support7.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %mode_support7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mode_support7.i, align 4
  %9 = ptrtoint ptr %mdio_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdio_ops, align 4
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %11 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %mdio_read.i, align 4
  %write.i = getelementptr inbounds %struct.mdio_ops, ptr %mdio_ops, i32 0, i32 1
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %14 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %mdio_write.i, align 4
  br label %cphy_init.exit

cphy_init.exit:                                   ; preds = %if.then.i, %entry.cphy_init.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy_addr)
  %tobool.not = icmp eq i32 %phy_addr, 0
  %cond = select i1 %tobool.not, i32 64, i32 1024
  tail call void @t3_set_reg_field(ptr noundef %adapter, i32 noundef 208, i32 noundef %cond, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 1) #5
  tail call void @t3_set_reg_field(ptr noundef %adapter, i32 noundef 208, i32 noundef %cond, i32 noundef %cond) #5
  tail call void @msleep(i32 noundef 1000) #5
  %mdio.i102 = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_read.i103 = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %cphy_init.exit
  %wait.0 = phi i32 [ 500, %cphy_init.exit ], [ %dec, %land.rhs.do.body_crit_edge ]
  %15 = ptrtoint ptr %mdio_read.i103 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdio_read.i103, align 4
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %mdio.i102 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mdio.i102, align 4
  %call.i = tail call i32 %16(ptr noundef %18, i32 noundef %20, i32 noundef 30, i16 noundef zeroext 0) #5
  %21 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %21)
  %cmp = icmp eq i32 %21, 65535
  %or.cond = select i1 %tobool1.not, i1 true, i1 %cmp
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %22 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #5
  %pdev = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %phy_addr, i32 noundef %22, i32 noundef %21) #8
  br label %cleanup

if.end:                                           ; preds = %do.body
  %and = and i32 %21, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end17, label %land.rhs

land.rhs:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 10) #5
  %dec = add nsw i32 %wait.0, -1
  %tobool8.not = icmp eq i32 %dec, 0
  br i1 %tobool8.not, label %do.end14, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end14:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %pdev15 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %25 = ptrtoint ptr %pdev15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev15, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev16, ptr noundef nonnull @.str.7, i32 noundef %phy_addr, i32 noundef %and) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %sub = sub i32 500, %wait.0
  %mul = mul i32 %sub, 10
  %add = add i32 %mul, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000, i32 %add)
  %cmp18 = icmp ugt i32 %add, 3000
  br i1 %cmp18, label %do.end22, label %if.end17.if.end25_crit_edge

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %pdev23 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %27 = ptrtoint ptr %pdev23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev23, align 8
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev24, ptr noundef nonnull @.str.10, i32 noundef %phy_addr, i32 noundef %add) #8
  br label %if.end25

if.end25:                                         ; preds = %do.end22, %if.end17.if.end25_crit_edge
  %29 = ptrtoint ptr %mdio_read.i103 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mdio_read.i103, align 4
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %33 = ptrtoint ptr %mdio.i102 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mdio.i102, align 4
  %call.i107 = tail call i32 %30(ptr noundef %32, i32 noundef %34, i32 noundef 30, i16 noundef zeroext 32) #5
  %35 = tail call i32 @llvm.smax.i32(i32 %call.i107, i32 -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %35)
  %cmp27.not = icmp eq i32 %35, 101
  br i1 %cmp27.not, label %if.end25.if.end34_crit_edge, label %do.end31

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %pdev32 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %36 = ptrtoint ptr %pdev32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev32, align 8
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev33, ptr noundef nonnull @.str.13, i32 noundef %phy_addr, i32 noundef %35) #8
  br label %if.end34

if.end34:                                         ; preds = %do.end31, %if.end25.if.end34_crit_edge
  %38 = ptrtoint ptr %mdio_read.i103 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mdio_read.i103, align 4
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  %42 = ptrtoint ptr %mdio.i102 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mdio.i102, align 4
  %call.i111 = tail call i32 %39(ptr noundef %41, i32 noundef %43, i32 noundef 30, i16 noundef zeroext 0) #5
  %44 = tail call i32 @llvm.smin.i32(i32 %call.i111, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i111)
  %tobool36.not = icmp sgt i32 %call.i111, -1
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %and39 = and i32 %call.i111, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.end48, label %if.then41

if.then41:                                        ; preds = %if.end38
  %call42 = tail call i32 @t3_mdio_change_bits(ptr noundef %phy, i32 noundef 30, i32 noundef 0, i32 noundef 4096, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.then41.cleanup_crit_edge

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end45:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 10) #5
  br label %if.end51

do.end48:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %pdev49 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %45 = ptrtoint ptr %pdev49 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev49, align 8
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev50, ptr noundef nonnull @.str.16, i32 noundef %phy_addr) #8
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %if.end45
  %47 = ptrtoint ptr %mdio_read.i103 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mdio_read.i103, align 4
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  %51 = ptrtoint ptr %mdio.i102 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mdio.i102, align 4
  %call.i115 = tail call i32 %48(ptr noundef %50, i32 noundef %52, i32 noundef 4, i16 noundef zeroext -15360) #5
  %53 = tail call i32 @llvm.smax.i32(i32 %call.i115, i32 -1) #5
  %54 = ptrtoint ptr %mdio_read.i103 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mdio_read.i103, align 4
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  %58 = ptrtoint ptr %mdio.i102 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mdio.i102, align 4
  %call.i119 = tail call i32 %55(ptr noundef %57, i32 noundef %59, i32 noundef 4, i16 noundef zeroext -7168) #5
  %60 = tail call i32 @llvm.smax.i32(i32 %call.i119, i32 -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %53)
  %cmp54.not = icmp eq i32 %53, 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %60)
  %cmp56.not = icmp eq i32 %60, 27
  %or.cond130 = select i1 %cmp54.not, i1 %cmp56.not, i1 false
  br i1 %or.cond130, label %if.end51.cleanup_crit_edge, label %do.end60

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end60:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %pdev61 = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 3
  %61 = ptrtoint ptr %pdev61 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev61, align 8
  %dev62 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev62, ptr noundef nonnull @.str.19, i32 noundef %phy_addr, i32 noundef %53, i32 noundef %60) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %if.end51.cleanup_crit_edge, %if.then41.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %do.end14, %do.end
  %retval.0 = phi i32 [ %44, %if.end34.cleanup_crit_edge ], [ %call42, %if.then41.cleanup_crit_edge ], [ %22, %do.end ], [ 0, %do.end14 ], [ 0, %do.end60 ], [ 0, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_set_reg_field(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_mdio_change_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq100x_reset(ptr noundef %phy, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @t3_phy_reset(ptr noundef %phy, i32 noundef 30, i32 noundef 3000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %adapter = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 4
  %pdev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %mdio = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %4 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %5, i32 noundef %call) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq100x_intr_enable(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -4096, i16 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i, align 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdio.i, align 4
  %call.i8 = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef 30, i16 noundef zeroext -256, i16 noundef zeroext -32768) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i8, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq100x_intr_disable(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 30, i16 noundef zeroext -256, i16 noundef zeroext 0) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq100x_intr_clear(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 30, i16 noundef zeroext -1024) #5
  %6 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_read.i, align 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdio.i, align 4
  %call.i6 = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef 1, i16 noundef zeroext 1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq100x_intr_handler(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 30, i16 noundef zeroext -1024) #5
  %6 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdio_read.i, align 4
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mdio.i, align 4
  %call.i9 = tail call i32 %8(ptr noundef %10, i32 noundef %12, i32 noundef 1, i16 noundef zeroext 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ %6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq100x_autoneg_enable(ptr noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %0 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 @mdio_set_flag(ptr noundef %mdio.i, i32 noundef %1, i32 noundef 1, i16 noundef zeroext 0, i32 noundef 2048, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mdio.i, align 4
  %call2 = tail call i32 @mdio_set_flag(ptr noundef %mdio.i, i32 noundef %3, i32 noundef 7, i16 noundef zeroext 0, i32 noundef 4608, i1 noundef zeroext true) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call.i, %entry.if.end_crit_edge ], [ %call2, %if.then ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq100x_autoneg_restart(ptr noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %0 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 @mdio_set_flag(ptr noundef %mdio.i, i32 noundef %1, i32 noundef 1, i16 noundef zeroext 0, i32 noundef 2048, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mdio.i, align 4
  %call2 = tail call i32 @mdio_set_flag(ptr noundef %mdio.i, i32 noundef %3, i32 noundef 7, i16 noundef zeroext 0, i32 noundef 4608, i1 noundef zeroext true) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call.i, %entry.if.end_crit_edge ], [ %call2, %if.then ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq100x_advertise(ptr noundef %phy, i32 noundef %advertise_map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %advertise_map, 4096
  %call = tail call i32 @t3_mdio_change_bits(ptr noundef %phy, i32 noundef 7, i32 noundef 32, i32 noundef 4096, i32 noundef %and) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %entry
  %and4 = shl i32 %advertise_map, 10
  %0 = and i32 %and4, 49152
  %call14 = tail call i32 @t3_mdio_change_bits(ptr noundef %phy, i32 noundef 7, i32 noundef 50176, i32 noundef 49152, i32 noundef %0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %and18 = shl i32 %advertise_map, 5
  %1 = and i32 %and18, 384
  %and28 = lshr i32 %advertise_map, 3
  %2 = and i32 %and28, 1024
  %3 = or i32 %1, %2
  %4 = and i32 %and28, 2048
  %5 = or i32 %3, %4
  %call38 = tail call i32 @t3_mdio_change_bits(ptr noundef %phy, i32 noundef 7, i32 noundef 16, i32 noundef 4064, i32 noundef %5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %if.end17 ], [ %call, %entry.cleanup_crit_edge ], [ %call14, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq100x_set_loopback(ptr noundef %phy, i32 noundef %mmd, i32 noundef %dir, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %0 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mdio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool = icmp ne i32 %enable, 0
  %call = tail call i32 @mdio_set_flag(ptr noundef %mdio, i32 noundef %1, i32 noundef 1, i16 noundef zeroext 0, i32 noundef 16384, i1 noundef zeroext %tobool) #5
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aq100x_set_speed_duplex(ptr nocapture noundef readnone %phy, i32 noundef %speed, i32 noundef %duplex) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq100x_get_link_status(ptr nocapture noundef readonly %phy, ptr noundef writeonly %link_ok, ptr noundef writeonly %speed, ptr noundef writeonly %duplex, ptr nocapture noundef readnone %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %link_ok, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %entry
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -6144) #5
  %6 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool1.not = icmp sgt i32 %call.i, -1
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %and = and i32 %call.i, 1
  %7 = ptrtoint ptr %link_ok to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %link_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %entry.if.end6_crit_edge
  %mdio.i35 = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_read.i36 = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %8 = ptrtoint ptr %mdio_read.i36 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdio_read.i36, align 4
  %dev.i37 = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %10 = ptrtoint ptr %dev.i37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i37, align 4
  %12 = ptrtoint ptr %mdio.i35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mdio.i35, align 4
  %call.i38 = tail call i32 %9(ptr noundef %11, i32 noundef %13, i32 noundef 7, i16 noundef zeroext -14336) #5
  %14 = tail call i32 @llvm.smax.i32(i32 %call.i38, i32 -1) #5
  %15 = tail call i32 @llvm.smin.i32(i32 %call.i38, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i38)
  %tobool8.not = icmp sgt i32 %call.i38, -1
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %tobool11.not = icmp eq ptr %speed, null
  br i1 %tobool11.not, label %if.end10.if.end17_crit_edge, label %if.then12

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %and13 = and i32 %14, 6
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.aq100x_get_link_status, i32 0, i32 %and13
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %17 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %switch.load, ptr %speed, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %if.end10.if.end17_crit_edge
  %tobool18.not = icmp eq ptr %duplex, null
  br i1 %tobool18.not, label %if.end17.cleanup_crit_edge, label %if.then19

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %and20 = and i32 %14, 1
  %18 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and20, ptr %duplex, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end17.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %15, %if.end6.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aq100x_power_down(ptr noundef %phy, i32 noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %0 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mdio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %off)
  %tobool = icmp ne i32 %off, 0
  %call = tail call i32 @mdio_set_flag(ptr noundef %mdio, i32 noundef %1, i32 noundef 1, i16 noundef zeroext 0, i32 noundef 2048, i1 noundef zeroext %tobool) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_phy_reset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_set_flag(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb3/aq100x.c", i32 275, i32 5}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb3/aq100x.c", i32 297, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @t3_aq100x_phy_prep._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @t3_aq100x_phy_prep._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/chelsio/cxgb3/aq100x.c", i32 307, i32 3}
!12 = !{ptr @t3_aq100x_phy_prep._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @t3_aq100x_phy_prep._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/chelsio/cxgb3/aq100x.c", i32 316, i32 3}
!16 = !{ptr @t3_aq100x_phy_prep._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @t3_aq100x_phy_prep._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/chelsio/cxgb3/aq100x.c", i32 321, i32 3}
!20 = !{ptr @t3_aq100x_phy_prep._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @t3_aq100x_phy_prep._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/chelsio/cxgb3/aq100x.c", i32 338, i32 3}
!24 = !{ptr @t3_aq100x_phy_prep._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @t3_aq100x_phy_prep._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/chelsio/cxgb3/aq100x.c", i32 348, i32 3}
!28 = !{ptr @t3_aq100x_phy_prep._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @t3_aq100x_phy_prep._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @aq100x_ops, !31, !"aq100x_ops", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/chelsio/cxgb3/aq100x.c", i32 250, i32 30}
!32 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/chelsio/cxgb3/aq100x.c", i32 74, i32 3}
!34 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @aq100x_reset._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @aq100x_reset._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
