; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/sja1105/sja1105_vl.c_pt.bc'
source_filename = "../drivers/net/dsa/sja1105/sja1105_vl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.sja1105_private = type { %struct.sja1105_static_config, [11 x i32], [11 x i32], [11 x i32], [11 x i8], i32, i32, i32, ptr, i32, ptr, ptr, [11 x i16], [11 x i16], %struct.sja1105_flow_block, %struct.mutex, %struct.spinlock, i8, %struct.mutex, ptr, ptr, ptr, ptr, ptr, [11 x ptr], %struct.sja1105_ptp_data, %struct.sja1105_tas_data }
%struct.sja1105_static_config = type { i64, [21 x %struct.sja1105_table] }
%struct.sja1105_table = type { ptr, i32, ptr }
%struct.sja1105_flow_block = type { %struct.list_head, [110 x i8], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sja1105_ptp_data = type { %struct.timer_list, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ptp_clock_info, ptr, %struct.sja1105_ptp_cmd, %struct.mutex, i8, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sja1105_ptp_cmd = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_tas_data = type { [11 x ptr], %struct.sja1105_gating_config, i32, i32, %struct.work_struct, i64, i64, i64, i8 }
%struct.sja1105_gating_config = type { i64, i64, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dsa_switch_tree = type { %struct.list_head, %struct.list_head, %struct.raw_notifier_head, i32, %struct.kref, ptr, ptr, i32, i8, ptr, %struct.list_head, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dsa_port = type { %union.anon.148, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.148 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.137 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.137 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.sja1105_rule = type { %struct.list_head, i32, i32, %struct.sja1105_key, i32, %union.anon.177 }
%struct.sja1105_key = type { i32, %union.anon.174 }
%union.anon.174 = type { %struct.anon.176 }
%struct.anon.176 = type { i64, i16, i16 }
%union.anon.177 = type { %struct.anon.180 }
%struct.anon.180 = type { i32, i32, i32, i32, i32, i64, i64, i32, ptr, %struct.flow_stats }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.sja1105_vl_lookup_entry = type { i64, i64, %union.anon.181, i32 }
%union.anon.181 = type { %struct.anon.182 }
%struct.anon.182 = type { i64, i64, i64, i64, i64 }
%struct.sja1105_table_ops = type { ptr, i32, i32, i32 }
%struct.sja1105_vl_policing_entry = type { i64, i64, i64, i64, i64 }
%struct.sja1105_vl_forwarding_entry = type { i64, i64, i64, i64 }
%struct.action_gate_entry = type { i8, i32, i32, i32 }
%struct.sja1105_gate_entry = type { %struct.list_head, ptr, i64, i8 }
%struct.sja1105_info = type { i64, i64, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i32], [5 x i64] }
%struct.sja1105_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [4 x [11 x i64]], i64, i64, [11 x i64] }

@sja1105_vl_redirect.__msg = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"sja1105: Can only redirect based on DMAC\00", [55 x i8] zeroinitializer }, align 32
@sja1105_vl_redirect.__msg.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"sja1105: Can only redirect based on {DMAC, VID, PCP}\00", [43 x i8] zeroinitializer }, align 32
@sja1105_vl_gate.__msg = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sja1105: Cycle time extension not supported\00", [52 x i8] zeroinitializer }, align 32
@sja1105_vl_gate.__msg.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sja1105: Base time must be multiple of 200 ns\00", [50 x i8] zeroinitializer }, align 32
@sja1105_vl_gate.__msg.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"sja1105: Cycle time must be multiple of 200 ns\00", [49 x i8] zeroinitializer }, align 32
@sja1105_vl_gate.__msg.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sja1105: Can only gate based on DMAC\00", [59 x i8] zeroinitializer }, align 32
@sja1105_vl_gate.__msg.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sja1105: Can only gate based on {DMAC, VID, PCP}\00", [47 x i8] zeroinitializer }, align 32
@sja1105_vl_gate.__msg.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sja1105: Interval must be multiple of 200 ns\00", [51 x i8] zeroinitializer }, align 32
@sja1105_vl_gate.__msg.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sja1105: Interval cannot be zero\00", [63 x i8] zeroinitializer }, align 32
@sja1105_vl_gate.__msg.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sja1105: Maximum interval is 52 ms\00", [61 x i8] zeroinitializer }, align 32
@sja1105_vl_gate.__msg.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"sja1105: Cannot offload IntervalOctetMax\00", [55 x i8] zeroinitializer }, align 32
@sja1105_vl_gate.__msg.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"sja1105: Only support a single IPV per VL\00", [54 x i8] zeroinitializer }, align 32
@sja1105_vl_gate.__msg.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"sja1105: Conflict with tc-taprio schedule\00", [54 x i8] zeroinitializer }, align 32
@sja1105_vl_stats.__msg = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sja1105: SPI access failed\00", [37 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sja1105_init_virtual_links.__msg = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"sja1105: Not enough VL entries available\00", [55 x i8] zeroinitializer }, align 32
@sja1105_init_virtual_links.__msg.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sja1105: Policer index out of range\00", [60 x i8] zeroinitializer }, align 32
@sja1105_compose_gating_subschedule.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.14, ptr @.str.15, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sja1105\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sja1105_compose_gating_subschedule\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/dsa/sja1105/sja1105_vl.c\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"max_cycle_time %lld its_base_time %lld\0A\00", [56 x i8] zeroinitializer }, align 32
@sja1105_insert_gate_entry.__msg = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sja1105: Gate conflict\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 503, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 507, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 581, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 588, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 595, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 601, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 605, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 636, i32 5 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 643, i32 5 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 651, i32 5 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 658, i32 5 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 667, i32 5 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 699, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 770, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 326, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 331, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 117, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.78 = private constant [40 x i8] c"../drivers/net/dsa/sja1105/sja1105_vl.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 34, i32 5 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @sja1105_vl_redirect.__msg, ptr @sja1105_vl_redirect.__msg.1, ptr @sja1105_vl_gate.__msg, ptr @sja1105_vl_gate.__msg.2, ptr @sja1105_vl_gate.__msg.3, ptr @sja1105_vl_gate.__msg.4, ptr @sja1105_vl_gate.__msg.5, ptr @sja1105_vl_gate.__msg.6, ptr @sja1105_vl_gate.__msg.7, ptr @sja1105_vl_gate.__msg.8, ptr @sja1105_vl_gate.__msg.9, ptr @sja1105_vl_gate.__msg.10, ptr @sja1105_vl_gate.__msg.11, ptr @sja1105_vl_stats.__msg, ptr @sja1105_init_virtual_links.__msg, ptr @sja1105_init_virtual_links.__msg.12, ptr @.str, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @sja1105_insert_gate_entry.__msg], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_vl_redirect.__msg to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_vl_redirect.__msg.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_vl_gate.__msg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_vl_gate.__msg.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_vl_gate.__msg.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_vl_gate.__msg.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_vl_gate.__msg.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_vl_gate.__msg.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_vl_gate.__msg.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_vl_gate.__msg.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_vl_gate.__msg.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_vl_gate.__msg.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_vl_gate.__msg.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_vl_stats.__msg to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_init_virtual_links.__msg to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_init_virtual_links.__msg.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_insert_gate_entry.__msg to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_vl_redirect(ptr noundef %priv, i32 noundef %port, ptr noundef %extack, i32 noundef %cookie, ptr nocapture noundef readonly %key, i32 noundef %destports, i1 noundef zeroext %append) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sja1105_rule_find(ptr noundef %priv, i32 noundef %cookie) #6
  %ds = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds, align 8
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %entry.dsa_to_port.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dsa_to_port.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %5 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %6, %1
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %7 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %port)
  %cmp5.i = icmp eq i32 %8, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %9 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %ds1.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 4
  %10 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ds1.i, align 4
  %vlan_filtering_is_global.i = getelementptr inbounds %struct.dsa_switch, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %vlan_filtering_is_global.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i = load i16, ptr %vlan_filtering_is_global.i, align 4
  %13 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i, label %dsa_port_is_vlan_filtering.exit, label %if.then.i

if.then.i:                                        ; preds = %dsa_to_port.exit
  %14 = and i16 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool6.i.not = icmp eq i16 %14, 0
  br i1 %tobool6.i.not, label %if.then.i.land.lhs.true_crit_edge, label %if.then.i.land.lhs.true7.critedge_crit_edge

if.then.i.land.lhs.true7.critedge_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true7.critedge

if.then.i.land.lhs.true_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

dsa_port_is_vlan_filtering.exit:                  ; preds = %dsa_to_port.exit
  %vlan_filtering7.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 11
  %15 = ptrtoint ptr %vlan_filtering7.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load8.i = load i8, ptr %vlan_filtering7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load8.i)
  %tobool10.i = icmp slt i8 %bf.load8.i, 0
  br i1 %tobool10.i, label %dsa_port_is_vlan_filtering.exit.land.lhs.true7.critedge_crit_edge, label %dsa_port_is_vlan_filtering.exit.land.lhs.true_crit_edge

dsa_port_is_vlan_filtering.exit.land.lhs.true_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

dsa_port_is_vlan_filtering.exit.land.lhs.true7.critedge_crit_edge: ; preds = %dsa_port_is_vlan_filtering.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true7.critedge

land.lhs.true:                                    ; preds = %dsa_port_is_vlan_filtering.exit.land.lhs.true_crit_edge, %if.then.i.land.lhs.true_crit_edge
  %16 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %key, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not = icmp eq i32 %17, 2
  br i1 %cmp.not, label %land.lhs.true.if.end20_crit_edge, label %do.body

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.body:                                          ; preds = %land.lhs.true
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_vl_redirect.__msg) #6
  %tobool4.not = icmp eq ptr %extack, null
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @sja1105_vl_redirect.__msg, ptr %extack, align 4
  br label %cleanup

land.lhs.true7.critedge:                          ; preds = %dsa_port_is_vlan_filtering.exit.land.lhs.true7.critedge_crit_edge, %if.then.i.land.lhs.true7.critedge_crit_edge
  %19 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %key, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp9.not = icmp eq i32 %20, 3
  br i1 %cmp9.not, label %land.lhs.true7.critedge.if.end20_crit_edge, label %do.body11

land.lhs.true7.critedge.if.end20_crit_edge:       ; preds = %land.lhs.true7.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.body11:                                        ; preds = %land.lhs.true7.critedge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_vl_redirect.__msg.1) #6
  %tobool13.not = icmp eq ptr %extack, null
  br i1 %tobool13.not, label %do.body11.cleanup_crit_edge, label %if.then14

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sja1105_vl_redirect.__msg.1, ptr %extack, align 4
  br label %cleanup

if.end20:                                         ; preds = %land.lhs.true7.critedge.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge
  %tobool21.not = icmp eq ptr %call, null
  br i1 %tobool21.not, label %if.then22, label %if.end20.if.end30_crit_edge

if.end20.if.end30_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then22:                                        ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 136) #9
  %tobool24.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool24.not, label %if.then22.cleanup_crit_edge, label %if.end26

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.then22
  %cookie27 = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %cookie27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cookie, ptr %cookie27, align 8
  %type28 = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %type28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %type28, align 8
  %key29 = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i, i32 0, i32 3
  %25 = call ptr @memcpy(ptr %key29, ptr %key, i32 24)
  %flow_block = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 14
  %26 = ptrtoint ptr %flow_block to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %flow_block, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %flow_block, ptr noundef %27) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end26.if.end30_crit_edge

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %flow_block, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %flow_block to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %call7.i.i, ptr %flow_block, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end.i.i, %if.end26.if.end30_crit_edge, %if.end20.if.end30_crit_edge
  %rule.0 = phi ptr [ %call, %if.end20.if.end30_crit_edge ], [ %call7.i.i, %if.end26.if.end30_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  %shl = shl nuw i32 1, %port
  %port_mask = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0, i32 0, i32 2
  %32 = ptrtoint ptr %port_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port_mask, align 4
  %or = or i32 %33, %shl
  store i32 %or, ptr %port_mask, align 4
  %destports33 = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0, i32 0, i32 5, i32 0, i32 1
  br i1 %append, label %if.then32, label %if.end30.if.end37_crit_edge

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %destports33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %destports33, align 4
  %or34 = or i32 %35, %destports
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.end30.if.end37_crit_edge
  %destports.sink = phi i32 [ %or34, %if.then32 ], [ %destports, %if.end30.if.end37_crit_edge ]
  %36 = ptrtoint ptr %destports33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %destports.sink, ptr %destports33, align 4
  %call38 = tail call fastcc i32 @sja1105_init_virtual_links(ptr noundef %priv, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %if.then40

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then40:                                        ; preds = %if.end37
  %neg = xor i32 %shl, -1
  %37 = ptrtoint ptr %port_mask to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port_mask, align 4
  %and = and i32 %38, %neg
  store i32 %and, ptr %port_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %if.then45, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then45:                                        ; preds = %if.then40
  %call.i.i80 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %rule.0) #6
  br i1 %call.i.i80, label %if.end.i.i81, label %if.then45.list_del.exit_crit_edge

if.then45.list_del.exit_crit_edge:                ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i81:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %rule.0, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i, align 4
  %41 = ptrtoint ptr %rule.0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rule.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i81, %if.then45.list_del.exit_crit_edge
  %45 = ptrtoint ptr %rule.0 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %rule.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %rule.0, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %rule.0) #6
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then40.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %if.then14, %do.body11.cleanup_crit_edge, %if.then5, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then5 ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %if.then14 ], [ -95, %do.body11.cleanup_crit_edge ], [ -12, %if.then22.cleanup_crit_edge ], [ %call38, %if.then40.cleanup_crit_edge ], [ %call38, %list_del.exit ], [ 0, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sja1105_rule_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_init_virtual_links(ptr noundef %priv, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  %tmp164 = alloca %struct.sja1105_vl_lookup_entry, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flow_block = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 14
  %0 = ptrtoint ptr %flow_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %rule.0558 = load ptr, ptr %flow_block, align 8
  %cmp.not559 = icmp eq ptr %rule.0558, %flow_block
  br i1 %cmp.not559, label %entry.if.end33_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %rule.0563 = phi ptr [ %rule.0, %for.inc.for.body_crit_edge ], [ %rule.0558, %entry.for.body_crit_edge ]
  %have_critical_virtual_links.0.off0562 = phi i1 [ %have_critical_virtual_links.2.off0, %for.inc.for.body_crit_edge ], [ false, %entry.for.body_crit_edge ]
  %num_virtual_links.0561 = phi i32 [ %num_virtual_links.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %max_sharindx.0560 = phi i32 [ %max_sharindx.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0563, i32 0, i32 4
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp3.not = icmp eq i32 %2, 2
  br i1 %cmp3.not, label %cond.false.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cond.false.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %port_mask = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0563, i32 0, i32 2
  %3 = ptrtoint ptr %port_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_mask, align 4
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %4) #6
  %add = add i32 %call.i.i, %num_virtual_links.0561
  %5 = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0563, i32 0, i32 5
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5.not = icmp ne i32 %7, 0
  %spec.select = select i1 %cmp5.not, i1 true, i1 %have_critical_virtual_links.0.off0562
  %sharindx = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0563, i32 0, i32 5, i32 0, i32 2
  %8 = ptrtoint ptr %sharindx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sharindx, align 8
  %10 = tail call i32 @llvm.smax.i32(i32 %max_sharindx.0560, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %cond.false.i, %for.body.for.inc_crit_edge
  %max_sharindx.1 = phi i32 [ %max_sharindx.0560, %for.body.for.inc_crit_edge ], [ %10, %cond.false.i ]
  %num_virtual_links.1 = phi i32 [ %num_virtual_links.0561, %for.body.for.inc_crit_edge ], [ %add, %cond.false.i ]
  %have_critical_virtual_links.2.off0 = phi i1 [ %have_critical_virtual_links.0.off0562, %for.body.for.inc_crit_edge ], [ %spec.select, %cond.false.i ]
  %11 = ptrtoint ptr %rule.0563 to i32
  call void @__asan_load4_noabort(i32 %11)
  %rule.0 = load ptr, ptr %rule.0563, align 8
  %cmp.not = icmp eq ptr %rule.0, %flow_block
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %num_virtual_links.1)
  %cmp17 = icmp sgt i32 %num_virtual_links.1, 1024
  br i1 %cmp17, label %do.body, label %if.end21

do.body:                                          ; preds = %for.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_init_virtual_links.__msg) #6
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup262_crit_edge, label %if.then19

do.body.cleanup262_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup262

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @sja1105_init_virtual_links.__msg, ptr %extack, align 4
  br label %cleanup262

if.end21:                                         ; preds = %for.end
  %add22 = add i32 %max_sharindx.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add22)
  %cmp23 = icmp sgt i32 %add22, 1024
  br i1 %cmp23, label %do.body25, label %if.end21.if.end33_crit_edge

if.end21.if.end33_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

do.body25:                                        ; preds = %if.end21
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_init_virtual_links.__msg.12) #6
  %tobool27.not = icmp eq ptr %extack, null
  br i1 %tobool27.not, label %do.body25.cleanup262_crit_edge, label %if.then28

do.body25.cleanup262_crit_edge:                   ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup262

if.then28:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @sja1105_init_virtual_links.__msg.12, ptr %extack, align 4
  br label %cleanup262

if.end33:                                         ; preds = %if.end21.if.end33_crit_edge, %entry.if.end33_crit_edge
  %max_sharindx.0.lcssa592603 = phi i32 [ %max_sharindx.1, %if.end21.if.end33_crit_edge ], [ 0, %entry.if.end33_crit_edge ]
  %num_virtual_links.0.lcssa593602 = phi i32 [ %num_virtual_links.1, %if.end21.if.end33_crit_edge ], [ 0, %entry.if.end33_crit_edge ]
  %have_critical_virtual_links.0.off0.lcssa595601 = phi i1 [ %have_critical_virtual_links.2.off0, %if.end21.if.end33_crit_edge ], [ false, %entry.if.end33_crit_edge ]
  %14 = tail call i32 @llvm.smax.i32(i32 %num_virtual_links.0.lcssa593602, i32 %max_sharindx.0.lcssa592603)
  %add36 = add i32 %14, 1
  %arrayidx = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 2
  %entry_count = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 2, i32 1
  %15 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %entry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool37.not = icmp eq i32 %16, 0
  br i1 %tobool37.not, label %if.end33.if.end40_crit_edge, label %if.then38

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %entries = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 2, i32 2
  %17 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %entries, align 4
  tail call void @kfree(ptr noundef %18) #6
  %19 = ptrtoint ptr %entry_count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %entry_count, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end33.if.end40_crit_edge
  %arrayidx43 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 3
  %entry_count44 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 3, i32 1
  %20 = ptrtoint ptr %entry_count44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %entry_count44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool45.not = icmp eq i32 %21, 0
  br i1 %tobool45.not, label %if.end40.if.end49_crit_edge, label %if.then46

if.end40.if.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %entries47 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 3, i32 2
  %22 = ptrtoint ptr %entries47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %entries47, align 4
  tail call void @kfree(ptr noundef %23) #6
  %24 = ptrtoint ptr %entry_count44 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %entry_count44, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end40.if.end49_crit_edge
  %arrayidx52 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 4
  %entry_count53 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 4, i32 1
  %25 = ptrtoint ptr %entry_count53 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %entry_count53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool54.not = icmp eq i32 %26, 0
  br i1 %tobool54.not, label %if.end49.if.end58_crit_edge, label %if.then55

if.end49.if.end58_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then55:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %entries56 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 4, i32 2
  %27 = ptrtoint ptr %entries56 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %entries56, align 4
  tail call void @kfree(ptr noundef %28) #6
  %29 = ptrtoint ptr %entry_count53 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %entry_count53, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.end49.if.end58_crit_edge
  %arrayidx61 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 12
  %entry_count62 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 12, i32 1
  %30 = ptrtoint ptr %entry_count62 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %entry_count62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool63.not = icmp eq i32 %31, 0
  br i1 %tobool63.not, label %if.end58.if.end67_crit_edge, label %if.then64

if.end58.if.end67_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then64:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %entries65 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 12, i32 2
  %32 = ptrtoint ptr %entries65 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %entries65, align 4
  tail call void @kfree(ptr noundef %33) #6
  %34 = ptrtoint ptr %entry_count62 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %entry_count62, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end58.if.end67_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_virtual_links.0.lcssa593602)
  %tobool68.not = icmp eq i32 %num_virtual_links.0.lcssa593602, 0
  br i1 %tobool68.not, label %if.end67.cleanup262_crit_edge, label %if.end70

if.end67.cleanup262_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup262

if.end70:                                         ; preds = %if.end67
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %unpacked_entry_size = getelementptr inbounds %struct.sja1105_table_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %unpacked_entry_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %unpacked_entry_size, align 4
  %39 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_virtual_links.0.lcssa593602, i32 %38) #6
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !51

kcalloc.exit.thread:                              ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %entries75523 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 2, i32 2
  %41 = ptrtoint ptr %entries75523 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %entries75523, align 4
  br label %cleanup262

if.end7.i.i:                                      ; preds = %if.end70
  %42 = extractvalue { i32, i1 } %39, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %42, i32 noundef 3520) #10
  %entries75 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 2, i32 2
  %43 = ptrtoint ptr %entries75 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call8.i.i, ptr %entries75, align 4
  %tobool77.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool77.not, label %if.end7.i.i.cleanup262_crit_edge, label %if.end79

if.end7.i.i.cleanup262_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup262

if.end79:                                         ; preds = %if.end7.i.i
  %44 = ptrtoint ptr %entry_count to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %num_virtual_links.0.lcssa593602, ptr %entry_count, align 4
  %45 = ptrtoint ptr %flow_block to i32
  call void @__asan_load4_noabort(i32 %45)
  %rule.1572 = load ptr, ptr %flow_block, align 8
  %cmp92.not573 = icmp eq ptr %rule.1572, %flow_block
  br i1 %cmp92.not573, label %if.end79.for.cond151.preheader_crit_edge, label %for.body94.lr.ph

if.end79.for.cond151.preheader_crit_edge:         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond151.preheader

for.body94.lr.ph:                                 ; preds = %if.end79
  %ds = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 11
  br label %for.body94

for.cond151.preheader:                            ; preds = %cleanup.for.cond151.preheader_crit_edge, %if.end79.for.cond151.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_virtual_links.0.lcssa593602)
  %cmp152580 = icmp sgt i32 %num_virtual_links.0.lcssa593602, 0
  br i1 %cmp152580, label %for.cond151.preheader.for.body154_crit_edge, label %for.cond151.preheader.for.end171_crit_edge

for.cond151.preheader.for.end171_crit_edge:       ; preds = %for.cond151.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end171

for.cond151.preheader.for.body154_crit_edge:      ; preds = %for.cond151.preheader
  br label %for.body154

for.body94:                                       ; preds = %cleanup.for.body94_crit_edge, %for.body94.lr.ph
  %rule.1575 = phi ptr [ %rule.1572, %for.body94.lr.ph ], [ %rule.1, %cleanup.for.body94_crit_edge ]
  %k.0574 = phi i32 [ 0, %for.body94.lr.ph ], [ %k.2, %cleanup.for.body94_crit_edge ]
  %type95 = getelementptr inbounds %struct.sja1105_rule, ptr %rule.1575, i32 0, i32 4
  %46 = ptrtoint ptr %type95 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %type95, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp96.not = icmp eq i32 %47, 2
  br i1 %cmp96.not, label %if.end98, label %for.body94.cleanup_crit_edge

for.body94.cleanup_crit_edge:                     ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end98:                                         ; preds = %for.body94
  %port_mask99 = getelementptr inbounds %struct.sja1105_rule, ptr %rule.1575, i32 0, i32 2
  %call100 = tail call i32 @_find_next_bit_be(ptr noundef %port_mask99, i32 noundef 11, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call100)
  %cmp102566 = icmp ult i32 %call100, 11
  br i1 %cmp102566, label %for.body103.lr.ph, label %if.end98.cleanup_crit_edge

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body103.lr.ph:                                ; preds = %if.end98
  %key = getelementptr inbounds %struct.sja1105_rule, ptr %rule.1575, i32 0, i32 3
  %48 = getelementptr inbounds %struct.sja1105_rule, ptr %rule.1575, i32 0, i32 3, i32 1
  %vid = getelementptr inbounds %struct.sja1105_rule, ptr %rule.1575, i32 0, i32 3, i32 1, i32 0, i32 1
  %pcp = getelementptr inbounds %struct.sja1105_rule, ptr %rule.1575, i32 0, i32 3, i32 1, i32 0, i32 2
  %49 = getelementptr inbounds %struct.sja1105_rule, ptr %rule.1575, i32 0, i32 5
  %destports = getelementptr inbounds %struct.sja1105_rule, ptr %rule.1575, i32 0, i32 5, i32 0, i32 1
  %cookie = getelementptr inbounds %struct.sja1105_rule, ptr %rule.1575, i32 0, i32 1
  br label %for.body103

for.body103:                                      ; preds = %if.end137.for.body103_crit_edge, %for.body103.lr.ph
  %port.0568 = phi i32 [ %call100, %for.body103.lr.ph ], [ %call142, %if.end137.for.body103_crit_edge ]
  %k.1567 = phi i32 [ %k.0574, %for.body103.lr.ph ], [ %inc, %if.end137.for.body103_crit_edge ]
  %arrayidx104 = getelementptr %struct.sja1105_vl_lookup_entry, ptr %call8.i.i, i32 %k.1567
  %50 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 0, ptr %arrayidx104, align 64
  %conv = zext i32 %port.0568 to i64
  %port106 = getelementptr %struct.sja1105_vl_lookup_entry, ptr %call8.i.i, i32 %k.1567, i32 1
  %51 = ptrtoint ptr %port106 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv, ptr %port106, align 8
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %48, align 8
  %54 = getelementptr %struct.sja1105_vl_lookup_entry, ptr %call8.i.i, i32 %k.1567, i32 2
  %macaddr = getelementptr inbounds %struct.anon.182, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %macaddr to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %53, ptr %macaddr, align 32
  %56 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %key, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %cmp110 = icmp eq i32 %57, 3
  br i1 %cmp110, label %if.then112, label %if.else

if.then112:                                       ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %vid, align 8
  %conv114 = zext i16 %59 to i64
  %vlanid = getelementptr inbounds %struct.anon.182, ptr %54, i32 0, i32 3
  %60 = ptrtoint ptr %vlanid to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv114, ptr %vlanid, align 8
  %61 = ptrtoint ptr %pcp to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %pcp, align 2
  %conv117 = zext i16 %62 to i64
  br label %if.end127

if.else:                                          ; preds = %for.body103
  %63 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ds, align 8
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %if.else.dsa_to_port.exit_crit_edge, label %if.else.for.body.i_crit_edge

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

if.else.dsa_to_port.exit_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %if.else.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %68 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %69, %64
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %70 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %port.0568)
  %cmp5.i = icmp eq i32 %71, %port.0568
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %72 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %if.else.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %if.else.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %call121 = tail call zeroext i16 @dsa_tag_8021q_rx_vid(ptr noundef %retval.0.i) #6
  %conv122 = zext i16 %call121 to i64
  %vlanid124 = getelementptr inbounds %struct.anon.182, ptr %54, i32 0, i32 3
  %73 = ptrtoint ptr %vlanid124 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv122, ptr %vlanid124, align 8
  br label %if.end127

if.end127:                                        ; preds = %dsa_to_port.exit, %if.then112
  %.sink = phi i64 [ 0, %dsa_to_port.exit ], [ %conv117, %if.then112 ]
  %vlanprior126 = getelementptr inbounds %struct.anon.182, ptr %54, i32 0, i32 4
  %74 = ptrtoint ptr %vlanprior126 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %.sink, ptr %vlanprior126, align 16
  %75 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %49, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp129 = icmp eq i32 %76, 0
  br i1 %cmp129, label %if.then131, label %if.else135

if.then131:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %destports to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %destports, align 4
  %conv132 = zext i32 %78 to i64
  %79 = ptrtoint ptr %54 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %conv132, ptr %54, align 16
  br label %if.end137

if.else135:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  %iscritical = getelementptr inbounds %struct.anon.182, ptr %54, i32 0, i32 1
  %80 = ptrtoint ptr %iscritical to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 1, ptr %iscritical, align 8
  br label %if.end137

if.end137:                                        ; preds = %if.else135, %if.then131
  %81 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cookie, align 8
  %flow_cookie = getelementptr %struct.sja1105_vl_lookup_entry, ptr %call8.i.i, i32 %k.1567, i32 3
  %83 = ptrtoint ptr %flow_cookie to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %flow_cookie, align 8
  %inc = add i32 %k.1567, 1
  %add141 = add i32 %port.0568, 1
  %call142 = tail call i32 @_find_next_bit_be(ptr noundef %port_mask99, i32 noundef 11, i32 noundef %add141) #6
  %cmp102 = icmp ult i32 %call142, 11
  br i1 %cmp102, label %if.end137.for.body103_crit_edge, label %if.end137.cleanup_crit_edge

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end137.for.body103_crit_edge:                  ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body103

cleanup:                                          ; preds = %if.end137.cleanup_crit_edge, %if.end98.cleanup_crit_edge, %for.body94.cleanup_crit_edge
  %k.2 = phi i32 [ %k.0574, %for.body94.cleanup_crit_edge ], [ %k.0574, %if.end98.cleanup_crit_edge ], [ %inc, %if.end137.cleanup_crit_edge ]
  %84 = ptrtoint ptr %rule.1575 to i32
  call void @__asan_load4_noabort(i32 %84)
  %rule.1 = load ptr, ptr %rule.1575, align 8
  %cmp92.not = icmp eq ptr %rule.1, %flow_block
  br i1 %cmp92.not, label %cleanup.for.cond151.preheader_crit_edge, label %cleanup.for.body94_crit_edge

cleanup.for.body94_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body94

cleanup.for.cond151.preheader_crit_edge:          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond151.preheader

for.cond151.loopexit:                             ; preds = %if.end165.for.cond151.loopexit_crit_edge, %for.body154.for.cond151.loopexit_crit_edge
  %exitcond586.not = icmp eq i32 %add156, %num_virtual_links.0.lcssa593602
  br i1 %exitcond586.not, label %for.cond151.loopexit.for.end171_crit_edge, label %for.cond151.loopexit.for.body154_crit_edge

for.cond151.loopexit.for.body154_crit_edge:       ; preds = %for.cond151.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body154

for.cond151.loopexit.for.end171_crit_edge:        ; preds = %for.cond151.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end171

for.body154:                                      ; preds = %for.cond151.loopexit.for.body154_crit_edge, %for.cond151.preheader.for.body154_crit_edge
  %i.0581 = phi i32 [ %add156, %for.cond151.loopexit.for.body154_crit_edge ], [ 0, %for.cond151.preheader.for.body154_crit_edge ]
  %arrayidx155 = getelementptr %struct.sja1105_vl_lookup_entry, ptr %call8.i.i, i32 %i.0581
  %add156 = add nuw nsw i32 %i.0581, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add156, i32 %num_virtual_links.0.lcssa593602)
  %cmp158576 = icmp slt i32 %add156, %num_virtual_links.0.lcssa593602
  br i1 %cmp158576, label %for.body160.lr.ph, label %for.body154.for.cond151.loopexit_crit_edge

for.body154.for.cond151.loopexit_crit_edge:       ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond151.loopexit

for.body160.lr.ph:                                ; preds = %for.body154
  %macaddr1.i = getelementptr %struct.sja1105_vl_lookup_entry, ptr %call8.i.i, i32 %i.0581, i32 2, i32 0, i32 2
  %vlanid7.i = getelementptr %struct.sja1105_vl_lookup_entry, ptr %call8.i.i, i32 %i.0581, i32 2, i32 0, i32 3
  %port16.i = getelementptr %struct.sja1105_vl_lookup_entry, ptr %call8.i.i, i32 %i.0581, i32 1
  %vlanprior25.i = getelementptr %struct.sja1105_vl_lookup_entry, ptr %call8.i.i, i32 %i.0581, i32 2, i32 0, i32 4
  br label %for.body160

for.body160:                                      ; preds = %if.end165.for.body160_crit_edge, %for.body160.lr.ph
  %j.0577 = phi i32 [ %add156, %for.body160.lr.ph ], [ %inc167, %if.end165.for.body160_crit_edge ]
  %arrayidx161 = getelementptr %struct.sja1105_vl_lookup_entry, ptr %call8.i.i, i32 %j.0577
  %macaddr.i = getelementptr %struct.sja1105_vl_lookup_entry, ptr %call8.i.i, i32 %j.0577, i32 2, i32 0, i32 2
  %85 = ptrtoint ptr %macaddr.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %macaddr.i, align 32
  %87 = ptrtoint ptr %macaddr1.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %macaddr1.i, align 32
  call void @__sanitizer_cov_trace_cmp8(i64 %86, i64 %88)
  %cmp.i = icmp ult i64 %86, %88
  br i1 %cmp.i, label %for.body160.if.then163_crit_edge, label %if.end.i

for.body160.if.then163_crit_edge:                 ; preds = %for.body160
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then163

if.end.i:                                         ; preds = %for.body160
  call void @__sanitizer_cov_trace_cmp8(i64 %86, i64 %88)
  %cmp4.i418 = icmp ugt i64 %86, %88
  br i1 %cmp4.i418, label %if.end.i.if.end165_crit_edge, label %if.end6.i

if.end.i.if.end165_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

if.end6.i:                                        ; preds = %if.end.i
  %vlanid.i = getelementptr %struct.sja1105_vl_lookup_entry, ptr %call8.i.i, i32 %j.0577, i32 2, i32 0, i32 3
  %89 = ptrtoint ptr %vlanid.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %vlanid.i, align 8
  %91 = ptrtoint ptr %vlanid7.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %vlanid7.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %90, i64 %92)
  %cmp8.i = icmp ult i64 %90, %92
  br i1 %cmp8.i, label %if.end6.i.if.then163_crit_edge, label %if.end10.i

if.end6.i.if.then163_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then163

if.end10.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_cmp8(i64 %90, i64 %92)
  %cmp13.i = icmp ugt i64 %90, %92
  br i1 %cmp13.i, label %if.end10.i.if.end165_crit_edge, label %if.end15.i

if.end10.i.if.end165_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

if.end15.i:                                       ; preds = %if.end10.i
  %port.i = getelementptr %struct.sja1105_vl_lookup_entry, ptr %call8.i.i, i32 %j.0577, i32 1
  %93 = ptrtoint ptr %port.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %port.i, align 8
  %95 = ptrtoint ptr %port16.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %port16.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %94, i64 %96)
  %cmp17.i = icmp ult i64 %94, %96
  br i1 %cmp17.i, label %if.end15.i.if.then163_crit_edge, label %if.end19.i

if.end15.i.if.then163_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then163

if.end19.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_cmp8(i64 %94, i64 %96)
  %cmp22.i = icmp ugt i64 %94, %96
  br i1 %cmp22.i, label %if.end19.i.if.end165_crit_edge, label %sja1105_vl_key_lower.exit

if.end19.i.if.end165_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

sja1105_vl_key_lower.exit:                        ; preds = %if.end19.i
  %vlanprior.i = getelementptr %struct.sja1105_vl_lookup_entry, ptr %call8.i.i, i32 %j.0577, i32 2, i32 0, i32 4
  %97 = ptrtoint ptr %vlanprior.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %vlanprior.i, align 16
  %99 = ptrtoint ptr %vlanprior25.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %vlanprior25.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %98, i64 %100)
  %cmp26.i = icmp ult i64 %98, %100
  br i1 %cmp26.i, label %sja1105_vl_key_lower.exit.if.then163_crit_edge, label %sja1105_vl_key_lower.exit.if.end165_crit_edge

sja1105_vl_key_lower.exit.if.end165_crit_edge:    ; preds = %sja1105_vl_key_lower.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

sja1105_vl_key_lower.exit.if.then163_crit_edge:   ; preds = %sja1105_vl_key_lower.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then163

if.then163:                                       ; preds = %sja1105_vl_key_lower.exit.if.then163_crit_edge, %if.end15.i.if.then163_crit_edge, %if.end6.i.if.then163_crit_edge, %for.body160.if.then163_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmp164)
  %101 = call ptr @memset(ptr %tmp164, i32 255, i32 64)
  %102 = call ptr @memcpy(ptr %tmp164, ptr %arrayidx155, i32 64)
  %103 = call ptr @memcpy(ptr %arrayidx155, ptr %arrayidx161, i32 64)
  %104 = call ptr @memcpy(ptr %arrayidx161, ptr %tmp164, i32 64)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmp164)
  br label %if.end165

if.end165:                                        ; preds = %if.then163, %sja1105_vl_key_lower.exit.if.end165_crit_edge, %if.end19.i.if.end165_crit_edge, %if.end10.i.if.end165_crit_edge, %if.end.i.if.end165_crit_edge
  %inc167 = add nuw nsw i32 %j.0577, 1
  %exitcond.not = icmp eq i32 %inc167, %num_virtual_links.0.lcssa593602
  br i1 %exitcond.not, label %if.end165.for.cond151.loopexit_crit_edge, label %if.end165.for.body160_crit_edge

if.end165.for.body160_crit_edge:                  ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body160

if.end165.for.cond151.loopexit_crit_edge:         ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond151.loopexit

for.end171:                                       ; preds = %for.cond151.loopexit.for.end171_crit_edge, %for.cond151.preheader.for.end171_crit_edge
  br i1 %have_critical_virtual_links.0.off0.lcssa595601, label %if.end174, label %for.end171.cleanup262_crit_edge

for.end171.cleanup262_crit_edge:                  ; preds = %for.end171
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup262

if.end174:                                        ; preds = %for.end171
  %105 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx43, align 4
  %unpacked_entry_size179 = getelementptr inbounds %struct.sja1105_table_ops, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %unpacked_entry_size179 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %unpacked_entry_size179, align 4
  %109 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add36, i32 %108) #6
  %110 = extractvalue { i32, i1 } %109, 1
  br i1 %110, label %kcalloc.exit453.thread, label %if.end7.i.i451, !prof !51

kcalloc.exit453.thread:                           ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  %entries181535 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 3, i32 2
  %111 = ptrtoint ptr %entries181535 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %entries181535, align 4
  br label %cleanup262

if.end7.i.i451:                                   ; preds = %if.end174
  %112 = extractvalue { i32, i1 } %109, 0
  %call8.i.i450 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %112, i32 noundef 3520) #10
  %entries181 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 3, i32 2
  %113 = ptrtoint ptr %entries181 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call8.i.i450, ptr %entries181, align 4
  %tobool183.not = icmp eq ptr %call8.i.i450, null
  br i1 %tobool183.not, label %if.end7.i.i451.cleanup262_crit_edge, label %if.end185

if.end7.i.i451.cleanup262_crit_edge:              ; preds = %if.end7.i.i451
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup262

if.end185:                                        ; preds = %if.end7.i.i451
  %114 = ptrtoint ptr %entry_count44 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %add36, ptr %entry_count44, align 4
  %115 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx52, align 4
  %unpacked_entry_size192 = getelementptr inbounds %struct.sja1105_table_ops, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %unpacked_entry_size192 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %unpacked_entry_size192, align 4
  %119 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add36, i32 %118) #6
  %120 = extractvalue { i32, i1 } %119, 1
  br i1 %120, label %kcalloc.exit487.thread, label %if.end7.i.i485, !prof !51

kcalloc.exit487.thread:                           ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #8
  %entries194543 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 4, i32 2
  %121 = ptrtoint ptr %entries194543 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %entries194543, align 4
  br label %cleanup262

if.end7.i.i485:                                   ; preds = %if.end185
  %122 = extractvalue { i32, i1 } %119, 0
  %call8.i.i484 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %122, i32 noundef 3520) #10
  %entries194 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 4, i32 2
  %123 = ptrtoint ptr %entries194 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call8.i.i484, ptr %entries194, align 4
  %tobool196.not = icmp eq ptr %call8.i.i484, null
  br i1 %tobool196.not, label %if.end7.i.i485.cleanup262_crit_edge, label %if.end198

if.end7.i.i485.cleanup262_crit_edge:              ; preds = %if.end7.i.i485
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup262

if.end198:                                        ; preds = %if.end7.i.i485
  %124 = ptrtoint ptr %entry_count53 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %add36, ptr %entry_count53, align 4
  %125 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx61, align 4
  %unpacked_entry_size205 = getelementptr inbounds %struct.sja1105_table_ops, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %unpacked_entry_size205 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %unpacked_entry_size205, align 4
  %call8.i.i518 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %128, i32 noundef 3520) #10
  %entries207 = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 12, i32 2
  %129 = ptrtoint ptr %entries207 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call8.i.i518, ptr %entries207, align 4
  %tobool209.not = icmp eq ptr %call8.i.i518, null
  br i1 %tobool209.not, label %if.end198.cleanup262_crit_edge, label %if.end211

if.end198.cleanup262_crit_edge:                   ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup262

if.end211:                                        ; preds = %if.end198
  %130 = ptrtoint ptr %entry_count62 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1, ptr %entry_count62, align 4
  br i1 %cmp152580, label %if.end211.for.body216_crit_edge, label %if.end211.for.end261_crit_edge

if.end211.for.end261_crit_edge:                   ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end261

if.end211.for.body216_crit_edge:                  ; preds = %if.end211
  br label %for.body216

for.body216:                                      ; preds = %cleanup255.for.body216_crit_edge, %if.end211.for.body216_crit_edge
  %i.1583 = phi i32 [ %inc260, %cleanup255.for.body216_crit_edge ], [ 0, %if.end211.for.body216_crit_edge ]
  %flow_cookie219 = getelementptr %struct.sja1105_vl_lookup_entry, ptr %call8.i.i, i32 %i.1583, i32 3
  %131 = ptrtoint ptr %flow_cookie219 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %flow_cookie219, align 8
  %call221 = tail call ptr @sja1105_rule_find(ptr noundef %priv, i32 noundef %132) #6
  %133 = getelementptr inbounds %struct.sja1105_rule, ptr %call221, i32 0, i32 5
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %133, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %135)
  %cond = icmp eq i32 %135, 2
  br i1 %cond, label %if.then230, label %for.body216.cleanup255_crit_edge

for.body216.cleanup255_crit_edge:                 ; preds = %for.body216
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup255

if.then230:                                       ; preds = %for.body216
  call void @__sanitizer_cov_trace_pc() #8
  %sharindx232 = getelementptr inbounds %struct.sja1105_rule, ptr %call221, i32 0, i32 5, i32 0, i32 2
  %136 = ptrtoint ptr %sharindx232 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %sharindx232, align 8
  %arrayidx233 = getelementptr %struct.sja1105_vl_policing_entry, ptr %call8.i.i450, i32 %i.1583
  %138 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 1, ptr %arrayidx233, align 8
  %conv235 = sext i32 %137 to i64
  %sharindx237 = getelementptr %struct.sja1105_vl_policing_entry, ptr %call8.i.i450, i32 %i.1583, i32 2
  %139 = ptrtoint ptr %sharindx237 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %conv235, ptr %sharindx237, align 8
  %maxlen = getelementptr inbounds %struct.sja1105_rule, ptr %call221, i32 0, i32 5, i32 0, i32 3
  %140 = ptrtoint ptr %maxlen to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %maxlen, align 4
  %conv238 = sext i32 %141 to i64
  %maxlen240 = getelementptr %struct.sja1105_vl_policing_entry, ptr %call8.i.i450, i32 %i.1583, i32 1
  %142 = ptrtoint ptr %maxlen240 to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %conv238, ptr %maxlen240, align 8
  %arrayidx241 = getelementptr %struct.sja1105_vl_policing_entry, ptr %call8.i.i450, i32 %137
  %143 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 1, ptr %arrayidx241, align 8
  %arrayidx243 = getelementptr %struct.sja1105_vl_forwarding_entry, ptr %call8.i.i484, i32 %i.1583
  %144 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 1, ptr %arrayidx243, align 32
  %arrayidx245 = getelementptr %struct.sja1105_vl_forwarding_entry, ptr %call8.i.i484, i32 %137
  %145 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 1, ptr %arrayidx245, align 32
  %ipv = getelementptr inbounds %struct.sja1105_rule, ptr %call221, i32 0, i32 5, i32 0, i32 4
  %146 = ptrtoint ptr %ipv to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ipv, align 8
  %conv247 = sext i32 %147 to i64
  %priority = getelementptr %struct.sja1105_vl_forwarding_entry, ptr %call8.i.i484, i32 %137, i32 1
  %148 = ptrtoint ptr %priority to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %conv247, ptr %priority, align 8
  %partition = getelementptr %struct.sja1105_vl_forwarding_entry, ptr %call8.i.i484, i32 %137, i32 2
  %149 = ptrtoint ptr %partition to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 0, ptr %partition, align 16
  %destports250 = getelementptr inbounds %struct.sja1105_rule, ptr %call221, i32 0, i32 5, i32 0, i32 1
  %150 = ptrtoint ptr %destports250 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %destports250, align 4
  %conv251 = zext i32 %151 to i64
  %destports253 = getelementptr %struct.sja1105_vl_forwarding_entry, ptr %call8.i.i484, i32 %137, i32 3
  %152 = ptrtoint ptr %destports253 to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %conv251, ptr %destports253, align 8
  br label %cleanup255

cleanup255:                                       ; preds = %if.then230, %for.body216.cleanup255_crit_edge
  %inc260 = add nuw nsw i32 %i.1583, 1
  %exitcond587.not = icmp eq i32 %inc260, %num_virtual_links.0.lcssa593602
  br i1 %exitcond587.not, label %cleanup255.for.end261_crit_edge, label %cleanup255.for.body216_crit_edge

cleanup255.for.body216_crit_edge:                 ; preds = %cleanup255
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body216

cleanup255.for.end261_crit_edge:                  ; preds = %cleanup255
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end261

for.end261:                                       ; preds = %cleanup255.for.end261_crit_edge, %if.end211.for.end261_crit_edge
  tail call void @sja1105_frame_memory_partitioning(ptr noundef %priv) #6
  br label %cleanup262

cleanup262:                                       ; preds = %for.end261, %if.end198.cleanup262_crit_edge, %if.end7.i.i485.cleanup262_crit_edge, %kcalloc.exit487.thread, %if.end7.i.i451.cleanup262_crit_edge, %kcalloc.exit453.thread, %for.end171.cleanup262_crit_edge, %if.end7.i.i.cleanup262_crit_edge, %kcalloc.exit.thread, %if.end67.cleanup262_crit_edge, %if.then28, %do.body25.cleanup262_crit_edge, %if.then19, %do.body.cleanup262_crit_edge
  %retval.0 = phi i32 [ 0, %for.end261 ], [ -28, %if.then19 ], [ -28, %do.body.cleanup262_crit_edge ], [ -28, %if.then28 ], [ -28, %do.body25.cleanup262_crit_edge ], [ 0, %if.end67.cleanup262_crit_edge ], [ -12, %if.end7.i.i.cleanup262_crit_edge ], [ 0, %for.end171.cleanup262_crit_edge ], [ -12, %if.end7.i.i451.cleanup262_crit_edge ], [ -12, %if.end7.i.i485.cleanup262_crit_edge ], [ -12, %if.end198.cleanup262_crit_edge ], [ -12, %kcalloc.exit.thread ], [ -12, %kcalloc.exit453.thread ], [ -12, %kcalloc.exit487.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_vl_delete(ptr noundef %priv, i32 noundef %port, ptr noundef %rule, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %port
  %neg = xor i32 %shl, -1
  %port_mask = getelementptr inbounds %struct.sja1105_rule, ptr %rule, i32 0, i32 2
  %0 = ptrtoint ptr %port_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_mask, align 4
  %and = and i32 %1, %neg
  store i32 %and, ptr %port_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rule) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %rule, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rule, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %rule to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %rule, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %rule, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %rule) #6
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  %call = tail call fastcc i32 @sja1105_compose_gating_subschedule(ptr noundef %priv, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @sja1105_init_virtual_links(ptr noundef %priv, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @sja1105_init_scheduling(ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 @sja1105_static_config_reload(ptr noundef %priv, i32 noundef 5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ %call, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_compose_gating_subschedule(ptr noundef %priv, ptr noundef writeonly %extack) unnamed_addr #0 align 64 {
entry:
  %remainder.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gating_cfg1 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 1
  %entries.i = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 1, i32 3
  %0 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entries.i, align 4
  %cmp.not18.i = icmp eq ptr %1, %entries.i
  br i1 %cmp.not18.i, label %entry.sja1105_free_gating_config.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.sja1105_free_gating_config.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sja1105_free_gating_config.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %e.019.i = phi ptr [ %n.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %e.019.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0.i = load ptr, ptr %e.019.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %e.019.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.019.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %e.019.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %e.019.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %e.019.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %e.019.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %e.019.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %e.019.i) #6
  %cmp.not.i = icmp eq ptr %n.0.i, %entries.i
  br i1 %cmp.not.i, label %list_del.exit.i.sja1105_free_gating_config.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

list_del.exit.i.sja1105_free_gating_config.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sja1105_free_gating_config.exit

sja1105_free_gating_config.exit:                  ; preds = %list_del.exit.i.sja1105_free_gating_config.exit_crit_edge, %entry.sja1105_free_gating_config.exit_crit_edge
  %flow_block = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 14
  %11 = ptrtoint ptr %flow_block to i32
  call void @__asan_load4_noabort(i32 %11)
  %rule.0184 = load ptr, ptr %flow_block, align 8
  %cmp.not185 = icmp eq ptr %rule.0184, %flow_block
  br i1 %cmp.not185, label %sja1105_free_gating_config.exit.cleanup82_crit_edge, label %sja1105_free_gating_config.exit.for.body_crit_edge

sja1105_free_gating_config.exit.for.body_crit_edge: ; preds = %sja1105_free_gating_config.exit
  br label %for.body

sja1105_free_gating_config.exit.cleanup82_crit_edge: ; preds = %sja1105_free_gating_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup82

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sja1105_free_gating_config.exit.for.body_crit_edge
  %rule.0188 = phi ptr [ %rule.0, %for.inc.for.body_crit_edge ], [ %rule.0184, %sja1105_free_gating_config.exit.for.body_crit_edge ]
  %max_cycle_time.0187 = phi i64 [ %max_cycle_time.1, %for.inc.for.body_crit_edge ], [ 0, %sja1105_free_gating_config.exit.for.body_crit_edge ]
  %its_base_time.0186 = phi i64 [ %its_base_time.1, %for.inc.for.body_crit_edge ], [ 0, %sja1105_free_gating_config.exit.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0188, i32 0, i32 4
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp4.not = icmp eq i32 %13, 2
  br i1 %cmp4.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %14 = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0188, i32 0, i32 5
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp6.not = icmp eq i32 %16, 2
  br i1 %cmp6.not, label %if.end8, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end8:                                          ; preds = %if.end
  %cycle_time = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0188, i32 0, i32 5, i32 0, i32 6
  %17 = ptrtoint ptr %cycle_time to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %cycle_time, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %max_cycle_time.0187, i64 %18)
  %cmp9 = icmp ult i64 %max_cycle_time.0187, %18
  br i1 %cmp9, label %if.then10, label %if.end8.for.inc_crit_edge

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %base_time = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0188, i32 0, i32 5, i32 0, i32 5
  %19 = ptrtoint ptr %base_time to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %base_time, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end8.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %its_base_time.1 = phi i64 [ %its_base_time.0186, %for.body.for.inc_crit_edge ], [ %its_base_time.0186, %if.end.for.inc_crit_edge ], [ %20, %if.then10 ], [ %its_base_time.0186, %if.end8.for.inc_crit_edge ]
  %max_cycle_time.1 = phi i64 [ %max_cycle_time.0187, %for.body.for.inc_crit_edge ], [ %max_cycle_time.0187, %if.end.for.inc_crit_edge ], [ %18, %if.then10 ], [ %max_cycle_time.0187, %if.end8.for.inc_crit_edge ]
  %21 = ptrtoint ptr %rule.0188 to i32
  call void @__asan_load4_noabort(i32 %21)
  %rule.0 = load ptr, ptr %rule.0188, align 8
  %cmp.not = icmp eq ptr %rule.0, %flow_block
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %max_cycle_time.1)
  %tobool.not = icmp eq i64 %max_cycle_time.1, 0
  br i1 %tobool.not, label %for.end.cleanup82_crit_edge, label %do.body

for.end.cleanup82_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup82

do.body:                                          ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sja1105_compose_gating_subschedule.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sja1105_compose_gating_subschedule, %if.then25)) #6
          to label %do.end [label %if.then25], !srcloc !52

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %ds = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 11
  %22 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ds, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sja1105_compose_gating_subschedule.__UNIQUE_ID_ddebug520, ptr noundef %25, ptr noundef nonnull @.str.15, i64 noundef %max_cycle_time.1, i64 noundef %its_base_time.1) #6
  br label %do.end

do.end:                                           ; preds = %if.then25, %do.body
  %base_time27 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 1, i32 1
  %26 = ptrtoint ptr %base_time27 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %its_base_time.1, ptr %base_time27, align 8
  %27 = ptrtoint ptr %gating_cfg1 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %max_cycle_time.1, ptr %gating_cfg1, align 8
  %num_entries = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 1, i32 2
  %28 = ptrtoint ptr %num_entries to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %num_entries, align 8
  %29 = ptrtoint ptr %flow_block to i32
  call void @__asan_load4_noabort(i32 %29)
  %rule.1204 = load ptr, ptr %flow_block, align 8
  %cmp39.not205 = icmp eq ptr %rule.1204, %flow_block
  br i1 %cmp39.not205, label %do.end.for.end81_crit_edge, label %for.body42.lr.ph

do.end.for.end81_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end81

for.body42.lr.ph:                                 ; preds = %do.end
  %prev1.i.i.i = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 1, i32 3, i32 1
  %tobool14.not.i = icmp eq ptr %extack, null
  br label %for.body42

for.body42:                                       ; preds = %for.inc75.for.body42_crit_edge, %for.body42.lr.ph
  %rule.1207 = phi ptr [ %rule.1204, %for.body42.lr.ph ], [ %rule.1, %for.inc75.for.body42_crit_edge ]
  %type43 = getelementptr inbounds %struct.sja1105_rule, ptr %rule.1207, i32 0, i32 4
  %30 = ptrtoint ptr %type43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type43, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp44.not = icmp eq i32 %31, 2
  br i1 %cmp44.not, label %if.end46, label %for.body42.for.inc75_crit_edge

for.body42.for.inc75_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc75

if.end46:                                         ; preds = %for.body42
  %32 = getelementptr inbounds %struct.sja1105_rule, ptr %rule.1207, i32 0, i32 5
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp48.not = icmp eq i32 %34, 2
  br i1 %cmp48.not, label %if.end50, label %if.end46.for.inc75_crit_edge

if.end46.for.inc75_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc75

if.end50:                                         ; preds = %if.end46
  %base_time51 = getelementptr inbounds %struct.sja1105_rule, ptr %rule.1207, i32 0, i32 5, i32 0, i32 5
  %35 = ptrtoint ptr %base_time51 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %base_time51, align 8
  %cycle_time52 = getelementptr inbounds %struct.sja1105_rule, ptr %rule.1207, i32 0, i32 5, i32 0, i32 6
  call void @__sanitizer_cov_trace_cmp8(i64 %its_base_time.1, i64 %36)
  %cmp.not.i133 = icmp sgt i64 %its_base_time.1, %36
  br i1 %cmp.not.i133, label %if.end.i, label %if.end50.future_base_time.exit_crit_edge

if.end50.future_base_time.exit_crit_edge:         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %future_base_time.exit

if.end.i:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %cycle_time52 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %cycle_time52, align 8
  %sub.i = xor i64 %36, -1
  %add.i = add i64 %its_base_time.1, %sub.i
  %sub1.i = add i64 %add.i, %38
  %conv.i = trunc i64 %38 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #6
  %39 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !53
  %call.i.i = call i64 @div_s64_rem(i64 noundef %sub1.i, i32 noundef %conv.i, ptr noundef nonnull %remainder.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #6
  %mul.i = mul i64 %call.i.i, %38
  %add2.i = add i64 %mul.i, %36
  br label %future_base_time.exit

future_base_time.exit:                            ; preds = %if.end.i, %if.end50.future_base_time.exit_crit_edge
  %retval.0.i134 = phi i64 [ %add2.i, %if.end.i ], [ %36, %if.end50.future_base_time.exit_crit_edge ]
  %num_entries55 = getelementptr inbounds %struct.sja1105_rule, ptr %rule.1207, i32 0, i32 5, i32 0, i32 7
  %40 = ptrtoint ptr %num_entries55 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_entries55, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp56197 = icmp sgt i32 %41, 0
  br i1 %cmp56197, label %for.body57.lr.ph, label %future_base_time.exit.for.inc75_crit_edge

future_base_time.exit.for.inc75_crit_edge:        ; preds = %future_base_time.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc75

for.body57.lr.ph:                                 ; preds = %future_base_time.exit
  %sub = sub i64 %retval.0.i134, %its_base_time.1
  %entries = getelementptr inbounds %struct.sja1105_rule, ptr %rule.1207, i32 0, i32 5, i32 0, i32 8
  br label %for.body57

for.body57:                                       ; preds = %for.inc69.for.body57_crit_edge, %for.body57.lr.ph
  %time.0201 = phi i64 [ %sub, %for.body57.lr.ph ], [ %add67, %for.inc69.for.body57_crit_edge ]
  %i.0199 = phi i32 [ 0, %for.body57.lr.ph ], [ %inc, %for.inc69.for.body57_crit_edge ]
  %42 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %entries, align 4
  %arrayidx = getelementptr %struct.action_gate_entry, ptr %43, i32 %i.0199
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %time.0201, i64 %max_cycle_time.1)
  %cmp59190 = icmp slt i64 %time.0201, %max_cycle_time.1
  br i1 %cmp59190, label %for.body57.while.body_crit_edge, label %for.body57.for.inc69_crit_edge

for.body57.for.inc69_crit_edge:                   ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc69

for.body57.while.body_crit_edge:                  ; preds = %for.body57
  br label %while.body

while.body:                                       ; preds = %if.end63.while.body_crit_edge, %for.body57.while.body_crit_edge
  %entry_time.0191 = phi i64 [ %add, %if.end63.while.body_crit_edge ], [ %time.0201, %for.body57.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3520, i32 noundef 32) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %while.body.err_crit_edge, label %if.end.i136

while.body.err_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end.i136:                                      ; preds = %while.body
  %rule1.i = getelementptr inbounds %struct.sja1105_gate_entry, ptr %call7.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %rule1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %rule.1207, ptr %rule1.i, align 8
  %gate_state2.i = getelementptr inbounds %struct.sja1105_gate_entry, ptr %call7.i.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %gate_state2.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %45, ptr %gate_state2.i, align 8
  %interval.i = getelementptr inbounds %struct.sja1105_gate_entry, ptr %call7.i.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %interval.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %entry_time.0191, ptr %interval.i, align 8
  %50 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %entries.i, align 4
  %cmp.i.not.i = icmp eq ptr %51, %entries.i
  br i1 %cmp.i.not.i, label %if.then5.i, label %if.end.i136.for.cond.i_crit_edge

if.end.i136.for.cond.i_crit_edge:                 ; preds = %if.end.i136
  br label %for.cond.i

if.then5.i:                                       ; preds = %if.end.i136
  %call.i.i.i137 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %entries.i, ptr noundef %entries.i) #6
  br i1 %call.i.i.i137, label %if.then5.i.if.end30.sink.split.i_crit_edge, label %if.then5.i.if.end63_crit_edge

if.then5.i.if.end63_crit_edge:                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then5.i.if.end30.sink.split.i_crit_edge:       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.sink.split.i

for.cond.i:                                       ; preds = %if.end17.i.for.cond.i_crit_edge, %if.end.i136.for.cond.i_crit_edge
  %p.0.in.i = phi ptr [ %p.0.i, %if.end17.i.for.cond.i_crit_edge ], [ %entries.i, %if.end.i136.for.cond.i_crit_edge ]
  %52 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %p.0.i = load ptr, ptr %p.0.in.i, align 4
  %cmp.not.i139 = icmp eq ptr %p.0.i, %entries.i
  br i1 %cmp.not.i139, label %for.cond.i.for.end.i_crit_edge, label %for.body.i140

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i140:                                    ; preds = %for.cond.i
  %interval10.i = getelementptr inbounds %struct.sja1105_gate_entry, ptr %p.0.i, i32 0, i32 2
  %53 = ptrtoint ptr %interval10.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %interval10.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %54, i64 %entry_time.0191)
  %cmp12.i = icmp eq i64 %54, %entry_time.0191
  br i1 %cmp12.i, label %do.body.i, label %if.end17.i

do.body.i:                                        ; preds = %for.body.i140
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_insert_gate_entry.__msg) #6
  br i1 %tobool14.not.i, label %do.body.i.err.loopexit208_crit_edge, label %if.then15.i

do.body.i.err.loopexit208_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err.loopexit208

if.then15.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @sja1105_insert_gate_entry.__msg, ptr %extack, align 4
  br label %err.loopexit208

if.end17.i:                                       ; preds = %for.body.i140
  %cmp20.i = icmp sgt i64 %54, %entry_time.0191
  br i1 %cmp20.i, label %if.end17.i.for.end.i_crit_edge, label %if.end17.i.for.cond.i_crit_edge

if.end17.i.for.cond.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

if.end17.i.for.end.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %if.end17.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %p.0.lcssa.i = phi ptr [ %p.0.i, %if.end17.i.for.end.i_crit_edge ], [ %entries.i, %for.cond.i.for.end.i_crit_edge ]
  %prev.i = getelementptr inbounds %struct.list_head, ptr %p.0.lcssa.i, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %call.i.i51.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %57, ptr noundef %59) #6
  br i1 %call.i.i51.i, label %if.end.i.i54.i, label %for.end.i.if.end63_crit_edge

for.end.i.if.end63_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.end.i.i54.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i52.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  br label %if.end30.sink.split.i

if.end30.sink.split.i:                            ; preds = %if.end.i.i54.i, %if.then5.i.if.end30.sink.split.i_crit_edge
  %prev1.i.i52.sink.i = phi ptr [ %prev1.i.i52.i, %if.end.i.i54.i ], [ %prev1.i.i.i, %if.then5.i.if.end30.sink.split.i_crit_edge ]
  %.sink61.i = phi ptr [ %59, %if.end.i.i54.i ], [ %entries.i, %if.then5.i.if.end30.sink.split.i_crit_edge ]
  %.sink60.i = phi ptr [ %57, %if.end.i.i54.i ], [ %entries.i, %if.then5.i.if.end30.sink.split.i_crit_edge ]
  %60 = ptrtoint ptr %prev1.i.i52.sink.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call7.i.i.i, ptr %prev1.i.i52.sink.i, align 4
  %61 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %.sink61.i, ptr %call7.i.i.i, align 8
  %prev3.i.i53.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %prev3.i.i53.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %.sink60.i, ptr %prev3.i.i53.i, align 4
  %63 = ptrtoint ptr %.sink60.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %call7.i.i.i, ptr %.sink60.i, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.end30.sink.split.i, %for.end.i.if.end63_crit_edge, %if.then5.i.if.end63_crit_edge
  %64 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_entries, align 8
  %inc.i = add i32 %65, 1
  store i32 %inc.i, ptr %num_entries, align 8
  %66 = ptrtoint ptr %cycle_time52 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %cycle_time52, align 8
  %add = add i64 %67, %entry_time.0191
  %cmp59 = icmp slt i64 %add, %max_cycle_time.1
  br i1 %cmp59, label %if.end63.while.body_crit_edge, label %if.end63.for.inc69_crit_edge

if.end63.for.inc69_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc69

if.end63.while.body_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

for.inc69:                                        ; preds = %if.end63.for.inc69_crit_edge, %for.body57.for.inc69_crit_edge
  %68 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %entries, align 4
  %interval = getelementptr %struct.action_gate_entry, ptr %69, i32 %i.0199, i32 1
  %70 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %interval, align 4
  %conv = zext i32 %71 to i64
  %add67 = add i64 %time.0201, %conv
  %inc = add nuw nsw i32 %i.0199, 1
  %72 = ptrtoint ptr %num_entries55 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_entries55, align 8
  %cmp56 = icmp slt i32 %inc, %73
  br i1 %cmp56, label %for.inc69.for.body57_crit_edge, label %for.inc69.for.inc75_crit_edge

for.inc69.for.inc75_crit_edge:                    ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc75

for.inc69.for.body57_crit_edge:                   ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body57

for.inc75:                                        ; preds = %for.inc69.for.inc75_crit_edge, %future_base_time.exit.for.inc75_crit_edge, %if.end46.for.inc75_crit_edge, %for.body42.for.inc75_crit_edge
  %74 = ptrtoint ptr %rule.1207 to i32
  call void @__asan_load4_noabort(i32 %74)
  %rule.1 = load ptr, ptr %rule.1207, align 8
  %cmp39.not = icmp eq ptr %rule.1, %flow_block
  br i1 %cmp39.not, label %for.inc75.for.end81_crit_edge, label %for.inc75.for.body42_crit_edge

for.inc75.for.body42_crit_edge:                   ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body42

for.inc75.for.end81_crit_edge:                    ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end81

for.end81:                                        ; preds = %for.inc75.for.end81_crit_edge, %do.end.for.end81_crit_edge
  %75 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %e.033.i = load ptr, ptr %entries.i, align 4
  %cmp.not34.i = icmp eq ptr %e.033.i, %entries.i
  br i1 %cmp.not34.i, label %for.end81.sja1105_gating_cfg_time_to_interval.exit_crit_edge, label %for.end81.for.body.i143_crit_edge

for.end81.for.body.i143_crit_edge:                ; preds = %for.end81
  br label %for.body.i143

for.end81.sja1105_gating_cfg_time_to_interval.exit_crit_edge: ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %sja1105_gating_cfg_time_to_interval.exit

for.body.i143:                                    ; preds = %cleanup.i.for.body.i143_crit_edge, %for.end81.for.body.i143_crit_edge
  %e.035.i = phi ptr [ %e.0.i, %cleanup.i.for.body.i143_crit_edge ], [ %e.033.i, %for.end81.for.body.i143_crit_edge ]
  %prev3.i = getelementptr inbounds %struct.list_head, ptr %e.035.i, i32 0, i32 1
  %76 = ptrtoint ptr %prev3.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev3.i, align 4
  %cmp5.i = icmp eq ptr %77, %entries.i
  br i1 %cmp5.i, label %for.body.i143.cleanup.i_crit_edge, label %if.end.i146

for.body.i143.cleanup.i_crit_edge:                ; preds = %for.body.i143
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end.i146:                                      ; preds = %for.body.i143
  call void @__sanitizer_cov_trace_pc() #8
  %interval.i144 = getelementptr inbounds %struct.sja1105_gate_entry, ptr %e.035.i, i32 0, i32 2
  %78 = ptrtoint ptr %interval.i144 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %interval.i144, align 8
  %interval9.i = getelementptr inbounds %struct.sja1105_gate_entry, ptr %77, i32 0, i32 2
  %80 = ptrtoint ptr %interval9.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %interval9.i, align 8
  %sub.i145 = sub i64 %79, %81
  store i64 %sub.i145, ptr %interval9.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i146, %for.body.i143.cleanup.i_crit_edge
  %82 = ptrtoint ptr %e.035.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %e.0.i = load ptr, ptr %e.035.i, align 4
  %cmp.not.i147 = icmp eq ptr %e.0.i, %entries.i
  br i1 %cmp.not.i147, label %cleanup.i.sja1105_gating_cfg_time_to_interval.exit_crit_edge, label %cleanup.i.for.body.i143_crit_edge

cleanup.i.for.body.i143_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i143

cleanup.i.sja1105_gating_cfg_time_to_interval.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sja1105_gating_cfg_time_to_interval.exit

sja1105_gating_cfg_time_to_interval.exit:         ; preds = %cleanup.i.sja1105_gating_cfg_time_to_interval.exit_crit_edge, %for.end81.sja1105_gating_cfg_time_to_interval.exit_crit_edge
  %prev18.i = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 26, i32 1, i32 3, i32 1
  %83 = ptrtoint ptr %prev18.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev18.i, align 4
  %interval21.i = getelementptr inbounds %struct.sja1105_gate_entry, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %interval21.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %interval21.i, align 8
  %sub22.i = sub i64 %max_cycle_time.1, %86
  store i64 %sub22.i, ptr %interval21.i, align 8
  br label %cleanup82

err.loopexit208:                                  ; preds = %if.then15.i, %do.body.i.err.loopexit208_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %err

err:                                              ; preds = %err.loopexit208, %while.body.err_crit_edge
  %rc.4 = phi i32 [ -16, %err.loopexit208 ], [ -12, %while.body.err_crit_edge ]
  %87 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %entries.i, align 4
  %cmp.not18.i150 = icmp eq ptr %88, %entries.i
  br i1 %cmp.not18.i150, label %err.cleanup82_crit_edge, label %err.for.body.i154_crit_edge

err.for.body.i154_crit_edge:                      ; preds = %err
  br label %for.body.i154

err.cleanup82_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup82

for.body.i154:                                    ; preds = %list_del.exit.i160.for.body.i154_crit_edge, %err.for.body.i154_crit_edge
  %e.019.i151 = phi ptr [ %n.0.i152, %list_del.exit.i160.for.body.i154_crit_edge ], [ %88, %err.for.body.i154_crit_edge ]
  %89 = ptrtoint ptr %e.019.i151 to i32
  call void @__asan_load4_noabort(i32 %89)
  %n.0.i152 = load ptr, ptr %e.019.i151, align 8
  %call.i.i.i153 = call zeroext i1 @__list_del_entry_valid(ptr noundef %e.019.i151) #6
  br i1 %call.i.i.i153, label %if.end.i.i.i157, label %for.body.i154.list_del.exit.i160_crit_edge

for.body.i154.list_del.exit.i160_crit_edge:       ; preds = %for.body.i154
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i160

if.end.i.i.i157:                                  ; preds = %for.body.i154
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i155 = getelementptr inbounds %struct.list_head, ptr %e.019.i151, i32 0, i32 1
  %90 = ptrtoint ptr %prev.i.i.i155 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %prev.i.i.i155, align 4
  %92 = ptrtoint ptr %e.019.i151 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %e.019.i151, align 4
  %prev1.i.i.i.i156 = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %prev1.i.i.i.i156 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %prev1.i.i.i.i156, align 4
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %93, ptr %91, align 4
  br label %list_del.exit.i160

list_del.exit.i160:                               ; preds = %if.end.i.i.i157, %for.body.i154.list_del.exit.i160_crit_edge
  %96 = ptrtoint ptr %e.019.i151 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 256 to ptr), ptr %e.019.i151, align 4
  %prev.i.i158 = getelementptr inbounds %struct.list_head, ptr %e.019.i151, i32 0, i32 1
  %97 = ptrtoint ptr %prev.i.i158 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i158, align 4
  call void @kfree(ptr noundef %e.019.i151) #6
  %cmp.not.i159 = icmp eq ptr %n.0.i152, %entries.i
  br i1 %cmp.not.i159, label %list_del.exit.i160.cleanup82_crit_edge, label %list_del.exit.i160.for.body.i154_crit_edge

list_del.exit.i160.for.body.i154_crit_edge:       ; preds = %list_del.exit.i160
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i154

list_del.exit.i160.cleanup82_crit_edge:           ; preds = %list_del.exit.i160
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup82

cleanup82:                                        ; preds = %list_del.exit.i160.cleanup82_crit_edge, %err.cleanup82_crit_edge, %sja1105_gating_cfg_time_to_interval.exit, %for.end.cleanup82_crit_edge, %sja1105_free_gating_config.exit.cleanup82_crit_edge
  %retval.0 = phi i32 [ 0, %sja1105_gating_cfg_time_to_interval.exit ], [ 0, %for.end.cleanup82_crit_edge ], [ %rc.4, %err.cleanup82_crit_edge ], [ 0, %sja1105_free_gating_config.exit.cleanup82_crit_edge ], [ %rc.4, %list_del.exit.i160.cleanup82_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_init_scheduling(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_static_config_reload(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_vl_gate(ptr noundef %priv, i32 noundef %port, ptr noundef %extack, i32 noundef %cookie, ptr nocapture noundef readonly %key, i32 noundef %index, i32 noundef %prio, i64 noundef %base_time, i64 noundef %cycle_time, i64 noundef %cycle_time_ext, i32 noundef %num_entries, ptr nocapture noundef readonly %entries) local_unnamed_addr #0 align 64 {
entry:
  %remainder.i.i = alloca i32, align 4
  %rem = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sja1105_rule_find(ptr noundef %priv, i32 noundef %cookie) #6
  %ds = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds, align 8
  %dst1.i = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dst1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst1.i, align 4
  %ports.i = getelementptr inbounds %struct.dsa_switch_tree, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn20.i = load ptr, ptr %ports.i, align 4
  %cmp.not21.i = icmp eq ptr %.pn20.i, %ports.i
  br i1 %cmp.not21.i, label %entry.dsa_to_port.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.dsa_to_port.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn20.i, %entry.for.body.i_crit_edge ]
  %ds3.i = getelementptr i8, ptr %.pn22.i, i32 -432
  %5 = ptrtoint ptr %ds3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ds3.i, align 4
  %cmp4.i = icmp eq ptr %6, %1
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %index.i = getelementptr i8, ptr %.pn22.i, i32 -428
  %7 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %port)
  %cmp5.i = icmp eq i32 %8, %port
  br i1 %cmp5.i, label %cleanup.split.loop.exit18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %9 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %ports.i
  br i1 %cmp.not.i, label %for.inc.i.dsa_to_port.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.dsa_to_port.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsa_to_port.exit

cleanup.split.loop.exit18.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %dp.0.le.i = getelementptr i8, ptr %.pn22.i, i32 -448
  br label %dsa_to_port.exit

dsa_to_port.exit:                                 ; preds = %cleanup.split.loop.exit18.i, %for.inc.i.dsa_to_port.exit_crit_edge, %entry.dsa_to_port.exit_crit_edge
  %retval.0.i = phi ptr [ %dp.0.le.i, %cleanup.split.loop.exit18.i ], [ null, %entry.dsa_to_port.exit_crit_edge ], [ null, %for.inc.i.dsa_to_port.exit_crit_edge ]
  %ds1.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 4
  %10 = ptrtoint ptr %ds1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ds1.i, align 4
  %vlan_filtering_is_global.i = getelementptr inbounds %struct.dsa_switch, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %vlan_filtering_is_global.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load.i = load i16, ptr %vlan_filtering_is_global.i, align 4
  %13 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  %14 = and i16 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool6.i = icmp ne i16 %14, 0
  br label %dsa_port_is_vlan_filtering.exit

if.else.i:                                        ; preds = %dsa_to_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  %vlan_filtering7.i = getelementptr inbounds %struct.dsa_port, ptr %retval.0.i, i32 0, i32 11
  %15 = ptrtoint ptr %vlan_filtering7.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load8.i = load i8, ptr %vlan_filtering7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load8.i)
  %tobool10.i = icmp slt i8 %bf.load8.i, 0
  br label %dsa_port_is_vlan_filtering.exit

dsa_port_is_vlan_filtering.exit:                  ; preds = %if.else.i, %if.then.i
  %retval.0.i295 = phi i1 [ %tobool6.i, %if.then.i ], [ %tobool10.i, %if.else.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rem) #6
  %16 = ptrtoint ptr %rem to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %rem, align 4, !annotation !53
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cycle_time_ext)
  %tobool.not = icmp eq i64 %cycle_time_ext, 0
  br i1 %tobool.not, label %if.end5, label %do.body

do.body:                                          ; preds = %dsa_port_is_vlan_filtering.exit
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_vl_gate.__msg) #6
  %tobool3.not = icmp eq ptr %extack, null
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sja1105_vl_gate.__msg, ptr %extack, align 4
  br label %cleanup

if.end5:                                          ; preds = %dsa_port_is_vlan_filtering.exit
  %call7 = call i64 @div_s64_rem(i64 noundef %base_time, i32 noundef 200, ptr noundef nonnull %rem) #6
  %18 = ptrtoint ptr %rem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool8.not = icmp eq i32 %19, 0
  br i1 %tobool8.not, label %if.end18, label %do.body10

do.body10:                                        ; preds = %if.end5
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_vl_gate.__msg.2) #6
  %tobool12.not = icmp eq ptr %extack, null
  br i1 %tobool12.not, label %do.body10.cleanup_crit_edge, label %if.then13

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @sja1105_vl_gate.__msg.2, ptr %extack, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end5
  %call21 = call i64 @div_s64_rem(i64 noundef %cycle_time, i32 noundef 200, ptr noundef nonnull %rem) #6
  %21 = ptrtoint ptr %rem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool22.not = icmp eq i32 %22, 0
  br i1 %tobool22.not, label %if.end32, label %do.body24

do.body24:                                        ; preds = %if.end18
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_vl_gate.__msg.3) #6
  %tobool26.not = icmp eq ptr %extack, null
  br i1 %tobool26.not, label %do.body24.cleanup_crit_edge, label %if.then27

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @sja1105_vl_gate.__msg.3, ptr %extack, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.end18
  %24 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %key, align 8
  br i1 %retval.0.i295, label %land.lhs.true46.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp.not = icmp eq i32 %25, 2
  br i1 %cmp.not, label %land.lhs.true.if.end60_crit_edge, label %do.body36

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

do.body36:                                        ; preds = %land.lhs.true
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_vl_gate.__msg.4) #6
  %tobool38.not = icmp eq ptr %extack, null
  br i1 %tobool38.not, label %do.body36.cleanup_crit_edge, label %if.then39

do.body36.cleanup_crit_edge:                      ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then39:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @sja1105_vl_gate.__msg.4, ptr %extack, align 4
  br label %cleanup

land.lhs.true46.critedge:                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp48.not = icmp eq i32 %25, 3
  br i1 %cmp48.not, label %land.lhs.true46.critedge.if.end60_crit_edge, label %do.body51

land.lhs.true46.critedge.if.end60_crit_edge:      ; preds = %land.lhs.true46.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

do.body51:                                        ; preds = %land.lhs.true46.critedge
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_vl_gate.__msg.5) #6
  %tobool53.not = icmp eq ptr %extack, null
  br i1 %tobool53.not, label %do.body51.cleanup_crit_edge, label %if.then54

do.body51.cleanup_crit_edge:                      ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then54:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @sja1105_vl_gate.__msg.5, ptr %extack, align 4
  br label %cleanup

if.end60:                                         ; preds = %land.lhs.true46.critedge.if.end60_crit_edge, %land.lhs.true.if.end60_crit_edge
  %tobool61.not = icmp eq ptr %call, null
  br i1 %tobool61.not, label %if.then62, label %if.end60.if.end175_crit_edge

if.end60.if.end175_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end175

if.then62:                                        ; preds = %if.end60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 136) #9
  %tobool64.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool64.not, label %if.then62.cleanup_crit_edge, label %if.end66

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end66:                                         ; preds = %if.then62
  %flow_block = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 14
  %29 = ptrtoint ptr %flow_block to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %flow_block, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %flow_block, ptr noundef %30) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end66.list_add.exit_crit_edge

if.end66.list_add.exit_crit_edge:                 ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %flow_block, ptr %prev3.i.i, align 4
  %34 = ptrtoint ptr %flow_block to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call7.i.i, ptr %flow_block, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end66.list_add.exit_crit_edge
  %cookie67 = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %cookie67 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cookie, ptr %cookie67, align 8
  %type68 = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %type68 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %type68, align 8
  %key69 = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i, i32 0, i32 3
  %37 = call ptr @memcpy(ptr %key69, ptr %key, i32 24)
  %38 = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %38, align 8
  %sharindx = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %40 = ptrtoint ptr %sharindx to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %index, ptr %sharindx, align 8
  %base_time71 = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 5
  %41 = ptrtoint ptr %base_time71 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %base_time, ptr %base_time71, align 8
  %cycle_time72 = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 6
  %42 = ptrtoint ptr %cycle_time72 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %cycle_time, ptr %cycle_time72, align 8
  %num_entries73 = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 7
  %43 = ptrtoint ptr %num_entries73 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %num_entries, ptr %num_entries73, align 8
  %44 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_entries, i32 16) #6
  %45 = extractvalue { i32, i1 } %44, 1
  br i1 %45, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !51

kcalloc.exit.thread:                              ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  %entries75301 = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 8
  %46 = ptrtoint ptr %entries75301 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %entries75301, align 4
  br label %if.then196

if.end7.i.i:                                      ; preds = %list_add.exit
  %47 = extractvalue { i32, i1 } %44, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %47, i32 noundef 3520) #10
  %entries75 = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 8
  %48 = ptrtoint ptr %entries75 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call8.i.i, ptr %entries75, align 4
  %tobool77.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool77.not, label %if.end7.i.i.if.then196_crit_edge, label %for.cond.preheader

if.end7.i.i.if.then196_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then196

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_entries)
  %cmp80314.not = icmp eq i32 %num_entries, 0
  br i1 %cmp80314.not, label %for.cond.preheader.if.then165_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.then165_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then165

for.body:                                         ; preds = %if.end159.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0316 = phi i32 [ %inc, %if.end159.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %ipv.0315 = phi i32 [ %ipv.1, %if.end159.for.body_crit_edge ], [ -1, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.action_gate_entry, ptr %entries, i32 %i.0316
  %interval = getelementptr %struct.action_gate_entry, ptr %entries, i32 %i.0316, i32 1
  %49 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %interval, align 4
  %conv82 = zext i32 %50 to i64
  %call85 = call i64 @div_s64_rem(i64 noundef %conv82, i32 noundef 200, ptr noundef nonnull %rem) #6
  %51 = ptrtoint ptr %rem to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool86.not = icmp eq i32 %52, 0
  br i1 %tobool86.not, label %if.end96, label %do.body88

do.body88:                                        ; preds = %for.body
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_vl_gate.__msg.6) #6
  %tobool90.not = icmp eq ptr %extack, null
  br i1 %tobool90.not, label %do.body88.if.then196_crit_edge, label %if.then91

do.body88.if.then196_crit_edge:                   ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then196

if.then91:                                        ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @sja1105_vl_gate.__msg.6, ptr %extack, align 4
  br label %if.then196

if.end96:                                         ; preds = %for.body
  %54 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool99.not = icmp eq i32 %55, 0
  br i1 %tobool99.not, label %do.body101, label %if.end109

do.body101:                                       ; preds = %if.end96
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_vl_gate.__msg.7) #6
  %tobool103.not = icmp eq ptr %extack, null
  br i1 %tobool103.not, label %do.body101.if.then196_crit_edge, label %if.then104

do.body101.if.then196_crit_edge:                  ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then196

if.then104:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @sja1105_vl_gate.__msg.7, ptr %extack, align 4
  br label %if.then196

if.end109:                                        ; preds = %if.end96
  %conv112 = zext i32 %55 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #6
  %57 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !53
  %call.i.i297 = call i64 @div_s64_rem(i64 noundef %conv112, i32 noundef 200, ptr noundef nonnull %remainder.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 262144, i64 %call.i.i297)
  %cmp114 = icmp sgt i64 %call.i.i297, 262144
  br i1 %cmp114, label %do.body117, label %if.end125

do.body117:                                       ; preds = %if.end109
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_vl_gate.__msg.8) #6
  %tobool119.not = icmp eq ptr %extack, null
  br i1 %tobool119.not, label %do.body117.if.then196_crit_edge, label %if.then120

do.body117.if.then196_crit_edge:                  ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then196

if.then120:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @sja1105_vl_gate.__msg.8, ptr %extack, align 4
  br label %if.then196

if.end125:                                        ; preds = %if.end109
  %maxoctets = getelementptr %struct.action_gate_entry, ptr %entries, i32 %i.0316, i32 3
  %59 = ptrtoint ptr %maxoctets to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %maxoctets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %cmp127.not = icmp eq i32 %60, -1
  br i1 %cmp127.not, label %if.end138, label %do.body130

do.body130:                                       ; preds = %if.end125
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_vl_gate.__msg.9) #6
  %tobool132.not = icmp eq ptr %extack, null
  br i1 %tobool132.not, label %do.body130.if.then196_crit_edge, label %if.then133

do.body130.if.then196_crit_edge:                  ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then196

if.then133:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @sja1105_vl_gate.__msg.9, ptr %extack, align 4
  br label %if.then196

if.end138:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ipv.0315)
  %cmp139 = icmp eq i32 %ipv.0315, -1
  %ipv143 = getelementptr %struct.action_gate_entry, ptr %entries, i32 %i.0316, i32 2
  %62 = ptrtoint ptr %ipv143 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ipv143, align 4
  br i1 %cmp139, label %if.end138.if.end159_crit_edge, label %if.else144

if.end138.if.end159_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159

if.else144:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_cmp4(i32 %ipv.0315, i32 %63)
  %cmp147.not = icmp eq i32 %ipv.0315, %63
  br i1 %cmp147.not, label %if.else144.if.end159_crit_edge, label %do.body150

if.else144.if.end159_crit_edge:                   ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159

do.body150:                                       ; preds = %if.else144
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_vl_gate.__msg.10) #6
  %tobool152.not = icmp eq ptr %extack, null
  br i1 %tobool152.not, label %do.body150.if.then196_crit_edge, label %if.then153

do.body150.if.then196_crit_edge:                  ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then196

if.then153:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @sja1105_vl_gate.__msg.10, ptr %extack, align 4
  br label %if.then196

if.end159:                                        ; preds = %if.else144.if.end159_crit_edge, %if.end138.if.end159_crit_edge
  %ipv.1 = phi i32 [ %ipv.0315, %if.else144.if.end159_crit_edge ], [ %63, %if.end138.if.end159_crit_edge ]
  %65 = ptrtoint ptr %entries75 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %entries75, align 4
  %arrayidx161 = getelementptr %struct.action_gate_entry, ptr %66, i32 %i.0316
  %67 = call ptr @memcpy(ptr %arrayidx161, ptr %arrayidx, i32 16)
  %inc = add nuw i32 %i.0316, 1
  %exitcond.not = icmp eq i32 %inc, %num_entries
  br i1 %exitcond.not, label %for.end, label %if.end159.for.body_crit_edge

if.end159.for.body_crit_edge:                     ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end159
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ipv.1)
  %cmp163 = icmp eq i32 %ipv.1, -1
  br i1 %cmp163, label %for.end.if.then165_crit_edge, label %for.end.if.end173_crit_edge

for.end.if.end173_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end173

for.end.if.then165_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then165

if.then165:                                       ; preds = %for.end.if.then165_crit_edge, %for.cond.preheader.if.then165_crit_edge
  %68 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %key, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %69)
  %cmp167 = icmp eq i32 %69, 3
  br i1 %cmp167, label %if.then169, label %if.then165.if.end173_crit_edge

if.then165.if.end173_crit_edge:                   ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end173

if.then169:                                       ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #8
  %pcp = getelementptr inbounds %struct.sja1105_key, ptr %key, i32 0, i32 1, i32 0, i32 2
  %70 = ptrtoint ptr %pcp to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %pcp, align 2
  %conv170 = zext i16 %71 to i32
  br label %if.end173

if.end173:                                        ; preds = %if.then169, %if.then165.if.end173_crit_edge, %for.end.if.end173_crit_edge
  %ipv.2 = phi i32 [ %conv170, %if.then169 ], [ %ipv.1, %for.end.if.end173_crit_edge ], [ 0, %if.then165.if.end173_crit_edge ]
  %maxlen = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 3
  %72 = ptrtoint ptr %maxlen to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1522, ptr %maxlen, align 4
  %ipv174 = getelementptr inbounds %struct.sja1105_rule, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 4
  %73 = ptrtoint ptr %ipv174 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %ipv.2, ptr %ipv174, align 8
  br label %if.end175

if.end175:                                        ; preds = %if.end173, %if.end60.if.end175_crit_edge
  %rule.0 = phi ptr [ %call, %if.end60.if.end175_crit_edge ], [ %call7.i.i, %if.end173 ]
  %shl = shl nuw i32 1, %port
  %port_mask = getelementptr inbounds %struct.sja1105_rule, ptr %rule.0, i32 0, i32 2
  %74 = ptrtoint ptr %port_mask to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port_mask, align 4
  %or = or i32 %75, %shl
  store i32 %or, ptr %port_mask, align 4
  %call176 = call fastcc i32 @sja1105_compose_gating_subschedule(ptr noundef %priv, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.end179, label %if.end175.if.then196_crit_edge

if.end175.if.then196_crit_edge:                   ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then196

if.end179:                                        ; preds = %if.end175
  %call180 = call fastcc i32 @sja1105_init_virtual_links(ptr noundef %priv, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.end183, label %if.end179.if.then196_crit_edge

if.end179.if.then196_crit_edge:                   ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then196

if.end183:                                        ; preds = %if.end179
  %call184 = call zeroext i1 @sja1105_gating_check_conflicts(ptr noundef %priv, i32 noundef -1, ptr noundef %extack) #6
  br i1 %call184, label %do.body186, label %if.end183.cleanup_crit_edge

if.end183.cleanup_crit_edge:                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body186:                                       ; preds = %if.end183
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_vl_gate.__msg.11) #6
  %tobool188.not = icmp eq ptr %extack, null
  br i1 %tobool188.not, label %do.body186.if.then196_crit_edge, label %if.then189

do.body186.if.then196_crit_edge:                  ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then196

if.then189:                                       ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @sja1105_vl_gate.__msg.11, ptr %extack, align 4
  br label %if.then196

if.then196:                                       ; preds = %if.then189, %do.body186.if.then196_crit_edge, %if.end179.if.then196_crit_edge, %if.end175.if.then196_crit_edge, %if.then153, %do.body150.if.then196_crit_edge, %if.then133, %do.body130.if.then196_crit_edge, %if.then120, %do.body117.if.then196_crit_edge, %if.then104, %do.body101.if.then196_crit_edge, %if.then91, %do.body88.if.then196_crit_edge, %if.end7.i.i.if.then196_crit_edge, %kcalloc.exit.thread
  %rule.1.ph = phi ptr [ %call7.i.i, %kcalloc.exit.thread ], [ %rule.0, %do.body186.if.then196_crit_edge ], [ %rule.0, %if.then189 ], [ %call7.i.i, %do.body150.if.then196_crit_edge ], [ %call7.i.i, %if.then153 ], [ %call7.i.i, %do.body130.if.then196_crit_edge ], [ %call7.i.i, %if.then133 ], [ %call7.i.i, %do.body117.if.then196_crit_edge ], [ %call7.i.i, %if.then120 ], [ %call7.i.i, %do.body101.if.then196_crit_edge ], [ %call7.i.i, %if.then104 ], [ %call7.i.i, %do.body88.if.then196_crit_edge ], [ %call7.i.i, %if.then91 ], [ %call7.i.i, %if.end7.i.i.if.then196_crit_edge ], [ %rule.0, %if.end179.if.then196_crit_edge ], [ %rule.0, %if.end175.if.then196_crit_edge ]
  %rc.0.ph = phi i32 [ -12, %kcalloc.exit.thread ], [ -34, %do.body186.if.then196_crit_edge ], [ -34, %if.then189 ], [ -95, %do.body150.if.then196_crit_edge ], [ -95, %if.then153 ], [ -95, %do.body130.if.then196_crit_edge ], [ -95, %if.then133 ], [ -34, %do.body117.if.then196_crit_edge ], [ -34, %if.then120 ], [ -34, %do.body101.if.then196_crit_edge ], [ -34, %if.then104 ], [ -34, %do.body88.if.then196_crit_edge ], [ -34, %if.then91 ], [ -12, %if.end7.i.i.if.then196_crit_edge ], [ %call180, %if.end179.if.then196_crit_edge ], [ %call176, %if.end175.if.then196_crit_edge ]
  %shl197 = shl nuw i32 1, %port
  %neg = xor i32 %shl197, -1
  %port_mask198 = getelementptr inbounds %struct.sja1105_rule, ptr %rule.1.ph, i32 0, i32 2
  %77 = ptrtoint ptr %port_mask198 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %port_mask198, align 4
  %and = and i32 %78, %neg
  store i32 %and, ptr %port_mask198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool200.not = icmp eq i32 %and, 0
  br i1 %tobool200.not, label %if.then201, label %if.then196.cleanup_crit_edge

if.then196.cleanup_crit_edge:                     ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then201:                                       ; preds = %if.then196
  %call.i.i298 = call zeroext i1 @__list_del_entry_valid(ptr noundef %rule.1.ph) #6
  br i1 %call.i.i298, label %if.end.i.i299, label %if.then201.list_del.exit_crit_edge

if.then201.list_del.exit_crit_edge:               ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i299:                                    ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %rule.1.ph, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i, align 4
  %81 = ptrtoint ptr %rule.1.ph to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rule.1.ph, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev1.i.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %82, ptr %80, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i299, %if.then201.list_del.exit_crit_edge
  %85 = ptrtoint ptr %rule.1.ph to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 256 to ptr), ptr %rule.1.ph, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %rule.1.ph, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %entries203 = getelementptr inbounds %struct.sja1105_rule, ptr %rule.1.ph, i32 0, i32 5, i32 0, i32 8
  %87 = ptrtoint ptr %entries203 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %entries203, align 4
  call void @kfree(ptr noundef %88) #6
  call void @kfree(ptr noundef %rule.1.ph) #6
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then196.cleanup_crit_edge, %if.end183.cleanup_crit_edge, %if.then62.cleanup_crit_edge, %if.then54, %do.body51.cleanup_crit_edge, %if.then39, %do.body36.cleanup_crit_edge, %if.then27, %do.body24.cleanup_crit_edge, %if.then13, %do.body10.cleanup_crit_edge, %if.then4, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then4 ], [ -95, %do.body.cleanup_crit_edge ], [ -34, %if.then13 ], [ -34, %do.body10.cleanup_crit_edge ], [ -34, %if.then27 ], [ -34, %do.body24.cleanup_crit_edge ], [ -95, %if.then39 ], [ -95, %do.body36.cleanup_crit_edge ], [ -95, %if.then54 ], [ -95, %do.body51.cleanup_crit_edge ], [ -12, %if.then62.cleanup_crit_edge ], [ %rc.0.ph, %if.then196.cleanup_crit_edge ], [ %rc.0.ph, %list_del.exit ], [ 0, %if.end183.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rem) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sja1105_gating_check_conflicts(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_vl_stats(ptr noundef %priv, i32 noundef %port, ptr nocapture noundef %rule, ptr nocapture noundef %stats, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  %unreleased = alloca i64, align 8
  %timingerr = alloca i64, align 8
  %lengtherr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %regs1 = getelementptr inbounds %struct.sja1105_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #6
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %buf, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %unreleased) #6
  %5 = ptrtoint ptr %unreleased to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %unreleased, align 8, !annotation !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %timingerr) #6
  %6 = ptrtoint ptr %timingerr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %timingerr, align 8, !annotation !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lengtherr) #6
  %7 = ptrtoint ptr %lengtherr to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %lengtherr, align 8, !annotation !53
  %8 = getelementptr inbounds %struct.sja1105_rule, ptr %rule, i32 0, i32 5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.not = icmp eq i32 %10, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %key = getelementptr inbounds %struct.sja1105_rule, ptr %rule, i32 0, i32 3
  %11 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 3
  %13 = add i32 %12, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %13)
  %14 = icmp ult i32 %13, -2
  br i1 %14, label %do.end.i, label %if.end23.i, !prof !51

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 725, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23.i:                                       ; preds = %if.end
  %entries.i = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 2, i32 2
  %15 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %entries.i, align 4
  %entry_count.i = getelementptr %struct.sja1105_static_config, ptr %priv, i32 0, i32 1, i32 2, i32 1
  %17 = ptrtoint ptr %entry_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %entry_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp2486.not.i = icmp eq i32 %18, 0
  br i1 %cmp2486.not.i, label %if.end23.i.cleanup_crit_edge, label %for.body.lr.ph.i

if.end23.i.cleanup_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end23.i
  %conv49.i = sext i32 %port to i64
  %19 = getelementptr inbounds %struct.sja1105_rule, ptr %rule, i32 0, i32 3, i32 1
  %vid.i = getelementptr inbounds %struct.sja1105_rule, ptr %rule, i32 0, i32 3, i32 1, i32 0, i32 1
  %pcp.i = getelementptr inbounds %struct.sja1105_rule, ptr %rule, i32 0, i32 3, i32 1, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.087.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %port29.i = getelementptr %struct.sja1105_vl_lookup_entry, ptr %16, i32 %i.087.i, i32 1
  %20 = ptrtoint ptr %port29.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %port29.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %conv49.i)
  %cmp30.i = icmp eq i64 %21, %conv49.i
  br i1 %cmp.not.i, label %if.then27.i, label %if.else.i

if.then27.i:                                      ; preds = %for.body.i
  br i1 %cmp30.i, label %land.lhs.true.i, label %if.then27.i.for.inc.i_crit_edge

if.then27.i.for.inc.i_crit_edge:                  ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.then27.i
  %22 = getelementptr %struct.sja1105_vl_lookup_entry, ptr %16, i32 %i.087.i, i32 2
  %macaddr.i = getelementptr inbounds %struct.anon.182, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %macaddr.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %macaddr.i, align 8
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %19, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %26)
  %cmp33.i = icmp eq i64 %24, %26
  br i1 %cmp33.i, label %land.lhs.true35.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true35.i:                                ; preds = %land.lhs.true.i
  %vlanid.i = getelementptr inbounds %struct.anon.182, ptr %22, i32 0, i32 3
  %27 = ptrtoint ptr %vlanid.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %vlanid.i, align 8
  %29 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vid.i, align 8
  %conv37.i = zext i16 %30 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %conv37.i)
  %cmp38.i = icmp eq i64 %28, %conv37.i
  br i1 %cmp38.i, label %land.lhs.true40.i, label %land.lhs.true35.i.for.inc.i_crit_edge

land.lhs.true35.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true40.i:                                ; preds = %land.lhs.true35.i
  %vlanprior.i = getelementptr inbounds %struct.anon.182, ptr %22, i32 0, i32 4
  %31 = ptrtoint ptr %vlanprior.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %vlanprior.i, align 8
  %33 = ptrtoint ptr %pcp.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %pcp.i, align 2
  %conv42.i = zext i16 %34 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %conv42.i)
  %cmp43.i = icmp eq i64 %32, %conv42.i
  br i1 %cmp43.i, label %land.lhs.true40.i.sja1105_find_vlid.exit_crit_edge, label %land.lhs.true40.i.for.inc.i_crit_edge

land.lhs.true40.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true40.i.sja1105_find_vlid.exit_crit_edge: ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sja1105_find_vlid.exit

if.else.i:                                        ; preds = %for.body.i
  br i1 %cmp30.i, label %land.lhs.true52.i, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true52.i:                                ; preds = %if.else.i
  %macaddr54.i = getelementptr %struct.sja1105_vl_lookup_entry, ptr %16, i32 %i.087.i, i32 2, i32 0, i32 2
  %35 = ptrtoint ptr %macaddr54.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %macaddr54.i, align 8
  %37 = ptrtoint ptr %19 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %19, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %38)
  %cmp56.i = icmp eq i64 %36, %38
  br i1 %cmp56.i, label %land.lhs.true52.i.sja1105_find_vlid.exit_crit_edge, label %land.lhs.true52.i.for.inc.i_crit_edge

land.lhs.true52.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true52.i.sja1105_find_vlid.exit_crit_edge: ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sja1105_find_vlid.exit

for.inc.i:                                        ; preds = %land.lhs.true52.i.for.inc.i_crit_edge, %if.else.i.for.inc.i_crit_edge, %land.lhs.true40.i.for.inc.i_crit_edge, %land.lhs.true35.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %if.then27.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.087.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %18
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sja1105_find_vlid.exit:                           ; preds = %land.lhs.true52.i.sja1105_find_vlid.exit_crit_edge, %land.lhs.true40.i.sja1105_find_vlid.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.087.i)
  %cmp2 = icmp slt i32 %i.087.i, 0
  br i1 %cmp2, label %sja1105_find_vlid.exit.cleanup_crit_edge, label %if.end4

sja1105_find_vlid.exit.cleanup_crit_edge:         ; preds = %sja1105_find_vlid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %sja1105_find_vlid.exit
  %vl_status = getelementptr inbounds %struct.sja1105_regs, ptr %3, i32 0, i32 5
  %39 = ptrtoint ptr %vl_status to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %vl_status, align 8
  %mul = shl nuw i32 %i.087.i, 1
  %conv = sext i32 %mul to i64
  %add = add i64 %40, %conv
  %call5 = call i32 @sja1105_xfer_buf(ptr noundef %priv, i32 noundef 0, i64 noundef %add, ptr noundef nonnull %buf, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %if.end4
  call void @do_trace_netlink_extack(ptr noundef nonnull @sja1105_vl_stats.__msg) #6
  %tobool7.not = icmp eq ptr %extack, null
  br i1 %tobool7.not, label %do.body.cleanup_crit_edge, label %if.then8

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @sja1105_vl_stats.__msg, ptr %extack, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void @sja1105_unpack(ptr noundef nonnull %buf, ptr noundef nonnull %timingerr, i32 noundef 31, i32 noundef 16, i32 noundef 8) #6
  call void @sja1105_unpack(ptr noundef nonnull %buf, ptr noundef nonnull %unreleased, i32 noundef 15, i32 noundef 0, i32 noundef 8) #6
  call void @sja1105_unpack(ptr noundef nonnull %buf, ptr noundef nonnull %lengtherr, i32 noundef 47, i32 noundef 32, i32 noundef 8) #6
  %42 = ptrtoint ptr %timingerr to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %timingerr, align 8
  %44 = ptrtoint ptr %unreleased to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %unreleased, align 8
  %add14 = add i64 %45, %43
  %46 = ptrtoint ptr %lengtherr to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %lengtherr, align 8
  %add15 = add i64 %add14, %47
  %stats16 = getelementptr inbounds %struct.sja1105_rule, ptr %rule, i32 0, i32 5, i32 0, i32 9
  %48 = ptrtoint ptr %stats16 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %stats16, align 8
  %sub = sub i64 %add15, %49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %conv18 = zext i32 %50 to i64
  %lastused = getelementptr inbounds %struct.sja1105_rule, ptr %rule, i32 0, i32 5, i32 0, i32 9, i32 3
  %51 = ptrtoint ptr %lastused to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %lastused, align 8
  %sub20 = sub i64 %conv18, %52
  %53 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %stats, align 8
  %add.i = add i64 %sub, %54
  store i64 %add.i, ptr %stats, align 8
  %lastused6.i = getelementptr inbounds %struct.flow_stats, ptr %stats, i32 0, i32 3
  %55 = ptrtoint ptr %lastused6.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %lastused6.i, align 8
  %57 = call i64 @llvm.umax.i64(i64 %56, i64 %sub20) #6
  %58 = ptrtoint ptr %lastused6.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %lastused6.i, align 8
  %used_hw_stats28.i = getelementptr inbounds %struct.flow_stats, ptr %stats, i32 0, i32 4
  %59 = ptrtoint ptr %used_hw_stats28.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %used_hw_stats28.i, align 8
  %or.i = or i32 %60, 1
  store i32 %or.i, ptr %used_hw_stats28.i, align 8
  %used_hw_stats_valid.i = getelementptr inbounds %struct.flow_stats, ptr %stats, i32 0, i32 5
  %61 = ptrtoint ptr %used_hw_stats_valid.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %used_hw_stats_valid.i, align 4
  %62 = ptrtoint ptr %stats16 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %add15, ptr %stats16, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %conv23 = zext i32 %63 to i64
  %64 = ptrtoint ptr %lastused to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv23, ptr %lastused, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %do.body.cleanup_crit_edge, %sja1105_find_vlid.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end23.i.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sja1105_find_vlid.exit.cleanup_crit_edge ], [ %call5, %if.then8 ], [ %call5, %do.body.cleanup_crit_edge ], [ 0, %do.end.i ], [ 0, %if.end23.i.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lengtherr) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %timingerr) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %unreleased) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_xfer_buf(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_unpack(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dsa_tag_8021q_rx_vid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_frame_memory_partitioning(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @sja1105_vl_redirect.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/sja1105/sja1105_vl.c", i32 503, i32 3}
!2 = !{ptr @sja1105_vl_redirect.__msg.1, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/dsa/sja1105/sja1105_vl.c", i32 507, i32 3}
!4 = !{ptr @sja1105_vl_gate.__msg, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/dsa/sja1105/sja1105_vl.c", i32 581, i32 3}
!6 = !{ptr @sja1105_vl_gate.__msg.2, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../drivers/net/dsa/sja1105/sja1105_vl.c", i32 588, i32 3}
!8 = !{ptr @sja1105_vl_gate.__msg.3, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../drivers/net/dsa/sja1105/sja1105_vl.c", i32 595, i32 3}
!10 = !{ptr @sja1105_vl_gate.__msg.4, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../drivers/net/dsa/sja1105/sja1105_vl.c", i32 601, i32 3}
!12 = !{ptr @sja1105_vl_gate.__msg.5, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/sja1105/sja1105_vl.c", i32 605, i32 3}
!14 = !{ptr @sja1105_vl_gate.__msg.6, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/sja1105/sja1105_vl.c", i32 636, i32 5}
!16 = !{ptr @sja1105_vl_gate.__msg.7, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../drivers/net/dsa/sja1105/sja1105_vl.c", i32 643, i32 5}
!18 = !{ptr @sja1105_vl_gate.__msg.8, !19, !"__msg", i1 false, i1 false}
!19 = !{!"../drivers/net/dsa/sja1105/sja1105_vl.c", i32 651, i32 5}
!20 = !{ptr @sja1105_vl_gate.__msg.9, !21, !"__msg", i1 false, i1 false}
!21 = !{!"../drivers/net/dsa/sja1105/sja1105_vl.c", i32 658, i32 5}
!22 = !{ptr @sja1105_vl_gate.__msg.10, !23, !"__msg", i1 false, i1 false}
!23 = !{!"../drivers/net/dsa/sja1105/sja1105_vl.c", i32 667, i32 5}
!24 = !{ptr @sja1105_vl_gate.__msg.11, !25, !"__msg", i1 false, i1 false}
!25 = !{!"../drivers/net/dsa/sja1105/sja1105_vl.c", i32 699, i32 3}
!26 = !{ptr @sja1105_vl_stats.__msg, !27, !"__msg", i1 false, i1 false}
!27 = !{!"../drivers/net/dsa/sja1105/sja1105_vl.c", i32 770, i32 3}
!28 = !{ptr @sja1105_init_virtual_links.__msg, !29, !"__msg", i1 false, i1 false}
!29 = !{!"../drivers/net/dsa/sja1105/sja1105_vl.c", i32 326, i32 3}
!30 = !{ptr @sja1105_init_virtual_links.__msg.12, !31, !"__msg", i1 false, i1 false}
!31 = !{!"../drivers/net/dsa/sja1105/sja1105_vl.c", i32 331, i32 3}
!32 = !{ptr @.str, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/dsa/sja1105/sja1105_vl.c", i32 117, i32 2}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @sja1105_compose_gating_subschedule.__UNIQUE_ID_ddebug520, !33, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!38 = !{ptr @sja1105_insert_gate_entry.__msg, !39, !"__msg", i1 false, i1 false}
!39 = !{!"../drivers/net/dsa/sja1105/sja1105_vl.c", i32 34, i32 5}
!40 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/net/flow_offload.h", i32 418, i32 2}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{i64 2148610036, i64 2148610041, i64 2148610054, i64 2148610098, i64 2148610132, i64 2148610153}
!53 = !{!"auto-init"}
