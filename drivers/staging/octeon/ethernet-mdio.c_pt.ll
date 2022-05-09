; ModuleID = '/llk/IR_all_yes/drivers/staging/octeon/ethernet-mdio.c_pt.bc'
source_filename = "../drivers/staging/octeon/ethernet-mdio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
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
%struct.octeon_ethernet = type { i32, i32, i32, ptr, i32, i32, [16 x %struct.sk_buff_head], i32, i32, i64, ptr, %struct.delayed_work, ptr }
%struct.sk_buff_head = type { %union.anon.54, i32, %struct.spinlock }
%union.anon.54 = type { %struct.anon.55 }
%struct.anon.55 = type { ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@cvm_oct_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @cvm_oct_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cvm_oct_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@cvm_oct_note_carrier._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.cvm_oct_note_carrier = private unnamed_addr constant [21 x i8] c"cvm_oct_note_carrier\00", align 1
@cvm_oct_note_carrier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.cvm_oct_note_carrier, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015%s: %u Mbps %s duplex, port %d, queue %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/staging/octeon/ethernet-mdio.c\00", [57 x i8] zeroinitializer }, align 32
@cvm_oct_note_carrier._entry_ptr = internal global ptr @cvm_oct_note_carrier._entry, section ".printk_index", align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Full\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Half\00", [27 x i8] zeroinitializer }, align 32
@cvm_oct_note_carrier._rs.5 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cvm_oct_note_carrier._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.cvm_oct_note_carrier, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\015%s: Link down\0A\00", [47 x i8] zeroinitializer }, align 32
@cvm_oct_note_carrier._entry_ptr.8 = internal global ptr @cvm_oct_note_carrier._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"octeon_ethernet\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"5.17.0\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Builtin\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Illegal ipd_port %d passed to %s\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.INTERFACE = private unnamed_addr constant [10 x i8] c"INTERFACE\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [20 x i8] c"cvm_oct_ethtool_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 40, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 71, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 76, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 148, i32 45 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 24, i32 24 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 25, i32 25 }
@___asan_gen_.58 = private constant [42 x i8] c"../drivers/staging/octeon/ethernet-mdio.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 26, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 4963, i32 10 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [42 x i8] c"../drivers/staging/octeon/ethernet-util.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 35, i32 8 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @cvm_oct_note_carrier._entry, ptr @cvm_oct_note_carrier._entry.6, ptr @cvm_oct_note_carrier._entry_ptr, ptr @cvm_oct_note_carrier._entry_ptr.8, ptr @cvm_oct_ethtool_ops, ptr @cvm_oct_note_carrier._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cvm_oct_note_carrier._rs.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_note_carrier._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_note_carrier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_note_carrier._rs.5 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cvm_oct_note_carrier._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cvm_oct_get_drvinfo(ptr nocapture noundef readnone %dev, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %driver, ptr noundef nonnull @.str.10, i32 noundef 32) #6
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call2 = tail call i32 @strscpy(ptr noundef %version, ptr noundef nonnull @.str.11, i32 noundef 32) #6
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call4 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.12, i32 noundef 32) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cvm_oct_nway_reset(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 12) #6
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.then1

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @phy_start_aneg(ptr noundef nonnull %1) #6
  br label %return

return:                                           ; preds = %if.then1, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then1 ], [ -1, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cvm_oct_ioctl(ptr noundef %dev, ptr noundef %rq, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @phy_mii_ioctl(ptr noundef nonnull %3, ptr noundef %rq, i32 noundef %cmd) #6
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end2 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cvm_oct_note_carrier(ptr nocapture noundef readonly %priv, [1 x i64] %li.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %li.coerce.fca.0.extract = extractvalue [1 x i64] %li.coerce, 0
  %0 = and i64 %li.coerce.fca.0.extract, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %0)
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @cvm_oct_note_carrier._rs, ptr noundef nonnull @__func__.cvm_oct_note_carrier) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end22_crit_edge, label %do.end

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.end:                                           ; preds = %if.then
  %netdev = getelementptr inbounds %struct.octeon_ethernet, ptr %priv, i32 0, i32 3
  %1 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %do.end.netdev_name.exit_crit_edge, label %lor.lhs.false.i

do.end.netdev_name.exit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call ptr @strchr(ptr noundef %2, i32 noundef 37) #6
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %2, ptr @.str.13
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %do.end.netdev_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.13, %do.end.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %5 = trunc i64 %li.coerce.fca.0.extract to i32
  %conv = and i32 %5, 262143
  %6 = and i64 %li.coerce.fca.0.extract, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool10.not = icmp eq i64 %6, 0
  %cond = select i1 %tobool10.not, ptr @.str.4, ptr @.str.3
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %priv, align 8
  %queue = getelementptr inbounds %struct.octeon_ethernet, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %queue, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %retval.0.i, i32 noundef %conv, ptr noundef nonnull %cond, i32 noundef %8, i32 noundef %10) #9
  br label %if.end22

if.else:                                          ; preds = %entry
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @cvm_oct_note_carrier._rs.5, ptr noundef nonnull @__func__.cvm_oct_note_carrier) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.else.if.end22_crit_edge, label %do.end16

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.end16:                                         ; preds = %if.else
  %netdev18 = getelementptr inbounds %struct.octeon_ethernet, ptr %priv, i32 0, i32 3
  %11 = ptrtoint ptr %netdev18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev18, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i28 = icmp eq i8 %14, 0
  br i1 %tobool.not.i28, label %do.end16.netdev_name.exit34_crit_edge, label %lor.lhs.false.i32

do.end16.netdev_name.exit34_crit_edge:            ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %netdev_name.exit34

lor.lhs.false.i32:                                ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call.i29 = tail call ptr @strchr(ptr noundef %12, i32 noundef 37) #6
  %tobool2.not.i30 = icmp eq ptr %call.i29, null
  %spec.select.i31 = select i1 %tobool2.not.i30, ptr %12, ptr @.str.13
  br label %netdev_name.exit34

netdev_name.exit34:                               ; preds = %lor.lhs.false.i32, %do.end16.netdev_name.exit34_crit_edge
  %retval.0.i33 = phi ptr [ @.str.13, %do.end16.netdev_name.exit34_crit_edge ], [ %spec.select.i31, %lor.lhs.false.i32 ]
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %retval.0.i33) #9
  br label %if.end22

if.end22:                                         ; preds = %netdev_name.exit34, %if.else.if.end22_crit_edge, %netdev_name.exit, %if.then.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cvm_oct_adjust_link(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %link, align 8
  %3 = lshr i16 %bf.load, 2
  %4 = and i16 %3, 1
  %bf.value = zext i16 %4 to i64
  %bf.shl = shl nuw nsw i64 %bf.value, 19
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not.not = icmp eq i32 %6, 0
  %bf.shl9 = select i1 %tobool4.not.not, i64 0, i64 262144
  %bf.set11 = or i64 %bf.shl, %bf.shl9
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed, align 8
  %9 = and i32 %8, 262143
  %bf.value15 = zext i32 %9 to i64
  %bf.set17 = or i64 %bf.set11, %bf.value15
  %link_info18 = getelementptr i8, ptr %dev, i32 3232
  %10 = ptrtoint ptr %link_info18 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %bf.set17, ptr %link_info18, align 8
  %poll = getelementptr i8, ptr %dev, i32 3240
  %11 = ptrtoint ptr %poll to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %poll, align 8
  %tobool19.not = icmp eq ptr %12, null
  br i1 %tobool19.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %12(ptr noundef %dev) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %last_link = getelementptr i8, ptr %dev, i32 3228
  %13 = ptrtoint ptr %last_link to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_link, align 4
  %15 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phydev, align 16
  %link22 = getelementptr inbounds %struct.phy_device, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %link22 to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load23 = load i16, ptr %link22, align 8
  %bf.lshr24 = lshr i16 %bf.load23, 2
  %bf.clear25 = and i16 %bf.lshr24, 1
  %bf.cast26 = zext i16 %bf.clear25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %bf.cast26)
  %cmp.not = icmp eq i32 %14, %bf.cast26
  br i1 %cmp.not, label %if.end.if.end38_crit_edge, label %if.then28

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %last_link to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %bf.cast26, ptr %last_link, align 4
  %.fca.0.insert = insertvalue [1 x i64] poison, i64 %bf.set17, 0
  tail call void @cvm_oct_note_carrier(ptr noundef %add.ptr.i, [1 x i64] %.fca.0.insert)
  br label %if.end38

if.end38:                                         ; preds = %if.then28, %if.end.if.end38_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cvm_oct_common_stop(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp1.i = icmp sgt i32 %1, -1
  br i1 %cmp1.i, label %INTERFACE.exit, label %if.end3.i

if.end3.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.14, i32 noundef %1, ptr noundef nonnull @__func__.INTERFACE) #10
  unreachable

INTERFACE.exit:                                   ; preds = %entry
  %poll = getelementptr i8, ptr %dev, i32 3240
  %2 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %poll, align 8
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %3 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %INTERFACE.exit.if.end_crit_edge, label %if.then

INTERFACE.exit.if.end_crit_edge:                  ; preds = %INTERFACE.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %INTERFACE.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @phy_disconnect(ptr noundef nonnull %4) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %INTERFACE.exit.if.end_crit_edge
  %last_link = getelementptr i8, ptr %dev, i32 3228
  %5 = ptrtoint ptr %last_link to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last_link, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not = icmp eq i32 %6, 0
  br i1 %tobool8.not, label %if.end.if.end14_crit_edge, label %if.then9

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then9:                                         ; preds = %if.end
  %7 = ptrtoint ptr %last_link to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %last_link, align 4
  %call12.i = tail call i32 @___ratelimit(ptr noundef nonnull @cvm_oct_note_carrier._rs.5, ptr noundef nonnull @__func__.cvm_oct_note_carrier) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then9.if.end14_crit_edge, label %do.end16.i

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.end16.i:                                       ; preds = %if.then9
  %netdev18.i = getelementptr i8, ptr %dev, i32 2316
  %8 = ptrtoint ptr %netdev18.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev18.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i28.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i28.i, label %do.end16.i.netdev_name.exit34.i_crit_edge, label %lor.lhs.false.i32.i

do.end16.i.netdev_name.exit34.i_crit_edge:        ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %netdev_name.exit34.i

lor.lhs.false.i32.i:                              ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i29.i = tail call ptr @strchr(ptr noundef %9, i32 noundef 37) #6
  %tobool2.not.i30.i = icmp eq ptr %call.i29.i, null
  %spec.select.i31.i = select i1 %tobool2.not.i30.i, ptr %9, ptr @.str.13
  br label %netdev_name.exit34.i

netdev_name.exit34.i:                             ; preds = %lor.lhs.false.i32.i, %do.end16.i.netdev_name.exit34.i_crit_edge
  %retval.0.i33.i = phi ptr [ @.str.13, %do.end16.i.netdev_name.exit34.i_crit_edge ], [ %spec.select.i31.i, %lor.lhs.false.i32.i ]
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %retval.0.i33.i) #9
  br label %if.end14

if.end14:                                         ; preds = %netdev_name.exit34.i, %if.then9.if.end14_crit_edge, %if.end.if.end14_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cvm_oct_phy_setup_device(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr i8, ptr %dev, i32 3344
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.no_phy_crit_edge, label %if.end

entry.no_phy_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %no_phy

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  br label %land.lhs.true

of_parse_phandle.exit:                            ; preds = %if.end
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %of_parse_phandle.exit.land.lhs.true_crit_edge, label %of_parse_phandle.exit.if.end12_crit_edge

of_parse_phandle.exit.if.end12_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

of_parse_phandle.exit.land.lhs.true_crit_edge:    ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %of_parse_phandle.exit.land.lhs.true_crit_edge, %of_parse_phandle.exit.thread
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call5 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef %6) #6
  br i1 %call5, label %if.end9, label %land.lhs.true.no_phy_crit_edge

land.lhs.true.no_phy_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %no_phy

if.end9:                                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call8 = call ptr @of_node_get(ptr noundef %8) #6
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end9.no_phy_crit_edge, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end9.no_phy_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %no_phy

if.end12:                                         ; preds = %if.end9.if.end12_crit_edge, %of_parse_phandle.exit.if.end12_crit_edge
  %phy_node.037 = phi ptr [ %call8, %if.end9.if.end12_crit_edge ], [ %4, %of_parse_phandle.exit.if.end12_crit_edge ]
  %phy_mode = getelementptr i8, ptr %dev, i32 2324
  %9 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phy_mode, align 4
  %call13 = call ptr @of_phy_connect(ptr noundef %dev, ptr noundef nonnull %phy_node.037, ptr noundef nonnull @cvm_oct_adjust_link, i32 noundef 0, i32 noundef %10) #6
  call void @of_node_put(ptr noundef nonnull %phy_node.037) #6
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %last_link = getelementptr i8, ptr %dev, i32 3228
  %11 = ptrtoint ptr %last_link to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %last_link, align 4
  call void @phy_start(ptr noundef nonnull %call13) #6
  br label %cleanup

no_phy:                                           ; preds = %if.end9.no_phy_crit_edge, %land.lhs.true.no_phy_crit_edge, %entry.no_phy_crit_edge
  call void @netif_carrier_on(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %no_phy, %if.end16, %if.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ 0, %no_phy ], [ -517, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_start_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @cvm_oct_ethtool_ops, !1, !"cvm_oct_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/staging/octeon/ethernet-mdio.c", i32 40, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/octeon/ethernet-mdio.c", i32 71, i32 3}
!4 = !{ptr @cvm_oct_note_carrier._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @__func__.cvm_oct_note_carrier, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @cvm_oct_note_carrier._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @cvm_oct_note_carrier._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @cvm_oct_note_carrier._rs.5, !13, !"_rs", i1 false, i1 false}
!13 = !{!"../drivers/staging/octeon/ethernet-mdio.c", i32 76, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cvm_oct_note_carrier._entry.6, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @cvm_oct_note_carrier._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/octeon/ethernet-mdio.c", i32 148, i32 45}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/octeon/ethernet-mdio.c", i32 24, i32 24}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/octeon/ethernet-mdio.c", i32 25, i32 25}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/octeon/ethernet-mdio.c", i32 26, i32 26}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/octeon/ethernet-util.h", i32 35, i32 8}
!29 = !{ptr @__func__.INTERFACE, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/octeon/ethernet-util.h", i32 35, i32 56}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
