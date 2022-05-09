; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/dec/tulip/21142.c_pt.bc'
source_filename = "../drivers/net/ethernet/dec/tulip/21142.c"
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
%struct.mediatable = type { i16, i8, i8, i8, i32, i32, [0 x %struct.medialeaf] }
%struct.medialeaf = type { i8, i8, ptr }
%struct.tulip_private = type { ptr, ptr, ptr, ptr, i32, i32, [32 x %struct.ring_info], [128 x %struct.ring_info], [96 x i16], i32, i32, i32, %struct.napi_struct, %struct.timer_list, %struct.timer_list, [2 x i32], %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i16, i32, i32, [512 x i8], ptr, %struct.ethtool_wolinfo, i16, i16, i16, [4 x i16], [4 x i8], i8, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, %struct.work_struct, ptr }
%struct.ring_info = type { ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }

@t21142_csr14 = dso_local global { [5 x i16], [22 x i8] } { [5 x i16] [i16 -1, i16 1797, i16 1797, i16 0, i16 32573], [22 x i8] zeroinitializer }, align 32
@tulip_debug = external dso_local local_unnamed_addr global i32, align 4
@t21142_media_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 44, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"21143 negotiation status %08x, %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"t21142_media_task\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/dec/tulip/21142.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@t21142_media_task._entry_ptr = internal global ptr @t21142_media_task._entry, section ".printk_index", align 4
@medianame = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@tulip_media_cap = external dso_local local_unnamed_addr constant [0 x i8], align 1
@t21142_media_task._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 58, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Using NWay-set %s media, csr12 %08x\0A\00", [59 x i8] zeroinitializer }, align 32
@t21142_media_task._entry_ptr.7 = internal global ptr @t21142_media_task._entry.5, section ".printk_index", align 4
@t21142_media_task._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 66, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"No 21143 100baseTx link beat, %08x, trying NWay\0A\00", [47 x i8] zeroinitializer }, align 32
@t21142_media_task._entry_ptr.10 = internal global ptr @t21142_media_task._entry.8, section ".printk_index", align 4
@t21142_media_task._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 75, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"21143 negotiation failed, status %08x\0A\00", [57 x i8] zeroinitializer }, align 32
@t21142_media_task._entry_ptr.13 = internal global ptr @t21142_media_task._entry.11, section ".printk_index", align 4
@t21142_csr15 = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 8, i16 6, i16 14, i16 8, i16 8], [22 x i8] zeroinitializer }, align 32
@t21142_csr13 = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 1, i16 9, i16 9, i16 0, i16 1], [22 x i8] zeroinitializer }, align 32
@t21142_media_task._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 94, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Testing new 21143 media %s\0A\00", [36 x i8] zeroinitializer }, align 32
@t21142_media_task._entry_ptr.16 = internal global ptr @t21142_media_task._entry.14, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@t21142_start_nway.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 30, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tulip\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"t21142_start_nway\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Restarting 21143 autonegotiation, csr14=%08x\0A\00", [50 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@t21142_lnk_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 152, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"21143 link status interrupt %08x, CSR5 %x, %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"t21142_lnk_change\00", [46 x i8] zeroinitializer }, align 32
@t21142_lnk_change._entry_ptr = internal global ptr @t21142_lnk_change._entry, section ".printk_index", align 4
@t21142_lnk_change._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Switching to %s based on link negotiation %04x & %04x = %04x\0A\00", [34 x i8] zeroinitializer }, align 32
@t21142_lnk_change._entry_ptr.24 = internal global ptr @t21142_lnk_change._entry.22, section ".printk_index", align 4
@t21142_lnk_change._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 183, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Autonegotiation failed, using %s, link beat status %04x\0A\00", [39 x i8] zeroinitializer }, align 32
@t21142_lnk_change._entry_ptr.27 = internal global ptr @t21142_lnk_change._entry.25, section ".printk_index", align 4
@t21142_lnk_change.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.21, ptr @.str.2, ptr @.str.28, i8 0, i8 53, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c" Setting CSR6 %08x/%x CSR12 %08x\0A\00", [62 x i8] zeroinitializer }, align 32
@t21142_lnk_change._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.21, ptr @.str.2, i32 227, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"21143 %s link beat %s\0A\00", [41 x i8] zeroinitializer }, align 32
@t21142_lnk_change._entry_ptr.31 = internal global ptr @t21142_lnk_change._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"good\00", [27 x i8] zeroinitializer }, align 32
@t21142_lnk_change._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.2, i32 237, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"21143 10baseT link beat good\0A\00", [34 x i8] zeroinitializer }, align 32
@t21142_lnk_change._entry_ptr.36 = internal global ptr @t21142_lnk_change._entry.34, section ".printk_index", align 4
@t21142_lnk_change._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.21, ptr @.str.2, i32 240, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"21143 10mbps sensed media\0A\00", [37 x i8] zeroinitializer }, align 32
@t21142_lnk_change._entry_ptr.39 = internal global ptr @t21142_lnk_change._entry.37, section ".printk_index", align 4
@t21142_lnk_change._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.21, ptr @.str.2, i32 245, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"21143 using NWay-set %s, csr6 %08x\0A\00", [60 x i8] zeroinitializer }, align 32
@t21142_lnk_change._entry_ptr.42 = internal global ptr @t21142_lnk_change._entry.40, section ".printk_index", align 4
@t21142_lnk_change._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.21, ptr @.str.2, i32 248, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"21143 100baseTx sensed media\0A\00", [34 x i8] zeroinitializer }, align 32
@t21142_lnk_change._entry_ptr.45 = internal global ptr @t21142_lnk_change._entry.43, section ".printk_index", align 4
@tulip_stop_rxtx.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.46, ptr @.str.47, ptr @.str.48, i8 0, i8 -119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tulip_stop_rxtx\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/dec/tulip/tulip.h\00", [57 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"tulip_stop_rxtx() failed (CSR5 0x%x CSR6 0x%x)\0A\00", [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 3, i64 4, i64 5]
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"t21142_csr14\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 22, i32 5 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 43, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 56, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 64, i32 5 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 73, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [13 x i8] c"t21142_csr15\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 23, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant [13 x i8] c"t21142_csr13\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 21, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 93, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 122, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 150, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 175, i32 5 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 181, i32 5 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 211, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 225, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 237, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 240, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 244, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private constant [42 x i8] c"../drivers/net/ethernet/dec/tulip/21142.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 248, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [42 x i8] c"../drivers/net/ethernet/dec/tulip/tulip.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 546, i32 4 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @t21142_lnk_change._entry, ptr @t21142_lnk_change._entry.22, ptr @t21142_lnk_change._entry.25, ptr @t21142_lnk_change._entry.29, ptr @t21142_lnk_change._entry.34, ptr @t21142_lnk_change._entry.37, ptr @t21142_lnk_change._entry.40, ptr @t21142_lnk_change._entry.43, ptr @t21142_lnk_change._entry_ptr, ptr @t21142_lnk_change._entry_ptr.24, ptr @t21142_lnk_change._entry_ptr.27, ptr @t21142_lnk_change._entry_ptr.31, ptr @t21142_lnk_change._entry_ptr.36, ptr @t21142_lnk_change._entry_ptr.39, ptr @t21142_lnk_change._entry_ptr.42, ptr @t21142_lnk_change._entry_ptr.45, ptr @t21142_media_task._entry, ptr @t21142_media_task._entry.11, ptr @t21142_media_task._entry.14, ptr @t21142_media_task._entry.5, ptr @t21142_media_task._entry.8, ptr @t21142_media_task._entry_ptr, ptr @t21142_media_task._entry_ptr.10, ptr @t21142_media_task._entry_ptr.13, ptr @t21142_media_task._entry_ptr.16, ptr @t21142_media_task._entry_ptr.7, ptr @t21142_csr14, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @t21142_csr15, ptr @t21142_csr13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t21142_csr14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t21142_media_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t21142_media_task._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t21142_media_task._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t21142_media_task._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t21142_csr15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t21142_csr13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t21142_media_task._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t21142_lnk_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t21142_lnk_change._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t21142_lnk_change._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t21142_lnk_change._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t21142_lnk_change._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t21142_lnk_change._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t21142_lnk_change._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t21142_lnk_change._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t21142_media_task(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2556
  %dev1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %base_addr = getelementptr i8, ptr %work, i32 -12
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 96
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !87
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  %add.ptr3 = getelementptr i8, ptr %3, i32 112
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool.not = icmp sgt i32 %6, -1
  %and5 = and i32 %5, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %and5)
  %cmp.not = icmp eq i32 %and5, 20480
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  %or = or i32 %5, 6
  %csr12.0 = select i1 %or.cond, i32 %5, i32 %or
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %7 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp6 = icmp sgt i32 %7, 2
  br i1 %cmp6, label %do.end, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev8 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  %if_port = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 52
  %8 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %if_port, align 2
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8, ptr noundef nonnull @.str, i32 noundef %csr12.0, ptr noundef %11) #8
  br label %if.end9

if.end9:                                          ; preds = %do.end, %entry.if.end9_crit_edge
  %if_port10 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 52
  %12 = ptrtoint ptr %if_port10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %if_port10, align 2
  %idxprom11 = zext i8 %13 to i32
  %arrayidx12 = getelementptr [0 x i8], ptr @tulip_media_cap, i32 0, i32 %idxprom11
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx12, align 1
  %16 = and i8 %15, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool14.not = icmp eq i8 %16, 0
  br i1 %tobool14.not, label %if.else21, label %if.then15

if.then15:                                        ; preds = %if.end9
  %call16 = tail call i32 @tulip_check_duplex(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @netif_carrier_off(ptr noundef %1) #5
  br label %if.end120

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @netif_carrier_on(ptr noundef %1) #5
  br label %if.end120

if.else21:                                        ; preds = %if.end9
  %nwayset = getelementptr i8, ptr %work, i32 -608
  %17 = ptrtoint ptr %nwayset to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %nwayset, align 4
  %18 = and i16 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool22.not = icmp eq i16 %18, 0
  br i1 %tobool22.not, label %if.else35, label %if.then23

if.then23:                                        ; preds = %if.else21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %19 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp24 = icmp sgt i32 %19, 1
  br i1 %cmp24, label %do.end29, label %if.then23.if.end120_crit_edge

if.then23.if.end120_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

do.end29:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %dev30 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  %arrayidx33 = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %idxprom11
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx33, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev30, ptr noundef nonnull @.str.6, ptr noundef %21, i32 noundef %csr12.0) #8
  br label %if.end120

if.else35:                                        ; preds = %if.else21
  %22 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool40.not = icmp eq i16 %22, 0
  br i1 %tobool40.not, label %if.else42, label %if.else35.if.end120_crit_edge

if.else35.if.end120_crit_edge:                    ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

if.else42:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp45 = icmp eq i8 %13, 3
  br i1 %cmp45, label %if.then47, label %if.else60

if.then47:                                        ; preds = %if.else42
  %and48 = and i32 %csr12.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.then47.if.end120_crit_edge, label %if.then50

if.then47.if.end120_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

if.then50:                                        ; preds = %if.then47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %23 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp51 = icmp sgt i32 %23, 1
  br i1 %cmp51, label %do.end56, label %if.then50.if.end58_crit_edge

if.then50.if.end58_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

do.end56:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  %dev57 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev57, ptr noundef nonnull @.str.9, i32 noundef %csr12.0) #8
  br label %if.end58

if.end58:                                         ; preds = %do.end56, %if.then50.if.end58_crit_edge
  tail call void @t21142_start_nway(ptr noundef %1)
  br label %if.end120

if.else60:                                        ; preds = %if.else42
  %and61 = and i32 %csr12.0, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %and61)
  %cmp62.not = icmp eq i32 %and61, 20480
  br i1 %cmp62.not, label %if.else60.if.end120_crit_edge, label %if.then64

if.else60.if.end120_crit_edge:                    ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

if.then64:                                        ; preds = %if.else60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %24 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp65 = icmp sgt i32 %24, 1
  br i1 %cmp65, label %do.end70, label %if.then64.if.end72_crit_edge

if.then64.if.end72_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

do.end70:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  %dev71 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev71, ptr noundef nonnull @.str.12, i32 noundef %csr12.0) #8
  br label %if.end72

if.end72:                                         ; preds = %do.end70, %if.then64.if.end72_crit_edge
  %and73 = and i32 %csr12.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.then75, label %if.else88

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %if_port10 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %if_port10, align 2
  %add.ptr77 = getelementptr i8, ptr %3, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 0) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 -64768) #5, !srcloc !90
  %26 = ptrtoint ptr %if_port10 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %if_port10, align 2
  %idxprom80 = zext i8 %27 to i32
  %arrayidx81 = getelementptr [5 x i16], ptr @t21142_csr15, i32 0, i32 %idxprom80
  %28 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx81, align 2
  %add.ptr82 = getelementptr i8, ptr %3, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr82, i16 %30) #5, !srcloc !92
  %31 = ptrtoint ptr %if_port10 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %if_port10, align 2
  %idxprom84 = zext i8 %32 to i32
  %arrayidx85 = getelementptr [5 x i16], ptr @t21142_csr13, i32 0, i32 %idxprom84
  %33 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx85, align 2
  %conv86 = zext i16 %34 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %35 = tail call i32 @llvm.bswap.i32(i32 %conv86) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %35) #5, !srcloc !90
  br label %if.end94

if.else88:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %if_port10 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 3, ptr %if_port10, align 2
  %add.ptr90 = getelementptr i8, ptr %3, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 0) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 -64768) #5, !srcloc !90
  %add.ptr92 = getelementptr i8, ptr %3, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr92, i16 2048) #5, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 16777216) #5, !srcloc !90
  br label %if.end94

if.end94:                                         ; preds = %if.else88, %if.then75
  %new_csr6.0 = phi i32 [ -2088370176, %if.else88 ], [ -2109603840, %if.then75 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %37 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp95 = icmp sgt i32 %37, 1
  br i1 %cmp95, label %do.end100, label %if.end94.if.end105_crit_edge

if.end94.if.end105_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

do.end100:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  %dev101 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  %38 = ptrtoint ptr %if_port10 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %if_port10, align 2
  %idxprom103 = zext i8 %39 to i32
  %arrayidx104 = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %idxprom103
  %40 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx104, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev101, ptr noundef nonnull @.str.15, ptr noundef %41) #8
  br label %if.end105

if.end105:                                        ; preds = %do.end100, %if.end94.if.end105_crit_edge
  %csr6 = getelementptr i8, ptr %work, i32 -600
  %42 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %csr6, align 4
  %and106 = and i32 %43, -214
  call void @__sanitizer_cov_trace_cmp4(i32 %new_csr6.0, i32 %and106)
  %cmp107.not = icmp eq i32 %new_csr6.0, %and106
  br i1 %cmp107.not, label %if.end105.if.end120_crit_edge, label %if.then109

if.end105.if.end120_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end120

if.then109:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  %and111 = and i32 %43, 213
  %or113 = or i32 %and111, %new_csr6.0
  %44 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or113, ptr %csr6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 16973824) #5, !srcloc !90
  tail call fastcc void @tulip_restart_rxtx(ptr noundef %add.ptr)
  br label %if.end120

if.end120:                                        ; preds = %if.then109, %if.end105.if.end120_crit_edge, %if.else60.if.end120_crit_edge, %if.end58, %if.then47.if.end120_crit_edge, %if.else35.if.end120_crit_edge, %do.end29, %if.then23.if.end120_crit_edge, %if.else, %if.then19
  %next_tick.0 = phi i32 [ 300, %if.then19 ], [ 6000, %if.else ], [ 6000, %do.end29 ], [ 6000, %if.then23.if.end120_crit_edge ], [ 6000, %if.else35.if.end120_crit_edge ], [ 300, %if.end58 ], [ 6000, %if.then47.if.end120_crit_edge ], [ 6000, %if.else60.if.end120_crit_edge ], [ 300, %if.then109 ], [ 300, %if.end105.if.end120_crit_edge ]
  %timer = getelementptr i8, ptr %work, i32 -820
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %45, %next_tick.0
  %call121 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tulip_check_duplex(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t21142_start_nway(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr i8, ptr %dev, i32 4848
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 8
  %sym_advertise = getelementptr i8, ptr %dev, i32 4800
  %2 = ptrtoint ptr %sym_advertise to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sym_advertise, align 8
  %conv = zext i16 %3 to i32
  %and = shl nuw nsw i32 %conv, 9
  %shl = and i32 %and, 983040
  %and3 = shl nuw nsw i32 %conv, 1
  %shl4 = and i32 %and3, 64
  %or = or i32 %shl4, %shl
  %or5 = or i32 %or, 65471
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %4 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %if_port, align 2
  %mediasense = getelementptr i8, ptr %dev, i32 4252
  %5 = ptrtoint ptr %mediasense to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %mediasense, align 4
  %lpar = getelementptr i8, ptr %dev, i32 4804
  %6 = ptrtoint ptr %lpar to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %lpar, align 4
  %bf.set8 = and i16 %bf.load, -15
  %bf.clear10 = or i16 %bf.set8, 12
  store i16 %bf.clear10, ptr %mediasense, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %7 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp sgt i32 %7, 1
  br i1 %cmp, label %do.body13, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.body13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @t21142_start_nway.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@t21142_start_nway, %if.end21)) #5
          to label %if.then18 [label %if.end21], !srcloc !93

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @t21142_start_nway.__UNIQUE_ID_ddebug340, ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %or5) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %do.body13, %entry.if.end21_crit_edge
  %add.ptr = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #5, !srcloc !90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #5
  %add.ptr22 = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %or5) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %9) #5, !srcloc !90
  %10 = ptrtoint ptr %sym_advertise to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sym_advertise, align 8
  %12 = shl i16 %11, 3
  %13 = and i16 %12, 512
  %14 = zext i16 %13 to i32
  %or27 = or i32 %14, -2109603840
  %csr6 = getelementptr i8, ptr %dev, i32 4260
  %15 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or27, ptr %csr6, align 4
  %add.ptr29 = getelementptr i8, ptr %1, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %16 = tail call i32 @llvm.bswap.i32(i32 %or27) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %16) #5, !srcloc !90
  %mtable = getelementptr i8, ptr %dev, i32 4820
  %17 = ptrtoint ptr %mtable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mtable, align 4
  %tobool30.not = icmp eq ptr %18, null
  br i1 %tobool30.not, label %if.end21.if.else_crit_edge, label %land.lhs.true

if.end21.if.else_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end21
  %csr15dir = getelementptr inbounds %struct.mediatable, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %csr15dir to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %csr15dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool32.not = icmp eq i32 %20, 0
  br i1 %tobool32.not, label %land.lhs.true.if.else_crit_edge, label %if.then33

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr36 = getelementptr i8, ptr %1, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %21) #5, !srcloc !90
  %22 = ptrtoint ptr %mtable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mtable, align 4
  %csr15val = getelementptr inbounds %struct.mediatable, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %csr15val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %csr15val, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %26) #5, !srcloc !90
  br label %if.end40

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end21.if.else_crit_edge
  %add.ptr39 = getelementptr i8, ptr %1, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr39, i16 2048) #5, !srcloc !92
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then33
  %add.ptr41 = getelementptr i8, ptr %1, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 18022400) #5, !srcloc !90
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
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !87
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  %and.i = and i32 %3, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.tulip_stop_rxtx.exit_crit_edge, label %if.then.i

entry.tulip_stop_rxtx.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %tulip_stop_rxtx.exit

if.then.i:                                        ; preds = %entry
  %and1.i = and i32 %3, -8195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #5, !srcloc !90
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !94
  %add.ptr4.i = getelementptr i8, ptr %1, i32 40
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.then.i
  %dec33.i = phi i32 [ 129, %if.then.i ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
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
          to label %if.then16.i [label %tulip_stop_rxtx.exit], !srcloc !93

if.then16.i:                                      ; preds = %do.body10.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.tulip_private, ptr %tp, i32 0, i32 46
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !87
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !87
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, ptr noundef %9, ptr noundef nonnull @.str.48, i32 noundef %11, i32 noundef %13) #5
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %19) #5, !srcloc !90
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !95
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t21142_lnk_change(ptr noundef %dev, i32 noundef %csr5) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base_addr = getelementptr i8, ptr %dev, i32 4848
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !87
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  %add.ptr2 = getelementptr i8, ptr %1, i32 112
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !87
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  %and = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and4 = and i32 %3, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %and4)
  %cmp.not = icmp eq i32 %and4, 20480
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  %or = or i32 %3, 6
  %csr12.0 = select i1 %or.cond, i32 %3, i32 %or
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %6 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp5 = icmp sgt i32 %6, 1
  br i1 %cmp5, label %do.end, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev7 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.20, i32 noundef %csr12.0, i32 noundef %csr5, i32 noundef %5) #8
  br label %if.end8

if.end8:                                          ; preds = %do.end, %entry.if.end8_crit_edge
  %nway = getelementptr i8, ptr %dev, i32 4252
  %7 = ptrtoint ptr %nway to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %nway, align 4
  %8 = and i16 %bf.load, 4
  %9 = and i16 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool15.not = icmp eq i16 %9, 0
  %10 = and i16 %bf.load, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %10)
  %11 = icmp eq i16 %10, 4
  %and17 = and i32 %csr12.0, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %and17)
  %cmp18 = icmp eq i32 %and17, 20480
  %or.cond440 = select i1 %11, i1 %cmp18, i1 false
  br i1 %or.cond440, label %if.then19, label %if.else177

if.then19:                                        ; preds = %if.end8
  %sym_advertise = getelementptr i8, ptr %dev, i32 4800
  %12 = ptrtoint ptr %sym_advertise to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sym_advertise, align 8
  %conv = zext i16 %13 to i32
  %shr = ashr i32 %csr12.0, 16
  %and20 = and i32 %shr, %conv
  %conv22 = trunc i32 %shr to i16
  %lpar = getelementptr i8, ptr %dev, i32 4804
  %14 = ptrtoint ptr %lpar to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv22, ptr %lpar, align 4
  %bf.clear25 = and i16 %bf.load, -3
  %bf.set = or i16 %bf.load, 2
  %15 = ptrtoint ptr %nway to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %bf.set, ptr %nway, align 4
  %and26 = and i32 %csr12.0, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then19.if.end68.sink.split_crit_edge, label %if.else

if.then19.if.end68.sink.split_crit_edge:          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68.sink.split

if.else:                                          ; preds = %if.then19
  %and29 = and i32 %and20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.else33, label %if.else.if.end68.sink.split_crit_edge

if.else.if.end68.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68.sink.split

if.else33:                                        ; preds = %if.else
  %and34 = and i32 %and20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else38, label %if.else33.if.end68.sink.split_crit_edge

if.else33.if.end68.sink.split_crit_edge:          ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68.sink.split

if.else38:                                        ; preds = %if.else33
  %and39 = and i32 %and20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.else43, label %if.else38.if.end68.sink.split_crit_edge

if.else38.if.end68.sink.split_crit_edge:          ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68.sink.split

if.else43:                                        ; preds = %if.else38
  %and44 = and i32 %and20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.else48, label %if.else43.if.end68.sink.split_crit_edge

if.else43.if.end68.sink.split_crit_edge:          ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68.sink.split

if.else48:                                        ; preds = %if.else43
  %16 = ptrtoint ptr %nway to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %bf.clear25, ptr %nway, align 4
  %and53 = and i32 %csr12.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %cmp54 = icmp ne i32 %and53, 0
  %17 = and i16 %13, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool60.not = icmp eq i16 %17, 0
  %or.cond447 = select i1 %cmp54, i1 true, i1 %tobool60.not
  br i1 %or.cond447, label %if.else48.if.end68_crit_edge, label %if.else48.if.end68.sink.split_crit_edge

if.else48.if.end68.sink.split_crit_edge:          ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68.sink.split

if.else48.if.end68_crit_edge:                     ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.end68.sink.split:                              ; preds = %if.else48.if.end68.sink.split_crit_edge, %if.else43.if.end68.sink.split_crit_edge, %if.else38.if.end68.sink.split_crit_edge, %if.else33.if.end68.sink.split_crit_edge, %if.else.if.end68.sink.split_crit_edge, %if.then19.if.end68.sink.split_crit_edge
  %.sink = phi i8 [ 0, %if.then19.if.end68.sink.split_crit_edge ], [ 5, %if.else.if.end68.sink.split_crit_edge ], [ 3, %if.else33.if.end68.sink.split_crit_edge ], [ 4, %if.else38.if.end68.sink.split_crit_edge ], [ 0, %if.else43.if.end68.sink.split_crit_edge ], [ 3, %if.else48.if.end68.sink.split_crit_edge ]
  %if_port32 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %18 = ptrtoint ptr %if_port32 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink, ptr %if_port32, align 2
  br label %if.end68

if.end68:                                         ; preds = %if.end68.sink.split, %if.else48.if.end68_crit_edge
  %if_port69 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %19 = ptrtoint ptr %if_port69 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %if_port69, align 2
  %idxprom = zext i8 %20 to i32
  %arrayidx = getelementptr [0 x i8], ptr @tulip_media_cap, i32 0, i32 %idxprom
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %23 = lshr i8 %22, 1
  %24 = ptrtoint ptr %nway to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load73 = load i16, ptr %nway, align 4
  %bf.value = zext i8 %23 to i16
  %bf.shl = shl i16 %bf.value, 15
  %bf.clear74 = and i16 %bf.load73, 32767
  %bf.set75 = or i16 %bf.shl, %bf.clear74
  store i16 %bf.set75, ptr %nway, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %25 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp76 = icmp sgt i32 %25, 1
  br i1 %cmp76, label %if.then78, label %if.end68.if.end106_crit_edge

if.end68.if.end106_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

if.then78:                                        ; preds = %if.end68
  %26 = and i16 %bf.load73, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool84.not = icmp eq i16 %26, 0
  %dev101 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %arrayidx104 = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %idxprom
  %27 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx104, align 4
  br i1 %tobool84.not, label %do.end100, label %do.end88

do.end88:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %sym_advertise to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sym_advertise, align 8
  %conv94 = zext i16 %30 to i32
  %31 = ptrtoint ptr %lpar to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %lpar, align 4
  %conv96 = zext i16 %32 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev101, ptr noundef nonnull @.str.23, ptr noundef %28, i32 noundef %conv94, i32 noundef %conv96, i32 noundef %and20) #8
  br label %if.end106

do.end100:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev101, ptr noundef nonnull @.str.26, ptr noundef %28, i32 noundef %csr12.0) #8
  br label %if.end106

if.end106:                                        ; preds = %do.end100, %do.end88, %if.end68.if.end106_crit_edge
  %mtable = getelementptr i8, ptr %dev, i32 4820
  %33 = ptrtoint ptr %mtable to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mtable, align 4
  %tobool107.not = icmp eq ptr %34, null
  br i1 %tobool107.not, label %if.end106.if.then131_crit_edge, label %for.cond.preheader

if.end106.if.then131_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then131

for.cond.preheader:                               ; preds = %if.end106
  %leafcount = getelementptr inbounds %struct.mediatable, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %leafcount to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %leafcount, align 2
  %conv110 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp111449.not = icmp eq i8 %36, 0
  br i1 %cmp111449.not, label %for.cond.preheader.if.then131_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.then131_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then131

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %37 = ptrtoint ptr %if_port69 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %if_port69, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0450 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %media = getelementptr %struct.mediatable, ptr %34, i32 0, i32 6, i32 %i.0450, i32 1
  %39 = ptrtoint ptr %media to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %media, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %38)
  %cmp118 = icmp eq i8 %40, %38
  br i1 %cmp118, label %if.then120, label %for.inc

if.then120:                                       ; preds = %for.body
  %chip_id = getelementptr i8, ptr %dev, i32 3800
  %41 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp121 = icmp eq i32 %42, 3
  br i1 %cmp121, label %land.rhs, label %if.then120.if.end129_crit_edge

if.then120.if.end129_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end129

land.rhs:                                         ; preds = %if.then120
  %revision = getelementptr i8, ptr %dev, i32 3804
  %43 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %44)
  %cmp123 = icmp eq i32 %44, 48
  br i1 %cmp123, label %land.rhs.if.end129_crit_edge, label %lor.rhs

land.rhs.if.end129_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end129

lor.rhs:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %44)
  %cmp126 = icmp ne i32 %44, 65
  %phi.cast = zext i1 %cmp126 to i32
  br label %if.end129

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0450, 1
  %exitcond.not = icmp eq i32 %inc, %conv110
  br i1 %exitcond.not, label %for.inc.if.then131_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.then131_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then131

if.end129:                                        ; preds = %lor.rhs, %land.rhs.if.end129_crit_edge, %if.then120.if.end129_crit_edge
  %45 = phi i32 [ 1, %if.then120.if.end129_crit_edge ], [ 0, %land.rhs.if.end129_crit_edge ], [ %phi.cast, %lor.rhs ]
  %cur_index = getelementptr i8, ptr %dev, i32 4824
  %46 = ptrtoint ptr %cur_index to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %i.0450, ptr %cur_index, align 8
  tail call void @tulip_select_media(ptr noundef %dev, i32 noundef %45) #5
  br label %if.end150

if.then131:                                       ; preds = %for.inc.if.then131_crit_edge, %for.cond.preheader.if.then131_crit_edge, %if.end106.if.then131_crit_edge
  %47 = ptrtoint ptr %if_port69 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %if_port69, align 2
  %49 = and i8 %48, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool135.not = icmp eq i8 %49, 0
  %cond136 = select i1 %tobool135.not, i32 -2109603840, i32 -2087845888
  %csr6 = getelementptr i8, ptr %dev, i32 4260
  %50 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %csr6, align 4
  %and137 = and i32 %51, 8447
  %or138 = or i32 %cond136, %and137
  store i32 %or138, ptr %csr6, align 4
  %52 = ptrtoint ptr %nway to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load141 = load i16, ptr %nway, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load141)
  %tobool144.not = icmp sgt i16 %bf.load141, -1
  br i1 %tobool144.not, label %if.then131.if.end148_crit_edge, label %if.then145

if.then131.if.end148_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end148

if.then145:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #7
  %or147 = or i32 %or138, 512
  %53 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or147, ptr %csr6, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then145, %if.then131.if.end148_crit_edge
  %add.ptr149 = getelementptr i8, ptr %1, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr149, i32 16777216) #5, !srcloc !90
  br label %if.end150

if.end150:                                        ; preds = %if.end148, %if.end129
  %54 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base_addr, align 8
  %csr6.i = getelementptr i8, ptr %dev, i32 4260
  %56 = ptrtoint ptr %csr6.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %csr6.i, align 4
  %or.i = or i32 %57, 8194
  %add.ptr.i443 = getelementptr i8, ptr %55, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %58 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i443, i32 %58) #5, !srcloc !90
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !95
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i443) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %60 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %cmp151 = icmp sgt i32 %60, 2
  br i1 %cmp151, label %do.body155, label %if.end150.if.end335_crit_edge

if.end150.if.end335_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end335

do.body155:                                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @t21142_lnk_change.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@t21142_lnk_change, %if.end335)) #5
          to label %if.then165 [label %if.end335], !srcloc !93

if.then165:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %csr6.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %csr6.i, align 4
  %add.ptr167 = getelementptr i8, ptr %1, i32 48
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr167) #5, !srcloc !87
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !87
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @t21142_lnk_change.__UNIQUE_ID_ddebug341, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %62, i32 noundef %64, i32 noundef %66) #5
  br label %if.end335

if.else177:                                       ; preds = %if.end8
  %and185 = and i32 %csr5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  %or.cond441 = or i1 %tobool186.not, %tobool15.not
  br i1 %or.cond441, label %if.else177.lor.lhs.false200_crit_edge, label %land.lhs.true187

if.else177.lor.lhs.false200_crit_edge:            ; preds = %if.else177
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false200

land.lhs.true187:                                 ; preds = %if.else177
  %if_port188 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %67 = ptrtoint ptr %if_port188 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %if_port188, align 2
  %69 = zext i8 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values)
  switch i8 %68, label %land.lhs.true187.lor.lhs.false200_crit_edge [
    i8 3, label %land.lhs.true187.land.lhs.true196_crit_edge
    i8 5, label %land.lhs.true187.land.lhs.true196_crit_edge456
  ]

land.lhs.true187.land.lhs.true196_crit_edge456:   ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true196

land.lhs.true187.land.lhs.true196_crit_edge:      ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true196

land.lhs.true187.lor.lhs.false200_crit_edge:      ; preds = %land.lhs.true187
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false200

land.lhs.true196:                                 ; preds = %land.lhs.true187.land.lhs.true196_crit_edge, %land.lhs.true187.land.lhs.true196_crit_edge456
  %and197 = and i32 %csr12.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %cmp198.not = icmp eq i32 %and197, 0
  br i1 %cmp198.not, label %land.lhs.true196.lor.lhs.false200_crit_edge, label %land.lhs.true196.if.then210_crit_edge

land.lhs.true196.if.then210_crit_edge:            ; preds = %land.lhs.true196
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then210

land.lhs.true196.lor.lhs.false200_crit_edge:      ; preds = %land.lhs.true196
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false200

lor.lhs.false200:                                 ; preds = %land.lhs.true196.lor.lhs.false200_crit_edge, %land.lhs.true187.lor.lhs.false200_crit_edge, %if.else177.lor.lhs.false200_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool206.not = icmp eq i16 %8, 0
  %and208 = and i32 %csr5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and208)
  %tobool209.not = icmp eq i32 %and208, 0
  %or.cond442 = or i1 %tobool209.not, %tobool206.not
  br i1 %or.cond442, label %if.else214, label %lor.lhs.false200.if.then210_crit_edge

lor.lhs.false200.if.then210_crit_edge:            ; preds = %lor.lhs.false200
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then210

if.then210:                                       ; preds = %lor.lhs.false200.if.then210_crit_edge, %land.lhs.true196.if.then210_crit_edge
  %timer = getelementptr i8, ptr %dev, i32 4040
  %call211 = tail call i32 @del_timer_sync(ptr noundef %timer) #5
  tail call void @t21142_start_nway(ptr noundef %dev)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %70, 300
  %expires = getelementptr i8, ptr %dev, i32 4048
  %71 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add, ptr %expires, align 8
  tail call void @add_timer(ptr noundef %timer) #5
  br label %if.end335

if.else214:                                       ; preds = %lor.lhs.false200
  %if_port215 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %72 = ptrtoint ptr %if_port215 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %if_port215, align 2
  %conv216 = zext i8 %73 to i32
  %74 = zext i8 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %73, label %if.else284 [
    i8 3, label %if.else214.if.then224_crit_edge
    i8 5, label %if.else214.if.then224_crit_edge457
    i8 0, label %if.else214.if.then274_crit_edge
    i8 4, label %if.else214.if.then274_crit_edge458
  ]

if.else214.if.then274_crit_edge458:               ; preds = %if.else214
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then274

if.else214.if.then274_crit_edge:                  ; preds = %if.else214
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then274

if.else214.if.then224_crit_edge457:               ; preds = %if.else214
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then224

if.else214.if.then224_crit_edge:                  ; preds = %if.else214
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then224

if.then224:                                       ; preds = %if.else214.if.then224_crit_edge, %if.else214.if.then224_crit_edge457
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %75 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp225 = icmp sgt i32 %75, 1
  br i1 %cmp225, label %do.end230, label %if.then224.if.end238_crit_edge

if.then224.if.end238_crit_edge:                   ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = and i32 %csr12.0, 2
  br label %if.end238

do.end230:                                        ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #7
  %dev231 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %arrayidx234 = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %conv216
  %76 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx234, align 4
  %and235 = and i32 %csr12.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and235)
  %tobool236.not = icmp eq i32 %and235, 0
  %cond237 = select i1 %tobool236.not, ptr @.str.33, ptr @.str.32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev231, ptr noundef nonnull @.str.30, ptr noundef %77, ptr noundef nonnull %cond237) #8
  br label %if.end238

if.end238:                                        ; preds = %do.end230, %if.then224.if.end238_crit_edge
  %and239.pre-phi = phi i32 [ %.pre, %if.then224.if.end238_crit_edge ], [ %and235, %do.end230 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239.pre-phi)
  %tobool240.not = icmp eq i32 %and239.pre-phi, 0
  br i1 %tobool240.not, label %if.end238.if.else254_crit_edge, label %land.lhs.true241

if.end238.if.else254_crit_edge:                   ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else254

land.lhs.true241:                                 ; preds = %if.end238
  %78 = ptrtoint ptr %nway to i32
  call void @__asan_load2_noabort(i32 %78)
  %bf.load242 = load i16, ptr %nway, align 4
  %79 = and i16 %bf.load242, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool246.not = icmp eq i16 %79, 0
  br i1 %tobool246.not, label %if.then247, label %land.lhs.true241.if.else254_crit_edge

land.lhs.true241.if.else254_crit_edge:            ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else254

if.then247:                                       ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #7
  %timer248 = getelementptr i8, ptr %dev, i32 4040
  %call249 = tail call i32 @del_timer_sync(ptr noundef %timer248) #5
  tail call void @t21142_start_nway(ptr noundef %dev)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %80 = load volatile i32, ptr @jiffies, align 128
  %add250 = add i32 %80, 300
  %expires252 = getelementptr i8, ptr %dev, i32 4048
  %81 = ptrtoint ptr %expires252 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add250, ptr %expires252, align 8
  tail call void @add_timer(ptr noundef %timer248) #5
  br label %if.end335

if.else254:                                       ; preds = %land.lhs.true241.if.else254_crit_edge, %if.end238.if.else254_crit_edge
  %82 = ptrtoint ptr %if_port215 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %if_port215, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %83)
  %cmp257 = icmp eq i8 %83, 5
  br i1 %cmp257, label %if.then259, label %if.else254.if.end335_crit_edge

if.else254.if.end335_crit_edge:                   ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end335

if.then259:                                       ; preds = %if.else254
  call void @__sanitizer_cov_trace_pc() #7
  %and260 = and i32 %5, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %84 = tail call i32 @llvm.bswap.i32(i32 %and260) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %84) #5, !srcloc !90
  br label %if.end335

if.then274:                                       ; preds = %if.else214.if.then274_crit_edge, %if.else214.if.then274_crit_edge458
  %and275 = and i32 %csr12.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and275)
  %cmp276 = icmp eq i32 %and275, 0
  br i1 %cmp276, label %do.end281, label %if.then274.if.end335_crit_edge

if.then274.if.end335_crit_edge:                   ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end335

do.end281:                                        ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #7
  %dev282 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev282, ptr noundef nonnull @.str.35) #8
  br label %if.end335

if.else284:                                       ; preds = %if.else214
  %and285 = and i32 %csr12.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and285)
  %tobool286.not = icmp eq i32 %and285, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %85 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool288.not = icmp eq i32 %85, 0
  br i1 %tobool286.not, label %if.then287, label %if.else296

if.then287:                                       ; preds = %if.else284
  br i1 %tobool288.not, label %if.then287.if.end294_crit_edge, label %do.end292

if.then287.if.end294_crit_edge:                   ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end294

do.end292:                                        ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #7
  %dev293 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev293, ptr noundef nonnull @.str.38) #8
  br label %if.end294

if.end294:                                        ; preds = %do.end292, %if.then287.if.end294_crit_edge
  %86 = ptrtoint ptr %if_port215 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %if_port215, align 2
  br label %if.end335

if.else296:                                       ; preds = %if.else284
  br i1 %tobool15.not, label %if.else315, label %if.then303

if.then303:                                       ; preds = %if.else296
  br i1 %tobool288.not, label %if.then303.if.end335_crit_edge, label %do.end308

if.then303.if.end335_crit_edge:                   ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end335

do.end308:                                        ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #7
  %dev309 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %arrayidx312 = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %conv216
  %87 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx312, align 4
  %csr6313 = getelementptr i8, ptr %dev, i32 4260
  %89 = ptrtoint ptr %csr6313 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %csr6313, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev309, ptr noundef nonnull @.str.41, ptr noundef %88, i32 noundef %90) #8
  br label %if.end335

if.else315:                                       ; preds = %if.else296
  br i1 %tobool288.not, label %if.else315.if.end322_crit_edge, label %do.end320

if.else315.if.end322_crit_edge:                   ; preds = %if.else315
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end322

do.end320:                                        ; preds = %if.else315
  call void @__sanitizer_cov_trace_pc() #7
  %dev321 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev321, ptr noundef nonnull @.str.44) #8
  br label %if.end322

if.end322:                                        ; preds = %do.end320, %if.else315.if.end322_crit_edge
  %91 = ptrtoint ptr %if_port215 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 3, ptr %if_port215, align 2
  %csr6324 = getelementptr i8, ptr %dev, i32 4260
  %92 = ptrtoint ptr %csr6324 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %csr6324, align 4
  %and325 = and i32 %93, 8447
  %or326 = or i32 %and325, -2087845888
  store i32 %or326, ptr %csr6324, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 2147418880) #5, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16973824) #5, !srcloc !90
  tail call fastcc void @tulip_restart_rxtx(ptr noundef %add.ptr.i)
  br label %if.end335

if.end335:                                        ; preds = %if.end322, %do.end308, %if.then303.if.end335_crit_edge, %if.end294, %do.end281, %if.then274.if.end335_crit_edge, %if.then259, %if.else254.if.end335_crit_edge, %if.then247, %if.then210, %if.then165, %do.body155, %if.end150.if.end335_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tulip_select_media(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !75, !76, !77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @t21142_csr14, !1, !"t21142_csr14", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/dec/tulip/21142.c", i32 22, i32 5}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/dec/tulip/21142.c", i32 43, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @t21142_media_task._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @t21142_media_task._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/dec/tulip/21142.c", i32 56, i32 4}
!12 = !{ptr @t21142_media_task._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @t21142_media_task._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/dec/tulip/21142.c", i32 64, i32 5}
!16 = !{ptr @t21142_media_task._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @t21142_media_task._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/dec/tulip/21142.c", i32 73, i32 4}
!20 = !{ptr @t21142_media_task._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @t21142_media_task._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/dec/tulip/21142.c", i32 93, i32 4}
!24 = !{ptr @t21142_media_task._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @t21142_media_task._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/dec/tulip/21142.c", i32 122, i32 3}
!28 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @t21142_start_nway.__UNIQUE_ID_ddebug340, !27, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/dec/tulip/21142.c", i32 150, i32 3}
!33 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @t21142_lnk_change._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @t21142_lnk_change._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/dec/tulip/21142.c", i32 175, i32 5}
!38 = !{ptr @t21142_lnk_change._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @t21142_lnk_change._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/dec/tulip/21142.c", i32 181, i32 5}
!42 = !{ptr @t21142_lnk_change._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @t21142_lnk_change._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/dec/tulip/21142.c", i32 211, i32 4}
!46 = !{ptr @t21142_lnk_change.__UNIQUE_ID_ddebug341, !45, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!47 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/dec/tulip/21142.c", i32 225, i32 4}
!49 = !{ptr @t21142_lnk_change._entry.29, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @t21142_lnk_change._entry_ptr.31, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.32, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.33, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.35, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/dec/tulip/21142.c", i32 237, i32 4}
!55 = !{ptr @t21142_lnk_change._entry.34, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @t21142_lnk_change._entry_ptr.36, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.38, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/dec/tulip/21142.c", i32 240, i32 4}
!59 = !{ptr @t21142_lnk_change._entry.37, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @t21142_lnk_change._entry_ptr.39, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.41, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/dec/tulip/21142.c", i32 244, i32 4}
!63 = !{ptr @t21142_lnk_change._entry.40, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @t21142_lnk_change._entry_ptr.42, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.44, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/dec/tulip/21142.c", i32 248, i32 4}
!67 = !{ptr @t21142_lnk_change._entry.43, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @t21142_lnk_change._entry_ptr.45, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @t21142_csr15, !70, !"t21142_csr15", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/dec/tulip/21142.c", i32 23, i32 12}
!71 = !{ptr @t21142_csr13, !72, !"t21142_csr13", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/dec/tulip/21142.c", i32 21, i32 12}
!73 = !{ptr @.str.46, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/dec/tulip/tulip.h", i32 546, i32 4}
!75 = !{ptr @.str.47, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.48, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, !74, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i64 6550169}
!88 = !{i64 2154090518}
!89 = !{i64 2154091873}
!90 = !{i64 6549751}
!91 = !{i64 2154091323}
!92 = !{i64 6549131}
!93 = !{i64 2148762986, i64 2148762991, i64 2148763004, i64 2148763048, i64 2148763082, i64 2148763103}
!94 = !{i64 2156407116}
!95 = !{i64 2156406881}
