; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/dec/tulip/media.c_pt.bc'
source_filename = "../drivers/net/ethernet/dec/tulip/media.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mediatable = type { i16, i8, i8, i8, i32, i32, [0 x %struct.medialeaf] }
%struct.medialeaf = type { i8, i8, ptr }
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

@comet_miireg2offset = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\B4\B8\BC\C0\C4\C8\CC\00\00\00\00\00\00\00\00\00\00\D0\00\00\00\00\00\00\00\00\00\00\00\D4\D8\DC", [32 x i8] zeroinitializer }, align 32
@tulip_debug = external dso_local local_unnamed_addr global i32, align 4
@tulip_select_media.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 45, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tulip\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tulip_select_media\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/dec/tulip/media.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Using a 21140 non-MII transceiver with control setting %02x\0A\00", [35 x i8] zeroinitializer }, align 32
@tulip_media_cap = external dso_local local_unnamed_addr constant [0 x i8], align 1
@tulip_select_media.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 50, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Resetting the transceiver\0A\00", [37 x i8] zeroinitializer }, align 32
@tulip_select_media.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 52, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"21143 non-MII %s transceiver control %04x/%04x\0A\00", [48 x i8] zeroinitializer }, align 32
@medianame = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@t21142_csr14 = external dso_local local_unnamed_addr global [0 x i16], align 2
@tulip_select_media.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 59, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Setting CSR15 to %08x/%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tulip_select_media.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 79, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c" Advertising %04x on MII %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tulip_select_media.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 82, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@tulip_select_media.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 84, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c" Invalid media table selection %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tulip_select_media.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 85, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Using media type %s, CSR12 is %02x\0A\00", [60 x i8] zeroinitializer }, align 32
@tulip_select_media.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 87, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PNIC PHY status is %3.3x, media %s\0A\00", [60 x i8] zeroinitializer }, align 32
@tulip_select_media.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 95, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"No media description table, assuming %s transceiver, CSR12 %02x\0A\00", [63 x i8] zeroinitializer }, align 32
@tulip_check_duplex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 406, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"MII status %04x, Link partner report %04x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tulip_check_duplex\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tulip_check_duplex._entry_ptr = internal global ptr @tulip_check_duplex._entry, section ".printk_index", align 4
@tulip_check_duplex._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.2, i32 415, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"No link beat on the MII interface, status %04x\0A\00", [48 x i8] zeroinitializer }, align 32
@tulip_check_duplex._entry_ptr.18 = internal global ptr @tulip_check_duplex._entry.16, section ".printk_index", align 4
@tulip_check_duplex._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.13, ptr @.str.2, i32 437, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Setting %s-duplex based on MII#%d link partner capability of %04x\0A\00", [61 x i8] zeroinitializer }, align 32
@tulip_check_duplex._entry_ptr.21 = internal global ptr @tulip_check_duplex._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@tulip_find_mii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016tulip%d:  MII transceiver #%d config %04x status %04x advertising %04x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tulip_find_mii\00", [17 x i8] zeroinitializer }, align 32
@tulip_find_mii._entry_ptr = internal global ptr @tulip_find_mii._entry, section ".printk_index", align 4
@tulip_find_mii.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 124, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"tulip%d:  Advertising %04x on PHY %d, previously advertising %04x\0A\00", [61 x i8] zeroinitializer }, align 32
@tulip_find_mii._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.2, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016tulip%d: ***WARNING***: No MII transceiver found!\0A\00", [43 x i8] zeroinitializer }, align 32
@tulip_find_mii._entry_ptr.29 = internal global ptr @tulip_find_mii._entry.27, section ".printk_index", align 4
@tulip_stop_rxtx.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.31, ptr @.str.32, i8 0, i8 -119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tulip_stop_rxtx\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/dec/tulip/tulip.h\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"tulip_stop_rxtx() failed (CSR5 0x%x CSR6 0x%x)\0A\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"comet_miireg2offset\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 35, i32 28 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 181, i32 5 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 203, i32 6 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 208, i32 5 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 237, i32 5 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 314, i32 6 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 336, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 341, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 348, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 381, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 405, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 413, i32 5 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 434, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 492, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 497, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.122 = private constant [42 x i8] c"../drivers/net/ethernet/dec/tulip/media.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 543, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [42 x i8] c"../drivers/net/ethernet/dec/tulip/tulip.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 546, i32 4 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @tulip_check_duplex._entry, ptr @tulip_check_duplex._entry.16, ptr @tulip_check_duplex._entry.19, ptr @tulip_check_duplex._entry_ptr, ptr @tulip_check_duplex._entry_ptr.18, ptr @tulip_check_duplex._entry_ptr.21, ptr @tulip_find_mii._entry, ptr @tulip_find_mii._entry.27, ptr @tulip_find_mii._entry_ptr, ptr @tulip_find_mii._entry_ptr.29, ptr @comet_miireg2offset, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comet_miireg2offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_check_duplex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_check_duplex._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_check_duplex._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_find_mii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_find_mii._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %phy_id, i32 noundef %location) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %phy_id, 5
  %shl = and i32 %and, 992
  %or = or i32 %shl, %location
  %or1 = or i32 %or, 251904
  %base_addr = getelementptr i8, ptr %dev, i32 4848
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %location)
  %tobool.not = icmp ult i32 %location, 32
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip_id = getelementptr i8, ptr %dev, i32 3800
  %2 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp eq i32 %3, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %phy_id)
  %cmp4 = icmp eq i32 %phy_id, 30
  %or.cond = and i1 %cmp4, %cmp
  br i1 %or.cond, label %if.then5, label %do.body13

if.then5:                                         ; preds = %if.end
  %4 = lshr i32 536739712, %location
  %5 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not.not = icmp eq i32 %5, 0
  br i1 %tobool6.not.not, label %if.then7, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [32 x i8], ptr @comet_miireg2offset, i32 0, i32 %location
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %add.ptr9 = getelementptr i8, ptr %1, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #5, !srcloc !77
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  br label %cleanup

do.body13:                                        ; preds = %if.end
  %mii_lock = getelementptr i8, ptr %dev, i32 4188
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mii_lock) #5
  %10 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp21 = icmp eq i32 %11, 4
  br i1 %cmp21, label %if.then23, label %do.body13.for.body46_crit_edge

do.body13.for.body46_crit_edge:                   ; preds = %do.body13
  br label %for.body46

if.then23:                                        ; preds = %do.body13
  %shl24 = shl i32 %phy_id, 23
  %add = add i32 %shl24, 1610743808
  %shl25 = shl nuw nsw i32 %location, 18
  %add26 = add i32 %add, %shl25
  %add.ptr27 = getelementptr i8, ptr %1, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %add26) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %12) #5, !srcloc !80
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then23
  %i.0134 = phi i32 [ 1000, %if.then23 ], [ %dec, %for.body.for.body_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !81
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #5, !srcloc !77
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool37.not = icmp sgt i32 %16, -1
  %dec = add nsw i32 %i.0134, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0134)
  %cmp32.not = icmp eq i32 %i.0134, 0
  %or.cond135 = select i1 %tobool37.not, i1 true, i1 %cmp32.not
  br i1 %or.cond135, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mii_lock, i32 noundef %call17) #5
  %and41 = and i32 %16, 65535
  br label %cleanup

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %do.body13.for.body46_crit_edge
  %i.1130 = phi i32 [ %dec50, %for.body46.for.body46_crit_edge ], [ 32, %do.body13.for.body46_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 512) #5, !srcloc !80
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 768) #5, !srcloc !80
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %dec50 = add nsw i32 %i.1130, -1
  %cmp44.not = icmp eq i32 %i.1130, 0
  br i1 %cmp44.not, label %for.body46.for.body55_crit_edge, label %for.body46.for.body46_crit_edge

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body46

for.body46.for.body55_crit_edge:                  ; preds = %for.body46
  br label %for.body55

for.body55:                                       ; preds = %for.body55.for.body55_crit_edge, %for.body46.for.body55_crit_edge
  %i.2131 = phi i32 [ %dec65, %for.body55.for.body55_crit_edge ], [ 15, %for.body46.for.body55_crit_edge ]
  %shl56 = shl nuw i32 1, %i.2131
  %and57 = and i32 %shl56, %or1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %cond = select i1 %tobool58.not, i32 0, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %cond) #5, !srcloc !80
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %20 = or i32 %cond, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %20) #5, !srcloc !80
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %dec65 = add nsw i32 %i.2131, -1
  %cmp53.not = icmp eq i32 %i.2131, 0
  br i1 %cmp53.not, label %for.body55.for.body70_crit_edge, label %for.body55.for.body55_crit_edge

for.body55.for.body55_crit_edge:                  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body55

for.body55.for.body70_crit_edge:                  ; preds = %for.body55
  br label %for.body70

for.body70:                                       ; preds = %for.body70.for.body70_crit_edge, %for.body55.for.body70_crit_edge
  %retval2.2133 = phi i32 [ %or77, %for.body70.for.body70_crit_edge ], [ 0, %for.body55.for.body70_crit_edge ]
  %i.3132 = phi i32 [ %dec80, %for.body70.for.body70_crit_edge ], [ 19, %for.body55.for.body70_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1024) #5, !srcloc !80
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %shl72 = shl i32 %retval2.2133, 1
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %24 = lshr i32 %23, 11
  %and74.lobit = and i32 %24, 1
  %or77 = or i32 %and74.lobit, %shl72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1280) #5, !srcloc !80
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %dec80 = add nsw i32 %i.3132, -1
  %cmp68 = icmp ugt i32 %i.3132, 1
  br i1 %cmp68, label %for.body70.for.body70_crit_edge, label %for.end81

for.body70.for.body70_crit_edge:                  ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body70

for.end81:                                        ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mii_lock, i32 noundef %call17) #5
  %and83 = and i32 %retval2.2133, 65535
  br label %cleanup

cleanup:                                          ; preds = %for.end81, %for.end, %if.then7, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then7 ], [ %and41, %for.end ], [ %and83, %for.end81 ], [ 65535, %entry.cleanup_crit_edge ], [ 65535, %if.then5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tulip_mdio_write(ptr noundef %dev, i32 noundef %phy_id, i32 noundef %location, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %phy_id, 23
  %shl = and i32 %and, 260046848
  %shl1 = shl i32 %location, 18
  %and3 = and i32 %val, 65535
  %or = or i32 %shl1, %shl
  %or2 = or i32 %or, %and3
  %or4 = or i32 %or2, 1342308352
  %base_addr = getelementptr i8, ptr %dev, i32 4848
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %location)
  %tobool.not = icmp ult i32 %location, 32
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip_id = getelementptr i8, ptr %dev, i32 3800
  %2 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp eq i32 %3, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %phy_id)
  %cmp6 = icmp eq i32 %phy_id, 30
  %or.cond = and i1 %cmp6, %cmp
  br i1 %or.cond, label %if.then7, label %do.body14

if.then7:                                         ; preds = %if.end
  %4 = lshr i32 536739712, %location
  %5 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not.not = icmp eq i32 %5, 0
  br i1 %tobool8.not.not, label %if.then9, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [32 x i8], ptr @comet_miireg2offset, i32 0, i32 %location
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %add.ptr11 = getelementptr i8, ptr %1, i32 %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %val) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %8) #5, !srcloc !80
  br label %cleanup

do.body14:                                        ; preds = %if.end
  %mii_lock = getelementptr i8, ptr %dev, i32 4188
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mii_lock) #5
  %9 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp22 = icmp eq i32 %10, 4
  br i1 %cmp22, label %if.then24, label %do.body14.for.body39_crit_edge

do.body14.for.body39_crit_edge:                   ; preds = %do.body14
  br label %for.body39

if.then24:                                        ; preds = %do.body14
  %add.ptr25 = getelementptr i8, ptr %1, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %or4) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %11) #5, !srcloc !80
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then24
  %i.0113 = phi i32 [ 1000, %if.then24 ], [ %dec, %for.body.for.body_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !82
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %.mask = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool31.not = icmp eq i32 %.mask, 0
  %dec = add nsw i32 %i.0113, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0113)
  %cmp26.not = icmp eq i32 %i.0113, 0
  %or.cond114 = select i1 %tobool31.not, i1 true, i1 %cmp26.not
  br i1 %or.cond114, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mii_lock, i32 noundef %call18) #5
  br label %cleanup

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %do.body14.for.body39_crit_edge
  %i.1110 = phi i32 [ %dec43, %for.body39.for.body39_crit_edge ], [ 32, %do.body14.for.body39_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 512) #5, !srcloc !80
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 768) #5, !srcloc !80
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %dec43 = add nsw i32 %i.1110, -1
  %cmp37.not = icmp eq i32 %i.1110, 0
  br i1 %cmp37.not, label %for.body39.for.body48_crit_edge, label %for.body39.for.body39_crit_edge

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body39

for.body39.for.body48_crit_edge:                  ; preds = %for.body39
  br label %for.body48

for.body48:                                       ; preds = %for.body48.for.body48_crit_edge, %for.body39.for.body48_crit_edge
  %i.2111 = phi i32 [ %dec58, %for.body48.for.body48_crit_edge ], [ 31, %for.body39.for.body48_crit_edge ]
  %shl49 = shl nuw i32 1, %i.2111
  %and50 = and i32 %shl49, %or4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %cond = select i1 %tobool51.not, i32 0, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %cond) #5, !srcloc !80
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %16 = or i32 %cond, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %16) #5, !srcloc !80
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %dec58 = add nsw i32 %i.2111, -1
  %cmp46.not = icmp eq i32 %i.2111, 0
  br i1 %cmp46.not, label %for.body63.preheader, label %for.body48.for.body48_crit_edge

for.body48.for.body48_crit_edge:                  ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body48

for.body63.preheader:                             ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1024) #5, !srcloc !80
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1280) #5, !srcloc !80
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1024) #5, !srcloc !80
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1280) #5, !srcloc !80
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mii_lock, i32 noundef %call18) #5
  br label %cleanup

cleanup:                                          ; preds = %for.body63.preheader, %for.end, %if.then9, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tulip_select_media(ptr noundef %dev, i32 noundef %startup) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base_addr = getelementptr i8, ptr %dev, i32 4848
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 8
  %mtable1 = getelementptr i8, ptr %dev, i32 4820
  %2 = ptrtoint ptr %mtable1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mtable1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else505, label %if.then

if.then:                                          ; preds = %entry
  %cur_index = getelementptr i8, ptr %dev, i32 4824
  %4 = ptrtoint ptr %cur_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_index, align 8
  %arrayidx = getelementptr %struct.mediatable, ptr %3, i32 0, i32 6, i32 %5
  %leafdata = getelementptr %struct.mediatable, ptr %3, i32 0, i32 6, i32 %5, i32 2
  %6 = ptrtoint ptr %leafdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %leafdata, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %do.body452 [
    i8 0, label %sw.bb
    i8 2, label %if.then.sw.bb28_crit_edge
    i8 4, label %if.then.sw.bb28_crit_edge883
    i8 1, label %if.then.sw.bb225_crit_edge
    i8 3, label %if.then.sw.bb225_crit_edge884
    i8 5, label %if.then.sw.bb391_crit_edge
    i8 6, label %if.then.sw.bb391_crit_edge885
  ]

if.then.sw.bb391_crit_edge885:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb391

if.then.sw.bb391_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb391

if.then.sw.bb225_crit_edge884:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb225

if.then.sw.bb225_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb225

if.then.sw.bb28_crit_edge883:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb28

if.then.sw.bb28_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb28

sw.bb:                                            ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %11 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp sgt i32 %11, 1
  br i1 %cmp, label %do.body5, label %sw.bb.if.end16_crit_edge

sw.bb.if.end16_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

do.body5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_select_media.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_select_media, %if.end16)) #5
          to label %if.then11 [label %if.end16], !srcloc !83

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx12 = getelementptr i8, ptr %7, i32 1
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_select_media.__UNIQUE_ID_ddebug340, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %conv13) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %do.body5, %sw.bb.if.end16_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %7, align 1
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %16 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %startup)
  %tobool18.not = icmp eq i32 %startup, 0
  br i1 %tobool18.not, label %if.end16.if.end21_crit_edge, label %if.then19

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %csr12dir = getelementptr inbounds %struct.mediatable, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %csr12dir to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %csr12dir, align 1
  %conv20 = zext i8 %18 to i32
  %or = or i32 %conv20, 256
  %add.ptr = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #5, !srcloc !80
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16.if.end21_crit_edge
  %arrayidx22 = getelementptr i8, ptr %7, i32 1
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %21 to i32
  %add.ptr24 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %22 = shl nuw i32 %conv23, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %22) #5, !srcloc !80
  %arrayidx25 = getelementptr i8, ptr %7, i32 2
  %23 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx25, align 1
  %25 = and i8 %24, 113
  %and = zext i8 %25 to i32
  %shl = shl nuw nsw i32 %and, 18
  %or27 = or i32 %shl, 33554432
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.then.sw.bb28_crit_edge, %if.then.sw.bb28_crit_edge883
  %arrayidx31 = getelementptr i8, ptr %7, i32 1
  %26 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %arrayidx31, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #5
  %arrayidx31.1 = getelementptr i8, ptr %7, i32 3
  %29 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 2)
  %30 = load i16, ptr %arrayidx31.1, align 1
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #5
  %arrayidx31.2 = getelementptr i8, ptr %7, i32 5
  %32 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %arrayidx31.2, align 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #5
  %arrayidx31.3 = getelementptr i8, ptr %7, i32 7
  %35 = ptrtoint ptr %arrayidx31.3 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %arrayidx31.3, align 1
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #5
  %arrayidx31.4 = getelementptr i8, ptr %7, i32 9
  %38 = ptrtoint ptr %arrayidx31.4 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %arrayidx31.4, align 1
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #5
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %7, align 1
  %43 = and i8 %42, 31
  %if_port38 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %44 = ptrtoint ptr %if_port38 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %if_port38, align 2
  %idxprom = zext i8 %43 to i32
  %arrayidx40 = getelementptr [0 x i8], ptr @tulip_media_cap, i32 0, i32 %idxprom
  %45 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx40, align 1
  %47 = and i8 %46, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool43.not = icmp eq i8 %47, 0
  br i1 %tobool43.not, label %sw.bb28.if.end45_crit_edge, label %if.then44

sw.bb28.if.end45_crit_edge:                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then44:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #7
  %full_duplex = getelementptr i8, ptr %dev, i32 4252
  %48 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load = load i16, ptr %full_duplex, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %full_duplex, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %sw.bb28.if.end45_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %startup)
  %tobool46.not = icmp eq i32 %startup, 0
  br i1 %tobool46.not, label %if.end45.if.end99_crit_edge, label %land.lhs.true

if.end45.if.end99_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

land.lhs.true:                                    ; preds = %if.end45
  %has_reset = getelementptr inbounds %struct.mediatable, ptr %3, i32 0, i32 3
  %49 = ptrtoint ptr %has_reset to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load47 = load i8, ptr %has_reset, align 4
  %bf.clear48 = and i8 %bf.load47, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear48)
  %tobool49.not = icmp eq i8 %bf.clear48, 0
  br i1 %tobool49.not, label %land.lhs.true.if.end99_crit_edge, label %if.then50

land.lhs.true.if.end99_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

if.then50:                                        ; preds = %land.lhs.true
  %bf.cast = zext i8 %bf.clear48 to i32
  %leafdata57 = getelementptr %struct.mediatable, ptr %3, i32 0, i32 6, i32 %bf.cast, i32 2
  %50 = ptrtoint ptr %leafdata57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %leafdata57, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %52 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp58 = icmp sgt i32 %52, 1
  br i1 %cmp58, label %do.body62, label %if.then50.if.end82_crit_edge

if.then50.if.end82_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

do.body62:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_select_media.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_select_media, %if.end82)) #5
          to label %if.then76 [label %if.end82], !srcloc !83

if.then76:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_select_media.__UNIQUE_ID_ddebug341, ptr noundef %dev, ptr noundef nonnull @.str.4) #5
  br label %if.end82

if.end82:                                         ; preds = %if.then76, %do.body62, %if.then50.if.end82_crit_edge
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp86872.not = icmp eq i8 %54, 0
  br i1 %cmp86872.not, label %if.end82.if.end99_crit_edge, label %for.body88.lr.ph

if.end82.if.end99_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

for.body88.lr.ph:                                 ; preds = %if.end82
  %add.ptr89 = getelementptr i8, ptr %51, i32 1
  %add.ptr95 = getelementptr i8, ptr %1, i32 120
  br label %for.body88

for.body88:                                       ; preds = %for.body88.for.body88_crit_edge, %for.body88.lr.ph
  %i.1873 = phi i32 [ 0, %for.body88.lr.ph ], [ %inc97, %for.body88.for.body88_crit_edge ]
  %shl90 = shl nuw i32 %i.1873, 1
  %add.ptr91 = getelementptr i8, ptr %add.ptr89, i32 %shl90
  %55 = ptrtoint ptr %add.ptr91 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %add.ptr91, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %57 = zext i16 %56 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 %57) #5, !srcloc !80
  %inc97 = add nuw nsw i32 %i.1873, 1
  %58 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %51, align 1
  %conv85 = zext i8 %59 to i32
  %cmp86 = icmp ult i32 %inc97, %conv85
  br i1 %cmp86, label %for.body88.for.body88_crit_edge, label %for.body88.if.end99_crit_edge

for.body88.if.end99_crit_edge:                    ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

for.body88.for.body88_crit_edge:                  ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body88

if.end99:                                         ; preds = %for.body88.if.end99_crit_edge, %if.end82.if.end99_crit_edge, %land.lhs.true.if.end99_crit_edge, %if.end45.if.end99_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %60 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp100 = icmp sgt i32 %60, 1
  br i1 %cmp100, label %do.body104, label %if.end99.if.end131_crit_edge

if.end99.if.end131_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end131

do.body104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_select_media.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_select_media, %if.end131)) #5
          to label %if.then118 [label %if.end131], !srcloc !83

if.then118:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %if_port38 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %if_port38, align 2
  %idxprom120 = zext i8 %62 to i32
  %arrayidx121 = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %idxprom120
  %63 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx121, align 4
  %conv123 = zext i16 %28 to i32
  %conv125 = zext i16 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_select_media.__UNIQUE_ID_ddebug342, ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %64, i32 noundef %conv123, i32 noundef %conv125) #5
  br label %if.end131

if.end131:                                        ; preds = %if.then118, %do.body104, %if.end99.if.end131_crit_edge
  %65 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %7, align 1
  %67 = and i8 %66, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool135.not = icmp eq i8 %67, 0
  %conv159 = zext i16 %28 to i32
  br i1 %tobool135.not, label %if.else, label %if.then136

if.then136:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #7
  %conv140 = zext i16 %31 to i32
  %conv142 = zext i16 %37 to i32
  %shl143 = shl nuw i32 %conv142, 16
  %conv145 = zext i16 %34 to i32
  %or146 = or i32 %shl143, %conv145
  %conv148 = zext i16 %40 to i32
  %shl149 = shl nuw i32 %conv148, 16
  %or152 = or i32 %shl149, %conv145
  %add.ptr153 = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 0) #5, !srcloc !80
  %add.ptr154 = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %68 = tail call i32 @llvm.bswap.i32(i32 %conv140) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 %68) #5, !srcloc !80
  %add.ptr155 = getelementptr i8, ptr %1, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %69 = tail call i32 @llvm.bswap.i32(i32 %or146) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr155, i32 %69) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %70 = tail call i32 @llvm.bswap.i32(i32 %or152) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr155, i32 %70) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %71 = tail call i32 @llvm.bswap.i32(i32 %conv159) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 %71) #5, !srcloc !80
  br label %if.end187

if.else:                                          ; preds = %if.end131
  %shl160 = shl nuw i32 %conv159, 16
  %or161 = or i32 %shl160, 8
  %conv163 = zext i16 %31 to i32
  %shl164 = shl nuw i32 %conv163, 16
  %or165 = or i32 %shl164, 8
  %72 = ptrtoint ptr %if_port38 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %if_port38, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %73)
  %cmp168 = icmp ult i8 %73, 5
  br i1 %cmp168, label %if.then170, label %if.else.if.end175_crit_edge

if.else.if.end175_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end175

if.then170:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %conv167 = zext i8 %73 to i32
  %arrayidx173 = getelementptr [0 x i16], ptr @t21142_csr14, i32 0, i32 %conv167
  %74 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx173, align 2
  %conv174 = zext i16 %75 to i32
  br label %if.end175

if.end175:                                        ; preds = %if.then170, %if.else.if.end175_crit_edge
  %csr14val.0 = phi i32 [ %conv174, %if.then170 ], [ 0, %if.else.if.end175_crit_edge ]
  br i1 %tobool46.not, label %if.end187.critedge, label %if.then177

if.then177:                                       ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr178 = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 0) #5, !srcloc !80
  %add.ptr179 = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %76 = tail call i32 @llvm.bswap.i32(i32 %csr14val.0) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr179, i32 %76) #5, !srcloc !80
  %add.ptr181.c = getelementptr i8, ptr %1, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %77 = tail call i32 @llvm.bswap.i32(i32 %or161) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr181.c, i32 %77) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %78 = tail call i32 @llvm.bswap.i32(i32 %or165) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr181.c, i32 %78) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 16777216) #5, !srcloc !80
  br label %if.end187

if.end187.critedge:                               ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr181.c819 = getelementptr i8, ptr %1, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %79 = tail call i32 @llvm.bswap.i32(i32 %or161) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr181.c819, i32 %79) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %80 = tail call i32 @llvm.bswap.i32(i32 %or165) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr181.c819, i32 %80) #5, !srcloc !80
  br label %if.end187

if.end187:                                        ; preds = %if.end187.critedge, %if.then177, %if.then136
  %csr15val.0 = phi i32 [ %or152, %if.then136 ], [ %or165, %if.then177 ], [ %or165, %if.end187.critedge ]
  %csr15dir.0 = phi i32 [ %or146, %if.then136 ], [ %or161, %if.then177 ], [ %or161, %if.end187.critedge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %81 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp188 = icmp sgt i32 %81, 1
  br i1 %cmp188, label %do.body192, label %if.end187.if.end212_crit_edge

if.end187.if.end212_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end212

do.body192:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_select_media.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_select_media, %if.end212)) #5
          to label %if.then206 [label %if.end212], !srcloc !83

if.then206:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_select_media.__UNIQUE_ID_ddebug343, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %csr15dir.0, i32 noundef %csr15val.0) #5
  br label %if.end212

if.end212:                                        ; preds = %if.then206, %do.body192, %if.end187.if.end212_crit_edge
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %83)
  %cmp215 = icmp eq i8 %83, 4
  br i1 %cmp215, label %if.then217, label %if.end212.sw.epilog_crit_edge

if.end212.sw.epilog_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then217:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #7
  %84 = and i16 %34, 113
  %and220 = zext i16 %84 to i32
  %shl221 = shl nuw nsw i32 %and220, 18
  %or222 = or i32 %shl221, -2113798144
  br label %sw.epilog

sw.bb225:                                         ; preds = %if.then.sw.bb225_crit_edge, %if.then.sw.bb225_crit_edge884
  %85 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %7, align 1
  %conv227 = zext i8 %86 to i32
  %arrayidx228 = getelementptr i8, ptr %7, i32 1
  %87 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx228, align 1
  %conv229 = zext i8 %88 to i32
  %if_port230 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %89 = ptrtoint ptr %if_port230 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 11, ptr %if_port230, align 2
  %90 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %91)
  %cmp233 = icmp eq i8 %91, 3
  %add.ptr236 = getelementptr i8, ptr %7, i32 2
  %add.ptr237 = getelementptr i8, ptr %7, i32 3
  br i1 %cmp233, label %if.then235, label %if.else279

if.then235:                                       ; preds = %sw.bb225
  %arrayidx238 = getelementptr i16, ptr %add.ptr237, i32 %conv229
  %mul239 = shl nuw nsw i32 %conv229, 1
  %add240 = add nuw nsw i32 %mul239, 2
  %arrayidx241 = getelementptr i8, ptr %7, i32 %add240
  %92 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx241, align 1
  %conv242 = zext i8 %93 to i32
  %add.ptr243 = getelementptr i16, ptr %arrayidx238, i32 %conv242
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %startup)
  %tobool244.not = icmp eq i32 %startup, 0
  br i1 %tobool244.not, label %if.then235.if.end264_crit_edge, label %for.cond246.preheader

if.then235.if.end264_crit_edge:                   ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end264

for.cond246.preheader:                            ; preds = %if.then235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp247865.not = icmp eq i8 %93, 0
  br i1 %cmp247865.not, label %for.cond246.preheader.for.end257_crit_edge, label %for.body249.lr.ph

for.cond246.preheader.for.end257_crit_edge:       ; preds = %for.cond246.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end257

for.body249.lr.ph:                                ; preds = %for.cond246.preheader
  %add.ptr254 = getelementptr i8, ptr %1, i32 120
  br label %for.body249

for.body249:                                      ; preds = %for.body249.for.body249_crit_edge, %for.body249.lr.ph
  %i.2866 = phi i32 [ 0, %for.body249.lr.ph ], [ %inc256, %for.body249.for.body249_crit_edge ]
  %arrayidx250 = getelementptr i16, ptr %arrayidx238, i32 %i.2866
  %94 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %arrayidx250, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %96 = zext i16 %95 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr254, i32 %96) #5, !srcloc !80
  %inc256 = add nuw nsw i32 %i.2866, 1
  %exitcond875.not = icmp eq i32 %inc256, %conv242
  br i1 %exitcond875.not, label %for.body249.for.end257_crit_edge, label %for.body249.for.body249_crit_edge

for.body249.for.body249_crit_edge:                ; preds = %for.body249
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body249

for.body249.for.end257_crit_edge:                 ; preds = %for.body249
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end257

for.end257:                                       ; preds = %for.body249.for.end257_crit_edge, %for.cond246.preheader.for.end257_crit_edge
  %add.ptr258 = getelementptr i8, ptr %1, i32 120
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr258) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %98(i32 noundef 107374000) #5
  %call261 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv227, i32 noundef 0)
  %and262 = and i32 %call261, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262)
  %tobool263.not = icmp eq i32 %and262, 0
  br i1 %tobool263.not, label %for.end257.if.end264_crit_edge, label %while.body

for.end257.if.end264_crit_edge:                   ; preds = %for.end257
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end264

while.body:                                       ; preds = %for.end257
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %99(i32 noundef 21474800) #5
  %call261.1 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv227, i32 noundef 0)
  %and262.1 = and i32 %call261.1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262.1)
  %tobool263.not.1 = icmp eq i32 %and262.1, 0
  br i1 %tobool263.not.1, label %while.body.if.end264_crit_edge, label %while.body.1

while.body.if.end264_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end264

while.body.1:                                     ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 21474800) #5
  %call261.2 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv227, i32 noundef 0)
  %and262.2 = and i32 %call261.2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262.2)
  %tobool263.not.2 = icmp eq i32 %and262.2, 0
  br i1 %tobool263.not.2, label %while.body.1.if.end264_crit_edge, label %while.body.2

while.body.1.if.end264_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end264

while.body.2:                                     ; preds = %while.body.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 21474800) #5
  %call261.3 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv227, i32 noundef 0)
  %and262.3 = and i32 %call261.3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262.3)
  %tobool263.not.3 = icmp eq i32 %and262.3, 0
  br i1 %tobool263.not.3, label %while.body.2.if.end264_crit_edge, label %while.body.3

while.body.2.if.end264_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end264

while.body.3:                                     ; preds = %while.body.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 21474800) #5
  %call261.4 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv227, i32 noundef 0)
  %and262.4 = and i32 %call261.4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262.4)
  %tobool263.not.4 = icmp eq i32 %and262.4, 0
  br i1 %tobool263.not.4, label %while.body.3.if.end264_crit_edge, label %while.body.4

while.body.3.if.end264_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end264

while.body.4:                                     ; preds = %while.body.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 21474800) #5
  %call261.5 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv227, i32 noundef 0)
  %and262.5 = and i32 %call261.5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262.5)
  %tobool263.not.5 = icmp eq i32 %and262.5, 0
  br i1 %tobool263.not.5, label %while.body.4.if.end264_crit_edge, label %while.body.5

while.body.4.if.end264_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end264

while.body.5:                                     ; preds = %while.body.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 21474800) #5
  %call261.6 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv227, i32 noundef 0)
  %and262.6 = and i32 %call261.6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262.6)
  %tobool263.not.6 = icmp eq i32 %and262.6, 0
  br i1 %tobool263.not.6, label %while.body.5.if.end264_crit_edge, label %while.body.6

while.body.5.if.end264_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end264

while.body.6:                                     ; preds = %while.body.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 21474800) #5
  %call261.7 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv227, i32 noundef 0)
  %and262.7 = and i32 %call261.7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262.7)
  %tobool263.not.7 = icmp eq i32 %and262.7, 0
  br i1 %tobool263.not.7, label %while.body.6.if.end264_crit_edge, label %while.body.7

while.body.6.if.end264_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end264

while.body.7:                                     ; preds = %while.body.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 21474800) #5
  %call261.8 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv227, i32 noundef 0)
  %and262.8 = and i32 %call261.8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262.8)
  %tobool263.not.8 = icmp eq i32 %and262.8, 0
  br i1 %tobool263.not.8, label %while.body.7.if.end264_crit_edge, label %while.body.8

while.body.7.if.end264_crit_edge:                 ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end264

while.body.8:                                     ; preds = %while.body.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 21474800) #5
  %call261.9 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv227, i32 noundef 0)
  %and262.9 = and i32 %call261.9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262.9)
  %tobool263.not.9 = icmp eq i32 %and262.9, 0
  br i1 %tobool263.not.9, label %while.body.8.if.end264_crit_edge, label %while.body.9

while.body.8.if.end264_crit_edge:                 ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end264

while.body.9:                                     ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %108(i32 noundef 21474800) #5
  br label %if.end264

if.end264:                                        ; preds = %while.body.9, %while.body.8.if.end264_crit_edge, %while.body.7.if.end264_crit_edge, %while.body.6.if.end264_crit_edge, %while.body.5.if.end264_crit_edge, %while.body.4.if.end264_crit_edge, %while.body.3.if.end264_crit_edge, %while.body.2.if.end264_crit_edge, %while.body.1.if.end264_crit_edge, %while.body.if.end264_crit_edge, %for.end257.if.end264_crit_edge, %if.then235.if.end264_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp266868.not = icmp eq i8 %88, 0
  br i1 %cmp266868.not, label %if.end264.for.end276_crit_edge, label %for.body268.lr.ph

if.end264.for.end276_crit_edge:                   ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end276

for.body268.lr.ph:                                ; preds = %if.end264
  %add.ptr273 = getelementptr i8, ptr %1, i32 120
  br label %for.body268

for.body268:                                      ; preds = %for.body268.for.body268_crit_edge, %for.body268.lr.ph
  %i.3869 = phi i32 [ 0, %for.body268.lr.ph ], [ %inc275, %for.body268.for.body268_crit_edge ]
  %arrayidx269 = getelementptr i16, ptr %add.ptr236, i32 %i.3869
  %109 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %110 = load i16, ptr %arrayidx269, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %111 = zext i16 %110 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr273, i32 %111) #5, !srcloc !80
  %inc275 = add nuw nsw i32 %i.3869, 1
  %exitcond876.not = icmp eq i32 %inc275, %conv229
  br i1 %exitcond876.not, label %for.body268.for.end276_crit_edge, label %for.body268.for.body268_crit_edge

for.body268.for.body268_crit_edge:                ; preds = %for.body268
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body268

for.body268.for.end276_crit_edge:                 ; preds = %for.body268
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end276

for.end276:                                       ; preds = %for.body268.for.end276_crit_edge, %if.end264.for.end276_crit_edge
  %add.ptr277 = getelementptr i8, ptr %1, i32 120
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr277) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  br label %if.end332

if.else279:                                       ; preds = %sw.bb225
  %add.ptr284 = getelementptr i8, ptr %add.ptr237, i32 %conv229
  %add286 = add nuw nsw i32 %conv229, 2
  %arrayidx287 = getelementptr i8, ptr %7, i32 %add286
  %113 = ptrtoint ptr %arrayidx287 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx287, align 1
  %conv288 = zext i8 %114 to i32
  %add.ptr289 = getelementptr i8, ptr %add.ptr284, i32 %conv288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %startup)
  %tobool290.not = icmp eq i32 %startup, 0
  br i1 %tobool290.not, label %if.else279.if.end319_crit_edge, label %if.then291

if.else279.if.end319_crit_edge:                   ; preds = %if.else279
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end319

if.then291:                                       ; preds = %if.else279
  %csr12dir293 = getelementptr inbounds %struct.mediatable, ptr %3, i32 0, i32 2
  %115 = ptrtoint ptr %csr12dir293 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %csr12dir293, align 1
  %conv294 = zext i8 %116 to i32
  %or295 = or i32 %conv294, 256
  %add.ptr296 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %117 = tail call i32 @llvm.bswap.i32(i32 %or295) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr296, i32 %117) #5, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %cmp298860.not = icmp eq i8 %114, 0
  br i1 %cmp298860.not, label %if.then291.for.end306_crit_edge, label %if.then291.for.body300_crit_edge

if.then291.for.body300_crit_edge:                 ; preds = %if.then291
  br label %for.body300

if.then291.for.end306_crit_edge:                  ; preds = %if.then291
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end306

for.body300:                                      ; preds = %for.body300.for.body300_crit_edge, %if.then291.for.body300_crit_edge
  %i.4861 = phi i32 [ %inc305, %for.body300.for.body300_crit_edge ], [ 0, %if.then291.for.body300_crit_edge ]
  %arrayidx301 = getelementptr i8, ptr %add.ptr284, i32 %i.4861
  %118 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx301, align 1
  %conv302 = zext i8 %119 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %120 = shl nuw i32 %conv302, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr296, i32 %120) #5, !srcloc !80
  %inc305 = add nuw nsw i32 %i.4861, 1
  %exitcond.not = icmp eq i32 %inc305, %conv288
  br i1 %exitcond.not, label %for.body300.for.end306_crit_edge, label %for.body300.for.body300_crit_edge

for.body300.for.body300_crit_edge:                ; preds = %for.body300
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body300

for.body300.for.end306_crit_edge:                 ; preds = %for.body300
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end306

for.end306:                                       ; preds = %for.body300.for.end306_crit_edge, %if.then291.for.end306_crit_edge
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr296) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %122(i32 noundef 107374000) #5
  %call313 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv227, i32 noundef 0)
  %and314 = and i32 %call313, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314)
  %tobool315.not = icmp eq i32 %and314, 0
  br i1 %tobool315.not, label %for.end306.if.end319_crit_edge, label %while.body317

for.end306.if.end319_crit_edge:                   ; preds = %for.end306
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end319

while.body317:                                    ; preds = %for.end306
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %123(i32 noundef 21474800) #5
  %call313.1 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv227, i32 noundef 0)
  %and314.1 = and i32 %call313.1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314.1)
  %tobool315.not.1 = icmp eq i32 %and314.1, 0
  br i1 %tobool315.not.1, label %while.body317.if.end319_crit_edge, label %while.body317.1

while.body317.if.end319_crit_edge:                ; preds = %while.body317
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end319

while.body317.1:                                  ; preds = %while.body317
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %124(i32 noundef 21474800) #5
  %call313.2 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv227, i32 noundef 0)
  %and314.2 = and i32 %call313.2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314.2)
  %tobool315.not.2 = icmp eq i32 %and314.2, 0
  br i1 %tobool315.not.2, label %while.body317.1.if.end319_crit_edge, label %while.body317.2

while.body317.1.if.end319_crit_edge:              ; preds = %while.body317.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end319

while.body317.2:                                  ; preds = %while.body317.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %125(i32 noundef 21474800) #5
  %call313.3 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv227, i32 noundef 0)
  %and314.3 = and i32 %call313.3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314.3)
  %tobool315.not.3 = icmp eq i32 %and314.3, 0
  br i1 %tobool315.not.3, label %while.body317.2.if.end319_crit_edge, label %while.body317.3

while.body317.2.if.end319_crit_edge:              ; preds = %while.body317.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end319

while.body317.3:                                  ; preds = %while.body317.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %126 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %126(i32 noundef 21474800) #5
  %call313.4 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv227, i32 noundef 0)
  %and314.4 = and i32 %call313.4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314.4)
  %tobool315.not.4 = icmp eq i32 %and314.4, 0
  br i1 %tobool315.not.4, label %while.body317.3.if.end319_crit_edge, label %while.body317.4

while.body317.3.if.end319_crit_edge:              ; preds = %while.body317.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end319

while.body317.4:                                  ; preds = %while.body317.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %127(i32 noundef 21474800) #5
  %call313.5 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv227, i32 noundef 0)
  %and314.5 = and i32 %call313.5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314.5)
  %tobool315.not.5 = icmp eq i32 %and314.5, 0
  br i1 %tobool315.not.5, label %while.body317.4.if.end319_crit_edge, label %while.body317.5

while.body317.4.if.end319_crit_edge:              ; preds = %while.body317.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end319

while.body317.5:                                  ; preds = %while.body317.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %128(i32 noundef 21474800) #5
  %call313.6 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv227, i32 noundef 0)
  %and314.6 = and i32 %call313.6, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314.6)
  %tobool315.not.6 = icmp eq i32 %and314.6, 0
  br i1 %tobool315.not.6, label %while.body317.5.if.end319_crit_edge, label %while.body317.6

while.body317.5.if.end319_crit_edge:              ; preds = %while.body317.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end319

while.body317.6:                                  ; preds = %while.body317.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %129(i32 noundef 21474800) #5
  %call313.7 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv227, i32 noundef 0)
  %and314.7 = and i32 %call313.7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314.7)
  %tobool315.not.7 = icmp eq i32 %and314.7, 0
  br i1 %tobool315.not.7, label %while.body317.6.if.end319_crit_edge, label %while.body317.7

while.body317.6.if.end319_crit_edge:              ; preds = %while.body317.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end319

while.body317.7:                                  ; preds = %while.body317.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %130(i32 noundef 21474800) #5
  %call313.8 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv227, i32 noundef 0)
  %and314.8 = and i32 %call313.8, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314.8)
  %tobool315.not.8 = icmp eq i32 %and314.8, 0
  br i1 %tobool315.not.8, label %while.body317.7.if.end319_crit_edge, label %while.body317.8

while.body317.7.if.end319_crit_edge:              ; preds = %while.body317.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end319

while.body317.8:                                  ; preds = %while.body317.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %131(i32 noundef 21474800) #5
  %call313.9 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv227, i32 noundef 0)
  %and314.9 = and i32 %call313.9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and314.9)
  %tobool315.not.9 = icmp eq i32 %and314.9, 0
  br i1 %tobool315.not.9, label %while.body317.8.if.end319_crit_edge, label %while.body317.9

while.body317.8.if.end319_crit_edge:              ; preds = %while.body317.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end319

while.body317.9:                                  ; preds = %while.body317.8
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %132(i32 noundef 21474800) #5
  br label %if.end319

if.end319:                                        ; preds = %while.body317.9, %while.body317.8.if.end319_crit_edge, %while.body317.7.if.end319_crit_edge, %while.body317.6.if.end319_crit_edge, %while.body317.5.if.end319_crit_edge, %while.body317.4.if.end319_crit_edge, %while.body317.3.if.end319_crit_edge, %while.body317.2.if.end319_crit_edge, %while.body317.1.if.end319_crit_edge, %while.body317.if.end319_crit_edge, %for.end306.if.end319_crit_edge, %if.else279.if.end319_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp321863.not = icmp eq i8 %88, 0
  br i1 %cmp321863.not, label %if.end319.for.end329_crit_edge, label %for.body323.lr.ph

if.end319.for.end329_crit_edge:                   ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end329

for.body323.lr.ph:                                ; preds = %if.end319
  %add.ptr326 = getelementptr i8, ptr %1, i32 96
  br label %for.body323

for.body323:                                      ; preds = %for.body323.for.body323_crit_edge, %for.body323.lr.ph
  %i.5864 = phi i32 [ 0, %for.body323.lr.ph ], [ %inc328, %for.body323.for.body323_crit_edge ]
  %arrayidx324 = getelementptr i8, ptr %add.ptr236, i32 %i.5864
  %133 = ptrtoint ptr %arrayidx324 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx324, align 1
  %conv325 = zext i8 %134 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %135 = shl nuw i32 %conv325, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr326, i32 %135) #5, !srcloc !80
  %inc328 = add nuw nsw i32 %i.5864, 1
  %exitcond874.not = icmp eq i32 %inc328, %conv229
  br i1 %exitcond874.not, label %for.body323.for.end329_crit_edge, label %for.body323.for.body323_crit_edge

for.body323.for.body323_crit_edge:                ; preds = %for.body323
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body323

for.body323.for.end329_crit_edge:                 ; preds = %for.body323
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end329

for.end329:                                       ; preds = %for.body323.for.end329_crit_edge, %if.end319.for.end329_crit_edge
  %add.ptr330 = getelementptr i8, ptr %1, i32 96
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr330) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  br label %if.end332

if.end332:                                        ; preds = %for.end329, %for.end276
  %misc_info.0 = phi ptr [ %add.ptr243, %for.end276 ], [ %add.ptr289, %for.end329 ]
  %arrayidx333 = getelementptr i16, ptr %misc_info.0, i32 1
  %137 = ptrtoint ptr %arrayidx333 to i32
  call void @__asan_loadN_noabort(i32 %137, i32 2)
  %138 = load i16, ptr %arrayidx333, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %cond = icmp eq i16 %138, 0
  br i1 %cond, label %if.end332.sw.epilog_crit_edge, label %if.then336

if.end332.sw.epilog_crit_edge:                    ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then336:                                       ; preds = %if.end332
  %139 = or i16 %138, 256
  %140 = tail call i16 @llvm.bswap.i16(i16 %139)
  %arrayidx340 = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 32, i32 %conv227
  %141 = ptrtoint ptr %arrayidx340 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %arrayidx340, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %startup)
  %cmp345 = icmp slt i32 %startup, 2
  br i1 %cmp345, label %if.then347, label %if.then336.sw.epilog_crit_edge

if.then336.sw.epilog_crit_edge:                   ; preds = %if.then336
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then347:                                       ; preds = %if.then336
  %mii_advertise = getelementptr i8, ptr %dev, i32 4802
  %142 = ptrtoint ptr %mii_advertise to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %mii_advertise, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %143)
  %cmp349 = icmp eq i16 %143, 0
  br i1 %cmp349, label %if.then351, label %if.then347.if.end355_crit_edge

if.then347.if.end355_crit_edge:                   ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end355

if.then351:                                       ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #7
  %144 = ptrtoint ptr %mii_advertise to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %140, ptr %mii_advertise, align 2
  br label %if.end355

if.end355:                                        ; preds = %if.then351, %if.then347.if.end355_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %145 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %145)
  %cmp356 = icmp sgt i32 %145, 1
  br i1 %cmp356, label %do.body360, label %if.end355.if.end384_crit_edge

if.end355.if.end384_crit_edge:                    ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end384

do.body360:                                       ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_select_media.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_select_media, %if.end384)) #5
          to label %if.then374 [label %if.end384], !srcloc !83

if.then374:                                       ; preds = %do.body360
  call void @__sanitizer_cov_trace_pc() #7
  %146 = ptrtoint ptr %mii_advertise to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %mii_advertise, align 2
  %conv376 = zext i16 %147 to i32
  %arrayidx377 = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 33, i32 %conv227
  %148 = ptrtoint ptr %arrayidx377 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx377, align 1
  %conv378 = sext i8 %149 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_select_media.__UNIQUE_ID_ddebug344, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %conv376, i32 noundef %conv378) #5
  br label %if.end384

if.end384:                                        ; preds = %if.then374, %do.body360, %if.end355.if.end384_crit_edge
  %arrayidx386 = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 33, i32 %conv227
  %150 = ptrtoint ptr %arrayidx386 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx386, align 1
  %conv387 = sext i8 %151 to i32
  %152 = ptrtoint ptr %mii_advertise to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %mii_advertise, align 2
  %conv389 = zext i16 %153 to i32
  tail call void @tulip_mdio_write(ptr noundef %dev, i32 noundef %conv387, i32 noundef 4, i32 noundef %conv389)
  br label %sw.epilog

sw.bb391:                                         ; preds = %if.then.sw.bb391_crit_edge, %if.then.sw.bb391_crit_edge885
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %startup)
  %tobool392.not = icmp eq i32 %startup, 0
  br i1 %tobool392.not, label %sw.bb391.sw.epilog_crit_edge, label %land.lhs.true393

sw.bb391.sw.epilog_crit_edge:                     ; preds = %sw.bb391
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true393:                                 ; preds = %sw.bb391
  %has_reset394 = getelementptr inbounds %struct.mediatable, ptr %3, i32 0, i32 3
  %154 = ptrtoint ptr %has_reset394 to i32
  call void @__asan_load1_noabort(i32 %154)
  %bf.load395 = load i8, ptr %has_reset394, align 4
  %bf.clear396 = and i8 %bf.load395, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear396)
  %tobool398.not = icmp eq i8 %bf.clear396, 0
  br i1 %tobool398.not, label %land.lhs.true393.sw.epilog_crit_edge, label %if.then399

land.lhs.true393.sw.epilog_crit_edge:             ; preds = %land.lhs.true393
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then399:                                       ; preds = %land.lhs.true393
  %bf.cast397 = zext i8 %bf.clear396 to i32
  %leafdata408 = getelementptr %struct.mediatable, ptr %3, i32 0, i32 6, i32 %bf.cast397, i32 2
  %155 = ptrtoint ptr %leafdata408 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %leafdata408, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %157 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %157)
  %cmp409 = icmp sgt i32 %157, 1
  br i1 %cmp409, label %do.body413, label %if.then399.if.end433_crit_edge

if.then399.if.end433_crit_edge:                   ; preds = %if.then399
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end433

do.body413:                                       ; preds = %if.then399
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_select_media.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_select_media, %if.end433)) #5
          to label %if.then427 [label %if.end433], !srcloc !83

if.then427:                                       ; preds = %do.body413
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_select_media.__UNIQUE_ID_ddebug345, ptr noundef %dev, ptr noundef nonnull @.str.4) #5
  br label %if.end433

if.end433:                                        ; preds = %if.then427, %do.body413, %if.then399.if.end433_crit_edge
  %158 = ptrtoint ptr %156 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %156, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %cmp437858.not = icmp eq i8 %159, 0
  br i1 %cmp437858.not, label %if.end433.sw.epilog_crit_edge, label %for.body439.lr.ph

if.end433.sw.epilog_crit_edge:                    ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body439.lr.ph:                                ; preds = %if.end433
  %add.ptr440 = getelementptr i8, ptr %156, i32 1
  %add.ptr446 = getelementptr i8, ptr %1, i32 120
  br label %for.body439

for.body439:                                      ; preds = %for.body439.for.body439_crit_edge, %for.body439.lr.ph
  %i.6859 = phi i32 [ 0, %for.body439.lr.ph ], [ %inc448, %for.body439.for.body439_crit_edge ]
  %shl441 = shl nuw i32 %i.6859, 1
  %add.ptr442 = getelementptr i8, ptr %add.ptr440, i32 %shl441
  %160 = ptrtoint ptr %add.ptr442 to i32
  call void @__asan_loadN_noabort(i32 %160, i32 2)
  %161 = load i16, ptr %add.ptr442, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %162 = zext i16 %161 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr446, i32 %162) #5, !srcloc !80
  %inc448 = add nuw nsw i32 %i.6859, 1
  %163 = ptrtoint ptr %156 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %156, align 1
  %conv436 = zext i8 %164 to i32
  %cmp437 = icmp ult i32 %inc448, %conv436
  br i1 %cmp437, label %for.body439.for.body439_crit_edge, label %for.body439.sw.epilog_crit_edge

for.body439.sw.epilog_crit_edge:                  ; preds = %for.body439
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

for.body439.for.body439_crit_edge:                ; preds = %for.body439
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body439

do.body452:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_select_media.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_select_media, %sw.epilog)) #5
          to label %if.then466 [label %sw.epilog], !srcloc !83

if.then466:                                       ; preds = %do.body452
  call void @__sanitizer_cov_trace_pc() #7
  %165 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx, align 4
  %conv468 = zext i8 %166 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_select_media.__UNIQUE_ID_ddebug346, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv468) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then466, %do.body452, %for.body439.sw.epilog_crit_edge, %if.end433.sw.epilog_crit_edge, %land.lhs.true393.sw.epilog_crit_edge, %sw.bb391.sw.epilog_crit_edge, %if.end384, %if.then336.sw.epilog_crit_edge, %if.end332.sw.epilog_crit_edge, %if.then217, %if.end212.sw.epilog_crit_edge, %if.end21
  %new_csr6.1 = phi i32 [ 0, %land.lhs.true393.sw.epilog_crit_edge ], [ 0, %sw.bb391.sw.epilog_crit_edge ], [ %or27, %if.end21 ], [ 34471936, %if.end332.sw.epilog_crit_edge ], [ 34471936, %if.end384 ], [ 34471936, %if.then336.sw.epilog_crit_edge ], [ 34471936, %if.then466 ], [ 34471936, %do.body452 ], [ 0, %if.end433.sw.epilog_crit_edge ], [ %or222, %if.then217 ], [ -2109603840, %if.end212.sw.epilog_crit_edge ], [ 0, %for.body439.sw.epilog_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %167 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %167)
  %cmp474 = icmp sgt i32 %167, 1
  br i1 %cmp474, label %do.body478, label %sw.epilog.if.end644_crit_edge

sw.epilog.if.end644_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end644

do.body478:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_select_media.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_select_media, %if.end644)) #5
          to label %if.then492 [label %if.end644], !srcloc !83

if.then492:                                       ; preds = %do.body478
  call void @__sanitizer_cov_trace_pc() #7
  %if_port493 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %168 = ptrtoint ptr %if_port493 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %if_port493, align 2
  %idxprom494 = zext i8 %169 to i32
  %arrayidx495 = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %idxprom494
  %170 = ptrtoint ptr %arrayidx495 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx495, align 4
  %add.ptr496 = getelementptr i8, ptr %1, i32 96
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr496) #5, !srcloc !77
  %173 = lshr i32 %172, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_select_media.__UNIQUE_ID_ddebug347, ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef %171, i32 noundef %173) #5
  br label %if.end644

if.else505:                                       ; preds = %entry
  %chip_id = getelementptr i8, ptr %dev, i32 3800
  %174 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %175)
  %cmp506 = icmp eq i32 %175, 4
  br i1 %cmp506, label %if.then508, label %if.else580

if.then508:                                       ; preds = %if.else505
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %startup)
  %tobool509.not = icmp eq i32 %startup, 0
  br i1 %tobool509.not, label %if.then508.if.end520_crit_edge, label %land.lhs.true510

if.then508.if.end520_crit_edge:                   ; preds = %if.then508
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end520

land.lhs.true510:                                 ; preds = %if.then508
  %medialock = getelementptr i8, ptr %dev, i32 4252
  %176 = ptrtoint ptr %medialock to i32
  call void @__asan_load2_noabort(i32 %176)
  %bf.load511 = load i16, ptr %medialock, align 4
  %177 = and i16 %bf.load511, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %177)
  %tobool514.not = icmp eq i16 %177, 0
  br i1 %tobool514.not, label %if.then515, label %land.lhs.true510.if.end520_crit_edge

land.lhs.true510.if.end520_crit_edge:             ; preds = %land.lhs.true510
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end520

if.then515:                                       ; preds = %land.lhs.true510
  call void @__sanitizer_cov_trace_pc() #7
  %mii_cnt = getelementptr i8, ptr %dev, i32 4818
  %178 = ptrtoint ptr %mii_cnt to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %mii_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool517.not = icmp eq i8 %179, 0
  %conv518 = select i1 %tobool517.not, i8 0, i8 11
  %if_port519 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %180 = ptrtoint ptr %if_port519 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %conv518, ptr %if_port519, align 2
  br label %if.end520

if.end520:                                        ; preds = %if.then515, %land.lhs.true510.if.end520_crit_edge, %if.then508.if.end520_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %181 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %181)
  %cmp521 = icmp sgt i32 %181, 1
  br i1 %cmp521, label %do.body525, label %if.end520.if.end550_crit_edge

if.end520.if.end550_crit_edge:                    ; preds = %if.end520
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end550

do.body525:                                       ; preds = %if.end520
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_select_media.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_select_media, %if.end550)) #5
          to label %if.then539 [label %if.end550], !srcloc !83

if.then539:                                       ; preds = %do.body525
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr540 = getelementptr i8, ptr %1, i32 184
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr540) #5, !srcloc !77
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %if_port542 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %184 = ptrtoint ptr %if_port542 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %if_port542, align 2
  %idxprom543 = zext i8 %185 to i32
  %arrayidx544 = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %idxprom543
  %186 = ptrtoint ptr %arrayidx544 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx544, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_select_media.__UNIQUE_ID_ddebug348, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %183, ptr noundef %187) #5
  br label %if.end550

if.end550:                                        ; preds = %if.then539, %do.body525, %if.end520.if.end550_crit_edge
  %mii_cnt551 = getelementptr i8, ptr %dev, i32 4818
  %188 = ptrtoint ptr %mii_cnt551 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %mii_cnt551, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool552.not = icmp eq i8 %189, 0
  br i1 %tobool552.not, label %if.else556, label %if.then553

if.then553:                                       ; preds = %if.end550
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr554 = getelementptr i8, ptr %1, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr554, i32 16777216) #5, !srcloc !80
  %add.ptr555 = getelementptr i8, ptr %1, i32 184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr555, i32 2058354946) #5, !srcloc !80
  br label %if.end644

if.else556:                                       ; preds = %if.end550
  br i1 %tobool509.not, label %if.else562, label %if.then558

if.then558:                                       ; preds = %if.else556
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr559 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr559, i32 838860800) #5, !srcloc !80
  %add.ptr560 = getelementptr i8, ptr %1, i32 184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr560, i32 2024800512) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr560, i32 2024800514) #5, !srcloc !80
  br label %if.end644

if.else562:                                       ; preds = %if.else556
  %if_port563 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %190 = ptrtoint ptr %if_port563 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %if_port563, align 2
  %192 = zext i8 %191 to i64
  call void @__sanitizer_cov_trace_switch(i64 %192, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %191, label %if.else574 [
    i8 3, label %if.else562.if.then571_crit_edge
    i8 5, label %if.else562.if.then571_crit_edge886
  ]

if.else562.if.then571_crit_edge886:               ; preds = %if.else562
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then571

if.else562.if.then571_crit_edge:                  ; preds = %if.else562
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then571

if.then571:                                       ; preds = %if.else562.if.then571_crit_edge, %if.else562.if.then571_crit_edge886
  %add.ptr572 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr572, i32 855638016) #5, !srcloc !80
  %add.ptr573 = getelementptr i8, ptr %1, i32 184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr573, i32 1761083648) #5, !srcloc !80
  br label %if.end644

if.else574:                                       ; preds = %if.else562
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr575 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr575, i32 838860800) #5, !srcloc !80
  %add.ptr576 = getelementptr i8, ptr %1, i32 184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr576, i32 2028994816) #5, !srcloc !80
  br label %if.end644

if.else580:                                       ; preds = %if.else505
  %default_port = getelementptr i8, ptr %dev, i32 4252
  %193 = ptrtoint ptr %default_port to i32
  call void @__asan_load2_noabort(i32 %193)
  %bf.load581 = load i16, ptr %default_port, align 4
  %194 = and i16 %bf.load581, 7680
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %194)
  %cmp585 = icmp eq i16 %194, 0
  br i1 %cmp585, label %if.then587, label %if.else580.if.end594_crit_edge

if.else580.if.end594_crit_edge:                   ; preds = %if.else580
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end594

if.then587:                                       ; preds = %if.else580
  call void @__sanitizer_cov_trace_pc() #7
  %mii_cnt588 = getelementptr i8, ptr %dev, i32 4818
  %195 = ptrtoint ptr %mii_cnt588 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %mii_cnt588, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool590.not = icmp eq i8 %196, 0
  %conv592 = select i1 %tobool590.not, i8 3, i8 11
  %if_port593 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %197 = ptrtoint ptr %if_port593 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %conv592, ptr %if_port593, align 2
  br label %if.end594

if.end594:                                        ; preds = %if.then587, %if.else580.if.end594_crit_edge
  %if_port595 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %198 = ptrtoint ptr %if_port595 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %if_port595, align 2
  %idxprom596 = zext i8 %199 to i32
  %arrayidx597 = getelementptr [0 x i8], ptr @tulip_media_cap, i32 0, i32 %idxprom596
  %200 = ptrtoint ptr %arrayidx597 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx597, align 1
  %conv598 = zext i8 %201 to i32
  %and599 = and i32 %conv598, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and599)
  %tobool600.not = icmp eq i32 %and599, 0
  %and607 = and i32 %conv598, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and607)
  %tobool608.not = icmp eq i32 %and607, 0
  %. = select i1 %tobool608.not, i32 59113472, i32 42336256
  %new_csr6.2 = select i1 %tobool600.not, i32 %., i32 34471936
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %202 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %202)
  %cmp613 = icmp sgt i32 %202, 1
  br i1 %cmp613, label %do.body617, label %if.end594.if.end644_crit_edge

if.end594.if.end644_crit_edge:                    ; preds = %if.end594
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end644

do.body617:                                       ; preds = %if.end594
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_select_media.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_select_media, %if.end644)) #5
          to label %if.then631 [label %if.end644], !srcloc !83

if.then631:                                       ; preds = %do.body617
  call void @__sanitizer_cov_trace_pc() #7
  %203 = ptrtoint ptr %if_port595 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %if_port595, align 2
  %idxprom633 = zext i8 %204 to i32
  %arrayidx634 = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %idxprom633
  %205 = ptrtoint ptr %arrayidx634 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %arrayidx634, align 4
  %add.ptr635 = getelementptr i8, ptr %1, i32 96
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr635) #5, !srcloc !77
  %208 = tail call i32 @llvm.bswap.i32(i32 %207) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_select_media.__UNIQUE_ID_ddebug349, ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef %206, i32 noundef %208) #5
  br label %if.end644

if.end644:                                        ; preds = %if.then631, %do.body617, %if.end594.if.end644_crit_edge, %if.else574, %if.then571, %if.then558, %if.then553, %if.then492, %do.body478, %sw.epilog.if.end644_crit_edge
  %new_csr6.3 = phi i32 [ -2129920000, %if.then553 ], [ 4325376, %if.then558 ], [ 25559040, %if.then571 ], [ 4325376, %if.else574 ], [ %new_csr6.2, %if.then631 ], [ %new_csr6.2, %if.end594.if.end644_crit_edge ], [ %new_csr6.1, %if.then492 ], [ %new_csr6.1, %sw.epilog.if.end644_crit_edge ], [ %new_csr6.1, %do.body478 ], [ %new_csr6.2, %do.body617 ]
  %csr6 = getelementptr i8, ptr %dev, i32 4260
  %209 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %csr6, align 4
  %and645 = and i32 %210, 65023
  %or646 = or i32 %and645, %new_csr6.3
  %full_duplex647 = getelementptr i8, ptr %dev, i32 4252
  %211 = ptrtoint ptr %full_duplex647 to i32
  call void @__asan_load2_noabort(i32 %211)
  %bf.load648 = load i16, ptr %full_duplex647, align 4
  %212 = lshr i16 %bf.load648, 6
  %213 = and i16 %212, 512
  %214 = zext i16 %213 to i32
  %or653 = or i32 %or646, %214
  store i32 %or653, ptr %csr6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %215 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %215(i32 noundef 214748000) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tulip_check_duplex(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %phys = getelementptr i8, ptr %dev, i32 4814
  %0 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phys, align 2
  %conv = sext i8 %1 to i32
  %call1 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv, i32 noundef 1)
  %2 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %phys, align 2
  %conv4 = sext i8 %3 to i32
  %call5 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv4, i32 noundef 5)
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
  %dev7 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.12, i32 noundef %call1, i32 noundef %call5) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call1)
  %cmp8 = icmp eq i32 %call1, 65535
  br i1 %cmp8, label %if.end.cleanup75_crit_edge, label %if.end11

if.end.cleanup75_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup75

if.end11:                                         ; preds = %if.end
  %and = and i32 %call1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp12 = icmp eq i32 %and, 0
  br i1 %cmp12, label %if.then14, label %if.end11.if.end32_crit_edge

if.end11.if.end32_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then14:                                        ; preds = %if.end11
  %5 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %phys, align 2
  %conv17 = sext i8 %6 to i32
  %call18 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %conv17, i32 noundef 1)
  %and19 = and i32 %call18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp20 = icmp eq i32 %and19, 0
  br i1 %cmp20, label %if.then22, label %if.then14.if.end32_crit_edge

if.then14.if.end32_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then22:                                        ; preds = %if.then14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %7 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp23 = icmp sgt i32 %7, 1
  br i1 %cmp23, label %do.end28, label %if.then22.cleanup75_crit_edge

if.then22.cleanup75_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup75

do.end28:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %dev29 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev29, ptr noundef nonnull @.str.17, i32 noundef %call18) #8
  br label %cleanup75

if.end32:                                         ; preds = %if.then14.if.end32_crit_edge, %if.end11.if.end32_crit_edge
  %advertising = getelementptr i8, ptr %dev, i32 4806
  %8 = ptrtoint ptr %advertising to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %advertising, align 2
  %conv34 = zext i16 %9 to i32
  %and35 = and i32 %call5, %conv34
  %full_duplex_lock = getelementptr i8, ptr %dev, i32 4252
  %10 = ptrtoint ptr %full_duplex_lock to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %full_duplex_lock, align 4
  %bf.lshr = lshr i16 %bf.load, 14
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %and.i.i = and i32 %and35, 256
  %11 = or i32 %and.i.i, %bf.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %if.else.i.i, label %if.end32.mii_duplex.exit_crit_edge

if.end32.mii_duplex.exit_crit_edge:               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %mii_duplex.exit

if.else.i.i:                                      ; preds = %if.end32
  %13 = and i32 %and35, 640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %if.else8.i.i, label %if.else.i.i.mii_duplex.exit_crit_edge

if.else.i.i.mii_duplex.exit_crit_edge:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mii_duplex.exit

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = trunc i32 %and35 to i16
  %16 = shl i16 %15, 9
  %phi.bo = and i16 %16, -32768
  br label %mii_duplex.exit

mii_duplex.exit:                                  ; preds = %if.else8.i.i, %if.else.i.i.mii_duplex.exit_crit_edge, %if.end32.mii_duplex.exit_crit_edge
  %retval.0.i = phi i16 [ -32768, %if.end32.mii_duplex.exit_crit_edge ], [ 0, %if.else.i.i.mii_duplex.exit_crit_edge ], [ %phi.bo, %if.else8.i.i ]
  %bf.clear38 = and i16 %bf.load, 32767
  %bf.set = or i16 %retval.0.i, %bf.clear38
  %17 = ptrtoint ptr %full_duplex_lock to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %bf.set, ptr %full_duplex_lock, align 4
  %csr6 = getelementptr i8, ptr %dev, i32 4260
  %18 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %csr6, align 4
  %and39 = and i32 %and35, 896
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool.not = icmp eq i32 %and39, 0
  %and41 = and i32 %19, -4194817
  %masksel = select i1 %tobool.not, i32 4194304, i32 0
  %20 = lshr exact i16 %retval.0.i, 6
  %21 = zext i16 %20 to i32
  %new_csr6.0 = or i32 %masksel, %21
  %new_csr6.1 = or i32 %new_csr6.0, %and41
  call void @__sanitizer_cov_trace_cmp4(i32 %new_csr6.1, i32 %19)
  %cmp54.not = icmp eq i32 %new_csr6.1, %19
  br i1 %cmp54.not, label %mii_duplex.exit.cleanup75_crit_edge, label %if.then56

mii_duplex.exit.cleanup75_crit_edge:              ; preds = %mii_duplex.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup75

if.then56:                                        ; preds = %mii_duplex.exit
  %22 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %new_csr6.1, ptr %csr6, align 4
  tail call fastcc void @tulip_restart_rxtx(ptr noundef %add.ptr.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %23 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp58 = icmp sgt i32 %23, 0
  br i1 %cmp58, label %do.end63, label %if.then56.cleanup75_crit_edge

if.then56.cleanup75_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup75

do.end63:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #7
  %dev64 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %24 = ptrtoint ptr %full_duplex_lock to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load66 = load i16, ptr %full_duplex_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load66)
  %tobool69.not = icmp sgt i16 %bf.load66, -1
  %cond = select i1 %tobool69.not, ptr @.str.23, ptr @.str.22
  %25 = ptrtoint ptr %phys to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %phys, align 2
  %conv72 = sext i8 %26 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev64, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond, i32 noundef %conv72, i32 noundef %call5) #8
  br label %cleanup75

cleanup75:                                        ; preds = %do.end63, %if.then56.cleanup75_crit_edge, %mii_duplex.exit.cleanup75_crit_edge, %do.end28, %if.then22.cleanup75_crit_edge, %if.end.cleanup75_crit_edge
  %retval.1 = phi i32 [ -2, %if.end.cleanup75_crit_edge ], [ -1, %do.end28 ], [ 1, %do.end63 ], [ 1, %if.then56.cleanup75_crit_edge ], [ 0, %mii_duplex.exit.cleanup75_crit_edge ], [ -1, %if.then22.cleanup75_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tulip_restart_rxtx(ptr nocapture noundef readonly %tp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %base_addr.i = getelementptr inbounds %struct.tulip_private, ptr %tp, i32 0, i32 42
  %0 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !77
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %and.i = and i32 %3, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.tulip_stop_rxtx.exit_crit_edge, label %if.then.i

entry.tulip_stop_rxtx.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %tulip_stop_rxtx.exit

if.then.i:                                        ; preds = %entry
  %and1.i = and i32 %3, -8195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #5, !srcloc !80
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !84
  %add.ptr4.i = getelementptr i8, ptr %1, i32 40
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.then.i
  %dec33.i = phi i32 [ 129, %if.then.i ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
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
          to label %if.then16.i [label %tulip_stop_rxtx.exit], !srcloc !83

if.then16.i:                                      ; preds = %do.body10.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.tulip_private, ptr %tp, i32 0, i32 46
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !77
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !77
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, ptr noundef %9, ptr noundef nonnull @.str.32, i32 noundef %11, i32 noundef %13) #5
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %19) #5, !srcloc !80
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !85
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #5, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tulip_find_mii(ptr noundef %dev, i32 noundef %board_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mii_advertise = getelementptr i8, ptr %dev, i32 4802
  %default_port = getelementptr i8, ptr %dev, i32 4252
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %phyn.0193 = phi i32 [ 1, %entry ], [ %inc97, %cleanup.for.body_crit_edge ]
  %phy_idx.0190 = phi i32 [ 0, %entry ], [ %phy_idx.1, %cleanup.for.body_crit_edge ]
  %and = and i32 %phyn.0193, 31
  %call2 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %and, i32 noundef 1)
  %and3 = and i32 %call2, 33537
  call void @__sanitizer_cov_trace_const_cmp4(i32 32769, i32 %and3)
  %cmp4 = icmp eq i32 %and3, 32769
  br i1 %cmp4, label %for.body.if.end_crit_edge, label %lor.lhs.false

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false:                                    ; preds = %for.body
  %and5 = and i32 %call2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp6 = icmp ne i32 %and5, 0
  %and7 = and i32 %call2, 30720
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp8.not = icmp eq i32 %and7, 0
  %or.cond183 = or i1 %cmp6, %cmp8.not
  br i1 %or.cond183, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %for.body.if.end_crit_edge
  %call9 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %and, i32 noundef 0)
  %call10 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %and, i32 noundef 4)
  %and11 = and i32 %call10, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %cmp12 = icmp eq i32 %and11, 0
  br i1 %cmp12, label %if.then13, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call i32 @tulip_mdio_read(ptr noundef %dev, i32 noundef %and, i32 noundef 1)
  %shr = lshr i32 %call14, 6
  %and15 = and i32 %shr, 992
  %or = or i32 %and15, 1
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge
  %mii_advert.0 = phi i32 [ %or, %if.then13 ], [ %call10, %if.end.if.end16_crit_edge ]
  %0 = ptrtoint ptr %mii_advertise to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mii_advertise, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.else20, label %if.then17

if.then17:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i16 %1 to i32
  %arrayidx = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 32, i32 %phy_idx.0190
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %arrayidx, align 2
  br label %if.end34

if.else20:                                        ; preds = %if.end16
  %arrayidx22 = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 32, i32 %phy_idx.0190
  %3 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx22, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool23.not = icmp eq i16 %4, 0
  br i1 %tobool23.not, label %if.else28, label %if.then24

if.then24:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #7
  %conv27 = zext i16 %4 to i32
  br label %if.end34

if.else28:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #7
  %conv29 = trunc i32 %mii_advert.0 to i16
  %5 = ptrtoint ptr %mii_advertise to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv29, ptr %mii_advertise, align 2
  %6 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv29, ptr %arrayidx22, align 2
  br label %if.end34

if.end34:                                         ; preds = %if.else28, %if.then24, %if.then17
  %to_advert.0 = phi i32 [ %conv, %if.then17 ], [ %conv27, %if.then24 ], [ %mii_advert.0, %if.else28 ]
  %conv35 = trunc i32 %and to i8
  %inc = add nuw nsw i32 %phy_idx.0190, 1
  %arrayidx36 = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 33, i32 %phy_idx.0190
  %7 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv35, ptr %arrayidx36, align 1
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %board_idx, i32 noundef %and, i32 noundef %call9, i32 noundef %call2, i32 noundef %mii_advert.0) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %mii_advert.0, i32 %to_advert.0)
  %cmp38.not = icmp eq i32 %mii_advert.0, %to_advert.0
  br i1 %cmp38.not, label %if.end34.if.end52_crit_edge, label %do.body41

if.end34.if.end52_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

do.body41:                                        ; preds = %if.end34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_find_mii.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_find_mii, %do.end51)) #5
          to label %if.then48 [label %do.end51], !srcloc !83

if.then48:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tulip_find_mii.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.26, i32 noundef %board_idx, i32 noundef %to_advert.0, i32 noundef %and, i32 noundef %mii_advert.0) #5
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %do.body41
  tail call void @tulip_mdio_write(ptr noundef %dev, i32 noundef %and, i32 noundef 4, i32 noundef %to_advert.0)
  br label %if.end52

if.end52:                                         ; preds = %do.end51, %if.end34.if.end52_crit_edge
  %8 = ptrtoint ptr %default_port to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %default_port, align 4
  %9 = and i16 %bf.load, 7680
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp53 = icmp eq i16 %9, 0
  br i1 %cmp53, label %if.then55, label %if.else62

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %or56 = or i32 %call9, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %or56, i32 %call9)
  %cmp57.not = icmp eq i32 %or56, %call9
  %or60 = or i32 %call9, 4608
  %spec.select = select i1 %cmp57.not, i32 %or56, i32 %or60
  br label %if.end68

if.else62:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %and63 = and i32 %call9, -4097
  call void @__sanitizer_cov_trace_cmp4(i32 %and63, i32 %call9)
  %cmp64.not = icmp eq i32 %and63, %call9
  br label %if.end68

if.end68:                                         ; preds = %if.else62, %if.then55
  %new_bmcr.0 = phi i32 [ %spec.select, %if.then55 ], [ %and63, %if.else62 ]
  %tobool92.not = phi i1 [ %cmp57.not, %if.then55 ], [ %cmp64.not, %if.else62 ]
  %and69 = and i32 %new_bmcr.0, -60801
  %or75 = or i32 %and69, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load)
  %tobool73.not189 = icmp slt i16 %bf.load, 0
  %spec.select186 = select i1 %tobool73.not189, i32 %or75, i32 %and69
  %bf.lshr79 = lshr i16 %bf.load, 9
  %bf.clear80 = and i16 %bf.lshr79, 15
  %bf.cast81 = zext i16 %bf.clear80 to i32
  %arrayidx82 = getelementptr [0 x i8], ptr @tulip_media_cap, i32 0, i32 %bf.cast81
  %10 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx82, align 1
  %12 = and i8 %11, 16
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 9
  %15 = or i32 %14, %spec.select186
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %call9)
  %cmp89.not = icmp eq i32 %15, %call9
  br i1 %cmp89.not, label %if.end68.cleanup_crit_edge, label %if.then91

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then91:                                        ; preds = %if.end68
  br i1 %tobool92.not, label %if.then91.if.end94_crit_edge, label %if.then93

if.then91.if.end94_crit_edge:                     ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then93:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tulip_mdio_write(ptr noundef %dev, i32 noundef %and, i32 noundef 0, i32 noundef %15)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #5
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.then91.if.end94_crit_edge
  tail call void @tulip_mdio_write(ptr noundef %dev, i32 noundef %and, i32 noundef 0, i32 noundef %15)
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.end68.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %phy_idx.1 = phi i32 [ %phy_idx.0190, %lor.lhs.false.cleanup_crit_edge ], [ %inc, %if.end94 ], [ %inc, %if.end68.cleanup_crit_edge ]
  %inc97 = add nuw nsw i32 %phyn.0193, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %phyn.0193)
  %cmp = icmp ult i32 %phyn.0193, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %phy_idx.1)
  %cmp1 = icmp ult i32 %phy_idx.1, 4
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %cleanup.for.body_crit_edge, label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %cleanup
  %conv98 = trunc i32 %phy_idx.1 to i8
  %mii_cnt = getelementptr i8, ptr %dev, i32 4818
  %17 = ptrtoint ptr %mii_cnt to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv98, ptr %mii_cnt, align 2
  %mtable = getelementptr i8, ptr %dev, i32 4820
  %18 = ptrtoint ptr %mtable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mtable, align 4
  %tobool99.not = icmp eq ptr %19, null
  br i1 %tobool99.not, label %for.end.if.end117_crit_edge, label %land.lhs.true100

for.end.if.end117_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

land.lhs.true100:                                 ; preds = %for.end
  %has_mii = getelementptr inbounds %struct.mediatable, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %has_mii to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load102 = load i8, ptr %has_mii, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load102)
  %tobool105.not = icmp slt i8 %bf.load102, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy_idx.1)
  %cmp107 = icmp eq i32 %phy_idx.1, 0
  %or.cond187 = select i1 %tobool105.not, i1 %cmp107, i1 false
  br i1 %or.cond187, label %do.end112, label %land.lhs.true100.if.end117_crit_edge

land.lhs.true100.if.end117_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

do.end112:                                        ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #7
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %board_idx) #8
  %phys115 = getelementptr i8, ptr %dev, i32 4814
  %21 = ptrtoint ptr %phys115 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %phys115, align 2
  br label %if.end117

if.end117:                                        ; preds = %do.end112, %land.lhs.true100.if.end117_crit_edge, %for.end.if.end117_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !59, !60, !61, !63, !65, !66, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/dec/tulip/media.c", i32 181, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @tulip_select_media.__UNIQUE_ID_ddebug340, !1, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/dec/tulip/media.c", i32 203, i32 6}
!8 = !{ptr @tulip_select_media.__UNIQUE_ID_ddebug341, !7, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/dec/tulip/media.c", i32 208, i32 5}
!11 = !{ptr @tulip_select_media.__UNIQUE_ID_ddebug342, !10, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/dec/tulip/media.c", i32 237, i32 5}
!14 = !{ptr @tulip_select_media.__UNIQUE_ID_ddebug343, !13, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/dec/tulip/media.c", i32 314, i32 6}
!17 = !{ptr @tulip_select_media.__UNIQUE_ID_ddebug344, !16, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!18 = !{ptr @tulip_select_media.__UNIQUE_ID_ddebug345, !19, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/dec/tulip/media.c", i32 328, i32 6}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/dec/tulip/media.c", i32 336, i32 4}
!22 = !{ptr @tulip_select_media.__UNIQUE_ID_ddebug346, !21, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/dec/tulip/media.c", i32 341, i32 4}
!25 = !{ptr @tulip_select_media.__UNIQUE_ID_ddebug347, !24, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/dec/tulip/media.c", i32 348, i32 4}
!28 = !{ptr @tulip_select_media.__UNIQUE_ID_ddebug348, !27, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/dec/tulip/media.c", i32 381, i32 4}
!31 = !{ptr @tulip_select_media.__UNIQUE_ID_ddebug349, !30, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/dec/tulip/media.c", i32 405, i32 3}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @tulip_check_duplex._entry, !33, !"_entry", i1 false, i1 false}
!38 = !{ptr @tulip_check_duplex._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/dec/tulip/media.c", i32 413, i32 5}
!41 = !{ptr @tulip_check_duplex._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @tulip_check_duplex._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/dec/tulip/media.c", i32 434, i32 4}
!45 = !{ptr @tulip_check_duplex._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @tulip_check_duplex._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/dec/tulip/media.c", i32 492, i32 3}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @tulip_find_mii._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @tulip_find_mii._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/dec/tulip/media.c", i32 497, i32 4}
!56 = !{ptr @tulip_find_mii.__UNIQUE_ID_ddebug350, !55, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/dec/tulip/media.c", i32 543, i32 3}
!59 = !{ptr @tulip_find_mii._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @tulip_find_mii._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @comet_miireg2offset, !62, !"comet_miireg2offset", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/dec/tulip/media.c", i32 35, i32 28}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/dec/tulip/tulip.h", i32 546, i32 4}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, !64, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i64 6206064}
!78 = !{i64 2153746413}
!79 = !{i64 2153747768}
!80 = !{i64 6205646}
!81 = !{i64 2156460286}
!82 = !{i64 2156461058}
!83 = !{i64 2148706186, i64 2148706191, i64 2148706204, i64 2148706248, i64 2148706282, i64 2148706303}
!84 = !{i64 2156455691}
!85 = !{i64 2156455456}
