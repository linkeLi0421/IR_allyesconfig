; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+bnxt_ulp_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_bnxt_ulp_probe\09\09\09\09"
module asm "\09.long\09__crc_bnxt_ulp_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bnxt_ulp_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22bnxt_ulp_probe\22\09\09\09\09\09"
module asm "__kstrtabns_bnxt_ulp_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bnxt_en_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bnxt = type { ptr, ptr, ptr, i32, i16, i8, [32 x i8], [32 x i8], ptr, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i16, i32, i16, i8, i8, [8 x %struct.bnxt_queue_info], [8 x i8], [8 x i8], i8, i32, %struct.timer_list, i32, ptr, i32, [6 x i8], ptr, ptr, i8, i8, i8, i32, i32, i32, i32, i16, i16, ptr, %struct.hlist_head, %struct.rtnl_link_stats64, %struct.bnxt_stats_mem, %struct.bnxt_stats_mem, %struct.bnxt_stats_mem, i16, i16, i16, [8 x i8], i8, i16, i16, i32, i32, %struct.mutex, %struct.hwrm_ver_get_output, [32 x i8], [32 x i8], [32 x i8], i64, i16, i16, i16, i16, i8, i8, i16, %struct.bnxt_coal_cap, %struct.bnxt_coal, %struct.bnxt_coal, i32, %struct.work_struct, i32, %struct.delayed_work, i32, i16, i16, i32, ptr, %struct.bnxt_hw_resc, %struct.bnxt_pf_info, ptr, i32, %struct.bnxt_vf_info, %struct.wait_queue_head, i8, %struct.mutex, %struct.spinlock, i32, [512 x %struct.hlist_head], %struct.spinlock, ptr, i32, %struct.mutex, %struct.bnxt_link_info, %struct.ethtool_eee, i32, i32, i8, i8, ptr, i8, i8, i8, [4 x %struct.bnxt_led_info], i16, ptr, ptr, ptr, %struct.devlink_port, i32, ptr, ptr, [8 x i8], ptr, %struct.list_head, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.bnxt_queue_info = type { i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bnxt_stats_mem = type { ptr, ptr, ptr, i32, i32 }
%struct.hwrm_ver_get_output = type { i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8, i8, i16, i16, i16, i8, [2 x i8], i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i8], i8 }
%struct.bnxt_coal_cap = type { i32, i32, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.bnxt_coal = type { i16, i16, i16, i16, i16, i8, i8, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bnxt_hw_resc = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.bnxt_pf_info = type { i16, i16, [6 x i8], i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, ptr, i16, i8, [4 x ptr], [4 x i32], ptr }
%struct.bnxt_vf_info = type { i16, [6 x i8], [6 x i8], i16, i16, i32, i32, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bnxt_link_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, %struct.hwrm_port_phy_qcfg_output }
%struct.hwrm_port_phy_qcfg_output = type { i16, i16, i16, i16, i8, i8, i16, i8, i8, i16, i16, i8, i8, i16, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i16, i32, i16, i8, i8, [16 x i8], [16 x i8], i16, i16, i16, i8, i8 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.bnxt_led_info = type { i8, i8, i8, i8, i16, i16 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.144 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.144 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.list_head = type { ptr, ptr }
%struct.bnxt_en_dev = type { ptr, ptr, i32, ptr, [1 x %struct.bnxt_ulp], i32, i32 }
%struct.bnxt_ulp = type { ptr, ptr, ptr, i16, i16, i16, %struct.atomic_t }
%struct.bnxt_ulp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bnxt_irq = type { ptr, i32, i8, [18 x i8], ptr }
%struct.bnxt_msix_entry = type { i32, i32, i32 }
%struct.hwrm_async_event_cmpl = type { i16, i16, i32, i8, i8, i16, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.155, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.155 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.bnxt_fw_msg = type { ptr, i32, ptr, i32, i32 }
%struct.output = type { i16, i16, i16, i16 }

@bnxt_ulp_stop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@bnxt_ulp_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bnxt_ulp_sriov_cfg.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@bnxt_ulp_shutdown.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bnxt_ulp_irq_stop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bnxt_ulp_irq_restart.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bnxt_ulp_async_events.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bnxt_en_ops_tbl = internal constant { %struct.bnxt_en_ops, [40 x i8] } { %struct.bnxt_en_ops { ptr @bnxt_register_dev, ptr @bnxt_unregister_dev, ptr @bnxt_req_msix_vecs, ptr @bnxt_free_msix_vecs, ptr @bnxt_send_msg, ptr @bnxt_register_async_events }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_bnxt_ulp_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_bnxt_ulp_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_bnxt_ulp_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bnxt_ulp_probe to i32), ptr @__kstrtab_bnxt_ulp_probe, ptr @__kstrtabns_bnxt_ulp_probe }, section "___ksymtab+bnxt_ulp_probe", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bnxt_register_dev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ulp id %d already registered\0A\00", [34 x i8] zeroinitializer }, align 32
@bnxt_unregister_dev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ulp id %d not registered\0A\00", [38 x i8] zeroinitializer }, align 32
@bnxt_req_msix_vecs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bnxt_free_msix_vecs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 294, i32 9 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 338, i32 9 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"bnxt_en_ops_tbl\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 469, i32 33 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 695, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 723, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 35, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 41, i32 23 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [49 x i8] c"../drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 78, i32 23 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_bnxt_ulp_probe, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @bnxt_en_ops_tbl, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_en_ops_tbl to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bnxt_get_ulp_msix_num(ptr nocapture noundef readonly %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %edev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 12
  %0 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %land.lhs.true.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true.i:                                  ; preds = %entry
  %ulp_ops.i = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %ulp_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ulp_ops.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.return_crit_edge, label %if.then

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %msix_requested = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4, i32 0, i32 4
  %4 = ptrtoint ptr %msix_requested to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %msix_requested, align 2
  %conv = zext i16 %5 to i32
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %entry.return_crit_edge ], [ 0, %land.lhs.true.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bnxt_get_ulp_msix_base(ptr nocapture noundef readonly %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %edev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 12
  %0 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %land.lhs.true.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.lhs.true.i:                                  ; preds = %entry
  %ulp_ops.i = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %ulp_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ulp_ops.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.return_crit_edge, label %if.then

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %land.lhs.true.i
  %msix_requested = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4, i32 0, i32 4
  %4 = ptrtoint ptr %msix_requested to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %msix_requested, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.then.return_crit_edge, label %cleanup

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %msix_base = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4, i32 0, i32 5
  %6 = ptrtoint ptr %msix_base to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %msix_base, align 4
  %conv = zext i16 %7 to i32
  br label %return

return:                                           ; preds = %cleanup, %if.then.return_crit_edge, %land.lhs.true.i.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ %conv, %cleanup ], [ 0, %land.lhs.true.i.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 0, %if.then.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bnxt_get_ulp_stat_ctxs(ptr nocapture noundef readonly %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %edev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 12
  %0 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end4_crit_edge, label %land.lhs.true.i

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

land.lhs.true.i:                                  ; preds = %entry
  %ulp_ops.i = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %ulp_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ulp_ops.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end4_crit_edge, label %if.then

land.lhs.true.i.if.end4_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %land.lhs.true.i
  %msix_requested = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4, i32 0, i32 4
  %4 = ptrtoint ptr %msix_requested to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %msix_requested, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.then.if.end4_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %land.lhs.true.i.if.end4_crit_edge, %entry.if.end4_crit_edge
  br label %return

return:                                           ; preds = %if.end4, %if.then.return_crit_edge
  %retval.1 = phi i32 [ 1, %if.then.return_crit_edge ], [ 0, %if.end4 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_ulp_stop(ptr nocapture noundef readonly %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %edev1 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 12
  %0 = ptrtoint ptr %edev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup13_crit_edge, label %if.end

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup13

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 8
  store i32 %or, ptr %flags, align 4
  %ulp_tbl = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call, label %if.end.do.end_crit_edge, label %land.lhs.true

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b27 = load i1, ptr @bnxt_ulp_stop.__warned, align 1
  br i1 %.b27, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bnxt_ulp_stop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 294, ptr noundef nonnull @.str.1) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %ulp_ops = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4, i32 0, i32 1
  %4 = ptrtoint ptr %ulp_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ulp_ops, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %do.end.cleanup13_crit_edge, label %lor.lhs.false

do.end.cleanup13_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup13

lor.lhs.false:                                    ; preds = %do.end
  %ulp_stop = getelementptr inbounds %struct.bnxt_ulp_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ulp_stop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ulp_stop, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %lor.lhs.false.cleanup13_crit_edge, label %if.end11

lor.lhs.false.cleanup13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup13

if.end11:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %ulp_tbl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ulp_tbl, align 4
  tail call void %7(ptr noundef %9) #12
  br label %cleanup13

cleanup13:                                        ; preds = %if.end11, %lor.lhs.false.cleanup13_crit_edge, %do.end.cleanup13_crit_edge, %entry.cleanup13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_ulp_start(ptr nocapture noundef readonly %bp, i32 noundef %err) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %edev1 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 12
  %0 = ptrtoint ptr %edev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup16_crit_edge, label %if.end

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup16

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, -9
  store i32 %and, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool2.not = icmp eq i32 %err, 0
  br i1 %tobool2.not, label %for.body, label %if.end.cleanup16_crit_edge

if.end.cleanup16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup16

for.body:                                         ; preds = %if.end
  %ulp_tbl = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call, label %for.body.do.end_crit_edge, label %land.lhs.true

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %for.body
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true7

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b30 = load i1, ptr @bnxt_ulp_start.__warned, align 1
  br i1 %.b30, label %land.lhs.true7.do.end_crit_edge, label %if.then9

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bnxt_ulp_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 318, ptr noundef nonnull @.str.1) #12
  br label %do.end

do.end:                                           ; preds = %if.then9, %land.lhs.true7.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.body.do.end_crit_edge
  %ulp_ops = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4, i32 0, i32 1
  %4 = ptrtoint ptr %ulp_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ulp_ops, align 4
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %do.end.cleanup16_crit_edge, label %lor.lhs.false

do.end.cleanup16_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup16

lor.lhs.false:                                    ; preds = %do.end
  %ulp_start = getelementptr inbounds %struct.bnxt_ulp_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ulp_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ulp_start, align 4
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %lor.lhs.false.cleanup16_crit_edge, label %if.end14

lor.lhs.false.cleanup16_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup16

if.end14:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %ulp_tbl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ulp_tbl, align 4
  tail call void %7(ptr noundef %9) #12
  br label %cleanup16

cleanup16:                                        ; preds = %if.end14, %lor.lhs.false.cleanup16_crit_edge, %do.end.cleanup16_crit_edge, %if.end.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_ulp_sriov_cfg(ptr nocapture noundef readonly %bp, i32 noundef %num_vfs) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %edev1 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 12
  %0 = ptrtoint ptr %edev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup18_crit_edge, label %for.body

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup18

for.body:                                         ; preds = %entry
  %ulp_tbl = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !41) #12
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !51
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %for.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

for.body.rcu_read_lock.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %for.body.rcu_read_lock.exit_crit_edge
  %ulp_ops = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4, i32 0, i32 1
  %6 = ptrtoint ptr %ulp_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %ulp_ops, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end11_crit_edge

rcu_read_lock.exit.do.end11_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true6

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b32 = load i1, ptr @bnxt_ulp_sriov_cfg.__warned, align 1
  br i1 %.b32, label %land.lhs.true6.do.end11_crit_edge, label %if.then8

land.lhs.true6.do.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bnxt_ulp_sriov_cfg.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 338, ptr noundef nonnull @.str.2) #12
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true6.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %rcu_read_lock.exit.do.end11_crit_edge
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %do.end11.if.then15_crit_edge, label %lor.lhs.false

do.end11.if.then15_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

lor.lhs.false:                                    ; preds = %do.end11
  %ulp_sriov_config = getelementptr inbounds %struct.bnxt_ulp_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ulp_sriov_config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ulp_sriov_config, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %lor.lhs.false.if.then15_crit_edge, label %if.end16

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %do.end11.if.then15_crit_edge
  %call.i33 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i33, label %if.then15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i36

if.then15.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i36:                                ; preds = %if.then15
  %call1.i34 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %tobool.not.i35 = icmp eq i32 %call1.i34, 0
  br i1 %tobool.not.i35, label %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i38

land.lhs.true.i36.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i38:                               ; preds = %land.lhs.true.i36
  %.b4.i37 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i37, label %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, label %if.then.i39

land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i39:                                      ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i39, %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, %if.then15.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !52
  %10 = tail call i32 @llvm.read_register.i32(metadata !41) #12
  %and.i.i.i.i.i40 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i40 to ptr
  %preempt_count.i.i.i.i41 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i41, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i41, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup18

if.end16:                                         ; preds = %lor.lhs.false
  %ref_count.i = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #12, !srcloc !53
  %call.i42 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i42, label %if.end16.rcu_read_unlock.exit52_crit_edge, label %land.lhs.true.i45

if.end16.rcu_read_unlock.exit52_crit_edge:        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit52

land.lhs.true.i45:                                ; preds = %if.end16
  %call1.i43 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43)
  %tobool.not.i44 = icmp eq i32 %call1.i43, 0
  br i1 %tobool.not.i44, label %land.lhs.true.i45.rcu_read_unlock.exit52_crit_edge, label %land.lhs.true2.i47

land.lhs.true.i45.rcu_read_unlock.exit52_crit_edge: ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit52

land.lhs.true2.i47:                               ; preds = %land.lhs.true.i45
  %.b4.i46 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i46, label %land.lhs.true2.i47.rcu_read_unlock.exit52_crit_edge, label %if.then.i48

land.lhs.true2.i47.rcu_read_unlock.exit52_crit_edge: ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit52

if.then.i48:                                      ; preds = %land.lhs.true2.i47
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #12
  br label %rcu_read_unlock.exit52

rcu_read_unlock.exit52:                           ; preds = %if.then.i48, %land.lhs.true2.i47.rcu_read_unlock.exit52_crit_edge, %land.lhs.true.i45.rcu_read_unlock.exit52_crit_edge, %if.end16.rcu_read_unlock.exit52_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !52
  %15 = tail call i32 @llvm.read_register.i32(metadata !41) #12
  %and.i.i.i.i.i49 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i49 to ptr
  %preempt_count.i.i.i.i50 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i50, align 4
  %sub.i.i.i51 = add i32 %18, -1
  store volatile i32 %sub.i.i.i51, ptr %preempt_count.i.i.i.i50, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %19 = ptrtoint ptr %ulp_sriov_config to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ulp_sriov_config, align 4
  %21 = ptrtoint ptr %ulp_tbl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ulp_tbl, align 4
  tail call void %20(ptr noundef %22, i32 noundef %num_vfs) #12
  %call.i.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #12
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #12, !srcloc !54
  br label %cleanup18

cleanup18:                                        ; preds = %rcu_read_unlock.exit52, %rcu_read_unlock.exit, %entry.cleanup18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_ulp_shutdown(ptr nocapture noundef readonly %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %edev1 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 12
  %0 = ptrtoint ptr %edev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup13_crit_edge, label %for.body

entry.cleanup13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup13

for.body:                                         ; preds = %entry
  %ulp_tbl = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call, label %for.body.do.end_crit_edge, label %land.lhs.true

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %for.body
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b26 = load i1, ptr @bnxt_ulp_shutdown.__warned, align 1
  br i1 %.b26, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bnxt_ulp_shutdown.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 362, ptr noundef nonnull @.str.1) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.body.do.end_crit_edge
  %ulp_ops = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %ulp_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ulp_ops, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %do.end.cleanup13_crit_edge, label %lor.lhs.false

do.end.cleanup13_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup13

lor.lhs.false:                                    ; preds = %do.end
  %ulp_shutdown = getelementptr inbounds %struct.bnxt_ulp_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ulp_shutdown to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ulp_shutdown, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %lor.lhs.false.cleanup13_crit_edge, label %if.end11

lor.lhs.false.cleanup13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup13

if.end11:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %ulp_tbl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ulp_tbl, align 4
  tail call void %5(ptr noundef %7) #12
  br label %cleanup13

cleanup13:                                        ; preds = %if.end11, %lor.lhs.false.cleanup13_crit_edge, %do.end.cleanup13_crit_edge, %entry.cleanup13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_ulp_irq_stop(ptr nocapture noundef readonly %bp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %edev1 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 12
  %0 = ptrtoint ptr %edev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup22_crit_edge, label %lor.lhs.false

entry.cleanup22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup22

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup22_crit_edge, label %land.lhs.true.i

lor.lhs.false.cleanup22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup22

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %ulp_ops.i = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4, i32 0, i32 1
  %4 = ptrtoint ptr %ulp_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ulp_ops.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup22_crit_edge, label %if.then4

land.lhs.true.i.cleanup22_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup22

if.then4:                                         ; preds = %land.lhs.true.i
  %ulp_tbl = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4
  %msix_requested = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4, i32 0, i32 4
  %6 = ptrtoint ptr %msix_requested to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %msix_requested, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool5.not = icmp eq i16 %7, 0
  br i1 %tobool5.not, label %if.then4.cleanup22_crit_edge, label %do.body

if.then4.cleanup22_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup22

do.body:                                          ; preds = %if.then4
  %call8 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call8, label %do.body.do.end_crit_edge, label %land.lhs.true

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true11

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b35 = load i1, ptr @bnxt_ulp_irq_stop.__warned, align 1
  br i1 %.b35, label %land.lhs.true11.do.end_crit_edge, label %if.then13

land.lhs.true11.do.end_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bnxt_ulp_irq_stop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 383, ptr noundef nonnull @.str.1) #12
  br label %do.end

do.end:                                           ; preds = %if.then13, %land.lhs.true11.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %8 = ptrtoint ptr %ulp_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ulp_ops.i, align 4
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %do.end.cleanup22_crit_edge, label %lor.lhs.false16

do.end.cleanup22_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup22

lor.lhs.false16:                                  ; preds = %do.end
  %ulp_irq_stop = getelementptr inbounds %struct.bnxt_ulp_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %ulp_irq_stop to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ulp_irq_stop, align 4
  %tobool17.not = icmp eq ptr %11, null
  br i1 %tobool17.not, label %lor.lhs.false16.cleanup22_crit_edge, label %if.end19

lor.lhs.false16.cleanup22_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup22

if.end19:                                         ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %ulp_tbl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ulp_tbl, align 4
  tail call void %11(ptr noundef %13) #12
  br label %cleanup22

cleanup22:                                        ; preds = %if.end19, %lor.lhs.false16.cleanup22_crit_edge, %do.end.cleanup22_crit_edge, %if.then4.cleanup22_crit_edge, %land.lhs.true.i.cleanup22_crit_edge, %lor.lhs.false.cleanup22_crit_edge, %entry.cleanup22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_ulp_irq_restart(ptr nocapture noundef readonly %bp, i32 noundef %err) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %edev1 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 12
  %0 = ptrtoint ptr %edev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup31_crit_edge, label %lor.lhs.false

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup31

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup31_crit_edge, label %land.lhs.true.i

lor.lhs.false.cleanup31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup31

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %ulp_ops.i = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4, i32 0, i32 1
  %4 = ptrtoint ptr %ulp_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ulp_ops.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup31_crit_edge, label %if.then4

land.lhs.true.i.cleanup31_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup31

if.then4:                                         ; preds = %land.lhs.true.i
  %ulp_tbl = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4
  %msix_requested = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4, i32 0, i32 4
  %6 = ptrtoint ptr %msix_requested to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %msix_requested, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool5.not = icmp eq i16 %7, 0
  br i1 %tobool5.not, label %if.then4.cleanup31_crit_edge, label %do.body

if.then4.cleanup31_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup31

do.body:                                          ; preds = %if.then4
  %call8 = tail call zeroext i1 @lockdep_rtnl_is_held() #12
  br i1 %call8, label %do.body.do.end_crit_edge, label %land.lhs.true

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true11

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b48 = load i1, ptr @bnxt_ulp_irq_restart.__warned, align 1
  br i1 %.b48, label %land.lhs.true11.do.end_crit_edge, label %if.then13

land.lhs.true11.do.end_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bnxt_ulp_irq_restart.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 405, ptr noundef nonnull @.str.1) #12
  br label %do.end

do.end:                                           ; preds = %if.then13, %land.lhs.true11.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %8 = ptrtoint ptr %ulp_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ulp_ops.i, align 4
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %do.end.cleanup31_crit_edge, label %lor.lhs.false16

do.end.cleanup31_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup31

lor.lhs.false16:                                  ; preds = %do.end
  %ulp_irq_restart = getelementptr inbounds %struct.bnxt_ulp_ops, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %ulp_irq_restart to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ulp_irq_restart, align 4
  %tobool17.not = icmp eq ptr %11, null
  br i1 %tobool17.not, label %lor.lhs.false16.cleanup31_crit_edge, label %if.end19

lor.lhs.false16.cleanup31_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup31

if.end19:                                         ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool20.not = icmp eq i32 %err, 0
  br i1 %tobool20.not, label %if.end7.i.i, label %if.end19.if.end27_crit_edge

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.end7.i.i:                                      ; preds = %if.end19
  %12 = ptrtoint ptr %msix_requested to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %msix_requested, align 2
  %conv = zext i16 %13 to i32
  %14 = mul nuw nsw i32 %conv, 12
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #15
  %tobool24.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool24.not, label %if.end7.i.i.cleanup31_crit_edge, label %if.end26

if.end7.i.i.cleanup31_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup31

if.end26:                                         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @bnxt_fill_msix_vecs(ptr noundef %bp, ptr noundef nonnull %call8.i.i)
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end19.if.end27_crit_edge
  %ent.0 = phi ptr [ null, %if.end19.if.end27_crit_edge ], [ %call8.i.i, %if.end26 ]
  %15 = ptrtoint ptr %ulp_irq_restart to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ulp_irq_restart, align 4
  %17 = ptrtoint ptr %ulp_tbl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ulp_tbl, align 4
  tail call void %16(ptr noundef %18, ptr noundef %ent.0) #12
  tail call void @kfree(ptr noundef %ent.0) #12
  br label %cleanup31

cleanup31:                                        ; preds = %if.end27, %if.end7.i.i.cleanup31_crit_edge, %lor.lhs.false16.cleanup31_crit_edge, %do.end.cleanup31_crit_edge, %if.then4.cleanup31_crit_edge, %land.lhs.true.i.cleanup31_crit_edge, %lor.lhs.false.cleanup31_crit_edge, %entry.cleanup31_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnxt_fill_msix_vecs(ptr nocapture noundef readonly %bp, ptr nocapture noundef writeonly %ent) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %edev1 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 12
  %0 = ptrtoint ptr %edev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev1, align 4
  %msix_requested = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4, i32 0, i32 4
  %2 = ptrtoint ptr %msix_requested to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %msix_requested, align 2
  %conv = zext i16 %3 to i32
  %msix_base = getelementptr inbounds %struct.bnxt_en_dev, ptr %1, i32 0, i32 4, i32 0, i32 5
  %4 = ptrtoint ptr %msix_base to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %msix_base, align 4
  %conv4 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp41.not = icmp eq i16 %3, 0
  br i1 %cmp41.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %irq_tbl = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 65
  %flags = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %irq_tbl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_tbl, align 8
  %add = add nuw nsw i32 %i.042, %conv4
  %vector = getelementptr %struct.bnxt_irq, ptr %7, i32 %add, i32 1
  %8 = ptrtoint ptr %vector to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vector, align 4
  %arrayidx7 = getelementptr %struct.bnxt_msix_entry, ptr %ent, i32 %i.042
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx7, align 4
  %ring_idx = getelementptr %struct.bnxt_msix_entry, ptr %ent, i32 %i.042, i32 1
  %11 = ptrtoint ptr %ring_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %ring_idx, align 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %db_offset = getelementptr %struct.bnxt_msix_entry, ptr %ent, i32 %i.042, i32 2
  %14 = ptrtoint ptr %db_offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 65536, ptr %db_offset, align 4
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 8
  %and13 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %spec.store.select = select i1 %tobool14.not, i32 65536, i32 16384
  %17 = ptrtoint ptr %db_offset to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.store.select, ptr %db_offset, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %mul = shl i32 %add, 7
  %db_offset20 = getelementptr %struct.bnxt_msix_entry, ptr %ent, i32 %i.042, i32 2
  %18 = ptrtoint ptr %db_offset20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %db_offset20, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_ulp_async_events(ptr nocapture noundef readonly %bp, ptr noundef %cmpl) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %event_id1 = getelementptr inbounds %struct.hwrm_async_event_cmpl, ptr %cmpl, i32 0, i32 1
  %0 = ptrtoint ptr %event_id1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %event_id1, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %edev2 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 12
  %3 = ptrtoint ptr %edev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %edev2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup38_crit_edge, label %if.end

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup38

if.end:                                           ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !41) #12
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !51
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %ulp_tbl = getelementptr inbounds %struct.bnxt_en_dev, ptr %4, i32 0, i32 4
  %ulp_ops = getelementptr inbounds %struct.bnxt_en_dev, ptr %4, i32 0, i32 4, i32 0, i32 1
  %9 = ptrtoint ptr %ulp_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %ulp_ops, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true7

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b56 = load i1, ptr @bnxt_ulp_async_events.__warned, align 1
  br i1 %.b56, label %land.lhs.true7.do.end12_crit_edge, label %if.then9

land.lhs.true7.do.end12_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bnxt_ulp_async_events.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 435, ptr noundef nonnull @.str.2) #12
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %land.lhs.true7.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %do.end12.for.end_crit_edge, label %lor.lhs.false

do.end12.for.end_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

lor.lhs.false:                                    ; preds = %do.end12
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool15.not = icmp eq ptr %12, null
  br i1 %tobool15.not, label %lor.lhs.false.for.end_crit_edge, label %if.end17

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end17:                                         ; preds = %lor.lhs.false
  %async_events_bmap = getelementptr inbounds %struct.bnxt_en_dev, ptr %4, i32 0, i32 4, i32 0, i32 2
  %13 = ptrtoint ptr %async_events_bmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %async_events_bmap, align 4
  %tobool18.not = icmp eq ptr %14, null
  br i1 %tobool18.not, label %if.end17.for.end_crit_edge, label %lor.lhs.false19

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

lor.lhs.false19:                                  ; preds = %if.end17
  %max_async_event_id = getelementptr inbounds %struct.bnxt_en_dev, ptr %4, i32 0, i32 4, i32 0, i32 3
  %15 = ptrtoint ptr %max_async_event_id to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_async_event_id, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %16)
  %cmp21 = icmp ugt i16 %2, %16
  br i1 %cmp21, label %lor.lhs.false19.for.end_crit_edge, label %do.end28

lor.lhs.false19.for.end_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.end28:                                         ; preds = %lor.lhs.false19
  %conv = zext i16 %2 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !55
  %17 = ptrtoint ptr %async_events_bmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %async_events_bmap, align 4
  %div3.i = lshr i32 %conv, 5
  %arrayidx.i = getelementptr i32, ptr %18, i32 %div3.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv, 31
  %21 = shl nuw i32 1, %and.i
  %22 = and i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool34.not = icmp eq i32 %22, 0
  br i1 %tobool34.not, label %do.end28.for.end_crit_edge, label %if.then35

do.end28.for.end_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then35:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %10, align 4
  %25 = ptrtoint ptr %ulp_tbl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ulp_tbl, align 4
  tail call void %24(ptr noundef %26, ptr noundef %cmpl) #12
  br label %for.end

for.end:                                          ; preds = %if.then35, %do.end28.for.end_crit_edge, %lor.lhs.false19.for.end_crit_edge, %if.end17.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %do.end12.for.end_crit_edge
  %call.i57 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i57, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i60

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i60:                                ; preds = %for.end
  %call1.i58 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %tobool.not.i59 = icmp eq i32 %call1.i58, 0
  br i1 %tobool.not.i59, label %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i62

land.lhs.true.i60.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i62:                               ; preds = %land.lhs.true.i60
  %.b4.i61 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i61, label %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, label %if.then.i63

land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i63:                                      ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i63, %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !52
  %27 = tail call i32 @llvm.read_register.i32(metadata !41) #12
  %and.i.i.i.i.i64 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i64 to ptr
  %preempt_count.i.i.i.i65 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i65, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i65, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup38

cleanup38:                                        ; preds = %rcu_read_unlock.exit, %entry.cleanup38_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bnxt_ulp_probe(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %edev1 = getelementptr i8, ptr %dev, i32 2404
  %0 = ptrtoint ptr %edev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 48) #16
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %en_ops = getelementptr inbounds %struct.bnxt_en_dev, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %en_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @bnxt_en_ops_tbl, ptr %en_ops, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %call7.i.i, align 8
  %pdev = getelementptr i8, ptr %dev, i32 2392
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %pdev6 = getelementptr inbounds %struct.bnxt_en_dev, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %pdev6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %pdev6, align 4
  %db_size = getelementptr i8, ptr %dev, i32 3992
  %8 = ptrtoint ptr %db_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %db_size, align 8
  %l2_db_size = getelementptr inbounds %struct.bnxt_en_dev, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %l2_db_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %l2_db_size, align 8
  %l2_db_size_nc = getelementptr inbounds %struct.bnxt_en_dev, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %l2_db_size_nc to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %l2_db_size_nc, align 4
  %12 = ptrtoint ptr %edev1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %edev1, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %edev.0 = phi ptr [ %1, %entry.if.end9_crit_edge ], [ %call7.i.i, %if.end ]
  %flags = getelementptr inbounds %struct.bnxt_en_dev, ptr %edev.0, i32 0, i32 2
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, -4
  store i32 %and, ptr %flags, align 4
  %flags10 = getelementptr i8, ptr %dev, i32 2400
  %15 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags10, align 8
  %and11 = and i32 %16, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end15_crit_edge, label %if.then13

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %and, 1
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %flags, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end9.if.end15_crit_edge
  %18 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags10, align 8
  %and17 = and i32 %19, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end22_crit_edge, label %if.then19

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %or21 = or i32 %21, 2
  store i32 %or21, ptr %flags, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end15.if.end22_crit_edge
  %22 = ptrtoint ptr %edev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %edev1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %23, %if.end22 ], [ inttoptr (i32 -12 to ptr), %if.then.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_register_dev(ptr noundef %edev, i32 noundef %ulp_id, ptr noundef %ulp_ops, ptr noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call1 = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b123 = load i1, ptr @bnxt_register_dev.__already_done, align 1
  br i1 %.b123, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !56

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bnxt_register_dev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 35, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str, i32 noundef 35) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ulp_id)
  %cmp = icmp sgt i32 %ulp_id, 0
  br i1 %cmp, label %if.end30.cleanup105_crit_edge, label %if.end39

if.end30.cleanup105_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

if.end39:                                         ; preds = %if.end30
  %arrayidx = getelementptr %struct.bnxt_en_dev, ptr %edev, i32 0, i32 4, i32 %ulp_id
  %ulp_ops44 = getelementptr %struct.bnxt_en_dev, ptr %edev, i32 0, i32 4, i32 %ulp_id, i32 1
  %2 = ptrtoint ptr %ulp_ops44 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ulp_ops44, align 4
  %tobool46.not = icmp eq ptr %3, null
  br i1 %tobool46.not, label %if.end49, label %if.then47

if.then47:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %dev48 = getelementptr i8, ptr %1, i32 2388
  %4 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev48, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef %ulp_id) #17
  br label %cleanup105

if.end49:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ulp_id)
  %cmp50 = icmp eq i32 %ulp_id, 0
  br i1 %cmp50, label %if.then51, label %if.end104.critedge

if.then51:                                        ; preds = %if.end49
  %call52 = tail call i32 @bnxt_get_max_func_stat_ctxs(ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call52)
  %cmp53 = icmp ult i32 %call52, 2
  br i1 %cmp53, label %if.then51.cleanup105_crit_edge, label %lor.lhs.false

if.then51.cleanup105_crit_edge:                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

lor.lhs.false:                                    ; preds = %if.then51
  %cp_nr_rings = getelementptr i8, ptr %1, i32 2540
  %6 = ptrtoint ptr %cp_nr_rings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cp_nr_rings, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call52)
  %cmp54 = icmp eq i32 %7, %call52
  br i1 %cmp54, label %lor.lhs.false.cleanup105_crit_edge, label %if.then98.critedge

lor.lhs.false.cleanup105_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

if.then98.critedge:                               ; preds = %lor.lhs.false
  %ref_count.c = getelementptr %struct.bnxt_en_dev, ptr %edev, i32 0, i32 4, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.c, i32 noundef 4) #12
  %8 = ptrtoint ptr %ref_count.c to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %ref_count.c, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %handle, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !57
  %10 = ptrtoint ptr %ulp_ops44 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %ulp_ops, ptr %ulp_ops44, align 4
  %state = getelementptr i8, ptr %1, i32 2660
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool100.not = icmp eq i32 %and1.i, 0
  br i1 %tobool100.not, label %if.then98.critedge.cleanup105_crit_edge, label %if.then101

if.then98.critedge.cleanup105_crit_edge:          ; preds = %if.then98.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup105

if.then101:                                       ; preds = %if.then98.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %call102 = tail call i32 @bnxt_hwrm_vnic_cfg(ptr noundef %add.ptr.i, i16 noundef zeroext 0) #12
  br label %cleanup105

if.end104.critedge:                               ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  %ref_count.c124 = getelementptr %struct.bnxt_en_dev, ptr %edev, i32 0, i32 4, i32 %ulp_id, i32 6
  %call.i.i125 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.c124, i32 noundef 4) #12
  %13 = ptrtoint ptr %ref_count.c124 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %ref_count.c124, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %handle, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !57
  %15 = ptrtoint ptr %ulp_ops44 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %ulp_ops, ptr %ulp_ops44, align 4
  br label %cleanup105

cleanup105:                                       ; preds = %if.end104.critedge, %if.then101, %if.then98.critedge.cleanup105_crit_edge, %lor.lhs.false.cleanup105_crit_edge, %if.then51.cleanup105_crit_edge, %if.then47, %if.end30.cleanup105_crit_edge
  %retval.1 = phi i32 [ -16, %if.then47 ], [ -22, %if.end30.cleanup105_crit_edge ], [ -12, %if.then51.cleanup105_crit_edge ], [ -12, %lor.lhs.false.cleanup105_crit_edge ], [ 0, %if.end104.critedge ], [ 0, %if.then98.critedge.cleanup105_crit_edge ], [ 0, %if.then101 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_unregister_dev(ptr noundef %edev, i32 noundef %ulp_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call1 = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b99 = load i1, ptr @bnxt_unregister_dev.__already_done, align 1
  br i1 %.b99, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !56

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bnxt_unregister_dev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 72, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str, i32 noundef 72) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ulp_id)
  %cmp = icmp sgt i32 %ulp_id, 0
  br i1 %cmp, label %if.end30.cleanup_crit_edge, label %if.end39

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end39:                                         ; preds = %if.end30
  %ulp_ops = getelementptr %struct.bnxt_en_dev, ptr %edev, i32 0, i32 4, i32 %ulp_id, i32 1
  %2 = ptrtoint ptr %ulp_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ulp_ops, align 4
  %tobool45.not = icmp eq ptr %3, null
  br i1 %tobool45.not, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %dev47 = getelementptr i8, ptr %1, i32 2388
  %4 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev47, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %ulp_id) #17
  br label %cleanup

if.end48:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ulp_id)
  %cmp49 = icmp eq i32 %ulp_id, 0
  br i1 %cmp49, label %land.lhs.true, label %if.end48.if.end53_crit_edge

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end48
  %msix_requested = getelementptr %struct.bnxt_en_dev, ptr %edev, i32 0, i32 4, i32 0, i32 4
  %6 = ptrtoint ptr %msix_requested to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %msix_requested, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool50.not = icmp eq i16 %7, 0
  br i1 %tobool50.not, label %land.lhs.true.if.end53_crit_edge, label %if.then51

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then51:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %en_ops = getelementptr inbounds %struct.bnxt_en_dev, ptr %edev, i32 0, i32 3
  %8 = ptrtoint ptr %en_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %en_ops, align 4
  %bnxt_free_msix = getelementptr inbounds %struct.bnxt_en_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %bnxt_free_msix to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bnxt_free_msix, align 4
  %call52 = tail call i32 %11(ptr noundef %edev, i32 noundef 0) #12
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %land.lhs.true.if.end53_crit_edge, %if.end48.if.end53_crit_edge
  %max_async_event_id = getelementptr %struct.bnxt_en_dev, ptr %edev, i32 0, i32 4, i32 %ulp_id, i32 3
  %12 = ptrtoint ptr %max_async_event_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %max_async_event_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool54.not = icmp eq i16 %13, 0
  br i1 %tobool54.not, label %if.end53.do.body63_crit_edge, label %if.then55

if.end53.do.body63_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body63

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %call56 = tail call i32 @bnxt_hwrm_func_drv_rgtr(ptr noundef %add.ptr.i, ptr noundef null, i32 noundef 0, i1 noundef zeroext true) #12
  br label %do.body63

do.body63:                                        ; preds = %if.then55, %if.end53.do.body63_crit_edge
  %14 = ptrtoint ptr %ulp_ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr null, ptr %ulp_ops, align 4
  tail call void @synchronize_rcu() #12
  %15 = ptrtoint ptr %max_async_event_id to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %max_async_event_id, align 4
  %async_events_bmap = getelementptr %struct.bnxt_en_dev, ptr %edev, i32 0, i32 4, i32 %ulp_id, i32 2
  %16 = ptrtoint ptr %async_events_bmap to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %async_events_bmap, align 4
  %ref_count = getelementptr %struct.bnxt_en_dev, ptr %edev, i32 0, i32 4, i32 %ulp_id, i32 6
  %call.i.i100 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref_count, i32 noundef 4) #12
  %17 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp73.not101.not = icmp eq i32 %18, 0
  br i1 %cmp73.not101.not, label %do.body63.cleanup_crit_edge, label %do.body63.while.body_crit_edge

do.body63.while.body_crit_edge:                   ; preds = %do.body63
  br label %while.body

do.body63.cleanup_crit_edge:                      ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.body63.while.body_crit_edge
  %i.0102 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %do.body63.while.body_crit_edge ]
  tail call void @msleep(i32 noundef 100) #12
  %inc = add nuw nsw i32 %i.0102, 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ref_count, i32 noundef 4) #12
  %19 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp73.not = icmp ne i32 %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.0102)
  %cmp76 = icmp ult i32 %i.0102, 9
  %or.cond = select i1 %cmp73.not, i1 %cmp76, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %do.body63.cleanup_crit_edge, %if.then46, %if.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then46 ], [ -22, %if.end30.cleanup_crit_edge ], [ 0, %do.body63.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_req_msix_vecs(ptr nocapture noundef %edev, i32 noundef %ulp_id, ptr nocapture noundef writeonly %ent, i32 noundef %num_msix) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call1 = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b164 = load i1, ptr @bnxt_req_msix_vecs.__already_done, align 1
  br i1 %.b164, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !56

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bnxt_req_msix_vecs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 129, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str, i32 noundef 129) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ulp_id)
  %cmp.not = icmp eq i32 %ulp_id, 0
  br i1 %cmp.not, label %if.end39, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end39:                                         ; preds = %if.end30
  %flags = getelementptr i8, ptr %1, i32 2400
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.end39.cleanup_crit_edge, label %if.end42

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end42:                                         ; preds = %if.end39
  %msix_requested = getelementptr inbounds %struct.bnxt_en_dev, ptr %edev, i32 0, i32 4, i32 0, i32 4
  %4 = ptrtoint ptr %msix_requested to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %msix_requested, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool43.not = icmp eq i16 %5, 0
  br i1 %tobool43.not, label %if.end45, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45:                                         ; preds = %if.end42
  %call46 = tail call i32 @bnxt_get_max_func_cp_rings(ptr noundef %add.ptr.i) #12
  %call47 = tail call i32 @bnxt_get_avail_msix(ptr noundef %add.ptr.i, i32 noundef %num_msix) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end45.cleanup_crit_edge, label %if.end50

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  %6 = tail call i32 @llvm.smin.i32(i32 %call47, i32 %num_msix)
  %fw_cap = getelementptr i8, ptr %1, i32 2696
  %7 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_cap, align 8
  %and54 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.else, label %if.then56

if.then56:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %cp_nr_rings = getelementptr i8, ptr %1, i32 2540
  %9 = ptrtoint ptr %cp_nr_rings to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cp_nr_rings, align 4
  br label %if.end59

if.else:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %total_irqs = getelementptr i8, ptr %1, i32 2668
  %11 = ptrtoint ptr %total_irqs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %total_irqs, align 4
  %13 = tail call i32 @llvm.smin.i32(i32 %12, i32 %call46)
  %sub = sub i32 %13, %6
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then56
  %idx.0 = phi i32 [ %10, %if.then56 ], [ %sub, %if.else ]
  %conv = trunc i32 %idx.0 to i16
  %msix_base = getelementptr inbounds %struct.bnxt_en_dev, ptr %edev, i32 0, i32 4, i32 0, i32 5
  %14 = ptrtoint ptr %msix_base to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %msix_base, align 4
  %conv62 = trunc i32 %6 to i16
  %15 = ptrtoint ptr %msix_requested to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv62, ptr %msix_requested, align 2
  %add = add i32 %idx.0, %6
  %total_irqs67 = getelementptr i8, ptr %1, i32 2668
  %16 = ptrtoint ptr %total_irqs67 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %total_irqs67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add)
  %cmp68 = icmp slt i32 %17, %add
  br i1 %cmp68, label %if.end59.if.then76_crit_edge, label %lor.lhs.false

if.end59.if.then76_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then76

lor.lhs.false:                                    ; preds = %if.end59
  %18 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fw_cap, align 8
  %and71 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %lor.lhs.false.if.end90_crit_edge, label %land.lhs.true

lor.lhs.false.if.end90_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

land.lhs.true:                                    ; preds = %lor.lhs.false
  %resv_irqs = getelementptr i8, ptr %1, i32 3658
  %20 = ptrtoint ptr %resv_irqs to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %resv_irqs, align 2
  %conv73 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv73)
  %cmp74 = icmp sgt i32 %add, %conv73
  br i1 %cmp74, label %land.lhs.true.if.then76_crit_edge, label %land.lhs.true.if.end90_crit_edge

land.lhs.true.if.end90_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

land.lhs.true.if.then76_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then76

if.then76:                                        ; preds = %land.lhs.true.if.then76_crit_edge, %if.end59.if.then76_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.else81, label %if.then78

if.then78:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  %call79 = tail call i32 @bnxt_close_nic(ptr noundef %add.ptr.i, i1 noundef zeroext true, i1 noundef zeroext false) #12
  %call80 = tail call i32 @bnxt_open_nic(ptr noundef %add.ptr.i, i1 noundef zeroext true, i1 noundef zeroext false) #12
  br label %if.end84

if.else81:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  %call82 = tail call i32 @bnxt_reserve_rings(ptr noundef %add.ptr.i, i1 noundef zeroext true) #12
  br label %if.end84

if.end84:                                         ; preds = %if.else81, %if.then78
  %rc.0 = phi i32 [ %call80, %if.then78 ], [ %call82, %if.else81 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool85.not = icmp eq i32 %rc.0, 0
  br i1 %tobool85.not, label %if.end84.if.end90_crit_edge, label %if.then86

if.end84.if.end90_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

if.then86:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %msix_requested to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %msix_requested, align 2
  br label %cleanup

if.end90:                                         ; preds = %if.end84.if.end90_crit_edge, %land.lhs.true.if.end90_crit_edge, %lor.lhs.false.if.end90_crit_edge
  %25 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fw_cap, align 8
  %and92 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.end90.if.end110_crit_edge, label %if.then94

if.end90.if.end110_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

if.then94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  %resv_irqs95 = getelementptr i8, ptr %1, i32 3658
  %27 = ptrtoint ptr %resv_irqs95 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %resv_irqs95, align 2
  %conv96 = zext i16 %28 to i32
  %cp_nr_rings97 = getelementptr i8, ptr %1, i32 2540
  %29 = ptrtoint ptr %cp_nr_rings97 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cp_nr_rings97, align 4
  %sub98 = sub i32 %conv96, %30
  %31 = tail call i32 @llvm.smin.i32(i32 %sub98, i32 %6)
  %conv106 = trunc i32 %31 to i16
  %32 = ptrtoint ptr %msix_requested to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv106, ptr %msix_requested, align 2
  br label %if.end110

if.end110:                                        ; preds = %if.then94, %if.end90.if.end110_crit_edge
  %avail_msix.1 = phi i32 [ %31, %if.then94 ], [ %6, %if.end90.if.end110_crit_edge ]
  tail call fastcc void @bnxt_fill_msix_vecs(ptr noundef %add.ptr.i, ptr noundef %ent)
  %flags111 = getelementptr inbounds %struct.bnxt_en_dev, ptr %edev, i32 0, i32 2
  %33 = ptrtoint ptr %flags111 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags111, align 4
  %or = or i32 %34, 4
  store i32 %or, ptr %flags111, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %if.then86, %if.end45.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then86 ], [ %avail_msix.1, %if.end110 ], [ -22, %if.end30.cleanup_crit_edge ], [ -19, %if.end39.cleanup_crit_edge ], [ -11, %if.end42.cleanup_crit_edge ], [ -12, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_free_msix_vecs(ptr nocapture noundef %edev, i32 noundef %ulp_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %call1 = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b63 = load i1, ptr @bnxt_free_msix_vecs.__already_done, align 1
  br i1 %.b63, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !56

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @bnxt_free_msix_vecs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 187, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str, i32 noundef 187) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ulp_id)
  %cmp.not = icmp eq i32 %ulp_id, 0
  br i1 %cmp.not, label %if.end39, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end39:                                         ; preds = %if.end30
  %flags = getelementptr inbounds %struct.bnxt_en_dev, ptr %edev, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.end39.cleanup_crit_edge, label %if.end42

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end42:                                         ; preds = %if.end39
  %msix_requested = getelementptr inbounds %struct.bnxt_en_dev, ptr %edev, i32 0, i32 4, i32 0, i32 4
  %4 = ptrtoint ptr %msix_requested to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %msix_requested, align 2
  %and44 = and i32 %3, -5
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and44, ptr %flags, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i = icmp ne i32 %and1.i.i, 0
  %and47 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %or.cond = select i1 %tobool.i, i1 %tobool48.not, i1 false
  br i1 %or.cond, label %if.then49, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then49:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %call50 = tail call i32 @bnxt_close_nic(ptr noundef %add.ptr.i, i1 noundef zeroext true, i1 noundef zeroext false) #12
  %call51 = tail call i32 @bnxt_open_nic(ptr noundef %add.ptr.i, i1 noundef zeroext true, i1 noundef zeroext false) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end42.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end30.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ], [ 0, %if.then49 ], [ 0, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_send_msg(ptr nocapture noundef readonly %edev, i32 noundef %ulp_id, ptr nocapture noundef readonly %fw_msg) #2 align 64 {
entry:
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #12
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ulp_id)
  %cmp.not = icmp eq i32 %ulp_id, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fw_reset_state = getelementptr i8, ptr %1, i32 3592
  %3 = ptrtoint ptr %fw_reset_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fw_reset_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = call i32 @__hwrm_req_init(ptr noundef %add.ptr.i, ptr noundef nonnull %req, i16 noundef zeroext 0, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req, align 4
  %7 = ptrtoint ptr %fw_msg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw_msg, align 4
  %msg_len = getelementptr inbounds %struct.bnxt_fw_msg, ptr %fw_msg, i32 0, i32 1
  %9 = ptrtoint ptr %msg_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_len, align 4
  %call5 = call i32 @hwrm_req_replace(ptr noundef %add.ptr.i, ptr noundef %6, ptr noundef %8, i32 noundef %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %11 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req, align 4
  %timeout = getelementptr inbounds %struct.bnxt_fw_msg, ptr %fw_msg, i32 0, i32 4
  %13 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %timeout, align 4
  call void @hwrm_req_timeout(ptr noundef %add.ptr.i, ptr noundef %12, i32 noundef %14) #12
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %req, align 4
  %call9 = call ptr @hwrm_req_hold(ptr noundef %add.ptr.i, ptr noundef %16) #12
  %17 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %req, align 4
  %call10 = call i32 @hwrm_req_send(ptr noundef %add.ptr.i, ptr noundef %18) #12
  %resp_len11 = getelementptr inbounds %struct.output, ptr %call9, i32 0, i32 3
  %19 = ptrtoint ptr %resp_len11 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %resp_len11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool12.not = icmp eq i16 %20, 0
  br i1 %tobool12.not, label %if.end8.if.end20_crit_edge, label %if.then13

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %conv = zext i16 %21 to i32
  %resp_max_len = getelementptr inbounds %struct.bnxt_fw_msg, ptr %fw_msg, i32 0, i32 3
  %22 = ptrtoint ptr %resp_max_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resp_max_len, align 4
  %24 = call i32 @llvm.umin.i32(i32 %23, i32 %conv)
  %resp19 = getelementptr inbounds %struct.bnxt_fw_msg, ptr %fw_msg, i32 0, i32 2
  %25 = ptrtoint ptr %resp19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resp19, align 4
  %27 = call ptr @memcpy(ptr %26, ptr %call9, i32 %24)
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %if.end8.if.end20_crit_edge
  %28 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %req, align 4
  call void @hwrm_req_drop(ptr noundef %add.ptr.i, ptr noundef %29) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end20 ], [ -16, %land.lhs.true.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_register_async_events(ptr nocapture noundef %edev, i32 noundef %ulp_id, ptr noundef %events_bmap, i16 noundef zeroext %max_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ulp_id)
  %cmp = icmp sgt i32 %ulp_id, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %async_events_bmap = getelementptr %struct.bnxt_en_dev, ptr %edev, i32 0, i32 4, i32 %ulp_id, i32 2
  %2 = ptrtoint ptr %async_events_bmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %events_bmap, ptr %async_events_bmap, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !59
  %max_async_event_id = getelementptr %struct.bnxt_en_dev, ptr %edev, i32 0, i32 4, i32 %ulp_id, i32 3
  %3 = ptrtoint ptr %max_async_event_id to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %max_id, ptr %max_async_event_id, align 4
  %conv = zext i16 %max_id to i32
  %add = add nuw nsw i32 %conv, 1
  %call4 = tail call i32 @bnxt_hwrm_func_drv_rgtr(ptr noundef %add.ptr.i, ptr noundef %events_bmap, i32 noundef %add, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_get_max_func_stat_ctxs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_hwrm_vnic_cfg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_hwrm_func_drv_rgtr(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_get_max_func_cp_rings(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_get_avail_msix(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_close_nic(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_open_nic(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_reserve_rings(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hwrm_req_init(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwrm_req_replace(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwrm_req_timeout(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwrm_req_hold(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwrm_req_send(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwrm_req_drop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !22, !23, !25, !26, !28, !30, !31, !33, !35, !37, !39}
!llvm.named.register.sp = !{!41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c", i32 294, i32 9}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c", i32 318, i32 9}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c", i32 338, i32 9}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c", i32 362, i32 9}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c", i32 383, i32 9}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c", i32 405, i32 9}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c", i32 435, i32 9}
!17 = !{ptr @__ksymtab_bnxt_ulp_probe, !18, !"__ksymtab_bnxt_ulp_probe", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c", i32 502, i32 1}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @bnxt_en_ops_tbl, !27, !"bnxt_en_ops_tbl", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c", i32 469, i32 33}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c", i32 35, i32 2}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c", i32 41, i32 23}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c", i32 72, i32 2}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c", i32 78, i32 23}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c", i32 129, i32 2}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c", i32 187, i32 2}
!41 = !{!"sp"}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2149365944}
!52 = !{i64 2149366210}
!53 = !{i64 2148349785, i64 2148349811, i64 2148349840, i64 2148349874, i64 2148349905, i64 2148349928}
!54 = !{i64 2148352250, i64 2148352276, i64 2148352305, i64 2148352339, i64 2148352370, i64 2148352393}
!55 = !{i64 2159260143}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 2159230468}
!58 = !{!"auto-init"}
!59 = !{i64 2159260318}
