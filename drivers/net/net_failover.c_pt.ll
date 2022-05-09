; ModuleID = '/llk/IR_all_yes/drivers/net/net_failover.c_pt.bc'
source_filename = "../drivers/net/net_failover.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+net_failover_create\22, \22a\22\09"
module asm "\09.weak\09__crc_net_failover_create\09\09\09\09"
module asm "\09.long\09__crc_net_failover_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_failover_create:\09\09\09\09\09"
module asm "\09.asciz \09\22net_failover_create\22\09\09\09\09\09"
module asm "__kstrtabns_net_failover_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+net_failover_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_net_failover_destroy\09\09\09\09"
module asm "\09.long\09__crc_net_failover_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_failover_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22net_failover_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_net_failover_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.failover_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon.23 }
%union.anon.23 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.122, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.26 }
%union.anon.26 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.22 }
%union.anon.22 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.122 = type { ptr }
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
%struct.failover = type { %struct.list_head, ptr, ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.netdev_lag_lower_state_info = type { i8 }

@net_failover_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 722, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to allocate failover_netdev!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net_failover_create\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/net/net_failover.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@net_failover_create._entry_ptr = internal global ptr @net_failover_create._entry, section ".printk_index", align 4
@failover_dev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @net_failover_open, ptr @net_failover_close, ptr @net_failover_start_xmit, ptr @passthru_features_check, ptr @net_failover_select_queue, ptr null, ptr @net_failover_set_rx_mode, ptr null, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @net_failover_change_mtu, ptr null, ptr null, ptr @net_failover_get_stats, ptr null, ptr null, ptr null, ptr @net_failover_vlan_rx_add_vid, ptr @net_failover_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@failover_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @nfo_ethtool_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfo_ethtool_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@net_failover_create._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 758, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to register failover_dev!\0A\00", [62 x i8] zeroinitializer }, align 32
@net_failover_create._entry_ptr.7 = internal global ptr @net_failover_create._entry.5, section ".printk_index", align 4
@net_failover_ops = internal global { %struct.failover_ops, [36 x i8] } { %struct.failover_ops { ptr @net_failover_slave_pre_register, ptr @net_failover_slave_register, ptr @net_failover_slave_pre_unregister, ptr @net_failover_slave_unregister, ptr @net_failover_slave_link_change, ptr @net_failover_slave_name_change, ptr @net_failover_handle_frame }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_net_failover_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_failover_create = external dso_local constant [0 x i8], align 1
@__ksymtab_net_failover_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_failover_create to i32), ptr @__kstrtab_net_failover_create, ptr @__kstrtabns_net_failover_create }, section "___ksymtab_gpl+net_failover_create", align 4
@net_failover_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@net_failover_destroy.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@net_failover_destroy.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_net_failover_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_failover_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_net_failover_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_failover_destroy to i32), ptr @__kstrtab_net_failover_destroy, ptr @__kstrtabns_net_failover_destroy }, section "___ksymtab_gpl+net_failover_destroy", align 4
@__initcall__kmod_net_failover__407_831_net_failover_init6 = internal global ptr @net_failover_init, section ".initcall6.init", align 4
@__exitcall_net_failover_exit = internal global ptr @net_failover_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description408 = internal constant [65 x i8] c"net_failover.description=Failover driver for Paravirtual drivers\00", section ".modinfo", align 1
@__UNIQUE_ID_file409 = internal constant [43 x i8] c"net_failover.file=drivers/net/net_failover\00", section ".modinfo", align 1
@__UNIQUE_ID_license410 = internal constant [28 x i8] c"net_failover.license=GPL v2\00", section ".modinfo", align 1
@net_failover_open.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_open.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_close.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_close.__warned.13 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_start_xmit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_start_xmit.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_select_queue.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_set_rx_mode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_set_rx_mode.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@net_failover_change_mtu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_change_mtu.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_get_stats.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_get_stats.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_vlan_rx_add_vid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_vlan_rx_add_vid.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_vlan_rx_kill_vid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_vlan_rx_kill_vid.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"net_failover\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@nfo_ethtool_get_link_ksettings.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfo_ethtool_get_link_ksettings.__warned.25 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_slave_pre_register.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_slave_pre_register.__warned.26 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s attempting to register as slave dev when %s already present\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"standby\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"primary\00", [24 x i8] zeroinitializer }, align 32
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str.30 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Device %s is VLAN challenged and failover device has VLAN set up\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"unable to change mtu of %s to %u register failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Opening slave %s failed err:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to add vlan ids to device %s err:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@net_failover_slave_register.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_slave_register.__warned.34 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failover %s slave:%s registered\0A\00", [63 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@net_failover_compute_features.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_compute_features.__warned.36 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_slave_pre_unregister.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_slave_pre_unregister.__warned.37 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_slave_unregister.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_slave_unregister.__warned.38 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_slave_unregister.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failover %s slave:%s unregistered\0A\00", [61 x i8] zeroinitializer }, align 32
@net_failover_slave_link_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_slave_link_change.__warned.40 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_slave_name_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_slave_name_change.__warned.41 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_handle_frame.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_handle_frame.__warned.42 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_failover_handle_frame.__warned.43 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 722, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"failover_dev_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 307, i32 36 }
@___asan_gen_.65 = private unnamed_addr constant [21 x i8] c"failover_ethtool_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 352, i32 33 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 758, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"net_failover_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 687, i32 28 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 801, i32 17 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 808, i32 14 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 695, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 723, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 327, i32 27 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 328, i32 28 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 474, i32 28 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 476, i32 26 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 476, i32 38 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 490, i32 28 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 511, i32 28 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 521, i32 29 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 534, i32 28 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 561, i32 28 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.123 = private constant [30 x i8] c"../drivers/net/net_failover.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 630, i32 28 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_description408, ptr @__UNIQUE_ID_file409, ptr @__UNIQUE_ID_license410, ptr @__exitcall_net_failover_exit, ptr @__initcall__kmod_net_failover__407_831_net_failover_init6, ptr @__ksymtab_net_failover_create, ptr @__ksymtab_net_failover_destroy, ptr @net_failover_create._entry, ptr @net_failover_create._entry.5, ptr @net_failover_create._entry_ptr, ptr @net_failover_create._entry_ptr.7, ptr @net_failover_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @failover_dev_ops, ptr @failover_ethtool_ops, ptr @.str.6, ptr @net_failover_ops, ptr @.str.8, ptr @.str.10, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.39], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_failover_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @failover_dev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @failover_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_failover_create._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_failover_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @net_failover_create(ptr nocapture noundef readonly %standby_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.net_device, ptr %standby_dev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 632, i32 noundef 16, i32 noundef 16) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %standby_dev, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %nd_net.i62 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i62 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %nd_net.i62, align 4
  %parent5 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %5 = ptrtoint ptr %parent5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %parent5, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %6 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @failover_dev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %7 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @failover_ethtool_ops, ptr %ethtool_ops, align 16
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 15
  %8 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %priv_flags, align 16
  %or = and i64 %9, -530465
  %and = or i64 %or, 528384
  store i64 %and, ptr %priv_flags, align 16
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %10 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %12 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 266175465, ptr %hw_features, align 8
  %or14 = or i64 %11, 266187753
  store i64 %or14, ptr %features, align 16
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %standby_dev, i32 0, i32 86
  %13 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr, align 64
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 56
  %15 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %16 to i32
  tail call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef %14, i32 noundef %conv.i) #11
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %standby_dev, i32 0, i32 30
  %17 = ptrtoint ptr %min_mtu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %min_mtu, align 8
  %min_mtu15 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 30
  %19 = ptrtoint ptr %min_mtu15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %min_mtu15, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %standby_dev, i32 0, i32 31
  %20 = ptrtoint ptr %max_mtu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_mtu, align 4
  %max_mtu16 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %22 = ptrtoint ptr %max_mtu16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %max_mtu16, align 4
  %call17 = tail call i32 @register_netdev(ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end23, label %do.end22

do.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.6) #14
  br label %err_register_netdev

if.end23:                                         ; preds = %if.end
  tail call void @netif_carrier_off(ptr noundef nonnull %call) #11
  %call24 = tail call ptr @failover_register(ptr noundef nonnull %call, ptr noundef nonnull @net_failover_ops) #11
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %call24 to i32
  tail call void @unregister_netdev(ptr noundef nonnull %call) #11
  br label %err_register_netdev

err_register_netdev:                              ; preds = %if.then26, %do.end22
  %err.0 = phi i32 [ %call17, %do.end22 ], [ %23, %if.then26 ]
  tail call void @free_netdev(ptr noundef nonnull %call) #11
  %24 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_register_netdev, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %24, %err_register_netdev ], [ inttoptr (i32 -12 to ptr), %do.end ], [ %call24, %if.end23.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @failover_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @net_failover_destroy(ptr noundef %failover) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %failover, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %failover_dev1 = getelementptr inbounds %struct.failover, ptr %failover, i32 0, i32 1
  %0 = ptrtoint ptr %failover_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %failover_dev1, align 4
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.do.end11_crit_edge

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true6

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b62 = load i1, ptr @net_failover_destroy.__warned, align 1
  br i1 %.b62, label %land.lhs.true6.do.end11_crit_edge, label %if.then8

land.lhs.true6.do.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 801, ptr noundef nonnull @.str.8) #11
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true6.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %if.end.do.end11_crit_edge
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @netif_device_detach(ptr noundef %1) #11
  tail call void @rtnl_lock() #11
  %call15 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call15, label %do.end11.do.end24_crit_edge, label %land.lhs.true16

do.end11.do.end24_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

land.lhs.true16:                                  ; preds = %do.end11
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true16.do.end24_crit_edge, label %land.lhs.true19

land.lhs.true16.do.end24_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %.b5861 = load i1, ptr @net_failover_destroy.__warned.9, align 1
  br i1 %.b5861, label %land.lhs.true19.do.end24_crit_edge, label %if.then21

land.lhs.true19.do.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_destroy.__warned.9, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 808, ptr noundef nonnull @.str.10) #11
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %land.lhs.true19.do.end24_crit_edge, %land.lhs.true16.do.end24_crit_edge, %do.end11.do.end24_crit_edge
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %tobool26.not = icmp eq ptr %3, null
  br i1 %tobool26.not, label %do.end24.do.body30_crit_edge, label %if.then27

do.end24.do.body30_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body30

if.then27:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = tail call i32 @failover_slave_unregister(ptr noundef nonnull %3) #11
  br label %do.body30

do.body30:                                        ; preds = %if.then27, %do.end24.do.body30_crit_edge
  %call31 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call31, label %do.body30.do.end40_crit_edge, label %land.lhs.true32

do.body30.do.end40_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40

land.lhs.true32:                                  ; preds = %do.body30
  %call33 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true32.do.end40_crit_edge, label %land.lhs.true35

land.lhs.true32.do.end40_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %.b5960 = load i1, ptr @net_failover_destroy.__warned.11, align 1
  br i1 %.b5960, label %land.lhs.true35.do.end40_crit_edge, label %if.then37

land.lhs.true35.do.end40_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40

if.then37:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_destroy.__warned.11, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 812, ptr noundef nonnull @.str.10) #11
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %land.lhs.true35.do.end40_crit_edge, %land.lhs.true32.do.end40_crit_edge, %do.body30.do.end40_crit_edge
  %standby_dev = getelementptr i8, ptr %1, i32 2308
  %4 = ptrtoint ptr %standby_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %standby_dev, align 4
  %tobool42.not = icmp eq ptr %5, null
  br i1 %tobool42.not, label %do.end40.if.end45_crit_edge, label %if.then43

do.end40.if.end45_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then43:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  %call44 = tail call i32 @failover_slave_unregister(ptr noundef nonnull %5) #11
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %do.end40.if.end45_crit_edge
  tail call void @failover_unregister(ptr noundef nonnull %failover) #11
  tail call void @unregister_netdevice_queue(ptr noundef %1, ptr noundef null) #11
  tail call void @rtnl_unlock() #11
  tail call void @free_netdev(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @failover_slave_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @failover_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @net_failover_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @net_failover_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_failover_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call1, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b65 = load i1, ptr @net_failover_open.__warned, align 1
  br i1 %.b65, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_open.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 41, ptr noundef nonnull @.str.10) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %do.end.do.body13_crit_edge, label %if.then7

do.end.do.body13_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body13

if.then7:                                         ; preds = %do.end
  %call8 = tail call i32 @dev_open(ptr noundef nonnull %1, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.do.body13_crit_edge, label %if.then7.err_primary_open_crit_edge

if.then7.err_primary_open_crit_edge:              ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_primary_open

if.then7.do.body13_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body13

do.body13:                                        ; preds = %if.then7.do.body13_crit_edge, %do.end.do.body13_crit_edge
  %call14 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call14, label %do.body13.do.end23_crit_edge, label %land.lhs.true15

do.body13.do.end23_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

land.lhs.true15:                                  ; preds = %do.body13
  %call16 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true15.do.end23_crit_edge, label %land.lhs.true18

land.lhs.true15.do.end23_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %.b6364 = load i1, ptr @net_failover_open.__warned.12, align 1
  br i1 %.b6364, label %land.lhs.true18.do.end23_crit_edge, label %if.then20

land.lhs.true18.do.end23_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_open.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 48, ptr noundef nonnull @.str.10) #11
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %land.lhs.true18.do.end23_crit_edge, %land.lhs.true15.do.end23_crit_edge, %do.body13.do.end23_crit_edge
  %standby_dev25 = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %standby_dev25 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %standby_dev25, align 4
  %tobool26.not = icmp eq ptr %3, null
  br i1 %tobool26.not, label %do.end23.if.end32_crit_edge, label %if.then27

do.end23.if.end32_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then27:                                        ; preds = %do.end23
  %call28 = tail call i32 @dev_open(ptr noundef nonnull %3, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then27.if.end32_crit_edge, label %err_standby_open

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.end32:                                         ; preds = %if.then27.if.end32_crit_edge, %do.end23.if.end32_crit_edge
  br i1 %tobool6.not, label %if.end32.lor.lhs.false_crit_edge, label %land.lhs.true34

if.end32.lor.lhs.false_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true34:                                  ; preds = %if.end32
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true34.lor.lhs.false_crit_edge, label %net_failover_xmit_ready.exit

land.lhs.true34.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

net_failover_xmit_ready.exit:                     ; preds = %land.lhs.true34
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %net_failover_xmit_ready.exit.if.then39_crit_edge, label %net_failover_xmit_ready.exit.lor.lhs.false_crit_edge

net_failover_xmit_ready.exit.lor.lhs.false_crit_edge: ; preds = %net_failover_xmit_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

net_failover_xmit_ready.exit.if.then39_crit_edge: ; preds = %net_failover_xmit_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

lor.lhs.false:                                    ; preds = %net_failover_xmit_ready.exit.lor.lhs.false_crit_edge, %land.lhs.true34.lor.lhs.false_crit_edge, %if.end32.lor.lhs.false_crit_edge
  br i1 %tobool26.not, label %lor.lhs.false.cleanup_crit_edge, label %land.lhs.true37

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true37:                                  ; preds = %lor.lhs.false
  %state.i.i66 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %state.i.i66 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i.i66, align 4
  %and1.i.i.i67 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i67)
  %tobool.i.not.i68 = icmp eq i32 %and1.i.i.i67, 0
  br i1 %tobool.i.not.i68, label %land.lhs.true37.cleanup_crit_edge, label %net_failover_xmit_ready.exit71

land.lhs.true37.cleanup_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

net_failover_xmit_ready.exit71:                   ; preds = %land.lhs.true37
  %11 = ptrtoint ptr %state.i.i66 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i.i66, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i69 = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i69, label %net_failover_xmit_ready.exit71.if.then39_crit_edge, label %net_failover_xmit_ready.exit71.cleanup_crit_edge

net_failover_xmit_ready.exit71.cleanup_crit_edge: ; preds = %net_failover_xmit_ready.exit71
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

net_failover_xmit_ready.exit71.if.then39_crit_edge: ; preds = %net_failover_xmit_ready.exit71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then39

if.then39:                                        ; preds = %net_failover_xmit_ready.exit71.if.then39_crit_edge, %net_failover_xmit_ready.exit.if.then39_crit_edge
  tail call void @netif_carrier_on(ptr noundef %dev) #11
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %14 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp4.not.i = icmp eq i32 %15, 0
  br i1 %cmp4.not.i, label %if.then39.cleanup_crit_edge, label %for.body.lr.ph.i

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.then39
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %17, i32 %i.05.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #11
  %inc.i = add nuw i32 %i.05.i, 1
  %18 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %19
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

err_standby_open:                                 ; preds = %if.then27
  br i1 %tobool6.not, label %err_standby_open.err_primary_open_crit_edge, label %if.then42

err_standby_open.err_primary_open_crit_edge:      ; preds = %err_standby_open
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_primary_open

if.then42:                                        ; preds = %err_standby_open
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dev_close(ptr noundef nonnull %1) #11
  br label %err_primary_open

err_primary_open:                                 ; preds = %if.then42, %err_standby_open.err_primary_open_crit_edge, %if.then7.err_primary_open_crit_edge
  %err.0 = phi i32 [ %call8, %if.then7.err_primary_open_crit_edge ], [ %call28, %if.then42 ], [ %call28, %err_standby_open.err_primary_open_crit_edge ]
  tail call fastcc void @local_bh_disable() #11
  %20 = tail call i32 @llvm.read_register.i32(metadata !142) #11
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #11
  %num_tx_queues.i72 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %24 = ptrtoint ptr %num_tx_queues.i72 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_tx_queues.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp13.not.i = icmp eq i32 %25, 0
  br i1 %cmp13.not.i, label %err_primary_open.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i74

err_primary_open.netif_tx_disable.exit_crit_edge: ; preds = %err_primary_open
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_tx_disable.exit

for.body.lr.ph.i74:                               ; preds = %err_primary_open
  %_tx.i.i73 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i78

for.body.i78:                                     ; preds = %for.body.i78.for.body.i78_crit_edge, %for.body.lr.ph.i74
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i74 ], [ %inc.i76, %for.body.i78.for.body.i78_crit_edge ]
  %26 = ptrtoint ptr %_tx.i.i73 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %_tx.i.i73, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %27, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #11
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %27, i32 %i.014.i, i32 11
  %28 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 %23, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i75 = getelementptr %struct.netdev_queue, ptr %27, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i75) #11
  %29 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #11
  %inc.i76 = add nuw i32 %i.014.i, 1
  %30 = ptrtoint ptr %num_tx_queues.i72 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_tx_queues.i72, align 4
  %cmp.i77 = icmp ult i32 %inc.i76, %31
  br i1 %cmp.i77, label %for.body.i78.for.body.i78_crit_edge, label %for.body.i78.netif_tx_disable.exit_crit_edge

for.body.i78.netif_tx_disable.exit_crit_edge:     ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_tx_disable.exit

for.body.i78.for.body.i78_crit_edge:              ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i78

netif_tx_disable.exit:                            ; preds = %for.body.i78.netif_tx_disable.exit_crit_edge, %err_primary_open.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #11
  tail call fastcc void @local_bh_enable() #11
  br label %cleanup

cleanup:                                          ; preds = %netif_tx_disable.exit, %for.body.i.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %net_failover_xmit_ready.exit71.cleanup_crit_edge, %land.lhs.true37.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %netif_tx_disable.exit ], [ 0, %net_failover_xmit_ready.exit71.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.then39.cleanup_crit_edge ], [ 0, %land.lhs.true37.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_failover_close(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call fastcc void @local_bh_disable() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !142) #11
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #11
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %4 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13.not.i = icmp eq i32 %5, 0
  br i1 %cmp13.not.i, label %entry.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

entry.netif_tx_disable.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #11
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %i.014.i, i32 11
  %8 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %3, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %7, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %9 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #11
  %inc.i = add nuw i32 %i.014.i, 1
  %10 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %entry.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #11
  tail call fastcc void @local_bh_enable() #11
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call1, label %netif_tx_disable.exit.do.end_crit_edge, label %land.lhs.true

netif_tx_disable.exit.do.end_crit_edge:           ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %netif_tx_disable.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b31 = load i1, ptr @net_failover_close.__warned, align 1
  br i1 %.b31, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_close.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 78, ptr noundef nonnull @.str.10) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %netif_tx_disable.exit.do.end_crit_edge
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %do.end.do.body8_crit_edge, label %if.then6

do.end.do.body8_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dev_close(ptr noundef nonnull %13) #11
  br label %do.body8

do.body8:                                         ; preds = %if.then6, %do.end.do.body8_crit_edge
  %call9 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call9, label %do.body8.do.end18_crit_edge, label %land.lhs.true10

do.body8.do.end18_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

land.lhs.true10:                                  ; preds = %do.body8
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true10.do.end18_crit_edge, label %land.lhs.true13

land.lhs.true10.do.end18_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %.b2930 = load i1, ptr @net_failover_close.__warned.13, align 1
  br i1 %.b2930, label %land.lhs.true13.do.end18_crit_edge, label %if.then15

land.lhs.true13.do.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_close.__warned.13, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 82, ptr noundef nonnull @.str.10) #11
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %land.lhs.true13.do.end18_crit_edge, %land.lhs.true10.do.end18_crit_edge, %do.body8.do.end18_crit_edge
  %standby_dev = getelementptr i8, ptr %dev, i32 2308
  %14 = ptrtoint ptr %standby_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %standby_dev, align 4
  %tobool20.not = icmp eq ptr %15, null
  br i1 %tobool20.not, label %do.end18.if.end22_crit_edge, label %if.then21

do.end18.if.end22_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then21:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dev_close(ptr noundef nonnull %15) #11
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %do.end18.if.end22_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_failover_start_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %add.ptr.i, align 8
  %call2 = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b53 = load i1, ptr @net_failover_start_xmit.__warned, align 1
  br i1 %.b53, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_start_xmit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 104, ptr noundef nonnull @.str.8) #11
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %do.end8.if.then12_crit_edge, label %lor.lhs.false

do.end8.if.then12_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

lor.lhs.false:                                    ; preds = %do.end8
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.if.then12_crit_edge, label %net_failover_xmit_ready.exit

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

net_failover_xmit_ready.exit:                     ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %net_failover_xmit_ready.exit.if.end36_crit_edge, label %net_failover_xmit_ready.exit.if.then12_crit_edge

net_failover_xmit_ready.exit.if.then12_crit_edge: ; preds = %net_failover_xmit_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

net_failover_xmit_ready.exit.if.end36_crit_edge:  ; preds = %net_failover_xmit_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then12:                                        ; preds = %net_failover_xmit_ready.exit.if.then12_crit_edge, %lor.lhs.false.if.then12_crit_edge, %do.end8.if.then12_crit_edge
  %standby_dev = getelementptr i8, ptr %dev, i32 2308
  %7 = ptrtoint ptr %standby_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %standby_dev, align 4
  %call18 = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %if.then12.do.end28_crit_edge

if.then12.do.end28_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end28

land.lhs.true20:                                  ; preds = %if.then12
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b5152 = load i1, ptr @net_failover_start_xmit.__warned.14, align 1
  br i1 %.b5152, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_start_xmit.__warned.14, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 106, ptr noundef nonnull @.str.8) #11
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %if.then12.do.end28_crit_edge
  %tobool30.not = icmp eq ptr %8, null
  br i1 %tobool30.not, label %do.end28.if.then33_crit_edge, label %lor.lhs.false31

do.end28.if.then33_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

lor.lhs.false31:                                  ; preds = %do.end28
  %state.i.i54 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %state.i.i54 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i.i54, align 4
  %and1.i.i.i55 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i55)
  %tobool.i.not.i56 = icmp eq i32 %and1.i.i.i55, 0
  br i1 %tobool.i.not.i56, label %lor.lhs.false31.if.then33_crit_edge, label %net_failover_xmit_ready.exit59

lor.lhs.false31.if.then33_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

net_failover_xmit_ready.exit59:                   ; preds = %lor.lhs.false31
  %11 = ptrtoint ptr %state.i.i54 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i.i54, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i57 = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i57, label %net_failover_xmit_ready.exit59.if.end36_crit_edge, label %net_failover_xmit_ready.exit59.if.then33_crit_edge

net_failover_xmit_ready.exit59.if.then33_crit_edge: ; preds = %net_failover_xmit_ready.exit59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then33

net_failover_xmit_ready.exit59.if.end36_crit_edge: ; preds = %net_failover_xmit_ready.exit59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then33:                                        ; preds = %net_failover_xmit_ready.exit59.if.then33_crit_edge, %lor.lhs.false31.if.then33_crit_edge, %do.end28.if.then33_crit_edge
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 38
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_dropped.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %tx_dropped.i, i32 1, i32 3, i32 1) #11
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_dropped.i, ptr %tx_dropped.i, i32 1, ptr elementtype(i32) %tx_dropped.i) #11, !srcloc !152
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %cleanup

if.end36:                                         ; preds = %net_failover_xmit_ready.exit59.if.end36_crit_edge, %net_failover_xmit_ready.exit.if.end36_crit_edge
  %xmit_dev.0 = phi ptr [ %1, %net_failover_xmit_ready.exit.if.end36_crit_edge ], [ %8, %net_failover_xmit_ready.exit59.if.end36_crit_edge ]
  %15 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %xmit_dev.0, ptr %15, align 8
  %slave_dev_queue_mapping = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %17 = ptrtoint ptr %slave_dev_queue_mapping to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %slave_dev_queue_mapping, align 4
  %queue_mapping = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %19 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %queue_mapping, align 8
  %call38 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then33
  %retval.0 = phi i32 [ %call38, %if.end36 ], [ 0, %if.then33 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @passthru_features_check(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @net_failover_select_queue(ptr noundef %dev, ptr noundef %skb, ptr noundef %sb_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %add.ptr.i, align 8
  %call3 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b64 = load i1, ptr @net_failover_select_queue.__warned, align 1
  br i1 %.b64, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_select_queue.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 125, ptr noundef nonnull @.str.8) #11
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %entry.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %1, null
  br i1 %tobool11.not, label %if.end20, label %if.then12

if.then12:                                        ; preds = %do.end9
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops, align 8
  %ndo_select_queue = getelementptr inbounds %struct.net_device_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ndo_select_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndo_select_queue, align 4
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call zeroext i16 %5(ptr noundef nonnull %1, ptr noundef %skb, ptr noundef %sb_dev) #11
  br label %if.end18

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call zeroext i16 @netdev_pick_tx(ptr noundef nonnull %1, ptr noundef %skb, ptr noundef null) #11
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then14
  %txq.0 = phi i16 [ %call16, %if.then14 ], [ %call17, %if.else ]
  %queue_mapping = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %6 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %queue_mapping, align 8
  %slave_dev_queue_mapping = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %slave_dev_queue_mapping to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %slave_dev_queue_mapping, align 4
  br label %cleanup

if.end20:                                         ; preds = %do.end9
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %9 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %queue_mapping.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.i.not = icmp eq i16 %10, 0
  %sub.i = add i16 %10, -1
  %spec.select = select i1 %cmp.i.not, i16 0, i16 %sub.i
  %slave_dev_queue_mapping26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %slave_dev_queue_mapping26 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %slave_dev_queue_mapping26, align 4
  %conv27 = zext i16 %spec.select to i32
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 105
  %12 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %real_num_tx_queues, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv27)
  %cmp.not = icmp ugt i32 %13, %conv27
  br i1 %cmp.not, label %if.end20.cleanup_crit_edge, label %do.body32.preheader, !prof !153

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body32.preheader:                              ; preds = %if.end20
  %14 = trunc i32 %13 to i16
  br label %do.body32

do.body32:                                        ; preds = %do.body32.do.body32_crit_edge, %do.body32.preheader
  %txq.1 = phi i16 [ %conv35, %do.body32.do.body32_crit_edge ], [ %spec.select, %do.body32.preheader ]
  %conv35 = sub i16 %txq.1, %14
  %cmp39.not = icmp ult i16 %conv35, %14
  br i1 %cmp39.not, label %do.body32.cleanup_crit_edge, label %do.body32.do.body32_crit_edge

do.body32.do.body32_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body32

do.body32.cleanup_crit_edge:                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %do.body32.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end18
  %retval.0 = phi i16 [ %txq.0, %if.end18 ], [ %spec.select, %if.end20.cleanup_crit_edge ], [ %conv35, %do.body32.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net_failover_set_rx_mode(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = tail call i32 @llvm.read_register.i32(metadata !142) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !154
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %add.ptr.i, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b50 = load i1, ptr @net_failover_set_rx_mode.__warned, align 1
  br i1 %.b50, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_set_rx_mode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 250, ptr noundef nonnull @.str.8) #11
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end14_crit_edge, label %if.then11

do.end8.if.end14_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 @dev_uc_sync_multiple(ptr noundef nonnull %5, ptr noundef %dev) #11
  %call13 = tail call i32 @dev_mc_sync_multiple(ptr noundef nonnull %5, ptr noundef %dev) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %do.end8.if.end14_crit_edge
  %standby_dev = getelementptr i8, ptr %dev, i32 2308
  %6 = ptrtoint ptr %standby_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %standby_dev, align 4
  %call20 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %if.end14.do.end30_crit_edge

if.end14.do.end30_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30

land.lhs.true22:                                  ; preds = %if.end14
  %call23 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.do.end30_crit_edge, label %land.lhs.true25

land.lhs.true22.do.end30_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %.b4849 = load i1, ptr @net_failover_set_rx_mode.__warned.15, align 1
  br i1 %.b4849, label %land.lhs.true25.do.end30_crit_edge, label %if.then27

land.lhs.true25.do.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_set_rx_mode.__warned.15, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 256, ptr noundef nonnull @.str.8) #11
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.lhs.true25.do.end30_crit_edge, %land.lhs.true22.do.end30_crit_edge, %if.end14.do.end30_crit_edge
  %tobool32.not = icmp eq ptr %7, null
  br i1 %tobool32.not, label %do.end30.if.end36_crit_edge, label %if.then33

do.end30.if.end36_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then33:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #13
  %call34 = tail call i32 @dev_uc_sync_multiple(ptr noundef nonnull %7, ptr noundef %dev) #11
  %call35 = tail call i32 @dev_mc_sync_multiple(ptr noundef nonnull %7, ptr noundef %dev) #11
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %do.end30.if.end36_crit_edge
  %call.i51 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i51, label %if.end36.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i54

if.end36.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i54:                                ; preds = %if.end36
  %call1.i52 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52)
  %tobool.not.i53 = icmp eq i32 %call1.i52, 0
  br i1 %tobool.not.i53, label %land.lhs.true.i54.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i56

land.lhs.true.i54.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i56:                               ; preds = %land.lhs.true.i54
  %.b4.i55 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i55, label %land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge, label %if.then.i57

land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i57:                                      ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i57, %land.lhs.true2.i56.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i54.rcu_read_unlock.exit_crit_edge, %if.end36.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !155
  %8 = tail call i32 @llvm.read_register.i32(metadata !142) #11
  %and.i.i.i.i.i58 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i58 to ptr
  %preempt_count.i.i.i.i59 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i59, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i59, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_failover_change_mtu(ptr nocapture noundef %dev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call1, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b56 = load i1, ptr @net_failover_change_mtu.__warned, align 1
  br i1 %.b56, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_change_mtu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 221, ptr noundef nonnull @.str.10) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %do.end.do.body13_crit_edge, label %if.then7

do.end.do.body13_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body13

if.then7:                                         ; preds = %do.end
  %call8 = tail call i32 @dev_set_mtu(ptr noundef nonnull %1, i32 noundef %new_mtu) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.do.body13_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7.do.body13_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body13

do.body13:                                        ; preds = %if.then7.do.body13_crit_edge, %do.end.do.body13_crit_edge
  %call14 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call14, label %do.body13.do.end23_crit_edge, label %land.lhs.true15

do.body13.do.end23_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

land.lhs.true15:                                  ; preds = %do.body13
  %call16 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true15.do.end23_crit_edge, label %land.lhs.true18

land.lhs.true15.do.end23_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %.b5455 = load i1, ptr @net_failover_change_mtu.__warned.19, align 1
  br i1 %.b5455, label %land.lhs.true18.do.end23_crit_edge, label %if.then20

land.lhs.true18.do.end23_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end23

if.then20:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_change_mtu.__warned.19, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 228, ptr noundef nonnull @.str.10) #11
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %land.lhs.true18.do.end23_crit_edge, %land.lhs.true15.do.end23_crit_edge, %do.body13.do.end23_crit_edge
  %standby_dev25 = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %standby_dev25 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %standby_dev25, align 4
  %tobool26.not = icmp eq ptr %3, null
  br i1 %tobool26.not, label %do.end23.if.end36_crit_edge, label %if.then27

do.end23.if.end36_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then27:                                        ; preds = %do.end23
  %call28 = tail call i32 @dev_set_mtu(ptr noundef nonnull %3, i32 noundef %new_mtu) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then27.if.end36_crit_edge, label %if.then30

if.then27.if.end36_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then30:                                        ; preds = %if.then27
  br i1 %tobool6.not, label %if.then30.cleanup_crit_edge, label %if.then32

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu, align 4
  %call33 = tail call i32 @dev_set_mtu(ptr noundef nonnull %1, i32 noundef %5) #11
  br label %cleanup

if.end36:                                         ; preds = %if.then27.if.end36_crit_edge, %do.end23.if.end36_crit_edge
  %mtu37 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %mtu37 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %new_mtu, ptr %mtu37, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then32, %if.then30.cleanup_crit_edge, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ %call8, %if.then7.cleanup_crit_edge ], [ %call28, %if.then32 ], [ %call28, %if.then30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net_failover_get_stats(ptr noundef %dev, ptr nocapture noundef %stats) #0 align 64 {
entry:
  %temp = alloca %struct.rtnl_link_stats64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %temp) #11
  %0 = call ptr @memset(ptr %temp, i32 255, i32 192)
  %stats_lock = getelementptr i8, ptr %dev, i32 2888
  tail call void @_raw_spin_lock(ptr noundef %stats_lock) #11
  %failover_stats = getelementptr i8, ptr %dev, i32 2696
  %1 = call ptr @memcpy(ptr %stats, ptr %failover_stats, i32 192)
  %2 = tail call i32 @llvm.read_register.i32(metadata !142) #11
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !154
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %add.ptr.i, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b60 = load i1, ptr @net_failover_get_stats.__warned, align 1
  br i1 %.b60, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_get_stats.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 195, ptr noundef nonnull @.str.8) #11
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %do.end8.if.end14_crit_edge, label %if.then11

do.end8.if.end14_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then11:                                        ; preds = %do.end8
  %call12 = call ptr @dev_get_stats(ptr noundef nonnull %7, ptr noundef nonnull %temp) #11
  %primary_stats = getelementptr i8, ptr %dev, i32 2312
  br label %for.body.i

for.body.i:                                       ; preds = %if.end10.i.for.body.i_crit_edge, %if.then11
  %i.020.i = phi i32 [ 0, %if.then11 ], [ %inc.i, %if.end10.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i64, ptr %call12, i32 %i.020.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.i, align 8
  %arrayidx1.i = getelementptr i64, ptr %primary_stats, i32 %i.020.i
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx1.i, align 8
  %sub.i = sub i64 %9, %11
  %or.i = or i64 %11, %9
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %or.i)
  %cmp2.i = icmp ult i64 %or.i, 4294967296
  %conv.i = trunc i64 %9 to i32
  %conv3.i = trunc i64 %11 to i32
  %sub4.i = sub i32 %conv.i, %conv3.i
  %conv5.i = sext i32 %sub4.i to i64
  %delta.0.i = select i1 %cmp2.i, i64 %conv5.i, i64 %sub.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %delta.0.i)
  %cmp6.i = icmp sgt i64 %delta.0.i, 0
  br i1 %cmp6.i, label %if.then8.i, label %for.body.i.if.end10.i_crit_edge

for.body.i.if.end10.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then8.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx9.i = getelementptr i64, ptr %stats, i32 %i.020.i
  %12 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx9.i, align 8
  %add.i = add i64 %13, %delta.0.i
  store i64 %add.i, ptr %arrayidx9.i, align 8
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %for.body.i.if.end10.i_crit_edge
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %net_failover_fold_stats.exit, label %if.end10.i.for.body.i_crit_edge

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

net_failover_fold_stats.exit:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = call ptr @memcpy(ptr %primary_stats, ptr %call12, i32 192)
  br label %if.end14

if.end14:                                         ; preds = %net_failover_fold_stats.exit, %do.end8.if.end14_crit_edge
  %standby_dev = getelementptr i8, ptr %dev, i32 2308
  %15 = ptrtoint ptr %standby_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %standby_dev, align 4
  %call20 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %if.end14.do.end30_crit_edge

if.end14.do.end30_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30

land.lhs.true22:                                  ; preds = %if.end14
  %call23 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.do.end30_crit_edge, label %land.lhs.true25

land.lhs.true22.do.end30_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %.b5859 = load i1, ptr @net_failover_get_stats.__warned.20, align 1
  br i1 %.b5859, label %land.lhs.true25.do.end30_crit_edge, label %if.then27

land.lhs.true25.do.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_get_stats.__warned.20, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 202, ptr noundef nonnull @.str.8) #11
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.lhs.true25.do.end30_crit_edge, %land.lhs.true22.do.end30_crit_edge, %if.end14.do.end30_crit_edge
  %tobool32.not = icmp eq ptr %16, null
  br i1 %tobool32.not, label %do.end30.if.end36_crit_edge, label %if.then33

do.end30.if.end36_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then33:                                        ; preds = %do.end30
  %call34 = call ptr @dev_get_stats(ptr noundef nonnull %16, ptr noundef nonnull %temp) #11
  %standby_stats = getelementptr i8, ptr %dev, i32 2504
  br label %for.body.i73

for.body.i73:                                     ; preds = %if.end10.i79.for.body.i73_crit_edge, %if.then33
  %i.020.i61 = phi i32 [ 0, %if.then33 ], [ %inc.i77, %if.end10.i79.for.body.i73_crit_edge ]
  %arrayidx.i62 = getelementptr i64, ptr %call34, i32 %i.020.i61
  %17 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.i62, align 8
  %arrayidx1.i63 = getelementptr i64, ptr %standby_stats, i32 %i.020.i61
  %19 = ptrtoint ptr %arrayidx1.i63 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx1.i63, align 8
  %sub.i64 = sub i64 %18, %20
  %or.i65 = or i64 %20, %18
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %or.i65)
  %cmp2.i66 = icmp ult i64 %or.i65, 4294967296
  %conv.i67 = trunc i64 %18 to i32
  %conv3.i68 = trunc i64 %20 to i32
  %sub4.i69 = sub i32 %conv.i67, %conv3.i68
  %conv5.i70 = sext i32 %sub4.i69 to i64
  %delta.0.i71 = select i1 %cmp2.i66, i64 %conv5.i70, i64 %sub.i64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %delta.0.i71)
  %cmp6.i72 = icmp sgt i64 %delta.0.i71, 0
  br i1 %cmp6.i72, label %if.then8.i76, label %for.body.i73.if.end10.i79_crit_edge

for.body.i73.if.end10.i79_crit_edge:              ; preds = %for.body.i73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i79

if.then8.i76:                                     ; preds = %for.body.i73
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx9.i74 = getelementptr i64, ptr %stats, i32 %i.020.i61
  %21 = ptrtoint ptr %arrayidx9.i74 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx9.i74, align 8
  %add.i75 = add i64 %22, %delta.0.i71
  store i64 %add.i75, ptr %arrayidx9.i74, align 8
  br label %if.end10.i79

if.end10.i79:                                     ; preds = %if.then8.i76, %for.body.i73.if.end10.i79_crit_edge
  %inc.i77 = add nuw nsw i32 %i.020.i61, 1
  %exitcond.not.i78 = icmp eq i32 %inc.i77, 24
  br i1 %exitcond.not.i78, label %net_failover_fold_stats.exit80, label %if.end10.i79.for.body.i73_crit_edge

if.end10.i79.for.body.i73_crit_edge:              ; preds = %if.end10.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i73

net_failover_fold_stats.exit80:                   ; preds = %if.end10.i79
  call void @__sanitizer_cov_trace_pc() #13
  %23 = call ptr @memcpy(ptr %standby_stats, ptr %call34, i32 192)
  br label %if.end36

if.end36:                                         ; preds = %net_failover_fold_stats.exit80, %do.end30.if.end36_crit_edge
  %call.i81 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i81, label %if.end36.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i84

if.end36.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i84:                                ; preds = %if.end36
  %call1.i82 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82)
  %tobool.not.i83 = icmp eq i32 %call1.i82, 0
  br i1 %tobool.not.i83, label %land.lhs.true.i84.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i86

land.lhs.true.i84.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i86:                               ; preds = %land.lhs.true.i84
  %.b4.i85 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i85, label %land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge, label %if.then.i87

land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i87:                                      ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i87, %land.lhs.true2.i86.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i84.rcu_read_unlock.exit_crit_edge, %if.end36.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !155
  %24 = call i32 @llvm.read_register.i32(metadata !142) #11
  %and.i.i.i.i.i88 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i88 to ptr
  %preempt_count.i.i.i.i89 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i89, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i89, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %28 = call ptr @memcpy(ptr %failover_stats, ptr %stats, i32 192)
  call void @_raw_spin_unlock(ptr noundef %stats_lock) #11
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %temp) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_failover_vlan_rx_add_vid(ptr noundef %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %add.ptr.i, align 8
  %call3 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b64 = load i1, ptr @net_failover_vlan_rx_add_vid.__warned, align 1
  br i1 %.b64, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_vlan_rx_add_vid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 272, ptr noundef nonnull @.str.8) #11
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %entry.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %1, null
  br i1 %tobool11.not, label %do.end9.if.end17_crit_edge, label %if.then12

do.end9.if.end17_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then12:                                        ; preds = %do.end9
  %call13 = tail call i32 @vlan_vid_add(ptr noundef nonnull %1, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end17_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end17:                                         ; preds = %if.then12.if.end17_crit_edge, %do.end9.if.end17_crit_edge
  %standby_dev22 = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %standby_dev22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %standby_dev22, align 4
  %call24 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %if.end17.do.end34_crit_edge

if.end17.do.end34_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

land.lhs.true26:                                  ; preds = %if.end17
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.do.end34_crit_edge, label %land.lhs.true29

land.lhs.true26.do.end34_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b6263 = load i1, ptr @net_failover_vlan_rx_add_vid.__warned.21, align 1
  br i1 %.b6263, label %land.lhs.true29.do.end34_crit_edge, label %if.then31

land.lhs.true29.do.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_vlan_rx_add_vid.__warned.21, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 279, ptr noundef nonnull @.str.8) #11
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %land.lhs.true29.do.end34_crit_edge, %land.lhs.true26.do.end34_crit_edge, %if.end17.do.end34_crit_edge
  %tobool36.not = icmp eq ptr %3, null
  br i1 %tobool36.not, label %do.end34.cleanup_crit_edge, label %if.then37

do.end34.cleanup_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then37:                                        ; preds = %do.end34
  %call38 = tail call i32 @vlan_vid_add(ptr noundef nonnull %3, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  %brmerge = select i1 %tobool39.not, i1 true, i1 %tobool11.not
  br i1 %brmerge, label %if.then37.cleanup_crit_edge, label %if.then42

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then42:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vlan_vid_del(ptr noundef nonnull %1, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.then37.cleanup_crit_edge, %do.end34.cleanup_crit_edge, %if.then12.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then12.cleanup_crit_edge ], [ %call38, %if.then42 ], [ %call38, %if.then37.cleanup_crit_edge ], [ 0, %do.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_failover_vlan_rx_kill_vid(ptr noundef %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %add.ptr.i, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b42 = load i1, ptr @net_failover_vlan_rx_kill_vid.__warned, align 1
  br i1 %.b42, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_vlan_rx_kill_vid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 296, ptr noundef nonnull @.str.8) #11
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %do.end8.if.end12_crit_edge, label %if.then11

do.end8.if.end12_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vlan_vid_del(ptr noundef nonnull %1, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.end8.if.end12_crit_edge
  %standby_dev = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %standby_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %standby_dev, align 4
  %call18 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %if.end12.do.end28_crit_edge

if.end12.do.end28_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end28

land.lhs.true20:                                  ; preds = %if.end12
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b4041 = load i1, ptr @net_failover_vlan_rx_kill_vid.__warned.22, align 1
  br i1 %.b4041, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_vlan_rx_kill_vid.__warned.22, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 300, ptr noundef nonnull @.str.8) #11
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %if.end12.do.end28_crit_edge
  %tobool30.not = icmp eq ptr %3, null
  br i1 %tobool30.not, label %do.end28.if.end32_crit_edge, label %if.then31

do.end28.if.end32_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then31:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vlan_vid_del(ptr noundef nonnull %3, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #11
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %do.end28.if.end32_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @netdev_pick_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_sync_multiple(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_sync_multiple(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_vid_add(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_vid_del(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfo_ethtool_get_drvinfo(ptr nocapture noundef readnone %dev, ptr noundef %drvinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.23, i32 noundef 32) #11
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.24, i32 noundef 32) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfo_ethtool_get_link_ksettings(ptr nocapture noundef readonly %dev, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call1, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b41 = load i1, ptr @nfo_ethtool_get_link_ksettings.__warned, align 1
  br i1 %.b41, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nfo_ethtool_get_link_ksettings.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 337, ptr noundef nonnull @.str.10) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end.do.body8_crit_edge, label %lor.lhs.false

do.end.do.body8_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

lor.lhs.false:                                    ; preds = %do.end
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.do.body8_crit_edge, label %net_failover_xmit_ready.exit

lor.lhs.false.do.body8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

net_failover_xmit_ready.exit:                     ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %net_failover_xmit_ready.exit.if.end27_crit_edge, label %net_failover_xmit_ready.exit.do.body8_crit_edge

net_failover_xmit_ready.exit.do.body8_crit_edge:  ; preds = %net_failover_xmit_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body8

net_failover_xmit_ready.exit.if.end27_crit_edge:  ; preds = %net_failover_xmit_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

do.body8:                                         ; preds = %net_failover_xmit_ready.exit.do.body8_crit_edge, %lor.lhs.false.do.body8_crit_edge, %do.end.do.body8_crit_edge
  %call9 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call9, label %do.body8.do.end18_crit_edge, label %land.lhs.true10

do.body8.do.end18_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

land.lhs.true10:                                  ; preds = %do.body8
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true10.do.end18_crit_edge, label %land.lhs.true13

land.lhs.true10.do.end18_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %.b3940 = load i1, ptr @nfo_ethtool_get_link_ksettings.__warned.25, align 1
  br i1 %.b3940, label %land.lhs.true13.do.end18_crit_edge, label %if.then15

land.lhs.true13.do.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nfo_ethtool_get_link_ksettings.__warned.25, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 339, ptr noundef nonnull @.str.10) #11
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %land.lhs.true13.do.end18_crit_edge, %land.lhs.true10.do.end18_crit_edge, %do.body8.do.end18_crit_edge
  %standby_dev = getelementptr i8, ptr %dev, i32 2308
  %7 = ptrtoint ptr %standby_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %standby_dev, align 4
  %tobool20.not = icmp eq ptr %8, null
  br i1 %tobool20.not, label %do.end18.if.then23_crit_edge, label %lor.lhs.false21

do.end18.if.then23_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

lor.lhs.false21:                                  ; preds = %do.end18
  %state.i.i42 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %state.i.i42 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i.i42, align 4
  %and1.i.i.i43 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i43)
  %tobool.i.not.i44 = icmp eq i32 %and1.i.i.i43, 0
  br i1 %tobool.i.not.i44, label %lor.lhs.false21.if.then23_crit_edge, label %net_failover_xmit_ready.exit47

lor.lhs.false21.if.then23_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

net_failover_xmit_ready.exit47:                   ; preds = %lor.lhs.false21
  %11 = ptrtoint ptr %state.i.i42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i.i42, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i45 = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i45, label %net_failover_xmit_ready.exit47.if.end27_crit_edge, label %net_failover_xmit_ready.exit47.if.then23_crit_edge

net_failover_xmit_ready.exit47.if.then23_crit_edge: ; preds = %net_failover_xmit_ready.exit47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then23

net_failover_xmit_ready.exit47.if.end27_crit_edge: ; preds = %net_failover_xmit_ready.exit47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then23:                                        ; preds = %net_failover_xmit_ready.exit47.if.then23_crit_edge, %lor.lhs.false21.if.then23_crit_edge, %do.end18.if.then23_crit_edge
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %14 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %duplex, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %15 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %port, align 1
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %16 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %speed, align 4
  br label %cleanup

if.end27:                                         ; preds = %net_failover_xmit_ready.exit47.if.end27_crit_edge, %net_failover_xmit_ready.exit.if.end27_crit_edge
  %slave_dev.0 = phi ptr [ %1, %net_failover_xmit_ready.exit.if.end27_crit_edge ], [ %8, %net_failover_xmit_ready.exit47.if.end27_crit_edge ]
  %call28 = tail call i32 @__ethtool_get_link_ksettings(ptr noundef nonnull %slave_dev.0, ptr noundef %cmd) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then23
  %retval.0 = phi i32 [ %call28, %if.end27 ], [ 0, %if.then23 ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_failover_slave_pre_register(ptr noundef %slave_dev, ptr noundef %failover_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %failover_dev, i32 2304
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call1, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b61 = load i1, ptr @net_failover_slave_pre_register.__warned, align 1
  br i1 %.b61, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_slave_pre_register.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 470, ptr noundef nonnull @.str.10) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %standby_dev5 = getelementptr i8, ptr %failover_dev, i32 2308
  %0 = ptrtoint ptr %standby_dev5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %standby_dev5, align 4
  %call7 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call7, label %do.end.do.end16_crit_edge, label %land.lhs.true8

do.end.do.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

land.lhs.true8:                                   ; preds = %do.end
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true8.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true8.do.end16_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %.b5960 = load i1, ptr @net_failover_slave_pre_register.__warned.26, align 1
  br i1 %.b5960, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_slave_pre_register.__warned.26, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 471, ptr noundef nonnull @.str.10) #11
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true8.do.end16_crit_edge, %do.end.do.end16_crit_edge
  %parent = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %parent20 = getelementptr inbounds %struct.net_device, ptr %failover_dev, i32 0, i32 133, i32 1
  %4 = ptrtoint ptr %parent20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent20, align 8
  %cmp = icmp eq ptr %3, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end16
  %tobool22.not = icmp eq ptr %1, null
  br i1 %tobool22.not, label %cond.true.if.end36_crit_edge, label %cond.true.if.then24_crit_edge

cond.true.if.then24_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

cond.true.if.end36_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

cond.false:                                       ; preds = %do.end16
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %tobool23.not = icmp eq ptr %7, null
  br i1 %tobool23.not, label %land.lhs.true28.critedge, label %cond.false.if.then24_crit_edge

cond.false.if.then24_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

if.then24:                                        ; preds = %cond.false.if.then24_crit_edge, %cond.true.if.then24_crit_edge
  %cond = phi ptr [ @.str.29, %cond.false.if.then24_crit_edge ], [ @.str.28, %cond.true.if.then24_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %failover_dev, ptr noundef nonnull @.str.27, ptr noundef %slave_dev, ptr noundef nonnull %cond) #14
  br label %cleanup

land.lhs.true28.critedge:                         ; preds = %cond.false
  %tobool31.not = icmp eq ptr %3, null
  br i1 %tobool31.not, label %land.lhs.true28.critedge.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true28.critedge.cleanup_crit_edge:       ; preds = %land.lhs.true28.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true28.critedge
  %bus = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 8
  %cmp34 = icmp eq ptr %9, @pci_bus_type
  br i1 %cmp34, label %lor.lhs.false.if.end36_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.end36:                                         ; preds = %lor.lhs.false.if.end36_crit_edge, %cond.true.if.end36_crit_edge
  %features = getelementptr inbounds %struct.net_device, ptr %failover_dev, i32 0, i32 23
  %10 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %features, align 16
  %and = and i64 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool37.not = icmp eq i64 %and, 0
  br i1 %tobool37.not, label %if.end36.cleanup_crit_edge, label %land.lhs.true38

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true38:                                  ; preds = %if.end36
  %call39 = tail call zeroext i1 @vlan_uses_dev(ptr noundef %failover_dev) #11
  br i1 %call39, label %if.then40, label %land.lhs.true38.cleanup_crit_edge

land.lhs.true38.cleanup_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then40:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %failover_dev, ptr noundef nonnull @.str.30, ptr noundef %failover_dev) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %land.lhs.true38.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true28.critedge.cleanup_crit_edge, %if.then24
  %retval.0 = phi i32 [ -22, %if.then24 ], [ -22, %if.then40 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true28.critedge.cleanup_crit_edge ], [ 0, %land.lhs.true38.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_failover_slave_register(ptr noundef %slave_dev, ptr noundef %failover_dev) #0 align 64 {
entry:
  %info.i = alloca %struct.netdev_lag_lower_state_info, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mtu, align 4
  %mtu1 = getelementptr inbounds %struct.net_device, ptr %failover_dev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtu1, align 4
  %call = tail call i32 @dev_set_mtu(ptr noundef %slave_dev, i32 noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %mtu1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu1, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %failover_dev, ptr noundef nonnull @.str.31, ptr noundef %slave_dev, i32 noundef %5) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %slave_dev, null
  br i1 %tobool.not.i, label %if.end.dev_hold.exit_crit_edge, label %do.body1.i

if.end.dev_hold.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %if.end
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !156
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 118
  %7 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcpu_refcnt.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !142) #11
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add13.i = add i32 %18, 1
  store i32 %add13.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !157
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !158

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #11, !srcloc !159
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %if.end.dev_hold.exit_crit_edge
  %state.i = getelementptr inbounds %struct.net_device, ptr %failover_dev, i32 0, i32 6
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %dev_hold.exit.if.end11_crit_edge, label %if.then4

dev_hold.exit.if.end11_crit_edge:                 ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then4:                                         ; preds = %dev_hold.exit
  %call5 = tail call i32 @dev_open(ptr noundef %slave_dev, ptr noundef null) #11
  %22 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call5, label %if.then7 [
    i32 0, label %if.then4.if.end11_crit_edge
    i32 -16, label %if.then4.if.end11_crit_edge228
  ]

if.then4.if.end11_crit_edge228:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %failover_dev, ptr noundef nonnull @.str.32, ptr noundef %slave_dev, i32 noundef %call5) #14
  br label %err_dev_open

if.end11:                                         ; preds = %if.then4.if.end11_crit_edge, %if.then4.if.end11_crit_edge228, %dev_hold.exit.if.end11_crit_edge
  %nested_level.i = getelementptr inbounds %struct.net_device, ptr %failover_dev, i32 0, i32 73
  %23 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nested_level.i, align 1
  tail call fastcc void @local_bh_disable() #11
  %addr_list_lock.i = getelementptr inbounds %struct.net_device, ptr %failover_dev, i32 0, i32 63
  %conv.i = zext i8 %24 to i32
  tail call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i) #11
  %call12 = tail call i32 @dev_uc_sync_multiple(ptr noundef %slave_dev, ptr noundef %failover_dev) #11
  %call13 = tail call i32 @dev_mc_sync_multiple(ptr noundef %slave_dev, ptr noundef %failover_dev) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i) #11
  %call14 = tail call i32 @vlan_vids_add_by_dev(ptr noundef %slave_dev, ptr noundef %failover_dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %failover_dev, ptr noundef nonnull @.str.33, ptr noundef %slave_dev, i32 noundef %call14) #14
  tail call void @dev_uc_unsync(ptr noundef %slave_dev, ptr noundef %failover_dev) #11
  tail call void @dev_mc_unsync(ptr noundef %slave_dev, ptr noundef %failover_dev) #11
  tail call void @dev_close(ptr noundef %slave_dev) #11
  br label %err_dev_open

if.end19:                                         ; preds = %if.end11
  %add.ptr.i = getelementptr i8, ptr %failover_dev, i32 2304
  %call21 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call21, label %if.end19.do.end_crit_edge, label %land.lhs.true22

if.end19.do.end_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true22:                                  ; preds = %if.end19
  %call23 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.do.end_crit_edge, label %land.lhs.true25

land.lhs.true22.do.end_crit_edge:                 ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %.b202 = load i1, ptr @net_failover_slave_register.__warned, align 1
  br i1 %.b202, label %land.lhs.true25.do.end_crit_edge, label %if.then27

land.lhs.true25.do.end_crit_edge:                 ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_slave_register.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 540, ptr noundef nonnull @.str.10) #11
  br label %do.end

do.end:                                           ; preds = %if.then27, %land.lhs.true25.do.end_crit_edge, %land.lhs.true22.do.end_crit_edge, %if.end19.do.end_crit_edge
  %standby_dev29 = getelementptr i8, ptr %failover_dev, i32 2308
  %call31 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call31, label %do.end.do.end40_crit_edge, label %land.lhs.true32

do.end.do.end40_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40

land.lhs.true32:                                  ; preds = %do.end
  %call33 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true32.do.end40_crit_edge, label %land.lhs.true35

land.lhs.true32.do.end40_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %.b200201 = load i1, ptr @net_failover_slave_register.__warned.34, align 1
  br i1 %.b200201, label %land.lhs.true35.do.end40_crit_edge, label %if.then37

land.lhs.true35.do.end40_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40

if.then37:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_slave_register.__warned.34, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 541, ptr noundef nonnull @.str.10) #11
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %land.lhs.true35.do.end40_crit_edge, %land.lhs.true32.do.end40_crit_edge, %do.end.do.end40_crit_edge
  %parent = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 133, i32 1
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent, align 8
  %parent44 = getelementptr inbounds %struct.net_device, ptr %failover_dev, i32 0, i32 133, i32 1
  %27 = ptrtoint ptr %parent44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent44, align 8
  %cmp45 = icmp eq ptr %26, %28
  br i1 %cmp45, label %if.end133, label %if.end133.thread

if.end133.thread:                                 ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !160
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %slave_dev, ptr %add.ptr.i, align 8
  %primary_stats = getelementptr i8, ptr %failover_dev, i32 2312
  %call130 = tail call ptr @dev_get_stats(ptr noundef %slave_dev, ptr noundef %primary_stats) #11
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 30
  %30 = ptrtoint ptr %min_mtu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %min_mtu, align 8
  %min_mtu131 = getelementptr inbounds %struct.net_device, ptr %failover_dev, i32 0, i32 30
  %32 = ptrtoint ptr %min_mtu131 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %min_mtu131, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 31
  %33 = ptrtoint ptr %max_mtu to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_mtu, align 4
  %max_mtu132 = getelementptr inbounds %struct.net_device, ptr %failover_dev, i32 0, i32 31
  %35 = ptrtoint ptr %max_mtu132 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %max_mtu132, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %info.i) #11
  %state.i.i220 = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 6
  %36 = ptrtoint ptr %state.i.i220 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %state.i.i220, align 4
  %38 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i221 = icmp eq i32 %38, 0
  %spec.select.i222 = select i1 %tobool.not.i.i221, i8 -1, i8 127
  br label %if.then4.i

if.end133:                                        ; preds = %do.end40
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !161
  %41 = ptrtoint ptr %standby_dev29 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %slave_dev, ptr %standby_dev29, align 4
  %standby_stats = getelementptr i8, ptr %failover_dev, i32 2504
  %call87 = tail call ptr @dev_get_stats(ptr noundef %slave_dev, ptr noundef %standby_stats) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %info.i) #11
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 6
  %42 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %state.i.i, align 4
  %44 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i = icmp eq i32 %44, 0
  %spec.select.i = select i1 %tobool.not.i.i, i8 -1, i8 127
  %cmp.i = icmp eq ptr %40, %slave_dev
  br i1 %cmp.i, label %if.end133.if.then4.i_crit_edge, label %if.else15.i

if.end133.if.then4.i_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.end133.if.then4.i_crit_edge, %if.end133.thread
  %spec.select.i227 = phi i8 [ %spec.select.i222, %if.end133.thread ], [ %spec.select.i, %if.end133.if.then4.i_crit_edge ]
  %state.i.i226 = phi ptr [ %state.i.i220, %if.end133.thread ], [ %state.i.i, %if.end133.if.then4.i_crit_edge ]
  %cond225 = phi ptr [ @.str.29, %if.end133.thread ], [ @.str.28, %if.end133.if.then4.i_crit_edge ]
  %45 = ptrtoint ptr %state.i.i226 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %state.i.i226, align 4
  %and1.i.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.else10.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %spec.select.i227, ptr %info.i, align 1
  br label %net_failover_lower_state_changed.exit

if.else10.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear12.i = and i8 %spec.select.i227, -65
  %48 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %bf.clear12.i, ptr %info.i, align 1
  br label %net_failover_lower_state_changed.exit

if.else15.i:                                      ; preds = %if.end133
  %tobool.not.i204 = icmp eq ptr %40, null
  br i1 %tobool.not.i204, label %if.else15.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i

if.else15.i.lor.lhs.false.i_crit_edge:            ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.else15.i
  %state.i34.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 6
  %49 = ptrtoint ptr %state.i34.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %state.i34.i, align 4
  %and1.i.i35.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i35.i)
  %tobool.i36.not.i = icmp eq i32 %and1.i.i35.i, 0
  br i1 %tobool.i36.not.i, label %land.lhs.true.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i.if.then18.i_crit_edge

land.lhs.true.i.if.then18.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %if.else15.i.lor.lhs.false.i_crit_edge
  %51 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i38.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i38.i)
  %tobool.i39.not.i = icmp eq i32 %and1.i.i38.i, 0
  br i1 %tobool.i39.not.i, label %lor.lhs.false.i.if.then18.i_crit_edge, label %if.else22.i

lor.lhs.false.i.if.then18.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

if.then18.i:                                      ; preds = %lor.lhs.false.i.if.then18.i_crit_edge, %land.lhs.true.i.if.then18.i_crit_edge
  %bf.clear20.i = and i8 %spec.select.i, -65
  %53 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %bf.clear20.i, ptr %info.i, align 1
  br label %net_failover_lower_state_changed.exit

if.else22.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %spec.select.i, ptr %info.i, align 1
  br label %net_failover_lower_state_changed.exit

net_failover_lower_state_changed.exit:            ; preds = %if.else22.i, %if.then18.i, %if.else10.i, %if.then6.i
  %cond224 = phi ptr [ %cond225, %if.then6.i ], [ %cond225, %if.else10.i ], [ @.str.28, %if.then18.i ], [ @.str.28, %if.else22.i ]
  call void @netdev_lower_state_changed(ptr noundef %slave_dev, ptr noundef nonnull %info.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %info.i) #11
  call fastcc void @net_failover_compute_features(ptr noundef %failover_dev)
  %call134 = call i32 @call_netdevice_notifiers(i32 noundef 20, ptr noundef %slave_dev) #11
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %failover_dev, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond224, ptr noundef %slave_dev) #14
  br label %cleanup

err_dev_open:                                     ; preds = %if.then16, %if.then7
  %err.0 = phi i32 [ %call5, %if.then7 ], [ %call14, %if.then16 ]
  br i1 %tobool.not.i, label %err_dev_open.dev_put.exit_crit_edge, label %do.body1.i214

err_dev_open.dev_put.exit_crit_edge:              ; preds = %err_dev_open
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit

do.body1.i214:                                    ; preds = %err_dev_open
  %55 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !156
  %pcpu_refcnt.i206 = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 118
  %56 = ptrtoint ptr %pcpu_refcnt.i206 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pcpu_refcnt.i206, align 4
  %58 = ptrtoint ptr %57 to i32
  %59 = tail call i32 @llvm.read_register.i32(metadata !142) #11
  %and.i.i207 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i207 to ptr
  %cpu.i208 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %cpu.i208 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cpu.i208, align 4
  %arrayidx.i209 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx.i209 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i209, align 4
  %add.i210 = add i32 %64, %58
  %65 = inttoptr i32 %add.i210 to ptr
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  %add13.i211 = add i32 %67, -1
  store i32 %add13.i211, ptr %65, align 4
  %68 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !157
  %and.i.i.i212 = and i32 %68, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i212)
  %tobool24.not.i213 = icmp eq i32 %and.i.i.i212, 0
  br i1 %tobool24.not.i213, label %if.then28.i215, label %do.body1.i214.do.end30.i216_crit_edge, !prof !158

do.body1.i214.do.end30.i216_crit_edge:            ; preds = %do.body1.i214
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i216

if.then28.i215:                                   ; preds = %do.body1.i214
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end30.i216

do.end30.i216:                                    ; preds = %if.then28.i215, %do.body1.i214.do.end30.i216_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %55) #11, !srcloc !159
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i216, %err_dev_open.dev_put.exit_crit_edge
  %call138 = tail call i32 @dev_set_mtu(ptr noundef %slave_dev, i32 noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit, %net_failover_lower_state_changed.exit, %if.then
  %retval.0 = phi i32 [ 0, %net_failover_lower_state_changed.exit ], [ %call, %if.then ], [ %err.0, %dev_put.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_failover_slave_pre_unregister(ptr noundef readnone %slave_dev, ptr nocapture noundef readonly %failover_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %failover_dev, i32 2304
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call1, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b29 = load i1, ptr @net_failover_slave_pre_unregister.__warned, align 1
  br i1 %.b29, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_slave_pre_unregister.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 584, ptr noundef nonnull @.str.10) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %call7 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call7, label %do.end.do.end16_crit_edge, label %land.lhs.true8

do.end.do.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

land.lhs.true8:                                   ; preds = %do.end
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true8.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true8.do.end16_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %.b2728 = load i1, ptr @net_failover_slave_pre_unregister.__warned.37, align 1
  br i1 %.b2728, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_slave_pre_unregister.__warned.37, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 585, ptr noundef nonnull @.str.10) #11
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true8.do.end16_crit_edge, %do.end.do.end16_crit_edge
  %cmp.not = icmp eq ptr %1, %slave_dev
  br i1 %cmp.not, label %do.end16.if.end22_crit_edge, label %land.lhs.true19

do.end16.if.end22_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.lhs.true19:                                  ; preds = %do.end16
  %standby_dev18 = getelementptr i8, ptr %failover_dev, i32 2308
  %2 = ptrtoint ptr %standby_dev18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %standby_dev18, align 4
  %cmp20.not = icmp eq ptr %3, %slave_dev
  br i1 %cmp20.not, label %land.lhs.true19.if.end22_crit_edge, label %land.lhs.true19.cleanup_crit_edge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true19.if.end22_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true19.if.end22_crit_edge, %do.end16.if.end22_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %land.lhs.true19.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -19, %land.lhs.true19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_failover_slave_unregister(ptr noundef %slave_dev, ptr noundef %failover_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %failover_dev, i32 2304
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call1, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b142 = load i1, ptr @net_failover_slave_unregister.__warned, align 1
  br i1 %.b142, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_slave_unregister.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 601, ptr noundef nonnull @.str.10) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %call7 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call7, label %do.end.do.end16_crit_edge, label %land.lhs.true8

do.end.do.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

land.lhs.true8:                                   ; preds = %do.end
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true8.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true8.do.end16_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %.b138141 = load i1, ptr @net_failover_slave_unregister.__warned.38, align 1
  br i1 %.b138141, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_slave_unregister.__warned.38, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 602, ptr noundef nonnull @.str.10) #11
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true8.do.end16_crit_edge, %do.end.do.end16_crit_edge
  %standby_dev18 = getelementptr i8, ptr %failover_dev, i32 2308
  %2 = ptrtoint ptr %standby_dev18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %standby_dev18, align 4
  %cmp.not = icmp ne ptr %1, %slave_dev
  %cmp19 = icmp ne ptr %3, %slave_dev
  %spec.select = select i1 %cmp.not, i1 %cmp19, i1 false
  br i1 %spec.select, label %land.rhs22, label %if.end65

land.rhs22:                                       ; preds = %do.end16
  %.b139140 = load i1, ptr @net_failover_slave_unregister.__already_done, align 1
  br i1 %.b139140, label %land.rhs22.cleanup_crit_edge, label %if.then29, !prof !153

land.rhs22.cleanup_crit_edge:                     ; preds = %land.rhs22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then29:                                        ; preds = %land.rhs22
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_slave_unregister.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 604, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end65:                                         ; preds = %do.end16
  tail call void @vlan_vids_del_by_dev(ptr noundef %slave_dev, ptr noundef %failover_dev) #11
  tail call void @dev_uc_unsync(ptr noundef %slave_dev, ptr noundef %failover_dev) #11
  tail call void @dev_mc_unsync(ptr noundef %slave_dev, ptr noundef %failover_dev) #11
  tail call void @dev_close(ptr noundef %slave_dev) #11
  %failover_stats = getelementptr i8, ptr %failover_dev, i32 2696
  %call67 = tail call ptr @dev_get_stats(ptr noundef %failover_dev, ptr noundef %failover_stats) #11
  %parent = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 133, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %parent69 = getelementptr inbounds %struct.net_device, ptr %failover_dev, i32 0, i32 133, i32 1
  %6 = ptrtoint ptr %parent69 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent69, align 8
  %cmp70 = icmp eq ptr %5, %7
  br i1 %cmp70, label %do.body79, label %do.body92

do.body79:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %standby_dev18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %standby_dev18, align 4
  br label %if.end105

do.body92:                                        ; preds = %if.end65
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr null, ptr %add.ptr.i, align 8
  %tobool100.not = icmp eq ptr %3, null
  br i1 %tobool100.not, label %do.body92.if.end105_crit_edge, label %if.then101

do.body92.if.end105_crit_edge:                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

if.then101:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #13
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 30
  %10 = ptrtoint ptr %min_mtu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_mtu, align 8
  %min_mtu102 = getelementptr inbounds %struct.net_device, ptr %failover_dev, i32 0, i32 30
  %12 = ptrtoint ptr %min_mtu102 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %min_mtu102, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 31
  %13 = ptrtoint ptr %max_mtu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_mtu, align 4
  %max_mtu103 = getelementptr inbounds %struct.net_device, ptr %failover_dev, i32 0, i32 31
  %15 = ptrtoint ptr %max_mtu103 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %max_mtu103, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then101, %do.body92.if.end105_crit_edge, %do.body79
  %cond = phi ptr [ @.str.29, %do.body92.if.end105_crit_edge ], [ @.str.29, %if.then101 ], [ @.str.28, %do.body79 ]
  %tobool.not.i = icmp eq ptr %slave_dev, null
  br i1 %tobool.not.i, label %if.end105.dev_put.exit_crit_edge, label %do.body1.i

if.end105.dev_put.exit_crit_edge:                 ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit

do.body1.i:                                       ; preds = %if.end105
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !156
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 118
  %17 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcpu_refcnt.i, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !142) #11
  %and.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %25, %19
  %26 = inttoptr i32 %add.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add13.i = add i32 %28, -1
  store i32 %add13.i, ptr %26, align 4
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !157
  %and.i.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !158

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #11, !srcloc !159
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %if.end105.dev_put.exit_crit_edge
  tail call fastcc void @net_failover_compute_features(ptr noundef %failover_dev)
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %failover_dev, ptr noundef nonnull @.str.39, ptr noundef nonnull %cond, ptr noundef %slave_dev) #14
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit, %if.then29, %land.rhs22.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dev_put.exit ], [ -19, %if.then29 ], [ -19, %land.rhs22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_failover_slave_link_change(ptr noundef %slave_dev, ptr noundef %failover_dev) #0 align 64 {
entry:
  %info.i = alloca %struct.netdev_lag_lower_state_info, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %failover_dev, i32 2304
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call1, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b52 = load i1, ptr @net_failover_slave_link_change.__warned, align 1
  br i1 %.b52, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_slave_link_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 644, ptr noundef nonnull @.str.10) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %call7 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call7, label %do.end.do.end16_crit_edge, label %land.lhs.true8

do.end.do.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

land.lhs.true8:                                   ; preds = %do.end
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true8.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true8.do.end16_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %.b5051 = load i1, ptr @net_failover_slave_link_change.__warned.40, align 1
  br i1 %.b5051, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_slave_link_change.__warned.40, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 645, ptr noundef nonnull @.str.10) #11
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true8.do.end16_crit_edge, %do.end.do.end16_crit_edge
  %standby_dev18 = getelementptr i8, ptr %failover_dev, i32 2308
  %2 = ptrtoint ptr %standby_dev18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %standby_dev18, align 4
  %cmp.not = icmp eq ptr %1, %slave_dev
  %cmp20.not = icmp eq ptr %3, %slave_dev
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp20.not
  br i1 %or.cond, label %if.end22, label %do.end16.cleanup_crit_edge

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %do.end16
  %tobool23.not = icmp eq ptr %1, null
  br i1 %tobool23.not, label %if.end22.lor.lhs.false_crit_edge, label %land.lhs.true24

if.end22.lor.lhs.false_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true24:                                  ; preds = %if.end22
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true24.lor.lhs.false_crit_edge, label %net_failover_xmit_ready.exit

land.lhs.true24.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

net_failover_xmit_ready.exit:                     ; preds = %land.lhs.true24
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %net_failover_xmit_ready.exit.if.then29_crit_edge, label %net_failover_xmit_ready.exit.lor.lhs.false_crit_edge

net_failover_xmit_ready.exit.lor.lhs.false_crit_edge: ; preds = %net_failover_xmit_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

net_failover_xmit_ready.exit.if.then29_crit_edge: ; preds = %net_failover_xmit_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

lor.lhs.false:                                    ; preds = %net_failover_xmit_ready.exit.lor.lhs.false_crit_edge, %land.lhs.true24.lor.lhs.false_crit_edge, %if.end22.lor.lhs.false_crit_edge
  %tobool26.not = icmp eq ptr %3, null
  br i1 %tobool26.not, label %lor.lhs.false.if.else_crit_edge, label %land.lhs.true27

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true27:                                  ; preds = %lor.lhs.false
  %state.i.i53 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %state.i.i53 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i.i53, align 4
  %and1.i.i.i54 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i54)
  %tobool.i.not.i55 = icmp eq i32 %and1.i.i.i54, 0
  br i1 %tobool.i.not.i55, label %land.lhs.true27.if.else_crit_edge, label %net_failover_xmit_ready.exit58

land.lhs.true27.if.else_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

net_failover_xmit_ready.exit58:                   ; preds = %land.lhs.true27
  %11 = ptrtoint ptr %state.i.i53 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i.i53, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i56 = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i56, label %net_failover_xmit_ready.exit58.if.then29_crit_edge, label %net_failover_xmit_ready.exit58.if.else_crit_edge

net_failover_xmit_ready.exit58.if.else_crit_edge: ; preds = %net_failover_xmit_ready.exit58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

net_failover_xmit_ready.exit58.if.then29_crit_edge: ; preds = %net_failover_xmit_ready.exit58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

if.then29:                                        ; preds = %net_failover_xmit_ready.exit58.if.then29_crit_edge, %net_failover_xmit_ready.exit.if.then29_crit_edge
  tail call void @netif_carrier_on(ptr noundef %failover_dev) #11
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %failover_dev, i32 0, i32 104
  %14 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp4.not.i = icmp eq i32 %15, 0
  br i1 %cmp4.not.i, label %if.then29.if.end31_crit_edge, label %for.body.lr.ph.i

if.then29.if.end31_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

for.body.lr.ph.i:                                 ; preds = %if.then29
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %failover_dev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %17, i32 %i.05.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #11
  %inc.i = add nuw i32 %i.05.i, 1
  %18 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %19
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end31_crit_edge

for.body.i.if.end31_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.else:                                          ; preds = %net_failover_xmit_ready.exit58.if.else_crit_edge, %land.lhs.true27.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %failover_stats = getelementptr i8, ptr %failover_dev, i32 2696
  %call30 = tail call ptr @dev_get_stats(ptr noundef %failover_dev, ptr noundef %failover_stats) #11
  tail call void @netif_carrier_off(ptr noundef %failover_dev) #11
  tail call void @netif_tx_stop_all_queues(ptr noundef %failover_dev) #11
  br label %if.end31

if.end31:                                         ; preds = %if.else, %for.body.i.if.end31_crit_edge, %if.then29.if.end31_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %info.i) #11
  %state.i.i59 = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 6
  %20 = ptrtoint ptr %state.i.i59 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i.i59, align 4
  %22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i60 = icmp eq i32 %22, 0
  %spec.select.i = select i1 %tobool.not.i.i60, i8 -1, i8 127
  br i1 %cmp.not, label %if.then4.i, label %if.else15.i

if.then4.i:                                       ; preds = %if.end31
  %23 = ptrtoint ptr %state.i.i59 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i.i59, align 4
  %and1.i.i.i62 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i62)
  %tobool.i.not.i63 = icmp eq i32 %and1.i.i.i62, 0
  br i1 %tobool.i.not.i63, label %if.else10.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %spec.select.i, ptr %info.i, align 1
  br label %net_failover_lower_state_changed.exit

if.else10.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  %bf.clear12.i = and i8 %spec.select.i, -65
  %26 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %bf.clear12.i, ptr %info.i, align 1
  br label %net_failover_lower_state_changed.exit

if.else15.i:                                      ; preds = %if.end31
  br i1 %tobool23.not, label %if.else15.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i

if.else15.i.lor.lhs.false.i_crit_edge:            ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.else15.i
  %state.i34.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %state.i34.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %state.i34.i, align 4
  %and1.i.i35.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i35.i)
  %tobool.i36.not.i = icmp eq i32 %and1.i.i35.i, 0
  br i1 %tobool.i36.not.i, label %land.lhs.true.i.lor.lhs.false.i_crit_edge, label %land.lhs.true.i.if.then18.i_crit_edge

land.lhs.true.i.if.then18.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %if.else15.i.lor.lhs.false.i_crit_edge
  %state.i37.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %29 = ptrtoint ptr %state.i37.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state.i37.i, align 4
  %and1.i.i38.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i38.i)
  %tobool.i39.not.i = icmp eq i32 %and1.i.i38.i, 0
  br i1 %tobool.i39.not.i, label %lor.lhs.false.i.if.then18.i_crit_edge, label %if.else22.i

lor.lhs.false.i.if.then18.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18.i

if.then18.i:                                      ; preds = %lor.lhs.false.i.if.then18.i_crit_edge, %land.lhs.true.i.if.then18.i_crit_edge
  %bf.clear20.i = and i8 %spec.select.i, -65
  %31 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %bf.clear20.i, ptr %info.i, align 1
  br label %net_failover_lower_state_changed.exit

if.else22.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %info.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %spec.select.i, ptr %info.i, align 1
  br label %net_failover_lower_state_changed.exit

net_failover_lower_state_changed.exit:            ; preds = %if.else22.i, %if.then18.i, %if.else10.i, %if.then6.i
  call void @netdev_lower_state_changed(ptr noundef %slave_dev, ptr noundef nonnull %info.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %info.i) #11
  br label %cleanup

cleanup:                                          ; preds = %net_failover_lower_state_changed.exit, %do.end16.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %net_failover_lower_state_changed.exit ], [ -19, %do.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_failover_slave_name_change(ptr noundef %slave_dev, ptr nocapture noundef readonly %failover_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %failover_dev, i32 2304
  %call1 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call1, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b31 = load i1, ptr @net_failover_slave_name_change.__warned, align 1
  br i1 %.b31, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_slave_name_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 673, ptr noundef nonnull @.str.10) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %call7 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call7, label %do.end.do.end16_crit_edge, label %land.lhs.true8

do.end.do.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

land.lhs.true8:                                   ; preds = %do.end
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true8.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true8.do.end16_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %.b2930 = load i1, ptr @net_failover_slave_name_change.__warned.41, align 1
  br i1 %.b2930, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_slave_name_change.__warned.41, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 674, ptr noundef nonnull @.str.10) #11
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true8.do.end16_crit_edge, %do.end.do.end16_crit_edge
  %cmp.not = icmp eq ptr %1, %slave_dev
  br i1 %cmp.not, label %do.end16.if.end22_crit_edge, label %land.lhs.true19

do.end16.if.end22_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.lhs.true19:                                  ; preds = %do.end16
  %standby_dev18 = getelementptr i8, ptr %failover_dev, i32 2308
  %2 = ptrtoint ptr %standby_dev18 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %standby_dev18, align 4
  %cmp20.not = icmp eq ptr %3, %slave_dev
  br i1 %cmp20.not, label %land.lhs.true19.if.end22_crit_edge, label %land.lhs.true19.cleanup_crit_edge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true19.if.end22_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true19.if.end22_crit_edge, %do.end16.if.end22_crit_edge
  %call23 = tail call i32 @dev_open(ptr noundef %slave_dev, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %land.lhs.true19.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -19, %land.lhs.true19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_failover_handle_frame(ptr nocapture noundef readonly %pskb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pskb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pskb, align 4
  %2 = getelementptr inbounds %struct.anon.0, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %rx_handler_data = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 95
  %5 = ptrtoint ptr %rx_handler_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %rx_handler_data, align 4
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b62 = load i1, ptr @net_failover_handle_frame.__warned, align 1
  br i1 %.b62, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_handle_frame.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 365, ptr noundef nonnull @.str.8) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %add.ptr.i = getelementptr i8, ptr %6, i32 2304
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %add.ptr.i, align 8
  %call16 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %do.end7.do.end26_crit_edge

do.end7.do.end26_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26

land.lhs.true18:                                  ; preds = %do.end7
  %call19 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true18.do.end26_crit_edge, label %land.lhs.true21

land.lhs.true18.do.end26_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %.b5861 = load i1, ptr @net_failover_handle_frame.__warned.42, align 1
  br i1 %.b5861, label %land.lhs.true21.do.end26_crit_edge, label %if.then23

land.lhs.true21.do.end26_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_handle_frame.__warned.42, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 369, ptr noundef nonnull @.str.8) #11
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %land.lhs.true21.do.end26_crit_edge, %land.lhs.true18.do.end26_crit_edge, %do.end7.do.end26_crit_edge
  %standby_dev32 = getelementptr i8, ptr %6, i32 2308
  %9 = ptrtoint ptr %standby_dev32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %standby_dev32, align 4
  %call34 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true36, label %do.end26.do.end44_crit_edge

do.end26.do.end44_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end44

land.lhs.true36:                                  ; preds = %do.end26
  %call37 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true36.do.end44_crit_edge, label %land.lhs.true39

land.lhs.true36.do.end44_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end44

land.lhs.true39:                                  ; preds = %land.lhs.true36
  %.b5960 = load i1, ptr @net_failover_handle_frame.__warned.43, align 1
  br i1 %.b5960, label %land.lhs.true39.do.end44_crit_edge, label %if.then41

land.lhs.true39.do.end44_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end44

if.then41:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_handle_frame.__warned.43, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 370, ptr noundef nonnull @.str.8) #11
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %land.lhs.true39.do.end44_crit_edge, %land.lhs.true36.do.end44_crit_edge, %do.end26.do.end44_crit_edge
  %tobool46.not = icmp eq ptr %8, null
  br i1 %tobool46.not, label %do.end44.if.end49_crit_edge, label %land.lhs.true47

do.end44.if.end49_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

land.lhs.true47:                                  ; preds = %do.end44
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 8
  %cmp = icmp eq ptr %12, %10
  br i1 %cmp, label %land.lhs.true47.cleanup_crit_edge, label %land.lhs.true47.if.end49_crit_edge

land.lhs.true47.if.end49_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

land.lhs.true47.cleanup_crit_edge:                ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end49:                                         ; preds = %land.lhs.true47.if.end49_crit_edge, %do.end44.if.end49_crit_edge
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %6, ptr %2, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %land.lhs.true47.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end49 ], [ 2, %land.lhs.true47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vlan_uses_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_vids_add_by_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @net_failover_compute_features(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %add.ptr.i, align 8
  %call3 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b100 = load i1, ptr @net_failover_compute_features.__warned, align 1
  br i1 %.b100, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_compute_features.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 391, ptr noundef nonnull @.str.8) #11
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %entry.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %1, null
  br i1 %tobool11.not, label %do.end9.if.end23_crit_edge, label %if.then12

do.end9.if.end23_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  %vlan_features13 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %vlan_features13 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %vlan_features13, align 8
  %call14 = tail call i64 @netdev_increment_features(i64 noundef 0, i64 noundef %3, i64 noundef 1933417) #11
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %hw_enc_features, align 16
  %call15 = tail call i64 @netdev_increment_features(i64 noundef 1099513528329, i64 noundef %5, i64 noundef 1099513528329) #11
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags, align 16
  %8 = trunc i64 %7 to i32
  %conv16 = and i32 %8, 131104
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hard_header_len, align 2
  %11 = tail call i16 @llvm.umax.i16(i16 %10, i16 14)
  br label %if.end23

if.end23:                                         ; preds = %if.then12, %do.end9.if.end23_crit_edge
  %dst_release_flag.0 = phi i32 [ 131104, %do.end9.if.end23_crit_edge ], [ %conv16, %if.then12 ]
  %max_hard_header_len.0 = phi i16 [ 14, %do.end9.if.end23_crit_edge ], [ %11, %if.then12 ]
  %enc_features.0 = phi i64 [ 1099513528329, %do.end9.if.end23_crit_edge ], [ %call15, %if.then12 ]
  %vlan_features.0 = phi i64 [ 0, %do.end9.if.end23_crit_edge ], [ %call14, %if.then12 ]
  %standby_dev28 = getelementptr i8, ptr %dev, i32 2308
  %12 = ptrtoint ptr %standby_dev28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %standby_dev28, align 4
  %call30 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true32, label %if.end23.do.end40_crit_edge

if.end23.do.end40_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40

land.lhs.true32:                                  ; preds = %if.end23
  %call33 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true32.do.end40_crit_edge, label %land.lhs.true35

land.lhs.true32.do.end40_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %.b9899 = load i1, ptr @net_failover_compute_features.__warned.36, align 1
  br i1 %.b9899, label %land.lhs.true35.do.end40_crit_edge, label %if.then37

land.lhs.true35.do.end40_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40

if.then37:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_failover_compute_features.__warned.36, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 407, ptr noundef nonnull @.str.8) #11
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %land.lhs.true35.do.end40_crit_edge, %land.lhs.true32.do.end40_crit_edge, %if.end23.do.end40_crit_edge
  %tobool42.not = icmp eq ptr %13, null
  br i1 %tobool42.not, label %do.end40.if.end60_crit_edge, label %if.then43

do.end40.if.end60_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then43:                                        ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  %vlan_features44 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 26
  %14 = ptrtoint ptr %vlan_features44 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %vlan_features44, align 8
  %call45 = tail call i64 @netdev_increment_features(i64 noundef %vlan_features.0, i64 noundef %15, i64 noundef 1933417) #11
  %hw_enc_features46 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 27
  %16 = ptrtoint ptr %hw_enc_features46 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %hw_enc_features46, align 16
  %call47 = tail call i64 @netdev_increment_features(i64 noundef %enc_features.0, i64 noundef %17, i64 noundef 1099513528329) #11
  %priv_flags48 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 15
  %18 = ptrtoint ptr %priv_flags48 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %priv_flags48, align 16
  %20 = trunc i64 %19 to i32
  %conv51 = and i32 %dst_release_flag.0, %20
  %hard_header_len52 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 19
  %21 = ptrtoint ptr %hard_header_len52 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hard_header_len52, align 2
  %23 = tail call i16 @llvm.umax.i16(i16 %22, i16 %max_hard_header_len.0)
  br label %if.end60

if.end60:                                         ; preds = %if.then43, %do.end40.if.end60_crit_edge
  %dst_release_flag.1 = phi i32 [ %dst_release_flag.0, %do.end40.if.end60_crit_edge ], [ %conv51, %if.then43 ]
  %max_hard_header_len.1 = phi i16 [ %max_hard_header_len.0, %do.end40.if.end60_crit_edge ], [ %23, %if.then43 ]
  %enc_features.1 = phi i64 [ %enc_features.0, %do.end40.if.end60_crit_edge ], [ %call47, %if.then43 ]
  %vlan_features.1 = phi i64 [ %vlan_features.0, %do.end40.if.end60_crit_edge ], [ %call45, %if.then43 ]
  %vlan_features61 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 26
  %24 = ptrtoint ptr %vlan_features61 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %vlan_features.1, ptr %vlan_features61, align 8
  %or = or i64 %enc_features.1, 264241152
  %hw_enc_features62 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 27
  %25 = ptrtoint ptr %hw_enc_features62 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %or, ptr %hw_enc_features62, align 16
  %hard_header_len63 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %26 = ptrtoint ptr %hard_header_len63 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %max_hard_header_len.1, ptr %hard_header_len63, align 2
  %priv_flags64 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %27 = ptrtoint ptr %priv_flags64 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %priv_flags64, align 16
  %and65 = and i64 %28, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 131104, i32 %dst_release_flag.1)
  %cmp66 = icmp eq i32 %dst_release_flag.1, 131104
  %masksel = select i1 %cmp66, i64 32, i64 0
  %spec.select102 = or i64 %and65, %masksel
  %29 = ptrtoint ptr %priv_flags64 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %spec.select102, ptr %priv_flags64, align 16
  tail call void @netdev_change_features(ptr noundef %dev) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netdevice_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_uc_unsync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_mc_unsync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_lower_state_changed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @netdev_increment_features(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_change_features(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_vids_del_by_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !19, !20, !22, !24, !26, !28, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140}
!llvm.named.register.sp = !{!142}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/net_failover.c", i32 722, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @net_failover_create._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @net_failover_create._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/net_failover.c", i32 758, i32 3}
!10 = !{ptr @net_failover_create._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @net_failover_create._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_net_failover_create, !13, !"__ksymtab_net_failover_create", i1 false, i1 false}
!13 = !{!"../drivers/net/net_failover.c", i32 779, i32 1}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../drivers/net/net_failover.c", i32 801, i32 17}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../drivers/net/net_failover.c", i32 808, i32 14}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../drivers/net/net_failover.c", i32 812, i32 14}
!22 = !{ptr @__ksymtab_net_failover_destroy, !23, !"__ksymtab_net_failover_destroy", i1 false, i1 false}
!23 = !{!"../drivers/net/net_failover.c", i32 824, i32 1}
!24 = !{ptr @__initcall__kmod_net_failover__407_831_net_failover_init6, !25, !"__initcall__kmod_net_failover__407_831_net_failover_init6", i1 false, i1 false}
!25 = !{!"../drivers/net/net_failover.c", i32 831, i32 1}
!26 = !{ptr @__exitcall_net_failover_exit, !27, !"__exitcall_net_failover_exit", i1 false, i1 false}
!27 = !{!"../drivers/net/net_failover.c", i32 837, i32 1}
!28 = !{ptr @__UNIQUE_ID_description408, !29, !"__UNIQUE_ID_description408", i1 false, i1 false}
!29 = !{!"../drivers/net/net_failover.c", i32 839, i32 1}
!30 = !{ptr @__UNIQUE_ID_file409, !31, !"__UNIQUE_ID_file409", i1 false, i1 false}
!31 = !{!"../drivers/net/net_failover.c", i32 840, i32 1}
!32 = !{ptr @__UNIQUE_ID_license410, !31, !"__UNIQUE_ID_license410", i1 false, i1 false}
!33 = !{ptr @failover_dev_ops, !34, !"failover_dev_ops", i1 false, i1 false}
!34 = !{!"../drivers/net/net_failover.c", i32 307, i32 36}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../drivers/net/net_failover.c", i32 41, i32 16}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../drivers/net/net_failover.c", i32 48, i32 16}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../drivers/net/net_failover.c", i32 78, i32 14}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../drivers/net/net_failover.c", i32 82, i32 14}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../drivers/net/net_failover.c", i32 104, i32 13}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../drivers/net/net_failover.c", i32 106, i32 14}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../drivers/net/net_failover.c", i32 125, i32 16}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../drivers/net/net_failover.c", i32 250, i32 14}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../drivers/net/net_failover.c", i32 256, i32 14}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!55 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!59 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../drivers/net/net_failover.c", i32 221, i32 16}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../drivers/net/net_failover.c", i32 228, i32 16}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../drivers/net/net_failover.c", i32 195, i32 14}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../drivers/net/net_failover.c", i32 202, i32 14}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../drivers/net/net_failover.c", i32 272, i32 16}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../drivers/net/net_failover.c", i32 279, i32 16}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../drivers/net/net_failover.c", i32 296, i32 14}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../drivers/net/net_failover.c", i32 300, i32 14}
!76 = !{ptr @failover_ethtool_ops, !77, !"failover_ethtool_ops", i1 false, i1 false}
!77 = !{!"../drivers/net/net_failover.c", i32 352, i32 33}
!78 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/net_failover.c", i32 327, i32 27}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/net_failover.c", i32 328, i32 28}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../drivers/net/net_failover.c", i32 337, i32 14}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../drivers/net/net_failover.c", i32 339, i32 15}
!86 = !{ptr @net_failover_ops, !87, !"net_failover_ops", i1 false, i1 false}
!87 = !{!"../drivers/net/net_failover.c", i32 687, i32 28}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../drivers/net/net_failover.c", i32 470, i32 16}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../drivers/net/net_failover.c", i32 471, i32 16}
!92 = !{ptr @.str.27, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/net_failover.c", i32 474, i32 28}
!94 = !{ptr @.str.28, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/net_failover.c", i32 476, i32 26}
!96 = !{ptr @.str.29, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/net_failover.c", i32 476, i32 38}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/net_failover.c", i32 490, i32 28}
!100 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/net_failover.c", i32 511, i32 28}
!102 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/net_failover.c", i32 521, i32 29}
!104 = !{ptr @.str.33, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/net_failover.c", i32 534, i32 28}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../drivers/net/net_failover.c", i32 540, i32 16}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../drivers/net/net_failover.c", i32 541, i32 16}
!110 = !{ptr @.str.35, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/net_failover.c", i32 561, i32 28}
!112 = distinct !{null, !113, !"__warned", i1 false, i1 false}
!113 = !{!"../drivers/net/net_failover.c", i32 391, i32 16}
!114 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!115 = !{!"../drivers/net/net_failover.c", i32 407, i32 16}
!116 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!117 = !{!"../drivers/net/net_failover.c", i32 584, i32 16}
!118 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!119 = !{!"../drivers/net/net_failover.c", i32 585, i32 16}
!120 = distinct !{null, !121, !"__warned", i1 false, i1 false}
!121 = !{!"../drivers/net/net_failover.c", i32 601, i32 16}
!122 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!123 = !{!"../drivers/net/net_failover.c", i32 602, i32 16}
!124 = distinct !{null, !125, !"__already_done", i1 false, i1 false}
!125 = !{!"../drivers/net/net_failover.c", i32 604, i32 6}
!126 = !{ptr @.str.39, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/net_failover.c", i32 630, i32 28}
!128 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!129 = !{!"../drivers/net/net_failover.c", i32 644, i32 16}
!130 = distinct !{null, !131, !"__warned", i1 false, i1 false}
!131 = !{!"../drivers/net/net_failover.c", i32 645, i32 16}
!132 = distinct !{null, !133, !"__warned", i1 false, i1 false}
!133 = !{!"../drivers/net/net_failover.c", i32 673, i32 16}
!134 = distinct !{null, !135, !"__warned", i1 false, i1 false}
!135 = !{!"../drivers/net/net_failover.c", i32 674, i32 16}
!136 = distinct !{null, !137, !"__warned", i1 false, i1 false}
!137 = !{!"../drivers/net/net_failover.c", i32 365, i32 27}
!138 = distinct !{null, !139, !"__warned", i1 false, i1 false}
!139 = !{!"../drivers/net/net_failover.c", i32 369, i32 16}
!140 = distinct !{null, !141, !"__warned", i1 false, i1 false}
!141 = !{!"../drivers/net/net_failover.c", i32 370, i32 16}
!142 = !{!"sp"}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{i64 2148503925, i64 2148503951, i64 2148503980, i64 2148504014, i64 2148504045, i64 2148504068}
!153 = !{!"branch_weights", i32 2000, i32 1}
!154 = !{i64 2149609950}
!155 = !{i64 2149610216}
!156 = !{i64 907625, i64 907686}
!157 = !{i64 910357}
!158 = !{!"branch_weights", i32 1, i32 2000}
!159 = !{i64 910642}
!160 = !{i64 2156961514}
!161 = !{i64 2156953241}
