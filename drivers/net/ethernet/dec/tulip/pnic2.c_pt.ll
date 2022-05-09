; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/dec/tulip/pnic2.c_pt.bc'
source_filename = "../drivers/net/ethernet/dec/tulip/pnic2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.tulip_private = type { ptr, ptr, ptr, ptr, i32, i32, [32 x %struct.ring_info], [128 x %struct.ring_info], [96 x i16], i32, i32, i32, %struct.napi_struct, %struct.timer_list, %struct.timer_list, [2 x i32], %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i16, i32, i32, [512 x i8], ptr, %struct.ethtool_wolinfo, i16, i16, i16, [4 x i16], [4 x i8], i8, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, %struct.work_struct, ptr }
%struct.ring_info = type { ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }

@tulip_debug = external dso_local local_unnamed_addr global i32, align 4
@pnic2_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 88, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PNIC2 negotiation status %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pnic2_timer\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/dec/tulip/pnic2.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pnic2_timer._entry_ptr = internal global ptr @pnic2_timer._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pnic2_start_nway.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 31, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tulip\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pnic2_start_nway\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Restarting PNIC2 autonegotiation, csr14=%08x\0A\00", [50 x i8] zeroinitializer }, align 32
@pnic2_start_nway.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 34, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"On Entry to Nway, csr6=%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pnic2_lnk_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 182, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"PNIC2 link status interrupt %08x,  CSR5 %x, %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pnic2_lnk_change\00", [47 x i8] zeroinitializer }, align 32
@pnic2_lnk_change._entry_ptr = internal global ptr @pnic2_lnk_change._entry, section ".printk_index", align 4
@pnic2_lnk_change._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 216, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"funny autonegotiate result csr12 %08x advertising %04x\0A\00", [40 x i8] zeroinitializer }, align 32
@pnic2_lnk_change._entry_ptr.13 = internal global ptr @pnic2_lnk_change._entry.11, section ".printk_index", align 4
@pnic2_lnk_change._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 234, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Switching to %s based on link negotiation %04x & %04x = %04x\0A\00", [34 x i8] zeroinitializer }, align 32
@pnic2_lnk_change._entry_ptr.16 = internal global ptr @pnic2_lnk_change._entry.14, section ".printk_index", align 4
@medianame = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@pnic2_lnk_change.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.2, ptr @.str.17, i8 0, i8 68, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Setting CSR6 %08x/%x CSR12 %08x\0A\00", [63 x i8] zeroinitializer }, align 32
@pnic2_lnk_change._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.2, i32 285, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Autonegotiation failed, using %s, link beat status %04x\0A\00", [39 x i8] zeroinitializer }, align 32
@pnic2_lnk_change._entry_ptr.20 = internal global ptr @pnic2_lnk_change._entry.18, section ".printk_index", align 4
@pnic2_lnk_change.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.2, ptr @.str.21, i8 0, i8 81, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Ugh! Link blew?\0A\00", [47 x i8] zeroinitializer }, align 32
@pnic2_lnk_change._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.10, ptr @.str.2, i32 342, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PNIC2 %s link beat %s\0A\00", [41 x i8] zeroinitializer }, align 32
@pnic2_lnk_change._entry_ptr.24 = internal global ptr @pnic2_lnk_change._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"good\00", [27 x i8] zeroinitializer }, align 32
@pnic2_lnk_change._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.10, ptr @.str.2, i32 367, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@pnic2_lnk_change._entry_ptr.28 = internal global ptr @pnic2_lnk_change._entry.27, section ".printk_index", align 4
@pnic2_lnk_change._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.10, ptr @.str.2, i32 386, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PNIC2 Link Change Default?\0A\00", [36 x i8] zeroinitializer }, align 32
@pnic2_lnk_change._entry_ptr.31 = internal global ptr @pnic2_lnk_change._entry.29, section ".printk_index", align 4
@tulip_stop_rxtx.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.32, ptr @.str.33, ptr @.str.34, i8 0, i8 -119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tulip_stop_rxtx\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/dec/tulip/tulip.h\00", [57 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"tulip_stop_rxtx() failed (CSR5 0x%x CSR6 0x%x)\0A\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 3, i64 4, i64 5]
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 87, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 125, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 137, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 180, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 214, i32 10 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 230, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 270, i32 5 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 283, i32 18 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 324, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 340, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 365, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private constant [42 x i8] c"../drivers/net/ethernet/dec/tulip/pnic2.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 386, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [42 x i8] c"../drivers/net/ethernet/dec/tulip/tulip.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 546, i32 4 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @pnic2_lnk_change._entry, ptr @pnic2_lnk_change._entry.11, ptr @pnic2_lnk_change._entry.14, ptr @pnic2_lnk_change._entry.18, ptr @pnic2_lnk_change._entry.22, ptr @pnic2_lnk_change._entry.27, ptr @pnic2_lnk_change._entry.29, ptr @pnic2_lnk_change._entry_ptr, ptr @pnic2_lnk_change._entry_ptr.13, ptr @pnic2_lnk_change._entry_ptr.16, ptr @pnic2_lnk_change._entry_ptr.20, ptr @pnic2_lnk_change._entry_ptr.24, ptr @pnic2_lnk_change._entry_ptr.28, ptr @pnic2_lnk_change._entry_ptr.31, ptr @pnic2_timer._entry, ptr @pnic2_timer._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pnic2_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pnic2_lnk_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pnic2_lnk_change._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pnic2_lnk_change._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pnic2_lnk_change._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pnic2_lnk_change._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pnic2_lnk_change._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pnic2_lnk_change._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pnic2_timer(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %0 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %do.end, label %entry.if.then4_crit_edge

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %base_addr = getelementptr i8, ptr %t, i32 808
  %1 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base_addr, align 8
  %dev1 = getelementptr i8, ptr %t, i32 864
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 8
  %dev2 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 133
  %add.ptr3 = getelementptr i8, ptr %2, i32 96
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !66
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str, i32 noundef %6) #8
  br label %if.then4

if.then4:                                         ; preds = %do.end, %entry.if.then4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %7, 6000
  %call5 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pnic2_start_nway(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr i8, ptr %dev, i32 4848
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 112
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %3 = and i32 %2, 971960575
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %sym_advertise = getelementptr i8, ptr %dev, i32 4800
  %5 = ptrtoint ptr %sym_advertise to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sym_advertise, align 8
  %7 = and i16 %6, 256
  %8 = zext i16 %7 to i32
  %9 = shl nuw nsw i32 %8, 9
  %10 = or i32 %9, %4
  %11 = and i16 %6, 128
  %12 = zext i16 %11 to i32
  %13 = shl nuw nsw i32 %12, 9
  %14 = or i32 %10, %13
  %15 = shl i16 %6, 1
  %16 = and i16 %15, 64
  %17 = zext i16 %16 to i32
  %18 = or i32 %14, %17
  %or17 = or i32 %18, 4484
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %19 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp sgt i32 %19, 1
  br i1 %cmp, label %do.body20, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.body20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pnic2_start_nway.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pnic2_start_nway, %if.end30)) #5
          to label %if.then26 [label %if.end30], !srcloc !68

if.then26:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pnic2_start_nway.__UNIQUE_ID_ddebug340, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %or17) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %do.body20, %entry.if.end30_crit_edge
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %20 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %if_port, align 2
  %mediasense = getelementptr i8, ptr %dev, i32 4252
  %21 = ptrtoint ptr %mediasense to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load = load i16, ptr %mediasense, align 4
  %lpar = getelementptr i8, ptr %dev, i32 4804
  %22 = ptrtoint ptr %lpar to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %lpar, align 4
  %bf.set33 = and i16 %bf.load, -15
  %bf.clear35 = or i16 %bf.set33, 12
  store i16 %bf.clear35, ptr %mediasense, align 4
  %add.ptr37 = getelementptr i8, ptr %1, i32 48
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #5, !srcloc !66
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %csr6 = getelementptr i8, ptr %dev, i32 4260
  %25 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %csr6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %26 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp39 = icmp sgt i32 %26, 1
  br i1 %cmp39, label %do.body43, label %if.end30.if.end64_crit_edge

if.end30.if.end64_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

do.body43:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pnic2_start_nway.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pnic2_start_nway, %if.end64)) #5
          to label %if.then57 [label %if.end64], !srcloc !68

if.then57:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %csr6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pnic2_start_nway.__UNIQUE_ID_ddebug341, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %28) #5
  br label %if.end64

if.end64:                                         ; preds = %if.then57, %do.body43, %if.end30.if.end64_crit_edge
  %29 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %csr6, align 4
  %and66 = and i32 %30, -29634051
  store i32 %and66, ptr %csr6, align 4
  %31 = ptrtoint ptr %sym_advertise to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sym_advertise, align 8
  %33 = and i16 %32, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool71.not = icmp eq i16 %33, 0
  br i1 %tobool71.not, label %if.end64.if.end75_crit_edge, label %if.then72

if.end64.if.end75_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75

if.then72:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %or74 = or i32 %and66, 512
  %34 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or74, ptr %csr6, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end64.if.end75_crit_edge
  %35 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %csr6, align 4
  %or77 = or i32 %36, 16777216
  store i32 %or77, ptr %csr6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %37 = tail call i32 @llvm.bswap.i32(i32 %or17) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %37) #5, !srcloc !70
  %38 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %csr6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %40) #5, !srcloc !70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 21474800) #5
  %add.ptr81 = getelementptr i8, ptr %1, i32 96
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %43 = and i32 %42, -7340033
  %44 = or i32 %43, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %44) #5, !srcloc !70
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pnic2_lnk_change(ptr noundef %dev, i32 noundef %csr5) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base_addr = getelementptr i8, ptr %dev, i32 4848
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !66
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %4 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %add.ptr3 = getelementptr i8, ptr %1, i32 112
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !66
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.9, i32 noundef %3, i32 noundef %csr5, i32 noundef %6) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %nway = getelementptr i8, ptr %dev, i32 4252
  %7 = ptrtoint ptr %nway to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %nway, align 4
  %8 = and i16 %bf.load, 4
  %9 = and i16 %bf.load, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %9)
  %10 = icmp eq i16 %9, 4
  br i1 %10, label %if.then10, label %if.end181

if.then10:                                        ; preds = %if.end
  %and = and i32 %3, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %and)
  %cmp11 = icmp eq i32 %and, 20480
  br i1 %cmp11, label %if.then12, label %do.end157

if.then12:                                        ; preds = %if.then10
  %shr = ashr i32 %3, 16
  %and13 = and i32 %shr, 480
  %sym_advertise = getelementptr i8, ptr %dev, i32 4800
  %11 = ptrtoint ptr %sym_advertise to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sym_advertise, align 8
  %conv = zext i16 %12 to i32
  %and14 = and i32 %and13, %conv
  %conv16 = trunc i32 %shr to i16
  %lpar = getelementptr i8, ptr %dev, i32 4804
  %13 = ptrtoint ptr %lpar to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv16, ptr %lpar, align 4
  %bf.set = or i16 %bf.load, 2
  %14 = ptrtoint ptr %nway to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %bf.set, ptr %nway, align 4
  %and20 = and i32 %and14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else, label %if.then12.if.end66.sink.split_crit_edge

if.then12.if.end66.sink.split_crit_edge:          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66.sink.split

if.else:                                          ; preds = %if.then12
  %and23 = and i32 %and14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else27, label %if.else.if.end66.sink.split_crit_edge

if.else.if.end66.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66.sink.split

if.else27:                                        ; preds = %if.else
  %and28 = and i32 %and14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.else32, label %if.else27.if.end66.sink.split_crit_edge

if.else27.if.end66.sink.split_crit_edge:          ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66.sink.split

if.else32:                                        ; preds = %if.else27
  %and33 = and i32 %and14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else37, label %if.else32.if.end66.sink.split_crit_edge

if.else32.if.end66.sink.split_crit_edge:          ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66.sink.split

if.else37:                                        ; preds = %if.else32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %15 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp38 = icmp sgt i32 %15, 1
  br i1 %cmp38, label %do.end43, label %if.else37.if.end47_crit_edge

if.else37.if.end47_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

do.end43:                                         ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #7
  %dev44 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev44, ptr noundef nonnull @.str.12, i32 noundef %3, i32 noundef %conv) #8
  br label %if.end47

if.end47:                                         ; preds = %do.end43, %if.else37.if.end47_crit_edge
  %16 = ptrtoint ptr %nway to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load49 = load i16, ptr %nway, align 4
  %bf.clear50 = and i16 %bf.load49, -3
  store i16 %bf.clear50, ptr %nway, align 4
  %and52 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %cmp53 = icmp eq i32 %and52, 0
  br i1 %cmp53, label %land.lhs.true55, label %if.end47.if.end66_crit_edge

if.end47.if.end66_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

land.lhs.true55:                                  ; preds = %if.end47
  %17 = ptrtoint ptr %sym_advertise to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %sym_advertise, align 8
  %19 = and i16 %18, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool59.not = icmp eq i16 %19, 0
  br i1 %tobool59.not, label %land.lhs.true55.if.end66_crit_edge, label %land.lhs.true55.if.end66.sink.split_crit_edge

land.lhs.true55.if.end66.sink.split_crit_edge:    ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66.sink.split

land.lhs.true55.if.end66_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.end66.sink.split:                              ; preds = %land.lhs.true55.if.end66.sink.split_crit_edge, %if.else32.if.end66.sink.split_crit_edge, %if.else27.if.end66.sink.split_crit_edge, %if.else.if.end66.sink.split_crit_edge, %if.then12.if.end66.sink.split_crit_edge
  %.sink = phi i8 [ 5, %if.then12.if.end66.sink.split_crit_edge ], [ 3, %if.else.if.end66.sink.split_crit_edge ], [ 4, %if.else27.if.end66.sink.split_crit_edge ], [ 0, %if.else32.if.end66.sink.split_crit_edge ], [ 3, %land.lhs.true55.if.end66.sink.split_crit_edge ]
  %if_port26 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %20 = ptrtoint ptr %if_port26 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink, ptr %if_port26, align 2
  br label %if.end66

if.end66:                                         ; preds = %if.end66.sink.split, %land.lhs.true55.if.end66_crit_edge, %if.end47.if.end66_crit_edge
  %21 = ptrtoint ptr %nway to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load67 = load i16, ptr %nway, align 4
  %bf.clear68 = and i16 %bf.load67, 32767
  store i16 %bf.clear68, ptr %nway, align 4
  %if_port70 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %22 = ptrtoint ptr %if_port70 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %if_port70, align 2
  %24 = and i8 %23, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %24)
  %switch = icmp eq i8 %24, 4
  br i1 %switch, label %if.then78, label %if.end66.if.end83_crit_edge

if.end66.if.end83_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

if.then78:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %bf.set82 = or i16 %bf.load67, -32768
  %25 = ptrtoint ptr %nway to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %bf.set82, ptr %nway, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %if.end66.if.end83_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %26 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp84 = icmp sgt i32 %26, 1
  br i1 %cmp84, label %if.then86, label %if.end83.if.end104_crit_edge

if.end83.if.end104_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

if.then86:                                        ; preds = %if.end83
  %27 = ptrtoint ptr %nway to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load88 = load i16, ptr %nway, align 4
  %28 = and i16 %bf.load88, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool92.not = icmp eq i16 %28, 0
  br i1 %tobool92.not, label %if.then86.if.end104_crit_edge, label %do.end96

if.then86.if.end104_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

do.end96:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #7
  %dev97 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %idxprom = zext i8 %23 to i32
  %arrayidx = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %idxprom
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %31 = ptrtoint ptr %sym_advertise to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sym_advertise, align 8
  %conv100 = zext i16 %32 to i32
  %33 = ptrtoint ptr %lpar to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %lpar, align 4
  %conv102 = zext i16 %34 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev97, ptr noundef nonnull @.str.15, ptr noundef %30, i32 noundef %conv100, i32 noundef %conv102, i32 noundef %and14) #8
  br label %if.end104

if.end104:                                        ; preds = %do.end96, %if.then86.if.end104_crit_edge, %if.end83.if.end104_crit_edge
  %add.ptr105 = getelementptr i8, ptr %1, i32 112
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %36 = and i32 %35, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 %36) #5, !srcloc !70
  %add.ptr109 = getelementptr i8, ptr %1, i32 48
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr109) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %38 = and i32 %37, -36619266
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %csr6 = getelementptr i8, ptr %dev, i32 4260
  %40 = ptrtoint ptr %if_port70 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %if_port70, align 2
  %42 = and i8 %41, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool115.not = icmp eq i8 %42, 0
  %storemerge.v = select i1 %tobool115.not, i32 4194304, i32 25427968
  %storemerge = or i32 %storemerge.v, %39
  %43 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %storemerge, ptr %csr6, align 4
  %44 = ptrtoint ptr %nway to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load123 = load i16, ptr %nway, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load123)
  %tobool126.not = icmp sgt i16 %bf.load123, -1
  br i1 %tobool126.not, label %if.end104.if.end130_crit_edge, label %if.then127

if.end104.if.end130_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end130

if.then127:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  %or129 = or i32 %storemerge, 512
  %45 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or129, ptr %csr6, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then127, %if.end104.if.end130_crit_edge
  %add.ptr131 = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 16777216) #5, !srcloc !70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %46 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp132 = icmp sgt i32 %46, 2
  br i1 %cmp132, label %do.body136, label %if.end130.if.end153_crit_edge

if.end130.if.end153_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end153

do.body136:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pnic2_lnk_change.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pnic2_lnk_change, %if.end153)) #5
          to label %if.then142 [label %if.end153], !srcloc !68

if.then142:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %csr6, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr109) #5, !srcloc !66
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !66
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pnic2_lnk_change.__UNIQUE_ID_ddebug342, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %48, i32 noundef %50, i32 noundef %52) #5
  br label %if.end153

if.end153:                                        ; preds = %if.then142, %do.body136, %if.end130.if.end153_crit_edge
  %53 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base_addr, align 8
  %55 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %csr6, align 4
  %or.i = or i32 %56, 8194
  %add.ptr.i481 = getelementptr i8, ptr %54, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %57 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i481, i32 %57) #5, !srcloc !70
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !71
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i481) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  br label %cleanup

do.end157:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %dev158 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %if_port159 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %59 = ptrtoint ptr %if_port159 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %if_port159, align 2
  %idxprom160 = zext i8 %60 to i32
  %arrayidx161 = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %idxprom160
  %61 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx161, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev158, ptr noundef nonnull @.str.19, ptr noundef %62, i32 noundef %3) #8
  %add.ptr162 = getelementptr i8, ptr %1, i32 112
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr162) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %64 = and i32 %63, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr162, i32 %64) #5, !srcloc !70
  %65 = ptrtoint ptr %if_port159 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %if_port159, align 2
  %66 = ptrtoint ptr %nway to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load168 = load i16, ptr %nway, align 4
  %bf.clear173 = and i16 %bf.load168, -7
  %bf.set174 = or i16 %bf.clear173, 2
  store i16 %bf.set174, ptr %nway, align 4
  %add.ptr175 = getelementptr i8, ptr %1, i32 48
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr175) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %68 = and i32 %67, -36619266
  %csr6178 = getelementptr i8, ptr %dev, i32 4260
  %69 = or i32 %68, 16384
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %71 = ptrtoint ptr %csr6178 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %csr6178, align 4
  tail call fastcc void @tulip_restart_rxtx(ptr noundef %add.ptr.i)
  br label %cleanup

if.end181:                                        ; preds = %if.end
  %72 = and i16 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool9.not = icmp eq i16 %72, 0
  %and189 = and i32 %csr5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  %or.cond474 = or i1 %tobool190.not, %tobool9.not
  br i1 %or.cond474, label %if.end181.lor.lhs.false205_crit_edge, label %land.lhs.true191

if.end181.lor.lhs.false205_crit_edge:             ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false205

land.lhs.true191:                                 ; preds = %if.end181
  %if_port192 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %73 = ptrtoint ptr %if_port192 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %if_port192, align 2
  %75 = zext i8 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values)
  switch i8 %74, label %land.lhs.true191.lor.lhs.false205_crit_edge [
    i8 3, label %land.lhs.true191.land.lhs.true201_crit_edge
    i8 5, label %land.lhs.true191.land.lhs.true201_crit_edge485
  ]

land.lhs.true191.land.lhs.true201_crit_edge485:   ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true201

land.lhs.true191.land.lhs.true201_crit_edge:      ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true201

land.lhs.true191.lor.lhs.false205_crit_edge:      ; preds = %land.lhs.true191
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false205

land.lhs.true201:                                 ; preds = %land.lhs.true191.land.lhs.true201_crit_edge, %land.lhs.true191.land.lhs.true201_crit_edge485
  %and202 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and202)
  %cmp203.not = icmp eq i32 %and202, 0
  br i1 %cmp203.not, label %land.lhs.true201.lor.lhs.false205_crit_edge, label %land.lhs.true201.if.then215_crit_edge

land.lhs.true201.if.then215_crit_edge:            ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then215

land.lhs.true201.lor.lhs.false205_crit_edge:      ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false205

lor.lhs.false205:                                 ; preds = %land.lhs.true201.lor.lhs.false205_crit_edge, %land.lhs.true191.lor.lhs.false205_crit_edge, %if.end181.lor.lhs.false205_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool211.not = icmp eq i16 %8, 0
  %and213 = and i32 %csr5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool214.not = icmp eq i32 %and213, 0
  %or.cond475 = or i1 %tobool214.not, %tobool211.not
  br i1 %or.cond475, label %if.end244, label %lor.lhs.false205.if.then215_crit_edge

lor.lhs.false205.if.then215_crit_edge:            ; preds = %lor.lhs.false205
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then215

if.then215:                                       ; preds = %lor.lhs.false205.if.then215_crit_edge, %land.lhs.true201.if.then215_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %76 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %76)
  %cmp216 = icmp sgt i32 %76, 2
  br i1 %cmp216, label %do.body220, label %if.then215.if.end240_crit_edge

if.then215.if.end240_crit_edge:                   ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end240

do.body220:                                       ; preds = %if.then215
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pnic2_lnk_change.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pnic2_lnk_change, %if.end240)) #5
          to label %if.then234 [label %if.end240], !srcloc !68

if.then234:                                       ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pnic2_lnk_change.__UNIQUE_ID_ddebug343, ptr noundef %dev, ptr noundef nonnull @.str.21) #5
  br label %if.end240

if.end240:                                        ; preds = %if.then234, %do.body220, %if.then215.if.end240_crit_edge
  %timer = getelementptr i8, ptr %dev, i32 4040
  %call241 = tail call i32 @del_timer_sync(ptr noundef %timer) #5
  tail call void @pnic2_start_nway(ptr noundef %dev)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %77, 300
  %expires = getelementptr i8, ptr %dev, i32 4048
  %78 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add, ptr %expires, align 8
  tail call void @add_timer(ptr noundef %timer) #5
  br label %cleanup

if.end244:                                        ; preds = %lor.lhs.false205
  %if_port245 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %79 = ptrtoint ptr %if_port245 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %if_port245, align 2
  %81 = zext i8 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %80, label %if.end342 [
    i8 3, label %if.end244.if.then254_crit_edge
    i8 5, label %if.end244.if.then254_crit_edge486
    i8 0, label %if.end244.if.then302_crit_edge
    i8 4, label %if.end244.if.then302_crit_edge487
  ]

if.end244.if.then302_crit_edge487:                ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then302

if.end244.if.then302_crit_edge:                   ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then302

if.end244.if.then254_crit_edge486:                ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then254

if.end244.if.then254_crit_edge:                   ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then254

if.then254:                                       ; preds = %if.end244.if.then254_crit_edge, %if.end244.if.then254_crit_edge486
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %82 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp255 = icmp sgt i32 %82, 1
  br i1 %cmp255, label %do.end260, label %if.then254.if.end267_crit_edge

if.then254.if.end267_crit_edge:                   ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = and i32 %3, 2
  br label %if.end267

do.end260:                                        ; preds = %if.then254
  call void @__sanitizer_cov_trace_pc() #7
  %dev261 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %idxprom263 = zext i8 %80 to i32
  %arrayidx264 = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %idxprom263
  %83 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx264, align 4
  %and265 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and265)
  %tobool266.not = icmp eq i32 %and265, 0
  %cond = select i1 %tobool266.not, ptr @.str.26, ptr @.str.25
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev261, ptr noundef nonnull @.str.23, ptr noundef %84, ptr noundef nonnull %cond) #8
  br label %if.end267

if.end267:                                        ; preds = %do.end260, %if.then254.if.end267_crit_edge
  %and276.pre-phi = phi i32 [ %.pre, %if.then254.if.end267_crit_edge ], [ %and265, %do.end260 ]
  %85 = ptrtoint ptr %nway to i32
  call void @__asan_load2_noabort(i32 %85)
  %bf.load269 = load i16, ptr %nway, align 4
  %bf.clear274 = and i16 %bf.load269, -7
  %bf.set275 = or i16 %bf.clear274, 2
  store i16 %bf.set275, ptr %nway, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and276.pre-phi)
  %tobool277.not = icmp ne i32 %and276.pre-phi, 0
  %86 = and i16 %bf.load269, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool283.not = icmp eq i16 %86, 0
  %or.cond476 = select i1 %tobool277.not, i1 %tobool283.not, i1 false
  br i1 %or.cond476, label %if.then284, label %if.end267.cleanup_crit_edge

if.end267.cleanup_crit_edge:                      ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then284:                                       ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #7
  %timer285 = getelementptr i8, ptr %dev, i32 4040
  %call286 = tail call i32 @del_timer_sync(ptr noundef %timer285) #5
  tail call void @pnic2_start_nway(ptr noundef %dev)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %87 = load volatile i32, ptr @jiffies, align 128
  %add287 = add i32 %87, 300
  %expires289 = getelementptr i8, ptr %dev, i32 4048
  %88 = ptrtoint ptr %expires289 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add287, ptr %expires289, align 8
  tail call void @add_timer(ptr noundef %timer285) #5
  br label %cleanup

if.then302:                                       ; preds = %if.end244.if.then302_crit_edge, %if.end244.if.then302_crit_edge487
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %89 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp303 = icmp sgt i32 %89, 1
  br i1 %cmp303, label %do.end308, label %if.then302.if.end316_crit_edge

if.then302.if.end316_crit_edge:                   ; preds = %if.then302
  call void @__sanitizer_cov_trace_pc() #7
  %.pre484 = and i32 %3, 4
  br label %if.end316

do.end308:                                        ; preds = %if.then302
  call void @__sanitizer_cov_trace_pc() #7
  %dev309 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %idxprom311 = zext i8 %80 to i32
  %arrayidx312 = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %idxprom311
  %90 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx312, align 4
  %and313 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and313)
  %tobool314.not = icmp eq i32 %and313, 0
  %cond315 = select i1 %tobool314.not, ptr @.str.26, ptr @.str.25
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev309, ptr noundef nonnull @.str.23, ptr noundef %91, ptr noundef nonnull %cond315) #8
  br label %if.end316

if.end316:                                        ; preds = %do.end308, %if.then302.if.end316_crit_edge
  %and325.pre-phi = phi i32 [ %.pre484, %if.then302.if.end316_crit_edge ], [ %and313, %do.end308 ]
  %92 = ptrtoint ptr %nway to i32
  call void @__asan_load2_noabort(i32 %92)
  %bf.load318 = load i16, ptr %nway, align 4
  %bf.clear323 = and i16 %bf.load318, -7
  %bf.set324 = or i16 %bf.clear323, 2
  store i16 %bf.set324, ptr %nway, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and325.pre-phi)
  %tobool326.not = icmp ne i32 %and325.pre-phi, 0
  %93 = and i16 %bf.load318, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool333.not = icmp eq i16 %93, 0
  %or.cond477 = select i1 %tobool326.not, i1 %tobool333.not, i1 false
  br i1 %or.cond477, label %if.then334, label %if.end316.cleanup_crit_edge

if.end316.cleanup_crit_edge:                      ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then334:                                       ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #7
  %timer335 = getelementptr i8, ptr %dev, i32 4040
  %call336 = tail call i32 @del_timer_sync(ptr noundef %timer335) #5
  tail call void @pnic2_start_nway(ptr noundef %dev)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %94 = load volatile i32, ptr @jiffies, align 128
  %add337 = add i32 %94, 300
  %expires339 = getelementptr i8, ptr %dev, i32 4048
  %95 = ptrtoint ptr %expires339 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add337, ptr %expires339, align 8
  tail call void @add_timer(ptr noundef %timer335) #5
  br label %cleanup

if.end342:                                        ; preds = %if.end244
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %96 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %96)
  %cmp343 = icmp sgt i32 %96, 1
  br i1 %cmp343, label %do.end348, label %if.end342.if.end350_crit_edge

if.end342.if.end350_crit_edge:                    ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end350

do.end348:                                        ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #7
  %dev349 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev349, ptr noundef nonnull @.str.30) #8
  br label %if.end350

if.end350:                                        ; preds = %do.end348, %if.end342.if.end350_crit_edge
  %97 = ptrtoint ptr %if_port245 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %if_port245, align 2
  %add.ptr352 = getelementptr i8, ptr %1, i32 112
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr352) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %99 = and i32 %98, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr352, i32 %99) #5, !srcloc !70
  %add.ptr356 = getelementptr i8, ptr %1, i32 48
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr356) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %101 = and i32 %100, -36619266
  %csr6359 = getelementptr i8, ptr %dev, i32 4260
  %102 = or i32 %101, 16384
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  %104 = ptrtoint ptr %csr6359 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %csr6359, align 4
  tail call fastcc void @tulip_restart_rxtx(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end350, %if.then334, %if.end316.cleanup_crit_edge, %if.then284, %if.end267.cleanup_crit_edge, %if.end240, %do.end157, %if.end153
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tulip_restart_rxtx(ptr nocapture noundef readonly %tp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %base_addr.i = getelementptr inbounds %struct.tulip_private, ptr %tp, i32 0, i32 42
  %0 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !66
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %and.i = and i32 %3, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.tulip_stop_rxtx.exit_crit_edge, label %if.then.i

entry.tulip_stop_rxtx.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %tulip_stop_rxtx.exit

if.then.i:                                        ; preds = %entry
  %and1.i = and i32 %3, -8195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #5, !srcloc !70
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !72
  %add.ptr4.i = getelementptr i8, ptr %1, i32 40
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.then.i
  %dec33.i = phi i32 [ 129, %if.then.i ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %6 = and i32 %5, 32256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not.i = icmp eq i32 %6, 0
  br i1 %tobool7.not.i, label %land.rhs.i.tulip_stop_rxtx.exit_crit_edge, label %while.body.i

land.rhs.i.tulip_stop_rxtx.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tulip_stop_rxtx.exit

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #5
  %dec.i = add nsw i32 %dec33.i, -1
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %do.body10.critedge.i, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

do.body10.critedge.i:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_restart_rxtx, %tulip_stop_rxtx.exit)) #5
          to label %if.then16.i [label %tulip_stop_rxtx.exit], !srcloc !68

if.then16.i:                                      ; preds = %do.body10.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.tulip_private, ptr %tp, i32 0, i32 46
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !66
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !66
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, ptr noundef %9, ptr noundef nonnull @.str.34, i32 noundef %11, i32 noundef %13) #5
  br label %tulip_stop_rxtx.exit

tulip_stop_rxtx.exit:                             ; preds = %if.then16.i, %do.body10.critedge.i, %land.rhs.i.tulip_stop_rxtx.exit_crit_edge, %entry.tulip_stop_rxtx.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #5
  %15 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr.i, align 8
  %csr6.i = getelementptr inbounds %struct.tulip_private, ptr %tp, i32 0, i32 25
  %17 = ptrtoint ptr %csr6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %csr6.i, align 4
  %or.i = or i32 %18, 8194
  %add.ptr.i3 = getelementptr i8, ptr %16, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %19) #5, !srcloc !70
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !71
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !44, !45, !47, !48, !50, !51, !52, !54, !55, !56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/dec/tulip/pnic2.c", i32 87, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pnic2_timer._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @pnic2_timer._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/dec/tulip/pnic2.c", i32 125, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @pnic2_start_nway.__UNIQUE_ID_ddebug340, !9, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/dec/tulip/pnic2.c", i32 137, i32 3}
!15 = !{ptr @pnic2_start_nway.__UNIQUE_ID_ddebug341, !14, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/dec/tulip/pnic2.c", i32 180, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pnic2_lnk_change._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @pnic2_lnk_change._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/dec/tulip/pnic2.c", i32 214, i32 10}
!23 = !{ptr @pnic2_lnk_change._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @pnic2_lnk_change._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/dec/tulip/pnic2.c", i32 230, i32 12}
!27 = !{ptr @pnic2_lnk_change._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @pnic2_lnk_change._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/dec/tulip/pnic2.c", i32 270, i32 5}
!31 = !{ptr @pnic2_lnk_change.__UNIQUE_ID_ddebug342, !30, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/dec/tulip/pnic2.c", i32 283, i32 18}
!34 = !{ptr @pnic2_lnk_change._entry.18, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @pnic2_lnk_change._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/dec/tulip/pnic2.c", i32 324, i32 4}
!38 = !{ptr @pnic2_lnk_change.__UNIQUE_ID_ddebug343, !37, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/dec/tulip/pnic2.c", i32 340, i32 4}
!41 = !{ptr @pnic2_lnk_change._entry.22, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @pnic2_lnk_change._entry_ptr.24, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @pnic2_lnk_change._entry.27, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/dec/tulip/pnic2.c", i32 365, i32 4}
!47 = !{ptr @pnic2_lnk_change._entry_ptr.28, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/dec/tulip/pnic2.c", i32 386, i32 3}
!50 = !{ptr @pnic2_lnk_change._entry.29, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @pnic2_lnk_change._entry_ptr.31, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/dec/tulip/tulip.h", i32 546, i32 4}
!54 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, !53, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 6554370}
!67 = !{i64 2154094719}
!68 = !{i64 2148718089, i64 2148718094, i64 2148718107, i64 2148718151, i64 2148718185, i64 2148718206}
!69 = !{i64 2154096074}
!70 = !{i64 6553952}
!71 = !{i64 2156411082}
!72 = !{i64 2156411317}
