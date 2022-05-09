; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/stmicro/stmmac/altr_tse_pcs.c_pt.bc'
source_filename = "../drivers/net/ethernet/stmicro/stmmac/altr_tse_pcs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tse_pcs = type { ptr, ptr, ptr, %struct.timer_list, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@tse_pcs_fix_mac_speed.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&pcs->aneg_link_timer)\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tse_pcs_fix_mac_speed.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tse_pcs_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 84, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PCS could not get out of sw reset\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tse_pcs_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/stmicro/stmmac/altr_tse_pcs.c\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tse_pcs_reset._entry_ptr = internal global ptr @tse_pcs_reset._entry, section ".printk_index", align 4
@auto_nego_timer_callback.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.9, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dwmac_altr_socfpga\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"auto_nego_timer_callback\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Adapter: Auto Negotiation is completed\0A\00", [56 x i8] zeroinitializer }, align 32
@auto_nego_timer_callback.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.10, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Adapter: Link Partner is Up - 10/Full\0A\00", [57 x i8] zeroinitializer }, align 32
@auto_nego_timer_callback.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.11, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Adapter: Link Partner is Up - 100/Full\0A\00", [56 x i8] zeroinitializer }, align 32
@auto_nego_timer_callback.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.12, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Adapter: Link Partner is Up - 1000/Full\0A\00", [55 x i8] zeroinitializer }, align 32
@auto_nego_timer_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.4, i32 161, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Adapter does not support Half Duplex\0A\00", [58 x i8] zeroinitializer }, align 32
@auto_nego_timer_callback._entry_ptr = internal global ptr @auto_nego_timer_callback._entry, section ".printk_index", align 4
@auto_nego_timer_callback._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.4, i32 165, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@auto_nego_timer_callback._entry_ptr.15 = internal global ptr @auto_nego_timer_callback._entry.14, section ".printk_index", align 4
@auto_nego_timer_callback._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.4, i32 169, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@auto_nego_timer_callback._entry_ptr.17 = internal global ptr @auto_nego_timer_callback._entry.16, section ".printk_index", align 4
@auto_nego_timer_callback._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.4, i32 172, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Adapter: Invalid Partner Speed and Duplex\0A\00", [53 x i8] zeroinitializer }, align 32
@auto_nego_timer_callback._entry_ptr.20 = internal global ptr @auto_nego_timer_callback._entry.18, section ".printk_index", align 4
@pcs_link_timer_callback.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pcs_link_timer_callback\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Adapter: Link is established\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.24 = internal global [8 x i64] [i64 6, i64 3, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 12, i64 0, i64 1024, i64 2048]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 227, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 260, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 84, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 141, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 148, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 152, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 156, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 160, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 164, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 168, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 171, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [54 x i8] c"../drivers/net/ethernet/stmicro/stmmac/altr_tse_pcs.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 120, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @auto_nego_timer_callback._entry, ptr @auto_nego_timer_callback._entry.14, ptr @auto_nego_timer_callback._entry.16, ptr @auto_nego_timer_callback._entry.18, ptr @auto_nego_timer_callback._entry_ptr, ptr @auto_nego_timer_callback._entry_ptr.15, ptr @auto_nego_timer_callback._entry_ptr.17, ptr @auto_nego_timer_callback._entry_ptr.20, ptr @tse_pcs_reset._entry, ptr @tse_pcs_reset._entry_ptr, ptr @tse_pcs_fix_mac_speed.__key, ptr @.str, ptr @tse_pcs_fix_mac_speed.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.19, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tse_pcs_fix_mac_speed.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tse_pcs_fix_mac_speed.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tse_pcs_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auto_nego_timer_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auto_nego_timer_callback._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auto_nego_timer_callback._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auto_nego_timer_callback._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tse_pcs_init(ptr noundef %base, ptr nocapture noundef readonly %pcs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  %add.ptr = getelementptr i8, ptr %base, i32 40
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 768) #4, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %base, i16 16401) #4, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  tail call void @arm_heavy_mb() #4
  %add.ptr8 = getelementptr i8, ptr %base, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 16397) #4, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  tail call void @arm_heavy_mb() #4
  %add.ptr12 = getelementptr i8, ptr %base, i32 38
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr12, i16 768) #4, !srcloc !55
  %0 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %base) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  %1 = or i16 %0, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %base, i16 %1) #4, !srcloc !55
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %counter.032.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.while.body.i_crit_edge ]
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %base) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  %.mask.i = and i16 %2, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i)
  %cmp14.i = icmp eq i16 %.mask.i, 0
  br i1 %cmp14.i, label %do.body13, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %inc.i = add nuw nsw i32 %counter.032.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #4
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %tse_pcs_reset.exit, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

tse_pcs_reset.exit:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcs, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #7
  br label %if.end

do.body13:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  tail call void @arm_heavy_mb() #4
  %sgmii_adapter_base = getelementptr inbounds %struct.tse_pcs, ptr %pcs, i32 0, i32 2
  %6 = ptrtoint ptr %sgmii_adapter_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sgmii_adapter_base, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 0) #4, !srcloc !55
  br label %if.end

if.end:                                           ; preds = %do.body13, %tse_pcs_reset.exit
  %retval.0.i25 = phi i32 [ 0, %do.body13 ], [ -110, %tse_pcs_reset.exit ]
  ret i32 %retval.0.i25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tse_pcs_fix_mac_speed(ptr noundef %pcs, ptr nocapture noundef readonly %phy_dev, i32 noundef %speed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tse_pcs_base1 = getelementptr inbounds %struct.tse_pcs, ptr %pcs, i32 0, i32 1
  %0 = ptrtoint ptr %tse_pcs_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tse_pcs_base1, align 4
  %sgmii_adapter_base2 = getelementptr inbounds %struct.tse_pcs, ptr %pcs, i32 0, i32 2
  %2 = ptrtoint ptr %sgmii_adapter_base2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgmii_adapter_base2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 0) #4, !srcloc !55
  %autoneg = getelementptr inbounds %struct.phy_device, ptr %phy_dev, i32 0, i32 4
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %autoneg, align 8
  %bf.lshr = lshr i16 %bf.load, 3
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %autoneg3 = getelementptr inbounds %struct.tse_pcs, ptr %pcs, i32 0, i32 4
  %5 = ptrtoint ptr %autoneg3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %bf.cast, ptr %autoneg3, align 4
  %bf.load5 = load i16, ptr %autoneg, align 8
  %6 = and i16 %bf.load5, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.not = icmp eq i16 %6, 0
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  br i1 %cmp.not, label %if.then51, label %if.then

if.then:                                          ; preds = %entry
  %8 = or i16 %7, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %8) #4, !srcloc !55
  %add.ptr18 = getelementptr i8, ptr %1, i32 40
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  %10 = or i16 %9, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr18, i16 %10) #4, !srcloc !55
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  %13 = or i16 %12, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %13) #4, !srcloc !55
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then
  %counter.032.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i.while.body.i_crit_edge ]
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  %.mask.i = and i16 %14, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i)
  %cmp14.i = icmp eq i16 %.mask.i, 0
  br i1 %cmp14.i, label %while.body.i.tse_pcs_reset.exit_crit_edge, label %if.end.i

while.body.i.tse_pcs_reset.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tse_pcs_reset.exit

if.end.i:                                         ; preds = %while.body.i
  %inc.i = add nuw nsw i32 %counter.032.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #4
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end21.i, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

do.end21.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcs, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.2) #7
  br label %tse_pcs_reset.exit

tse_pcs_reset.exit:                               ; preds = %do.end21.i, %while.body.i.tse_pcs_reset.exit_crit_edge
  %aneg_link_timer = getelementptr inbounds %struct.tse_pcs, ptr %pcs, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %aneg_link_timer, ptr noundef nonnull @aneg_link_timer_callback, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @tse_pcs_fix_mac_speed.__key) #4
  br label %cleanup.sink.split

if.then51:                                        ; preds = %entry
  %18 = and i16 %7, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %18) #4, !srcloc !55
  %add.ptr66 = getelementptr i8, ptr %1, i32 40
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr66) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %20 = and i16 %19, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !71
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr66, i16 %20) #4, !srcloc !55
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr66) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !72
  %22 = and i16 %21, -3073
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  %24 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %speed, label %if.then51.cleanup_crit_edge [
    i32 1000, label %sw.bb
    i32 100, label %sw.bb86
    i32 10, label %if.then51.do.body90_crit_edge
  ]

if.then51.do.body90_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body90

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  %or85 = or i16 %23, 8
  br label %do.body90

sw.bb86:                                          ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  %or87 = or i16 %23, 4
  br label %do.body90

do.body90:                                        ; preds = %sw.bb86, %sw.bb, %if.then51.do.body90_crit_edge
  %val.0 = phi i16 [ %or87, %sw.bb86 ], [ %or85, %sw.bb ], [ %23, %if.then51.do.body90_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !73
  tail call void @arm_heavy_mb() #4
  %25 = tail call i16 @llvm.bswap.i16(i16 %val.0)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr66, i16 %25) #4, !srcloc !55
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  %27 = or i16 %26, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %27) #4, !srcloc !55
  br label %while.body.i145

while.body.i145:                                  ; preds = %if.end.i148.while.body.i145_crit_edge, %do.body90
  %counter.032.i142 = phi i32 [ 0, %do.body90 ], [ %inc.i146, %if.end.i148.while.body.i145_crit_edge ]
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  %.mask.i143 = and i16 %28, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i143)
  %cmp14.i144 = icmp eq i16 %.mask.i143, 0
  br i1 %cmp14.i144, label %while.body.i145.tse_pcs_reset.exit151_crit_edge, label %if.end.i148

while.body.i145.tse_pcs_reset.exit151_crit_edge:  ; preds = %while.body.i145
  call void @__sanitizer_cov_trace_pc() #6
  br label %tse_pcs_reset.exit151

if.end.i148:                                      ; preds = %while.body.i145
  %inc.i146 = add nuw nsw i32 %counter.032.i142, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #4
  %exitcond.not.i147 = icmp eq i32 %inc.i146, 100
  br i1 %exitcond.not.i147, label %do.end21.i149, label %if.end.i148.while.body.i145_crit_edge

if.end.i148.while.body.i145_crit_edge:            ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i145

do.end21.i149:                                    ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcs, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.2) #7
  br label %tse_pcs_reset.exit151

tse_pcs_reset.exit151:                            ; preds = %do.end21.i149, %while.body.i145.tse_pcs_reset.exit151_crit_edge
  %aneg_link_timer97 = getelementptr inbounds %struct.tse_pcs, ptr %pcs, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %aneg_link_timer97, ptr noundef nonnull @aneg_link_timer_callback, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @tse_pcs_fix_mac_speed.__key.1) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %tse_pcs_reset.exit151, %tse_pcs_reset.exit
  %aneg_link_timer.sink = phi ptr [ %aneg_link_timer, %tse_pcs_reset.exit ], [ %aneg_link_timer97, %tse_pcs_reset.exit151 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %32, 2
  %call43 = tail call i32 @mod_timer(ptr noundef %aneg_link_timer.sink, i32 noundef %add) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then51.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aneg_link_timer_callback(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -12
  %autoneg = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autoneg, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %1, label %entry.if.end4_crit_edge [
    i32 1, label %if.then
    i32 0, label %if.then3
  ]

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @auto_nego_timer_callback(ptr noundef %add.ptr)
  br label %if.end4

if.then3:                                         ; preds = %entry
  %tse_pcs_base1.i = getelementptr i8, ptr %t, i32 -8
  %3 = ptrtoint ptr %tse_pcs_base1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tse_pcs_base1.i, align 4
  %sgmii_adapter_base2.i = getelementptr i8, ptr %t, i32 -4
  %5 = ptrtoint ptr %sgmii_adapter_base2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sgmii_adapter_base2.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 2
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !74
  %8 = and i16 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.not.i = icmp eq i16 %8, 0
  br i1 %cmp.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %if.then3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcs_link_timer_callback.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aneg_link_timer_callback, %if.then11.i)) #4
          to label %do.body12.i [label %if.then11.i], !srcloc !75

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcs_link_timer_callback.__UNIQUE_ID_ddebug353, ptr noundef %10, ptr noundef nonnull @.str.22) #4
  br label %do.body12.i

do.body12.i:                                      ; preds = %if.then11.i, %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !76
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %6, i16 0) #4, !srcloc !55
  br label %if.end4

if.else.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %11, 2
  %call17.i = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add.i) #4
  br label %if.end4

if.end4:                                          ; preds = %if.else.i, %do.body12.i, %if.then, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @auto_nego_timer_callback(ptr noundef %pcs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tse_pcs_base1 = getelementptr inbounds %struct.tse_pcs, ptr %pcs, i32 0, i32 1
  %0 = ptrtoint ptr %tse_pcs_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tse_pcs_base1, align 4
  %sgmii_adapter_base2 = getelementptr inbounds %struct.tse_pcs, ptr %pcs, i32 0, i32 2
  %2 = ptrtoint ptr %sgmii_adapter_base2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgmii_adapter_base2, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %5 = and i16 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not = icmp eq i16 %5, 0
  br i1 %cmp.not, label %if.else169, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @auto_nego_timer_callback.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@auto_nego_timer_callback, %if.then11)) #4
          to label %do.end [label %if.then11], !srcloc !75

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @auto_nego_timer_callback.__UNIQUE_ID_ddebug354, ptr noundef %7, ptr noundef nonnull @.str.9) #4
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %add.ptr14 = getelementptr i8, ptr %1, i32 10
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr14) #4, !srcloc !59
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  %10 = and i16 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp28.not = icmp eq i16 %10, 0
  %11 = lshr i16 %9, 10
  %trunc243 = trunc i16 %11 to i3
  %12 = zext i3 %trunc243 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.24)
  switch i3 %trunc243, label %do.end141 [
    i3 -4, label %do.body31
    i3 -3, label %do.body56
    i3 -2, label %do.body82
    i3 0, label %do.end110
    i3 1, label %do.end123
    i3 2, label %do.end136
  ]

do.body31:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @auto_nego_timer_callback.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@auto_nego_timer_callback, %if.then43)) #4
          to label %if.end148 [label %if.then43], !srcloc !75

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @auto_nego_timer_callback.__UNIQUE_ID_ddebug355, ptr noundef %14, ptr noundef nonnull @.str.10) #4
  br label %if.end148

do.body56:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @auto_nego_timer_callback.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@auto_nego_timer_callback, %if.then68)) #4
          to label %if.end148 [label %if.then68], !srcloc !75

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @auto_nego_timer_callback.__UNIQUE_ID_ddebug356, ptr noundef %16, ptr noundef nonnull @.str.11) #4
  br label %if.end148

do.body82:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @auto_nego_timer_callback.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@auto_nego_timer_callback, %if.then94)) #4
          to label %if.end148 [label %if.then94], !srcloc !75

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @auto_nego_timer_callback.__UNIQUE_ID_ddebug357, ptr noundef %18, ptr noundef nonnull @.str.12) #4
  br label %if.end148

do.end110:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcs, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.13) #7
  br label %if.end148

do.end123:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcs, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.13) #7
  br label %if.end148

do.end136:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcs, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.13) #7
  br label %if.end148

do.end141:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcs, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.19) #7
  br label %if.end148

if.end148:                                        ; preds = %do.end141, %do.end136, %do.end123, %do.end110, %if.then94, %do.body82, %if.then68, %do.body56, %if.then43, %do.body31
  br i1 %cmp28.not, label %if.end148.if.end185_crit_edge, label %land.lhs.true152

if.end148.if.end185_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end185

land.lhs.true152:                                 ; preds = %if.end148
  %27 = trunc i16 %9 to i12
  %trunc = and i12 %27, -1024
  %28 = zext i12 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.25)
  switch i12 %trunc, label %land.lhs.true152.if.end185_crit_edge [
    i12 -2048, label %land.lhs.true152.do.body164_crit_edge
    i12 1024, label %land.lhs.true152.do.body164_crit_edge244
    i12 0, label %land.lhs.true152.do.body164_crit_edge245
  ]

land.lhs.true152.do.body164_crit_edge245:         ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body164

land.lhs.true152.do.body164_crit_edge244:         ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body164

land.lhs.true152.do.body164_crit_edge:            ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body164

land.lhs.true152.if.end185_crit_edge:             ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end185

do.body164:                                       ; preds = %land.lhs.true152.do.body164_crit_edge, %land.lhs.true152.do.body164_crit_edge244, %land.lhs.true152.do.body164_crit_edge245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 0) #4, !srcloc !55
  br label %if.end185

if.else169:                                       ; preds = %entry
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !80
  %30 = or i16 %29, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !81
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %30) #4, !srcloc !55
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  %32 = or i16 %31, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %1, i16 %32) #4, !srcloc !55
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.else169
  %counter.032.i = phi i32 [ 0, %if.else169 ], [ %inc.i, %if.end.i.while.body.i_crit_edge ]
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %1) #4, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  %.mask.i = and i16 %33, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask.i)
  %cmp14.i = icmp eq i16 %.mask.i, 0
  br i1 %cmp14.i, label %while.body.i.tse_pcs_reset.exit_crit_edge, label %if.end.i

while.body.i.tse_pcs_reset.exit_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tse_pcs_reset.exit

if.end.i:                                         ; preds = %while.body.i
  %inc.i = add nuw nsw i32 %counter.032.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748) #4
  %exitcond.not.i = icmp eq i32 %inc.i, 100
  br i1 %exitcond.not.i, label %do.end21.i, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

do.end21.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %pcs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcs, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.2) #7
  br label %tse_pcs_reset.exit

tse_pcs_reset.exit:                               ; preds = %do.end21.i, %while.body.i.tse_pcs_reset.exit_crit_edge
  %aneg_link_timer = getelementptr inbounds %struct.tse_pcs, ptr %pcs, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %37, 2
  %call184 = tail call i32 @mod_timer(ptr noundef %aneg_link_timer, i32 noundef %add) #4
  br label %if.end185

if.end185:                                        ; preds = %tse_pcs_reset.exit, %do.body164, %land.lhs.true152.if.end185_crit_edge, %if.end148.if.end185_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !31, !33, !34, !36, !37, !39, !40, !41, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @tse_pcs_fix_mac_speed.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/stmicro/stmmac/altr_tse_pcs.c", i32 227, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @tse_pcs_fix_mac_speed.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/stmicro/stmmac/altr_tse_pcs.c", i32 260, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/stmicro/stmmac/altr_tse_pcs.c", i32 84, i32 3}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @tse_pcs_reset._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @tse_pcs_reset._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/stmicro/stmmac/altr_tse_pcs.c", i32 141, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @auto_nego_timer_callback.__UNIQUE_ID_ddebug354, !14, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/stmicro/stmmac/altr_tse_pcs.c", i32 148, i32 4}
!20 = !{ptr @auto_nego_timer_callback.__UNIQUE_ID_ddebug355, !19, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/stmicro/stmmac/altr_tse_pcs.c", i32 152, i32 4}
!23 = !{ptr @auto_nego_timer_callback.__UNIQUE_ID_ddebug356, !22, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/stmicro/stmmac/altr_tse_pcs.c", i32 156, i32 4}
!26 = !{ptr @auto_nego_timer_callback.__UNIQUE_ID_ddebug357, !25, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/stmicro/stmmac/altr_tse_pcs.c", i32 160, i32 4}
!29 = !{ptr @auto_nego_timer_callback._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @auto_nego_timer_callback._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @auto_nego_timer_callback._entry.14, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/stmicro/stmmac/altr_tse_pcs.c", i32 164, i32 4}
!33 = !{ptr @auto_nego_timer_callback._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @auto_nego_timer_callback._entry.16, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/stmicro/stmmac/altr_tse_pcs.c", i32 168, i32 4}
!36 = !{ptr @auto_nego_timer_callback._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/stmicro/stmmac/altr_tse_pcs.c", i32 171, i32 4}
!39 = !{ptr @auto_nego_timer_callback._entry.18, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @auto_nego_timer_callback._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/stmicro/stmmac/altr_tse_pcs.c", i32 120, i32 3}
!43 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @pcs_link_timer_callback.__UNIQUE_ID_ddebug353, !42, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2157475601}
!55 = !{i64 3997620}
!56 = !{i64 2157475996}
!57 = !{i64 2157476397}
!58 = !{i64 2157476798}
!59 = !{i64 3997820}
!60 = !{i64 2157472259}
!61 = !{i64 2157472479}
!62 = !{i64 2157473119}
!63 = !{i64 2157477218}
!64 = !{i64 2157502664}
!65 = !{i64 2157503665}
!66 = !{i64 2157504341}
!67 = !{i64 2157504644}
!68 = !{i64 2157505320}
!69 = !{i64 2157506525}
!70 = !{i64 2157507201}
!71 = !{i64 2157507504}
!72 = !{i64 2157508180}
!73 = !{i64 2157509243}
!74 = !{i64 2157477914}
!75 = !{i64 2148866046, i64 2148866051, i64 2148866064, i64 2148866108, i64 2148866142, i64 2148866163}
!76 = !{i64 2157480492}
!77 = !{i64 2157481186}
!78 = !{i64 2157484191}
!79 = !{i64 2157499978}
!80 = !{i64 2157500669}
!81 = !{i64 2157500972}
