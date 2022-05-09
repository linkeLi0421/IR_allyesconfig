; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/mv88e6xxx/hwtstamp.c_pt.bc'
source_filename = "../drivers/net/dsa/mv88e6xxx/hwtstamp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mv88e6xxx_info = type { i32, i16, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, ptr, i8 }
%struct.mv88e6xxx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.mv88e6xxx_chip = type { ptr, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, %struct.mutex, i32, %struct.work_struct, %struct.timer_list, %struct.mutex, ptr, i32, %struct.list_head, %struct.idr, %struct.mv88e6xxx_irq, %struct.mv88e6xxx_irq, i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], ptr, %struct.kthread_delayed_work, [2 x i8], %struct.cyclecounter, %struct.timecounter, %struct.delayed_work, ptr, %struct.ptp_clock_info, %struct.delayed_work, [16 x %struct.ptp_pin_desc], i16, i16, i16, i32, i32, [12 x %struct.mv88e6xxx_port_hwtstamp], [12 x %struct.mv88e6xxx_port], [5 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mv88e6xxx_irq = type { i16, %struct.irq_chip, ptr, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.mv88e6xxx_port_hwtstamp = type { i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, i32, ptr, i16, %struct.hwtstamp_config }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mv88e6xxx_port = type { ptr, i32, %struct.mv88e6xxx_vlan, [2 x i64], i64, i64, i64, i64, i64, i32, i8, i8, i8, i32, [64 x i8], ptr }
%struct.mv88e6xxx_vlan = type { i16, i8 }
%struct.mv88e6xxx_ptp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ifreq = type { %union.anon.127, %union.anon.128 }
%union.anon.127 = type { [16 x i8] }
%union.anon.128 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.dsa_port = type { %union.anon.146, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.146 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.135 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.135 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.mv88e6xxx_avb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ptp_header = type <{ i8, i8, i16, i8, i8, [2 x i8], i64, i32, %struct.port_identity, i16, i8, i8 }>
%struct.port_identity = type { %struct.clock_identity, i16 }
%struct.clock_identity = type { [8 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mv88e6xxx_set_hwtstamp_config.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mv88e6xxx\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mv88e6xxx_set_hwtstamp_config\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/dsa/mv88e6xxx/hwtstamp.c\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported rx_filter %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mv88e6xxx_txtstamp_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.5, i32 388, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"p%d: clearing tx timestamp hang\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mv88e6xxx_txtstamp_work\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv88e6xxx_txtstamp_work._entry_ptr = internal global ptr @mv88e6xxx_txtstamp_work._entry, section ".printk_index", align 4
@mv88e6xxx_txtstamp_work._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.5, i32 405, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"p%d: tx timestamp overrun\0A\00", [37 x i8] zeroinitializer }, align 32
@mv88e6xxx_txtstamp_work._entry_ptr.13 = internal global ptr @mv88e6xxx_txtstamp_work._entry.11, section ".printk_index", align 4
@mv88e6xxx_txtstamp_work._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.5, i32 410, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"p%d: unexpected seq. id\0A\00", [39 x i8] zeroinitializer }, align 32
@mv88e6xxx_txtstamp_work._entry_ptr.16 = internal global ptr @mv88e6xxx_txtstamp_work._entry.14, section ".printk_index", align 4
@mv88e6xxx_txtstamp_work.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.5, ptr @.str.17, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"p%d: txtstamp %llx status 0x%04x skb ID 0x%04x hw ID 0x%04x\0A\00", [35 x i8] zeroinitializer }, align 32
@mv88e6xxx_get_rxts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013failed to get the receive time stamp\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mv88e6xxx_get_rxts\00", [45 x i8] zeroinitializer }, align 32
@mv88e6xxx_get_rxts._entry_ptr = internal global ptr @mv88e6xxx_get_rxts._entry, section ".printk_index", align 4
@mv88e6xxx_get_rxts._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.5, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013failed to clear the receive status\0A\00", [58 x i8] zeroinitializer }, align 32
@mv88e6xxx_get_rxts._entry_ptr.22 = internal global ptr @mv88e6xxx_get_rxts._entry.20, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.24 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@___asan_gen_.26 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 156, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 120, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 387, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 405, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 410, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 421, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 275, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private constant [40 x i8] c"../drivers/net/dsa/mv88e6xxx/hwtstamp.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 287, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 1984, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @mv88e6xxx_get_rxts._entry, ptr @mv88e6xxx_get_rxts._entry.20, ptr @mv88e6xxx_get_rxts._entry_ptr, ptr @mv88e6xxx_get_rxts._entry_ptr.22, ptr @mv88e6xxx_txtstamp_work._entry, ptr @mv88e6xxx_txtstamp_work._entry.11, ptr @mv88e6xxx_txtstamp_work._entry.14, ptr @mv88e6xxx_txtstamp_work._entry_ptr, ptr @mv88e6xxx_txtstamp_work._entry_ptr.13, ptr @mv88e6xxx_txtstamp_work._entry_ptr.16, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @skb_queue_head_init.__key, ptr @.str.23], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_txtstamp_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_txtstamp_work._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_txtstamp_work._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_get_rxts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_get_rxts._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_get_ts_info(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ptp_support = getelementptr inbounds %struct.mv88e6xxx_info, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %ptp_support to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ptp_support, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ops = getelementptr inbounds %struct.mv88e6xxx_info, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %ptp_ops2 = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %7, i32 0, i32 65
  %8 = ptrtoint ptr %ptp_ops2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptp_ops2, align 4
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %10 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 69, ptr %so_timestamping, align 4
  %ptp_clock = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 36
  %11 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptp_clock, align 4
  %call = tail call i32 @ptp_clock_index(ptr noundef %12) #7
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %13 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call, ptr %phc_index, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %14 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, ptr %9, i32 0, i32 12
  %15 = ptrtoint ptr %rx_filters to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_filters, align 4
  %rx_filters4 = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %17 = ptrtoint ptr %rx_filters4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rx_filters4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_hwtstamp_set(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  %config = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config) #7
  %2 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %config, align 4, !annotation !54
  %3 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !54
  %5 = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !54
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %ptp_support = getelementptr inbounds %struct.mv88e6xxx_info, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %ptp_support to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ptp_support, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %11 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 12, i32 -1226833920) #10, !srcloc !55
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !56

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config, i32 noundef 12) #7
  %14 = call i32 @llvm.read_register.i32(metadata !43) #7
  %and.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !57
  %and.i.i.i.i = and i32 %16, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %config, ptr noundef %12, i32 noundef 12) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #7, !srcloc !58
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end3, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !56

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 12, %if.end.if.then11.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 12, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %config, i32 %sub.i.i
  %17 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end3:                                          ; preds = %if.end.i.i
  %call4 = call fastcc i32 @mv88e6xxx_set_hwtstamp_config(ptr noundef %1, i32 noundef %port, ptr noundef nonnull %config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.i22, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i22:                                      ; preds = %if.end3
  %tstamp_config = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 45, i32 %port, i32 7
  %18 = call ptr @memcpy(ptr %tstamp_config, ptr %config, i32 12)
  %19 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ifr_ifru, align 4
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #7
  %call.i.i21 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i21, label %if.then.i22.cleanup_crit_edge, label %if.end.i.i25

if.then.i22.cleanup_crit_edge:                    ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i25:                                     ; preds = %if.then.i22
  %21 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %20, i32 12, i32 -1226833920) #10, !srcloc !60
  %asmresult.i.i23 = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i23)
  %cmp.i.i24 = icmp eq i32 %asmresult.i.i23, 0
  br i1 %cmp.i.i24, label %copy_to_user.exit, label %if.end.i.i25.cleanup_crit_edge

if.end.i.i25.cleanup_crit_edge:                   ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i26 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config, i32 noundef 12) #7
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %20, ptr noundef nonnull %config, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool10.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool10.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i25.cleanup_crit_edge, %if.then.i22.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then.i22.cleanup_crit_edge ], [ -14, %if.end.i.i25.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv88e6xxx_set_hwtstamp_config(ptr noundef %chip, i32 noundef %port, ptr nocapture noundef %config) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %ptp_ops1 = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %ptp_ops1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptp_ops1, align 4
  %state = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 45, i32 %port, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #7
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 1, ptr elementtype(i32) %state) #7, !srcloc !62
  %tx_type = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 1
  %7 = ptrtoint ptr %tx_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_type, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %tstamp_enable.0.off0 = phi i1 [ true, %sw.bb2 ], [ false, %entry.sw.epilog_crit_edge ]
  %rx_filter = getelementptr inbounds %struct.hwtstamp_config, ptr %config, i32 0, i32 2
  %10 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_filter, align 4
  %shl = shl nuw i32 1, %11
  %rx_filters = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, ptr %5, i32 0, i32 12
  %12 = ptrtoint ptr %rx_filters to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_filters, align 4
  %and = and i32 %shl, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end9

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %rx_filter, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv88e6xxx_set_hwtstamp_config.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv88e6xxx_set_hwtstamp_config, %if.then7)) #7
          to label %cleanup [label %if.then7], !srcloc !63

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_filter, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv88e6xxx_set_hwtstamp_config.__UNIQUE_ID_ddebug497, ptr noundef %16, ptr noundef nonnull @.str.6, i32 noundef %18) #7
  br label %cleanup

if.end9:                                          ; preds = %sw.epilog
  %19 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %11, label %sw.default15 [
    i32 0, label %if.else.critedge
    i32 6, label %if.end9.sw.bb12_crit_edge
    i32 7, label %if.end9.sw.bb12_crit_edge102
    i32 8, label %if.end9.sw.bb12_crit_edge103
    i32 9, label %if.end9.sw.bb12_crit_edge104
    i32 10, label %if.end9.sw.bb12_crit_edge105
    i32 11, label %if.end9.sw.bb12_crit_edge106
    i32 12, label %if.end9.sw.bb12_crit_edge107
    i32 13, label %if.end9.sw.bb12_crit_edge108
    i32 14, label %if.end9.sw.bb12_crit_edge109
  ]

if.end9.sw.bb12_crit_edge109:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end9.sw.bb12_crit_edge108:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end9.sw.bb12_crit_edge107:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end9.sw.bb12_crit_edge106:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end9.sw.bb12_crit_edge105:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end9.sw.bb12_crit_edge104:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end9.sw.bb12_crit_edge103:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end9.sw.bb12_crit_edge102:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end9.sw.bb12_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

sw.bb12:                                          ; preds = %if.end9.sw.bb12_crit_edge, %if.end9.sw.bb12_crit_edge102, %if.end9.sw.bb12_crit_edge103, %if.end9.sw.bb12_crit_edge104, %if.end9.sw.bb12_crit_edge105, %if.end9.sw.bb12_crit_edge106, %if.end9.sw.bb12_crit_edge107, %if.end9.sw.bb12_crit_edge108, %if.end9.sw.bb12_crit_edge109
  %20 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 12, ptr %rx_filter, align 4
  %reg_lock.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #7
  br i1 %tstamp_enable.0.off0, label %if.then19, label %sw.bb12.if.else_crit_edge

sw.bb12.if.else_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

sw.default15:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %rx_filter, align 4
  br label %cleanup

if.then19:                                        ; preds = %sw.bb12
  %enable_count = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 42
  %22 = ptrtoint ptr %enable_count to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %enable_count, align 4
  %add = add i16 %23, 1
  store i16 %add, ptr %enable_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp = icmp eq i16 %23, 0
  br i1 %cmp, label %land.lhs.true, label %if.then19.if.end28_crit_edge

if.then19.if.end28_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

land.lhs.true:                                    ; preds = %if.then19
  %global_enable = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, ptr %5, i32 0, i32 6
  %24 = ptrtoint ptr %global_enable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %global_enable, align 4
  %tobool24.not = icmp eq ptr %25, null
  br i1 %tobool24.not, label %land.lhs.true.if.end28_crit_edge, label %if.then25

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call i32 %25(ptr noundef %chip) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %land.lhs.true.if.end28_crit_edge, %if.then19.if.end28_crit_edge
  %port_enable = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, ptr %5, i32 0, i32 4
  %26 = ptrtoint ptr %port_enable to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port_enable, align 4
  %tobool29.not = icmp eq ptr %27, null
  br i1 %tobool29.not, label %if.end28.if.then54_crit_edge, label %if.then30

if.end28.if.then54_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call i32 %27(ptr noundef %chip, i32 noundef %port) #7
  br label %if.then54

if.else.critedge:                                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %reg_lock.i96 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i96, i32 noundef 0) #7
  br label %if.else

if.else:                                          ; preds = %if.else.critedge, %sw.bb12.if.else_crit_edge
  %port_disable = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, ptr %5, i32 0, i32 5
  %28 = ptrtoint ptr %port_disable to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port_disable, align 4
  %tobool34.not = icmp eq ptr %29, null
  br i1 %tobool34.not, label %if.else.if.end38_crit_edge, label %if.then35

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = tail call i32 %29(ptr noundef %chip, i32 noundef %port) #7
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.else.if.end38_crit_edge
  %enable_count39 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 42
  %30 = ptrtoint ptr %enable_count39 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %enable_count39, align 4
  %sub = add i16 %31, -1
  store i16 %sub, ptr %enable_count39, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %sub)
  %cmp44 = icmp eq i16 %sub, 0
  br i1 %cmp44, label %land.lhs.true46, label %if.end56.critedge

land.lhs.true46:                                  ; preds = %if.end38
  %global_disable = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, ptr %5, i32 0, i32 7
  %32 = ptrtoint ptr %global_disable to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %global_disable, align 4
  %tobool47.not = icmp eq ptr %33, null
  br i1 %tobool47.not, label %if.end56.critedge92, label %if.then48

if.then48:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #9
  %call50 = tail call i32 %33(ptr noundef %chip) #7
  %reg_lock.i97 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %reg_lock.i97) #7
  br label %cleanup

if.then54:                                        ; preds = %if.then30, %if.end28.if.then54_crit_edge
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #7
  br label %cleanup

if.end56.critedge:                                ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %reg_lock.i99 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %reg_lock.i99) #7
  br label %cleanup

if.end56.critedge92:                              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #9
  %reg_lock.i100 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %reg_lock.i100) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end56.critedge92, %if.end56.critedge, %if.then54, %if.then48, %sw.default15, %if.then7, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %sw.default15 ], [ -34, %entry.cleanup_crit_edge ], [ -34, %if.then7 ], [ 0, %if.then48 ], [ 0, %if.end56.critedge92 ], [ 0, %if.end56.critedge ], [ 0, %if.then54 ], [ -34, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_port_hwtstamp_get(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %ifr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ptp_support = getelementptr inbounds %struct.mv88e6xxx_info, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %ptp_support to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ptp_support, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tstamp_config = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 45, i32 %port, i32 7
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %6 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ifr_ifru, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 12, i32 -1226833920) #10, !srcloc !60
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tstamp_config, i32 noundef 12) #7
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %7, ptr noundef %tstamp_config, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool1.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool1.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mv88e6xxx_port_rxtstamp(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %skb, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %rx_filter = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 45, i32 %port, i32 7, i32 2
  %2 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %cmp.not = icmp eq i32 %3, 12
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %ptp_support.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %ptp_support.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ptp_support.i, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call.i = tail call ptr @ptp_parse_header(ptr noundef %skb, i32 noundef %type) #7
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %state.i = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 45, i32 %port, i32 1
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool5.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.cleanup_crit_edge, label %if.end2

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %10 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %type, ptr %cb, align 8
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call.i, align 1
  %13 = and i8 %12, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.i.not = icmp eq i8 %13, 3
  %rx_queue = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 45, i32 %port, i32 2
  %rx_queue2 = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 45, i32 %port, i32 3
  %rx_queue.sink = select i1 %cmp.i.not, ptr %rx_queue2, ptr %rx_queue
  tail call void @skb_queue_tail(ptr noundef %rx_queue.sink, ptr noundef %skb) #7
  %ptp_clock = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 36
  %14 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptp_clock, align 4
  %call7 = tail call i32 @ptp_schedule_worker(ptr noundef %15, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end2 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end3.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_schedule_worker(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_hwtstamp_work(ptr noundef %ptp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -1360
  %ds1 = getelementptr i8, ptr %ptp, i32 -1352
  %0 = ptrtoint ptr %ds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds1, align 8
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp18.not = icmp eq i32 %3, 0
  br i1 %cmp18.not, label %entry.for.end.thread_crit_edge, label %for.body.lr.ph

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %entry
  %dst1.i.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 1
  %port_hwtstamp = getelementptr i8, ptr %ptp, i32 1760
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %restart.022 = phi i32 [ 0, %for.body.lr.ph ], [ %restart.2, %for.inc.for.body_crit_edge ]
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %dst1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst1.i.i, align 4
  %ports.i.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn20.i.i = load ptr, ptr %ports.i.i, align 4
  %cmp.not21.i.i = icmp eq ptr %.pn20.i.i, %ports.i.i
  br i1 %cmp.not21.i.i, label %for.body.dsa_is_user_port.exit_crit_edge, label %for.body.for.body.i.i_crit_edge

for.body.for.body.i.i_crit_edge:                  ; preds = %for.body
  br label %for.body.i.i

for.body.dsa_is_user_port.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_is_user_port.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.for.body.i.i_crit_edge
  %.pn22.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn20.i.i, %for.body.for.body.i.i_crit_edge ]
  %ds3.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -432
  %7 = ptrtoint ptr %ds3.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ds3.i.i, align 4
  %cmp4.i.i = icmp eq ptr %8, %1
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %index.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -428
  %9 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %i.019)
  %cmp5.i.i = icmp eq i32 %10, %i.019
  br i1 %cmp5.i.i, label %cleanup.split.loop.exit18.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %11 = ptrtoint ptr %.pn22.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i = load ptr, ptr %.pn22.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %ports.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.dsa_is_user_port.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.dsa_is_user_port.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsa_is_user_port.exit

cleanup.split.loop.exit18.i.i:                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dp.0.le.i.i = getelementptr i8, ptr %.pn22.i.i, i32 -448
  br label %dsa_is_user_port.exit

dsa_is_user_port.exit:                            ; preds = %cleanup.split.loop.exit18.i.i, %for.inc.i.i.dsa_is_user_port.exit_crit_edge, %for.body.dsa_is_user_port.exit_crit_edge
  %retval.0.i.i = phi ptr [ %dp.0.le.i.i, %cleanup.split.loop.exit18.i.i ], [ null, %for.body.dsa_is_user_port.exit_crit_edge ], [ null, %for.inc.i.i.dsa_is_user_port.exit_crit_edge ]
  %type.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i = icmp eq i32 %13, 3
  br i1 %cmp.i, label %if.end, label %dsa_is_user_port.exit.for.inc_crit_edge

dsa_is_user_port.exit.for.inc_crit_edge:          ; preds = %dsa_is_user_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %dsa_is_user_port.exit
  %arrayidx = getelementptr [12 x %struct.mv88e6xxx_port_hwtstamp], ptr %port_hwtstamp, i32 0, i32 %i.019
  %state = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, ptr %arrayidx, i32 0, i32 1
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call fastcc i32 @mv88e6xxx_txtstamp_work(ptr noundef %add.ptr, ptr noundef %arrayidx)
  %or = or i32 %call4, %restart.022
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %restart.1 = phi i32 [ %or, %if.then3 ], [ %restart.022, %if.end.if.end5_crit_edge ]
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %ptp_ops1.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %20, i32 0, i32 65
  %21 = ptrtoint ptr %ptp_ops1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ptp_ops1.i, align 4
  %rx_queue.i = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, ptr %arrayidx, i32 0, i32 2
  %call.i = tail call ptr @skb_dequeue(ptr noundef %rx_queue.i) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end5.if.end.i_crit_edge, label %if.then.i

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %arr0_sts_reg.i = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %arr0_sts_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arr0_sts_reg.i, align 4
  %conv.i = trunc i32 %24 to i16
  tail call fastcc void @mv88e6xxx_get_rxts(ptr noundef %add.ptr, ptr noundef %arrayidx, ptr noundef nonnull %call.i, i16 noundef zeroext %conv.i, ptr noundef %rx_queue.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end5.if.end.i_crit_edge
  %rx_queue23.i = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, ptr %arrayidx, i32 0, i32 3
  %call4.i = tail call ptr @skb_dequeue(ptr noundef %rx_queue23.i) #7
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end.i.for.inc_crit_edge, label %if.then6.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arr1_sts_reg.i = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, ptr %22, i32 0, i32 10
  %25 = ptrtoint ptr %arr1_sts_reg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arr1_sts_reg.i, align 4
  %conv7.i = trunc i32 %26 to i16
  tail call fastcc void @mv88e6xxx_get_rxts(ptr noundef %add.ptr, ptr noundef %arrayidx, ptr noundef nonnull %call4.i, i16 noundef zeroext %conv7.i, ptr noundef %rx_queue23.i) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then6.i, %if.end.i.for.inc_crit_edge, %dsa_is_user_port.exit.for.inc_crit_edge
  %restart.2 = phi i32 [ %restart.022, %dsa_is_user_port.exit.for.inc_crit_edge ], [ %restart.1, %if.end.i.for.inc_crit_edge ], [ %restart.1, %if.then6.i ]
  %inc = add nuw i32 %i.019, 1
  %27 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_ports, align 4
  %cmp = icmp ult i32 %inc, %28
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %restart.2)
  %tobool6.not = icmp eq i32 %restart.2, 0
  br i1 %tobool6.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %29

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  br label %29

29:                                               ; preds = %for.end.thread, %for.end._crit_edge
  %30 = phi i32 [ -1, %for.end.thread ], [ 1, %for.end._crit_edge ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv88e6xxx_txtstamp_work(ptr noundef %chip, ptr noundef %ps) unnamed_addr #0 align 64 {
entry:
  %shhwtstamps = alloca %struct.skb_shared_hwtstamps, align 8
  %departure_block = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %ptp_ops1 = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %ptp_ops1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptp_ops1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %shhwtstamps) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %departure_block) #7
  %6 = getelementptr inbounds [4 x i16], ptr %departure_block, i32 0, i32 1
  %7 = getelementptr inbounds [4 x i16], ptr %departure_block, i32 0, i32 2
  %8 = getelementptr inbounds [4 x i16], ptr %departure_block, i32 0, i32 3
  %tx_skb = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, ptr %ps, i32 0, i32 5
  %9 = ptrtoint ptr %departure_block to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %departure_block, align 8
  %10 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_skb, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_lock.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #7
  %dep_sts_reg = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, ptr %5, i32 0, i32 11
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %avb_ops.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %15, i32 0, i32 63
  %16 = ptrtoint ptr %avb_ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %avb_ops.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %mv88e6xxx_port_ptp_read.exit.thread, label %mv88e6xxx_port_ptp_read.exit

mv88e6xxx_port_ptp_read.exit.thread:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  br label %free_and_clear_skb

mv88e6xxx_port_ptp_read.exit:                     ; preds = %if.end
  %20 = ptrtoint ptr %dep_sts_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dep_sts_reg, align 4
  %22 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ps, align 4
  %call.i = call i32 %19(ptr noundef %chip, i32 noundef %23, i32 noundef %21, ptr noundef nonnull %departure_block, i32 noundef 4) #7
  call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %mv88e6xxx_port_ptp_read.exit.free_and_clear_skb_crit_edge

mv88e6xxx_port_ptp_read.exit.free_and_clear_skb_crit_edge: ; preds = %mv88e6xxx_port_ptp_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_and_clear_skb

if.end4:                                          ; preds = %mv88e6xxx_port_ptp_read.exit
  %24 = ptrtoint ptr %departure_block to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %departure_block, align 8
  %26 = and i16 %25, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool5.not = icmp eq i16 %26, 0
  br i1 %tobool5.not, label %if.then6, label %if.end12

if.then6:                                         ; preds = %if.end4
  %tx_tstamp_start = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, ptr %ps, i32 0, i32 4
  %27 = ptrtoint ptr %tx_tstamp_start to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_tstamp_start, align 4
  %add = add i32 %28, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %32 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ps, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.7, i32 noundef %33) #11
  br label %free_and_clear_skb

if.end12:                                         ; preds = %if.end4
  call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #7
  %34 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip, align 8
  %ops.i112 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %35, i32 0, i32 22
  %36 = ptrtoint ptr %ops.i112 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i112, align 4
  %avb_ops.i113 = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %37, i32 0, i32 63
  %38 = ptrtoint ptr %avb_ops.i113 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %avb_ops.i113, align 4
  %port_ptp_write.i = getelementptr inbounds %struct.mv88e6xxx_avb_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %port_ptp_write.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port_ptp_write.i, align 4
  %tobool.not.i114 = icmp eq ptr %41, null
  br i1 %tobool.not.i114, label %if.end12.mv88e6xxx_port_ptp_write.exit_crit_edge, label %if.end.i116

if.end12.mv88e6xxx_port_ptp_write.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %mv88e6xxx_port_ptp_write.exit

if.end.i116:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %dep_sts_reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dep_sts_reg, align 4
  %44 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ps, align 4
  %call.i115 = call i32 %41(ptr noundef %chip, i32 noundef %45, i32 noundef %43, i16 noundef zeroext 0) #7
  br label %mv88e6xxx_port_ptp_write.exit

mv88e6xxx_port_ptp_write.exit:                    ; preds = %if.end.i116, %if.end12.mv88e6xxx_port_ptp_write.exit_crit_edge
  call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  %46 = ptrtoint ptr %departure_block to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %departure_block, align 8
  %48 = and i16 %47, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %cmp21.not = icmp eq i16 %48, 0
  br i1 %cmp21.not, label %if.end29, label %do.end26

do.end26:                                         ; preds = %mv88e6xxx_port_ptp_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev27 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %49 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev27, align 4
  %51 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ps, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.12, i32 noundef %52) #11
  br label %free_and_clear_skb

if.end29:                                         ; preds = %mv88e6xxx_port_ptp_write.exit
  %53 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %8, align 2
  %tx_seq_id = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, ptr %ps, i32 0, i32 6
  %55 = ptrtoint ptr %tx_seq_id to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %tx_seq_id, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %54, i16 %56)
  %cmp33.not = icmp eq i16 %54, %56
  br i1 %cmp33.not, label %if.end41, label %do.end38

do.end38:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %dev39 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %57 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev39, align 4
  %59 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ps, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.15, i32 noundef %60) #11
  br label %free_and_clear_skb

if.end41:                                         ; preds = %if.end29
  %61 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %7, align 4
  %conv43 = zext i16 %62 to i32
  %shl = shl nuw i32 %conv43, 16
  %63 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %6, align 2
  %conv45 = zext i16 %64 to i32
  %or = or i32 %shl, %conv45
  call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #7
  %tstamp_tc = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 34
  %conv46 = zext i32 %or to i64
  %call47 = call i64 @timecounter_cyc2time(ptr noundef %tstamp_tc, i64 noundef %conv46) #7
  call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  %65 = ptrtoint ptr %shhwtstamps to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %call47, ptr %shhwtstamps, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv88e6xxx_txtstamp_work.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv88e6xxx_txtstamp_work, %if.then54)) #7
          to label %do.end67 [label %if.then54], !srcloc !63

if.then54:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %dev55 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %66 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev55, align 4
  %68 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ps, align 4
  %70 = ptrtoint ptr %shhwtstamps to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %shhwtstamps, align 8
  %72 = ptrtoint ptr %departure_block to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %departure_block, align 8
  %conv60 = zext i16 %73 to i32
  %74 = ptrtoint ptr %tx_seq_id to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %tx_seq_id, align 4
  %conv62 = zext i16 %75 to i32
  %76 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %8, align 2
  %conv64 = zext i16 %77 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv88e6xxx_txtstamp_work.__UNIQUE_ID_ddebug498, ptr noundef %67, ptr noundef nonnull @.str.17, i32 noundef %69, i64 noundef %71, i32 noundef %conv60, i32 noundef %conv62, i32 noundef %conv64) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then54, %if.end41
  %78 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tx_skb, align 4
  store ptr null, ptr %tx_skb, align 4
  %state = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, ptr %ps, i32 0, i32 1
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #7
  %80 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state, ptr %state, i32 2, ptr elementtype(i32) %state) #7, !srcloc !62
  call void @skb_complete_tx_timestamp(ptr noundef %79, ptr noundef nonnull %shhwtstamps) #7
  br label %cleanup

free_and_clear_skb:                               ; preds = %do.end38, %do.end26, %do.end, %mv88e6xxx_port_ptp_read.exit.free_and_clear_skb_crit_edge, %mv88e6xxx_port_ptp_read.exit.thread
  %81 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tx_skb, align 4
  call void @__dev_kfree_skb_any(ptr noundef %82, i32 noundef 1) #7
  %83 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %tx_skb, align 4
  %state72 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, ptr %ps, i32 0, i32 1
  %call.i.i121 = call zeroext i1 @__kasan_check_write(ptr noundef %state72, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void @llvm.prefetch.p0(ptr %state72, i32 1, i32 3, i32 1) #7
  %84 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state72, ptr %state72, i32 2, ptr elementtype(i32) %state72) #7, !srcloc !62
  br label %cleanup

cleanup:                                          ; preds = %free_and_clear_skb, %do.end67, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %free_and_clear_skb ], [ 0, %do.end67 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %departure_block) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %shhwtstamps) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mv88e6xxx_port_txtstamp(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @ptp_classify_raw(ptr noundef %skb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ptp_support.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %ptp_support.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ptp_support.i, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call.i = tail call ptr @ptp_parse_header(ptr noundef %skb, i32 noundef %call) #7
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %state.i = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 45, i32 %port, i32 1
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool5.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.cleanup_crit_edge, label %if.end3

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end3.i
  %call4 = tail call ptr @skb_clone_sk(ptr noundef %skb) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #7
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and.i.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %test_and_set_bit_lock.exit, label %if.end7.if.then9_crit_edge

if.end7.if.then9_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

test_and_set_bit_lock.exit:                       ; preds = %if.end7
  tail call void @llvm.prefetch.p0(ptr %state.i, i32 1, i32 3, i32 1) #7
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %state.i, ptr %state.i, i32 2, ptr elementtype(i32) %state.i) #7, !srcloc !64
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  %11 = and i32 %asmresult.i.i.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %phi.cmp.i.not = icmp eq i32 %11, 0
  br i1 %phi.cmp.i.not, label %if.end10, label %test_and_set_bit_lock.exit.if.then9_crit_edge

test_and_set_bit_lock.exit.if.then9_crit_edge:    ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.then9:                                         ; preds = %test_and_set_bit_lock.exit.if.then9_crit_edge, %if.end7.if.then9_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call4, i32 noundef 0) #7
  br label %cleanup

if.end10:                                         ; preds = %test_and_set_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %tx_skb = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 45, i32 %port, i32 5
  %12 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call4, ptr %tx_skb, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %tx_tstamp_start = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 45, i32 %port, i32 4
  %14 = ptrtoint ptr %tx_tstamp_start to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tx_tstamp_start, align 4
  %sequence_id = getelementptr inbounds %struct.ptp_header, ptr %call.i, i32 0, i32 9
  %15 = ptrtoint ptr %sequence_id to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %sequence_id, align 1
  %tx_seq_id = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 45, i32 %port, i32 6
  %17 = ptrtoint ptr %tx_seq_id to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %tx_seq_id, align 4
  %ptp_clock = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 36
  %18 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptp_clock, align 4
  %call11 = tail call i32 @ptp_schedule_worker(ptr noundef %19, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %if.end3.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_classify_raw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone_sk(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6165_global_disable(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !54
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 22
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %avb_ops.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %4, i32 0, i32 63
  %5 = ptrtoint ptr %avb_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %avb_ops.i, align 4
  %ptp_read.i = getelementptr inbounds %struct.mv88e6xxx_avb_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %ptp_read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptp_read.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %mv88e6xxx_ptp_read.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mv88e6xxx_ptp_read.exit:                          ; preds = %entry
  %call.i = call i32 %8(ptr noundef %chip, i32 noundef 5, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %mv88e6xxx_ptp_read.exit.cleanup_crit_edge

mv88e6xxx_ptp_read.exit.cleanup_crit_edge:        ; preds = %mv88e6xxx_ptp_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mv88e6xxx_ptp_read.exit
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %val, align 2
  %11 = or i16 %10, 1
  store i16 %11, ptr %val, align 2
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 8
  %ops.i6 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %ops.i6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i6, align 4
  %avb_ops.i7 = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %15, i32 0, i32 63
  %16 = ptrtoint ptr %avb_ops.i7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %avb_ops.i7, align 4
  %ptp_write.i = getelementptr inbounds %struct.mv88e6xxx_avb_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %ptp_write.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptp_write.i, align 4
  %tobool.not.i8 = icmp eq ptr %19, null
  br i1 %tobool.not.i8, label %if.end.cleanup_crit_edge, label %if.end.i10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i10:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i9 = call i32 %19(ptr noundef %chip, i32 noundef 5, i16 noundef zeroext %11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i10, %if.end.cleanup_crit_edge, %mv88e6xxx_ptp_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %mv88e6xxx_ptp_read.exit.cleanup_crit_edge ], [ %call.i9, %if.end.i10 ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6165_global_enable(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !54
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 22
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %avb_ops.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %4, i32 0, i32 63
  %5 = ptrtoint ptr %avb_ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %avb_ops.i, align 4
  %ptp_read.i = getelementptr inbounds %struct.mv88e6xxx_avb_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %ptp_read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptp_read.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %mv88e6xxx_ptp_read.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mv88e6xxx_ptp_read.exit:                          ; preds = %entry
  %call.i = call i32 %8(ptr noundef %chip, i32 noundef 5, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %mv88e6xxx_ptp_read.exit.cleanup_crit_edge

mv88e6xxx_ptp_read.exit.cleanup_crit_edge:        ; preds = %mv88e6xxx_ptp_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mv88e6xxx_ptp_read.exit
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %val, align 2
  %11 = and i16 %10, 4094
  store i16 %11, ptr %val, align 2
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 8
  %ops.i6 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %ops.i6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i6, align 4
  %avb_ops.i7 = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %15, i32 0, i32 63
  %16 = ptrtoint ptr %avb_ops.i7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %avb_ops.i7, align 4
  %ptp_write.i = getelementptr inbounds %struct.mv88e6xxx_avb_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %ptp_write.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ptp_write.i, align 4
  %tobool.not.i8 = icmp eq ptr %19, null
  br i1 %tobool.not.i8, label %if.end.cleanup_crit_edge, label %if.end.i10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i10:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i9 = call i32 %19(ptr noundef %chip, i32 noundef 5, i16 noundef zeroext %11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i10, %if.end.cleanup_crit_edge, %mv88e6xxx_ptp_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %mv88e6xxx_ptp_read.exit.cleanup_crit_edge ], [ %call.i9, %if.end.i10 ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_hwtstamp_port_disable(ptr noundef %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %avb_ops.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 63
  %4 = ptrtoint ptr %avb_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %avb_ops.i, align 4
  %port_ptp_write.i = getelementptr inbounds %struct.mv88e6xxx_avb_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %port_ptp_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port_ptp_write.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.mv88e6xxx_port_ptp_write.exit_crit_edge, label %if.end.i

entry.mv88e6xxx_port_ptp_write.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mv88e6xxx_port_ptp_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %7(ptr noundef %chip, i32 noundef %port, i32 noundef 0, i16 noundef zeroext 1) #7
  br label %mv88e6xxx_port_ptp_write.exit

mv88e6xxx_port_ptp_write.exit:                    ; preds = %if.end.i, %entry.mv88e6xxx_port_ptp_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ -95, %entry.mv88e6xxx_port_ptp_write.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_hwtstamp_port_enable(ptr noundef %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %avb_ops.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 63
  %4 = ptrtoint ptr %avb_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %avb_ops.i, align 4
  %port_ptp_write.i = getelementptr inbounds %struct.mv88e6xxx_avb_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %port_ptp_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port_ptp_write.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.mv88e6xxx_port_ptp_write.exit_crit_edge, label %if.end.i

entry.mv88e6xxx_port_ptp_write.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mv88e6xxx_port_ptp_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %7(ptr noundef %chip, i32 noundef %port, i32 noundef 0, i16 noundef zeroext 2048) #7
  br label %mv88e6xxx_port_ptp_write.exit

mv88e6xxx_port_ptp_write.exit:                    ; preds = %if.end.i, %entry.mv88e6xxx_port_ptp_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ -95, %entry.mv88e6xxx_port_ptp_write.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_hwtstamp_setup(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %ptp_ops1 = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %ptp_ops1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptp_ops1, align 4
  %num_ports.i94 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %num_ports.i94 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ports.i94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp95.not = icmp eq i32 %7, 0
  br i1 %cmp95.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %8 = phi ptr [ %23, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %i.096 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %8, i32 0, i32 22
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %ptp_ops1.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %10, i32 0, i32 65
  %11 = ptrtoint ptr %ptp_ops1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptp_ops1.i, align 4
  %arrayidx.i = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 45, i32 %i.096
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %i.096, ptr %arrayidx.i, align 4
  %rx_queue.i = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 45, i32 %i.096, i32 2
  %lock.i.i = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 45, i32 %i.096, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %14 = ptrtoint ptr %rx_queue.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %rx_queue.i, ptr %rx_queue.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.anon.79, ptr %rx_queue.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rx_queue.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 45, i32 %i.096, i32 2, i32 1
  %16 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %qlen.i.i.i, align 4
  %rx_queue2.i = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 45, i32 %i.096, i32 3
  %lock.i11.i = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 45, i32 %i.096, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i11.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #7
  %17 = ptrtoint ptr %rx_queue2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rx_queue2.i, ptr %rx_queue2.i, align 4
  %prev.i.i12.i = getelementptr inbounds %struct.anon.79, ptr %rx_queue2.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %rx_queue2.i, ptr %prev.i.i12.i, align 4
  %qlen.i.i13.i = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 45, i32 %i.096, i32 3, i32 1
  %19 = ptrtoint ptr %qlen.i.i13.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %qlen.i.i13.i, align 4
  %port_disable.i = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, ptr %12, i32 0, i32 5
  %20 = ptrtoint ptr %port_disable.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port_disable.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %mv88e6xxx_hwtstamp_port_setup.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

mv88e6xxx_hwtstamp_port_setup.exit:               ; preds = %for.body
  %call.i = tail call i32 %21(ptr noundef %chip, i32 noundef %i.096) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %mv88e6xxx_hwtstamp_port_setup.exit.for.inc_crit_edge, label %mv88e6xxx_hwtstamp_port_setup.exit.cleanup31_crit_edge

mv88e6xxx_hwtstamp_port_setup.exit.cleanup31_crit_edge: ; preds = %mv88e6xxx_hwtstamp_port_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup31

mv88e6xxx_hwtstamp_port_setup.exit.for.inc_crit_edge: ; preds = %mv88e6xxx_hwtstamp_port_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %mv88e6xxx_hwtstamp_port_setup.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.096, 1
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 8
  %num_ports.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_ports.i, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %global_disable = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, ptr %5, i32 0, i32 7
  %26 = ptrtoint ptr %global_disable to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %global_disable, align 4
  %tobool3.not = icmp eq ptr %27, null
  br i1 %tobool3.not, label %for.end.if.end10_crit_edge, label %if.then4

for.end.if.end10_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then4:                                         ; preds = %for.end
  %call6 = tail call i32 %27(ptr noundef %chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then4.if.end10_crit_edge, label %if.then4.cleanup31_crit_edge

if.then4.cleanup31_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup31

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10:                                         ; preds = %if.then4.if.end10_crit_edge, %for.end.if.end10_crit_edge
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip, align 8
  %ops.i56 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %ops.i56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i56, align 4
  %avb_ops.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %31, i32 0, i32 63
  %32 = ptrtoint ptr %avb_ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %avb_ops.i, align 4
  %ptp_write.i = getelementptr inbounds %struct.mv88e6xxx_avb_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %ptp_write.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ptp_write.i, align 4
  %tobool.not.i57 = icmp eq ptr %35, null
  br i1 %tobool.not.i57, label %if.end10.cleanup31_crit_edge, label %mv88e6xxx_ptp_write.exit

if.end10.cleanup31_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup31

mv88e6xxx_ptp_write.exit:                         ; preds = %if.end10
  %call.i58 = tail call i32 %35(ptr noundef %chip, i32 noundef 0, i16 noundef zeroext -30473) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool12.not = icmp eq i32 %call.i58, 0
  br i1 %tobool12.not, label %if.end14, label %mv88e6xxx_ptp_write.exit.cleanup31_crit_edge

mv88e6xxx_ptp_write.exit.cleanup31_crit_edge:     ; preds = %mv88e6xxx_ptp_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup31

if.end14:                                         ; preds = %mv88e6xxx_ptp_write.exit
  %36 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chip, align 8
  %ops.i60 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %37, i32 0, i32 22
  %38 = ptrtoint ptr %ops.i60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i60, align 4
  %avb_ops.i61 = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %39, i32 0, i32 63
  %40 = ptrtoint ptr %avb_ops.i61 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %avb_ops.i61, align 4
  %ptp_write.i62 = getelementptr inbounds %struct.mv88e6xxx_avb_ops, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %ptp_write.i62 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ptp_write.i62, align 4
  %tobool.not.i63 = icmp eq ptr %43, null
  br i1 %tobool.not.i63, label %if.end14.cleanup31_crit_edge, label %mv88e6xxx_ptp_write.exit67

if.end14.cleanup31_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup31

mv88e6xxx_ptp_write.exit67:                       ; preds = %if.end14
  %call.i64 = tail call i32 %43(ptr noundef %chip, i32 noundef 1, i16 noundef zeroext 15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool16.not = icmp eq i32 %call.i64, 0
  br i1 %tobool16.not, label %if.end18, label %mv88e6xxx_ptp_write.exit67.cleanup31_crit_edge

mv88e6xxx_ptp_write.exit67.cleanup31_crit_edge:   ; preds = %mv88e6xxx_ptp_write.exit67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup31

if.end18:                                         ; preds = %mv88e6xxx_ptp_write.exit67
  %44 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chip, align 8
  %ops.i68 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %45, i32 0, i32 22
  %46 = ptrtoint ptr %ops.i68 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i68, align 4
  %avb_ops.i69 = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %47, i32 0, i32 63
  %48 = ptrtoint ptr %avb_ops.i69 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %avb_ops.i69, align 4
  %ptp_write.i70 = getelementptr inbounds %struct.mv88e6xxx_avb_ops, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %ptp_write.i70 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ptp_write.i70, align 4
  %tobool.not.i71 = icmp eq ptr %51, null
  br i1 %tobool.not.i71, label %if.end18.cleanup31_crit_edge, label %mv88e6xxx_ptp_write.exit75

if.end18.cleanup31_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup31

mv88e6xxx_ptp_write.exit75:                       ; preds = %if.end18
  %call.i72 = tail call i32 %51(ptr noundef %chip, i32 noundef 2, i16 noundef zeroext 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool20.not = icmp eq i32 %call.i72, 0
  br i1 %tobool20.not, label %if.end22, label %mv88e6xxx_ptp_write.exit75.cleanup31_crit_edge

mv88e6xxx_ptp_write.exit75.cleanup31_crit_edge:   ; preds = %mv88e6xxx_ptp_write.exit75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup31

if.end22:                                         ; preds = %mv88e6xxx_ptp_write.exit75
  %52 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chip, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %55)
  %cmp24 = icmp eq i32 %55, 8
  br i1 %cmp24, label %if.then25, label %if.end22.if.end30_crit_edge

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then25:                                        ; preds = %if.end22
  %ops.i76 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %53, i32 0, i32 22
  %56 = ptrtoint ptr %ops.i76 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i76, align 4
  %avb_ops.i77 = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %57, i32 0, i32 63
  %58 = ptrtoint ptr %avb_ops.i77 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %avb_ops.i77, align 4
  %ptp_write.i78 = getelementptr inbounds %struct.mv88e6xxx_avb_ops, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %ptp_write.i78 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ptp_write.i78, align 4
  %tobool.not.i79 = icmp eq ptr %61, null
  br i1 %tobool.not.i79, label %if.then25.cleanup31_crit_edge, label %mv88e6xxx_ptp_write.exit83

if.then25.cleanup31_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup31

mv88e6xxx_ptp_write.exit83:                       ; preds = %if.then25
  %call.i80 = tail call i32 %61(ptr noundef %chip, i32 noundef 7, i16 noundef zeroext -32640) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool27.not = icmp eq i32 %call.i80, 0
  br i1 %tobool27.not, label %mv88e6xxx_ptp_write.exit83.if.end30_crit_edge, label %mv88e6xxx_ptp_write.exit83.cleanup31_crit_edge

mv88e6xxx_ptp_write.exit83.cleanup31_crit_edge:   ; preds = %mv88e6xxx_ptp_write.exit83
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup31

mv88e6xxx_ptp_write.exit83.if.end30_crit_edge:    ; preds = %mv88e6xxx_ptp_write.exit83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end30:                                         ; preds = %mv88e6xxx_ptp_write.exit83.if.end30_crit_edge, %if.end22.if.end30_crit_edge
  br label %cleanup31

cleanup31:                                        ; preds = %if.end30, %mv88e6xxx_ptp_write.exit83.cleanup31_crit_edge, %if.then25.cleanup31_crit_edge, %mv88e6xxx_ptp_write.exit75.cleanup31_crit_edge, %if.end18.cleanup31_crit_edge, %mv88e6xxx_ptp_write.exit67.cleanup31_crit_edge, %if.end14.cleanup31_crit_edge, %mv88e6xxx_ptp_write.exit.cleanup31_crit_edge, %if.end10.cleanup31_crit_edge, %if.then4.cleanup31_crit_edge, %mv88e6xxx_hwtstamp_port_setup.exit.cleanup31_crit_edge
  %retval.1 = phi i32 [ 0, %if.end30 ], [ %call.i80, %mv88e6xxx_ptp_write.exit83.cleanup31_crit_edge ], [ %call6, %if.then4.cleanup31_crit_edge ], [ %call.i58, %mv88e6xxx_ptp_write.exit.cleanup31_crit_edge ], [ %call.i64, %mv88e6xxx_ptp_write.exit67.cleanup31_crit_edge ], [ %call.i72, %mv88e6xxx_ptp_write.exit75.cleanup31_crit_edge ], [ -95, %if.end10.cleanup31_crit_edge ], [ -95, %if.end14.cleanup31_crit_edge ], [ -95, %if.end18.cleanup31_crit_edge ], [ -95, %if.then25.cleanup31_crit_edge ], [ %call.i, %mv88e6xxx_hwtstamp_port_setup.exit.cleanup31_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mv88e6xxx_hwtstamp_free(ptr nocapture noundef %chip) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_parse_header(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_complete_tx_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mv88e6xxx_get_rxts(ptr noundef %chip, ptr nocapture noundef readonly %ps, ptr noundef %skb, i16 noundef zeroext %reg, ptr noundef %rxq) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [4 x i16], align 8
  %received = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %buf, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %received) #7
  %1 = getelementptr inbounds i8, ptr %received, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 44)
  %3 = ptrtoint ptr %received to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %received, ptr %received, align 4
  %prev.i = getelementptr inbounds %struct.anon.79, ptr %received, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %received, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %received, i32 0, i32 1
  %5 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qlen.i, align 4
  %lock = getelementptr inbounds %struct.sk_buff_head, ptr %rxq, i32 0, i32 2
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %6 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rxq, align 4
  %cmp.i.not.i = icmp eq ptr %7, %rxq
  br i1 %cmp.i.not.i, label %entry.skb_queue_splice_tail_init.exit_crit_edge, label %if.then.i

entry.skb_queue_splice_tail_init.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_queue_splice_tail_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.anon.79, ptr %rxq, i32 0, i32 1
  %10 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.51, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %9, ptr %prev5.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %7, ptr %9, align 8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %received, ptr %11, align 8
  store volatile ptr %11, ptr %prev.i, align 4
  %qlen.i69 = getelementptr inbounds %struct.sk_buff_head, ptr %rxq, i32 0, i32 1
  %15 = ptrtoint ptr %qlen.i69 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen.i69, align 4
  %17 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen.i, align 4
  %add.i = add i32 %18, %16
  store i32 %add.i, ptr %qlen.i, align 4
  %19 = ptrtoint ptr %rxq to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rxq, ptr %rxq, align 4
  store ptr %rxq, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i69, align 4
  br label %skb_queue_splice_tail_init.exit

skb_queue_splice_tail_init.exit:                  ; preds = %if.then.i, %entry.skb_queue_splice_tail_init.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  %reg_lock.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #7
  %conv6 = zext i16 %reg to i32
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %21, i32 0, i32 22
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %avb_ops.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %23, i32 0, i32 63
  %24 = ptrtoint ptr %avb_ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %avb_ops.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %mv88e6xxx_port_ptp_read.exit.thread, label %mv88e6xxx_port_ptp_read.exit

mv88e6xxx_port_ptp_read.exit.thread:              ; preds = %skb_queue_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  br label %do.end10

mv88e6xxx_port_ptp_read.exit:                     ; preds = %skb_queue_splice_tail_init.exit
  %28 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ps, align 4
  %call.i = call i32 %27(ptr noundef %chip, i32 noundef %29, i32 noundef %conv6, ptr noundef nonnull %buf, i32 noundef 4) #7
  call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %mv88e6xxx_port_ptp_read.exit.if.end_crit_edge, label %mv88e6xxx_port_ptp_read.exit.do.end10_crit_edge

mv88e6xxx_port_ptp_read.exit.do.end10_crit_edge:  ; preds = %mv88e6xxx_port_ptp_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

mv88e6xxx_port_ptp_read.exit.if.end_crit_edge:    ; preds = %mv88e6xxx_port_ptp_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end10:                                         ; preds = %mv88e6xxx_port_ptp_read.exit.do.end10_crit_edge, %mv88e6xxx_port_ptp_read.exit.thread
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #11
  br label %if.end

if.end:                                           ; preds = %do.end10, %mv88e6xxx_port_ptp_read.exit.if.end_crit_edge
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %buf, align 8
  %arrayidx13 = getelementptr inbounds [4 x i16], ptr %buf, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx13, align 2
  %conv14 = zext i16 %33 to i64
  %arrayidx15 = getelementptr inbounds [4 x i16], ptr %buf, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx15, align 4
  %conv16 = zext i16 %35 to i64
  %arrayidx17 = getelementptr inbounds [4 x i16], ptr %buf, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx17, align 2
  %38 = and i16 %31, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool19.not = icmp eq i16 %38, 0
  br i1 %tobool19.not, label %if.end.if.end32_crit_edge, label %if.then20

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then20:                                        ; preds = %if.end
  call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #7
  %39 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip, align 8
  %ops.i72 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %40, i32 0, i32 22
  %41 = ptrtoint ptr %ops.i72 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i72, align 4
  %avb_ops.i73 = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %42, i32 0, i32 63
  %43 = ptrtoint ptr %avb_ops.i73 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %avb_ops.i73, align 4
  %port_ptp_write.i = getelementptr inbounds %struct.mv88e6xxx_avb_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %port_ptp_write.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %port_ptp_write.i, align 4
  %tobool.not.i74 = icmp eq ptr %46, null
  br i1 %tobool.not.i74, label %mv88e6xxx_port_ptp_write.exit.thread, label %mv88e6xxx_port_ptp_write.exit

mv88e6xxx_port_ptp_write.exit.thread:             ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  br label %do.end28

mv88e6xxx_port_ptp_write.exit:                    ; preds = %if.then20
  %47 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ps, align 4
  %call.i75 = call i32 %46(ptr noundef %chip, i32 noundef %48, i32 noundef %conv6, i16 noundef zeroext 0) #7
  call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool24.not = icmp eq i32 %call.i75, 0
  br i1 %tobool24.not, label %mv88e6xxx_port_ptp_write.exit.if.end32_crit_edge, label %mv88e6xxx_port_ptp_write.exit.do.end28_crit_edge

mv88e6xxx_port_ptp_write.exit.do.end28_crit_edge: ; preds = %mv88e6xxx_port_ptp_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28

mv88e6xxx_port_ptp_write.exit.if.end32_crit_edge: ; preds = %mv88e6xxx_port_ptp_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.end28:                                         ; preds = %mv88e6xxx_port_ptp_write.exit.do.end28_crit_edge, %mv88e6xxx_port_ptp_write.exit.thread
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #11
  br label %if.end32

if.end32:                                         ; preds = %do.end28, %mv88e6xxx_port_ptp_write.exit.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %tobool33.not90 = icmp eq ptr %skb, null
  br i1 %tobool33.not90, label %if.end32.for.end_crit_edge, label %for.body.lr.ph

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end32
  %shl = shl nuw nsw i64 %conv16, 16
  %or = or i64 %shl, %conv14
  %tstamp_tc = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 34
  br label %for.body

for.body:                                         ; preds = %if.then.i84, %for.body.lr.ph
  %skb.addr.092 = phi ptr [ %skb, %for.body.lr.ph ], [ %59, %if.then.i84 ]
  %status.091 = phi i16 [ %31, %for.body.lr.ph ], [ %status.1, %if.then.i84 ]
  %49 = and i16 %status.091, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %49)
  %.not = icmp eq i16 %49, 1
  br i1 %.not, label %land.lhs.true, label %for.body.if.end45_crit_edge

for.body.if.end45_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

land.lhs.true:                                    ; preds = %for.body
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.092, i32 0, i32 3
  %50 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cb.i, align 8
  %call.i80 = call ptr @ptp_parse_header(ptr noundef nonnull %skb.addr.092, i32 noundef %51) #7
  %sequence_id.i = getelementptr inbounds %struct.ptp_header, ptr %call.i80, i32 0, i32 9
  %52 = ptrtoint ptr %sequence_id.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %sequence_id.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %37)
  %cmp.i.not = icmp eq i16 %53, %37
  br i1 %cmp.i.not, label %if.then38, label %land.lhs.true.if.end45_crit_edge

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #7
  %call39 = call i64 @timecounter_cyc2time(ptr noundef %tstamp_tc, i64 noundef %or) #7
  call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.092, i32 0, i32 17
  %54 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %end.i.i, align 4
  %hwtstamps.i = getelementptr inbounds %struct.skb_shared_info, ptr %55, i32 0, i32 7
  %56 = ptrtoint ptr %hwtstamps.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %call39, ptr %hwtstamps.i, align 8
  %57 = and i16 %status.091, -2
  br label %if.end45

if.end45:                                         ; preds = %if.then38, %land.lhs.true.if.end45_crit_edge, %for.body.if.end45_crit_edge
  %status.1 = phi i16 [ %57, %if.then38 ], [ %status.091, %land.lhs.true.if.end45_crit_edge ], [ %status.091, %for.body.if.end45_crit_edge ]
  %call46 = call i32 @netif_rx_ni(ptr noundef nonnull %skb.addr.092) #7
  %58 = ptrtoint ptr %received to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %received, align 4
  %cmp.i.i = icmp eq ptr %59, %received
  %cond94 = icmp eq ptr %59, null
  %cond = or i1 %cmp.i.i, %cond94
  br i1 %cond, label %if.end45.for.end_crit_edge, label %if.then.i84

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then.i84:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %61, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %59, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.51, ptr %59, i32 0, i32 1
  %64 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %59, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.51, ptr %63, i32 0, i32 1
  %66 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %65, ptr %prev17.i.i, align 4
  %67 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %63, ptr %65, align 8
  br label %for.body

for.end:                                          ; preds = %if.end45.for.end_crit_edge, %if.end32.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %received) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42}
!llvm.named.register.sp = !{!43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/dsa/mv88e6xxx/hwtstamp.c", i32 120, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mv88e6xxx_set_hwtstamp_config.__UNIQUE_ID_ddebug497, !8, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/dsa/mv88e6xxx/hwtstamp.c", i32 387, i32 4}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mv88e6xxx_txtstamp_work._entry, !14, !"_entry", i1 false, i1 false}
!19 = !{ptr @mv88e6xxx_txtstamp_work._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/dsa/mv88e6xxx/hwtstamp.c", i32 405, i32 3}
!22 = !{ptr @mv88e6xxx_txtstamp_work._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @mv88e6xxx_txtstamp_work._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/dsa/mv88e6xxx/hwtstamp.c", i32 410, i32 3}
!26 = !{ptr @mv88e6xxx_txtstamp_work._entry.14, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mv88e6xxx_txtstamp_work._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/dsa/mv88e6xxx/hwtstamp.c", i32 421, i32 2}
!30 = !{ptr @mv88e6xxx_txtstamp_work.__UNIQUE_ID_ddebug498, !29, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/dsa/mv88e6xxx/hwtstamp.c", i32 275, i32 3}
!33 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mv88e6xxx_get_rxts._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @mv88e6xxx_get_rxts._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/dsa/mv88e6xxx/hwtstamp.c", i32 287, i32 4}
!38 = !{ptr @mv88e6xxx_get_rxts._entry.20, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mv88e6xxx_get_rxts._entry_ptr.22, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @skb_queue_head_init.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!42 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!43 = !{!"sp"}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i8 0, i8 2}
!54 = !{!"auto-init"}
!55 = !{i64 2152924371, i64 2152924396}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 5419926}
!58 = !{i64 5420123}
!59 = !{i64 2152905356}
!60 = !{i64 2152925052, i64 2152925077}
!61 = !{i64 2148321402}
!62 = !{i64 2148231821, i64 2148231853, i64 2148231882, i64 2148231916, i64 2148231947, i64 2148231970}
!63 = !{i64 2148734539, i64 2148734544, i64 2148734557, i64 2148734601, i64 2148734635, i64 2148734656}
!64 = !{i64 2148233434, i64 2148233466, i64 2148233495, i64 2148233529, i64 2148233560, i64 2148233583}
!65 = !{i64 2148322515}
