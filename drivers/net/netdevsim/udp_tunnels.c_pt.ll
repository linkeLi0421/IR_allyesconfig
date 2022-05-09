; ModuleID = '/llk/IR_all_yes/drivers/net/netdevsim/udp_tunnels.c_pt.bc'
source_filename = "../drivers/net/netdevsim/udp_tunnels.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.nsim_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, i8, i8, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.netdev_phys_item_id, %struct.list_head, %struct.mutex, i8, i32, i32, i8, i8, i8, ptr, %struct.nsim_dev_health, ptr, %struct.spinlock, i8, i8, i8, i8, %struct.anon.137, ptr, i16 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nsim_dev_health = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.137 = type { %struct.udp_tunnel_nic_shared, [2 x [4 x i32]], i8, i8, i8, i8, i8, i32 }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.nsim_dev_port = type { %struct.list_head, %struct.devlink_port, i32, i32, ptr, ptr, ptr, ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.151 }
%union.anon.151 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.142, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.162, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.142 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.162 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.udp_tunnel_nic_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.udp_tunnel_info = type { i16, i16, i16, i8 }

@nsim_udp_tunnels_info_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 138, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"shared can't be used in conjunction with open_only\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nsim_udp_tunnels_info_create\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/netdevsim/udp_tunnels.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nsim_udp_tunnels_info_create._entry_ptr = internal global ptr @nsim_udp_tunnels_info_create._entry, section ".printk_index", align 4
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"udp_ports_inject_error\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"udp_ports_table0\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"udp_ports_table1\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"udp_ports_reset\00", [16 x i8] zeroinitializer }, align 32
@nsim_udp_tunnels_info_reset_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @nsim_udp_tunnels_info_reset_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@nsim_udp_tunnel_info = internal constant { %struct.udp_tunnel_nic_info, [44 x i8] } { %struct.udp_tunnel_nic_info { ptr @nsim_udp_tunnel_set_port, ptr @nsim_udp_tunnel_unset_port, ptr @nsim_udp_tunnel_sync_table, ptr null, i32 0, [4 x %struct.udp_tunnel_nic_table_info] [%struct.udp_tunnel_nic_table_info { i32 4, i32 1 }, %struct.udp_tunnel_nic_table_info { i32 4, i32 6 }, %struct.udp_tunnel_nic_table_info zeroinitializer, %struct.udp_tunnel_nic_table_info zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"udp_ports_sync_all\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"udp_ports_open_only\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"udp_ports_ipv4_only\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"udp_ports_shared\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"udp_ports_static_iana_vxlan\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"udp_ports_sleep\00", [16 x i8] zeroinitializer }, align 32
@udp_tunnel_nic_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"entry already in use\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"set [%d, %d] type %d family %d port %d - %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"entry not installed %x vs %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unset [%d, %d] type %d family %d port %d - %d\0A\00", [49 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 137, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 147, i32 21 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 153, i32 27 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 159, i32 27 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 163, i32 22 }
@___asan_gen_.49 = private unnamed_addr constant [33 x i8] c"nsim_udp_tunnels_info_reset_fops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 123, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant [21 x i8] c"nsim_udp_tunnel_info\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 90, i32 41 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 205, i32 22 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 207, i32 22 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 209, i32 22 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 211, i32 22 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 213, i32 22 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 215, i32 21 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 26, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 34, i32 19 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 58, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [39 x i8] c"../drivers/net/netdevsim/udp_tunnels.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 64, i32 19 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @nsim_udp_tunnels_info_create._entry, ptr @nsim_udp_tunnels_info_create._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @nsim_udp_tunnels_info_reset_fops, ptr @nsim_udp_tunnel_info, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_udp_tunnels_info_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_udp_tunnels_info_reset_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nsim_udp_tunnel_info to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nsim_udp_tunnels_info_create(ptr noundef %nsim_dev, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %udp_ports = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 34
  %shared = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 34, i32 5
  %0 = ptrtoint ptr %shared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %shared, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then7, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %open_only = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 34, i32 3
  %2 = ptrtoint ptr %open_only to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %open_only, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.else, label %do.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %nsim_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nsim_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str) #7
  br label %cleanup

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %__ports = getelementptr i8, ptr %dev, i32 3880
  br label %if.end15

if.else:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %__ports11 = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 34, i32 1
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then7
  %__ports11.sink = phi ptr [ %__ports11, %if.else ], [ %__ports, %if.then7 ]
  %ports14 = getelementptr i8, ptr %dev, i32 3912
  %6 = ptrtoint ptr %ports14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %__ports11.sink, ptr %ports14, align 8
  %nsim_dev_port = getelementptr i8, ptr %dev, i32 2312
  %7 = ptrtoint ptr %nsim_dev_port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nsim_dev_port, align 8
  %ddir = getelementptr inbounds %struct.nsim_dev_port, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ddir, align 4
  %udp_ports16 = getelementptr i8, ptr %dev, i32 3872
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.5, i16 noundef zeroext 384, ptr noundef %10, ptr noundef %udp_ports16) #4
  %ports18 = getelementptr i8, ptr %dev, i32 3912
  %11 = ptrtoint ptr %ports18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ports18, align 8
  %dfs_ports = getelementptr i8, ptr %dev, i32 3916
  %13 = ptrtoint ptr %dfs_ports to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dfs_ports, align 4
  %n_elements = getelementptr i8, ptr %dev, i32 3920
  %14 = ptrtoint ptr %n_elements to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %n_elements, align 4
  %15 = ptrtoint ptr %nsim_dev_port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nsim_dev_port, align 8
  %ddir26 = getelementptr inbounds %struct.nsim_dev_port, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %ddir26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ddir26, align 4
  tail call void @debugfs_create_u32_array(ptr noundef nonnull @.str.6, i16 noundef zeroext 256, ptr noundef %18, ptr noundef %dfs_ports) #4
  %19 = ptrtoint ptr %ports18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ports18, align 8
  %arrayidx32 = getelementptr [4 x i32], ptr %20, i32 1
  %arrayidx36 = getelementptr i8, ptr %dev, i32 3924
  %21 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx32, ptr %arrayidx36, align 4
  %n_elements41 = getelementptr i8, ptr %dev, i32 3928
  %22 = ptrtoint ptr %n_elements41 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %n_elements41, align 4
  %23 = ptrtoint ptr %nsim_dev_port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nsim_dev_port, align 8
  %ddir43 = getelementptr inbounds %struct.nsim_dev_port, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %ddir43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ddir43, align 4
  tail call void @debugfs_create_u32_array(ptr noundef nonnull @.str.7, i16 noundef zeroext 256, ptr noundef %26, ptr noundef %arrayidx36) #4
  %27 = ptrtoint ptr %nsim_dev_port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nsim_dev_port, align 8
  %ddir48 = getelementptr inbounds %struct.nsim_dev_port, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %ddir48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ddir48, align 4
  %call49 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 128, ptr noundef %30, ptr noundef %dev, ptr noundef nonnull @nsim_udp_tunnels_info_reset_fops) #4
  %call50 = tail call ptr @kmemdup(ptr noundef nonnull @nsim_udp_tunnel_info, i32 noundef 52, i32 noundef 3264) #4
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.end15.cleanup_crit_edge, label %if.end53

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end53:                                         ; preds = %if.end15
  %sleep = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 34, i32 7
  %31 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sleep, align 4
  %sleep56 = getelementptr i8, ptr %dev, i32 3876
  %33 = ptrtoint ptr %sleep56 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %sleep56, align 4
  %sync_all = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 34, i32 2
  %34 = ptrtoint ptr %sync_all to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sync_all, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool58.not = icmp eq i8 %35, 0
  br i1 %tobool58.not, label %if.else60, label %if.then59

if.then59:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %call50 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %call50, align 4
  %unset_port = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %call50, i32 0, i32 1
  br label %if.end61

if.else60:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  %sync_table = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %call50, i32 0, i32 2
  br label %if.end61

if.end61:                                         ; preds = %if.else60, %if.then59
  %sync_table.sink = phi ptr [ %sync_table, %if.else60 ], [ %unset_port, %if.then59 ]
  %37 = ptrtoint ptr %sync_table.sink to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %sync_table.sink, align 4
  %38 = ptrtoint ptr %sleep56 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sleep56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool64.not = icmp eq i32 %39, 0
  br i1 %tobool64.not, label %if.end61.if.end66_crit_edge, label %if.then65

if.end61.if.end66_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end66

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  %flags = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %call50, i32 0, i32 4
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  %or = or i32 %41, 1
  store i32 %or, ptr %flags, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end61.if.end66_crit_edge
  %open_only68 = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 34, i32 3
  %42 = ptrtoint ptr %open_only68 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %open_only68, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool69.not = icmp eq i8 %43, 0
  br i1 %tobool69.not, label %if.end66.if.end73_crit_edge, label %if.then70

if.end66.if.end73_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end73

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  %flags71 = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %call50, i32 0, i32 4
  %44 = ptrtoint ptr %flags71 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags71, align 4
  %or72 = or i32 %45, 2
  store i32 %or72, ptr %flags71, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.end66.if.end73_crit_edge
  %ipv4_only = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 34, i32 4
  %46 = ptrtoint ptr %ipv4_only to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ipv4_only, align 2, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool75.not = icmp eq i8 %47, 0
  br i1 %tobool75.not, label %if.end73.if.end79_crit_edge, label %if.then76

if.end73.if.end79_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  %flags77 = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %call50, i32 0, i32 4
  %48 = ptrtoint ptr %flags77 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags77, align 4
  %or78 = or i32 %49, 4
  store i32 %or78, ptr %flags77, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end73.if.end79_crit_edge
  %50 = ptrtoint ptr %shared to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %shared, align 1, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool82.not = icmp eq i8 %51, 0
  br i1 %tobool82.not, label %if.end79.if.end86_crit_edge, label %if.then83

if.end79.if.end86_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end86

if.then83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  %shared85 = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %call50, i32 0, i32 3
  %52 = ptrtoint ptr %shared85 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %udp_ports, ptr %shared85, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.end79.if.end86_crit_edge
  %static_iana_vxlan = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 34, i32 6
  %53 = ptrtoint ptr %static_iana_vxlan to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %static_iana_vxlan, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool88.not = icmp eq i8 %54, 0
  br i1 %tobool88.not, label %if.end86.if.end92_crit_edge, label %if.then89

if.end86.if.end92_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end92

if.then89:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #6
  %flags90 = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %call50, i32 0, i32 4
  %55 = ptrtoint ptr %flags90 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags90, align 4
  %or91 = or i32 %56, 8
  store i32 %or91, ptr %flags90, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %if.end86.if.end92_crit_edge
  %udp_tunnel_nic_info = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 152
  %57 = ptrtoint ptr %udp_tunnel_nic_info to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call50, ptr %udp_tunnel_nic_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %if.end15.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end92 ], [ -12, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32_array(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nsim_udp_tunnels_info_destroy(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %udp_tunnel_nic_info = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 152
  %0 = ptrtoint ptr %udp_tunnel_nic_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp_tunnel_nic_info, align 4
  tail call void @kfree(ptr noundef %1) #4
  %2 = ptrtoint ptr %udp_tunnel_nic_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %udp_tunnel_nic_info, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nsim_udp_tunnels_debugfs_create(ptr noundef %nsim_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ddir = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 3
  %0 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddir, align 4
  %sync_all = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 34, i32 2
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.9, i16 noundef zeroext 384, ptr noundef %1, ptr noundef %sync_all) #4
  %2 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddir, align 4
  %open_only = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 34, i32 3
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.10, i16 noundef zeroext 384, ptr noundef %3, ptr noundef %open_only) #4
  %4 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddir, align 4
  %ipv4_only = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 34, i32 4
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.11, i16 noundef zeroext 384, ptr noundef %5, ptr noundef %ipv4_only) #4
  %6 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddir, align 4
  %shared = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 34, i32 5
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.12, i16 noundef zeroext 384, ptr noundef %7, ptr noundef %shared) #4
  %8 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ddir, align 4
  %static_iana_vxlan = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 34, i32 6
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.13, i16 noundef zeroext 384, ptr noundef %9, ptr noundef %static_iana_vxlan) #4
  %10 = ptrtoint ptr %ddir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddir, align 4
  %sleep = getelementptr inbounds %struct.nsim_dev, ptr %nsim_dev, i32 0, i32 34, i32 7
  tail call void @debugfs_create_u32(ptr noundef nonnull @.str.14, i16 noundef zeroext 384, ptr noundef %11, ptr noundef %sleep) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_udp_tunnels_info_reset_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %data, i32 noundef returned %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ports = getelementptr i8, ptr %1, i32 3912
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 8
  %4 = call ptr @memset(ptr %3, i32 0, i32 32)
  tail call void @rtnl_lock() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32))
  %5 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.udp_tunnel_nic_reset_ntf.exit_crit_edge, label %if.then.i

entry.udp_tunnel_nic_reset_ntf.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %udp_tunnel_nic_reset_ntf.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %reset_ntf.i = getelementptr inbounds %struct.udp_tunnel_nic_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %reset_ntf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_ntf.i, align 4
  tail call void %7(ptr noundef %1) #4
  br label %udp_tunnel_nic_reset_ntf.exit

udp_tunnel_nic_reset_ntf.exit:                    ; preds = %if.then.i, %entry.udp_tunnel_nic_reset_ntf.exit_crit_edge
  tail call void @rtnl_unlock() #4
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_udp_tunnel_set_port(ptr noundef %dev, i32 noundef %table, i32 noundef %entry1, ptr nocapture noundef readonly %ti) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %udp_ports = getelementptr i8, ptr %dev, i32 3872
  %0 = ptrtoint ptr %udp_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %udp_ports, align 8
  %sub = sub i32 0, %1
  store i32 0, ptr %udp_ports, align 8
  %sleep = getelementptr i8, ptr %dev, i32 3876
  %2 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool7.not = icmp eq i32 %1, 0
  br i1 %tobool7.not, label %if.then8, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then8:                                         ; preds = %if.end
  %ports = getelementptr i8, ptr %dev, i32 3912
  %4 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports, align 8
  %arrayidx10 = getelementptr [4 x i32], ptr %5, i32 %table, i32 %entry1
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 26, i32 noundef 9, ptr noundef nonnull @.str.15) #4
  br label %if.end36

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %port = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 2
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %port, align 2
  %conv = zext i16 %9 to i32
  %shl = shl nuw i32 %conv, 16
  %10 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ti, align 2
  %conv30 = zext i16 %11 to i32
  %or = or i32 %shl, %conv30
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %arrayidx10, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else, %do.end, %if.end.if.end36_crit_edge
  %ret.0 = phi i32 [ %sub, %if.end.if.end36_crit_edge ], [ -16, %do.end ], [ 0, %if.else ]
  %13 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ti, align 2
  %conv38 = zext i16 %14 to i32
  %sa_family = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 1
  %15 = ptrtoint ptr %sa_family to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sa_family, align 2
  %conv39 = zext i16 %16 to i32
  %port40 = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 2
  %17 = ptrtoint ptr %port40 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %port40, align 2
  %conv41 = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %table, i32 noundef %entry1, i32 noundef %conv38, i32 noundef %conv39, i32 noundef %conv41, i32 noundef %ret.0) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_udp_tunnel_unset_port(ptr noundef %dev, i32 noundef %table, i32 noundef %entry1, ptr nocapture noundef readonly %ti) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %udp_ports = getelementptr i8, ptr %dev, i32 3872
  %0 = ptrtoint ptr %udp_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %udp_ports, align 8
  %sub = sub i32 0, %1
  store i32 0, ptr %udp_ports, align 8
  %sleep = getelementptr i8, ptr %dev, i32 3876
  %2 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool7.not = icmp eq i32 %1, 0
  br i1 %tobool7.not, label %if.then8, label %if.end.if.end40_crit_edge

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end40

if.then8:                                         ; preds = %if.end
  %port = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 2
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %port, align 2
  %conv = zext i16 %5 to i32
  %shl = shl nuw i32 %conv, 16
  %6 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ti, align 2
  %conv9 = zext i16 %7 to i32
  %or = or i32 %shl, %conv9
  %ports = getelementptr i8, ptr %dev, i32 3912
  %8 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ports, align 8
  %arrayidx11 = getelementptr [4 x i32], ptr %9, i32 %table, i32 %entry1
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %11)
  %cmp = icmp eq i32 %or, %11
  br i1 %cmp, label %if.then13, label %do.end

if.then13:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx11, align 4
  br label %if.end40

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 59, i32 noundef 9, ptr noundef nonnull @.str.17, i32 noundef %or, i32 noundef %11) #4
  br label %if.end40

if.end40:                                         ; preds = %do.end, %if.then13, %if.end.if.end40_crit_edge
  %ret.1 = phi i32 [ %sub, %if.end.if.end40_crit_edge ], [ 0, %if.then13 ], [ -2, %do.end ]
  %13 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ti, align 2
  %conv42 = zext i16 %14 to i32
  %sa_family = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 1
  %15 = ptrtoint ptr %sa_family to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sa_family, align 2
  %conv43 = zext i16 %16 to i32
  %port44 = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 2
  %17 = ptrtoint ptr %port44 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %port44, align 2
  %conv45 = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %table, i32 noundef %entry1, i32 noundef %conv42, i32 noundef %conv43, i32 noundef %conv45, i32 noundef %ret.1) #7
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nsim_udp_tunnel_sync_table(ptr noundef %dev, i32 noundef %table) #0 align 64 {
entry:
  %ti = alloca %struct.udp_tunnel_info, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ti) #4
  %udp_ports = getelementptr i8, ptr %dev, i32 3872
  %0 = ptrtoint ptr %udp_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %udp_ports, align 8
  store i32 0, ptr %udp_ports, align 8
  %port = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 2
  %ports = getelementptr i8, ptr %dev, i32 3912
  %2 = ptrtoint ptr %ti to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %ti, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32))
  %3 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.udp_tunnel_nic_get_port.exit_crit_edge, label %if.then.i

entry.udp_tunnel_nic_get_port.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %udp_tunnel_nic_get_port.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void %5(ptr noundef %dev, i32 noundef %table, i32 noundef 0, ptr noundef nonnull %ti) #4
  br label %udp_tunnel_nic_get_port.exit

udp_tunnel_nic_get_port.exit:                     ; preds = %if.then.i, %entry.udp_tunnel_nic_get_port.exit_crit_edge
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %port, align 4
  %conv = zext i16 %7 to i32
  %shl = shl nuw i32 %conv, 16
  %8 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ti, align 8
  %conv3 = zext i16 %9 to i32
  %or = or i32 %shl, %conv3
  %10 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ports, align 8
  %arrayidx5 = getelementptr [4 x i32], ptr %11, i32 %table, i32 0
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %arrayidx5, align 4
  store i64 0, ptr %ti, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32))
  %13 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %tobool.not.i.1 = icmp eq ptr %13, null
  br i1 %tobool.not.i.1, label %udp_tunnel_nic_get_port.exit.udp_tunnel_nic_get_port.exit.1_crit_edge, label %if.then.i.1

udp_tunnel_nic_get_port.exit.udp_tunnel_nic_get_port.exit.1_crit_edge: ; preds = %udp_tunnel_nic_get_port.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %udp_tunnel_nic_get_port.exit.1

if.then.i.1:                                      ; preds = %udp_tunnel_nic_get_port.exit
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  call void %15(ptr noundef %dev, i32 noundef %table, i32 noundef 1, ptr noundef nonnull %ti) #4
  br label %udp_tunnel_nic_get_port.exit.1

udp_tunnel_nic_get_port.exit.1:                   ; preds = %if.then.i.1, %udp_tunnel_nic_get_port.exit.udp_tunnel_nic_get_port.exit.1_crit_edge
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %port, align 4
  %conv.1 = zext i16 %17 to i32
  %shl.1 = shl nuw i32 %conv.1, 16
  %18 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ti, align 8
  %conv3.1 = zext i16 %19 to i32
  %or.1 = or i32 %shl.1, %conv3.1
  %20 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ports, align 8
  %arrayidx5.1 = getelementptr [4 x i32], ptr %21, i32 %table, i32 1
  %22 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or.1, ptr %arrayidx5.1, align 4
  store i64 0, ptr %ti, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32))
  %23 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %tobool.not.i.2 = icmp eq ptr %23, null
  br i1 %tobool.not.i.2, label %udp_tunnel_nic_get_port.exit.1.udp_tunnel_nic_get_port.exit.2_crit_edge, label %if.then.i.2

udp_tunnel_nic_get_port.exit.1.udp_tunnel_nic_get_port.exit.2_crit_edge: ; preds = %udp_tunnel_nic_get_port.exit.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %udp_tunnel_nic_get_port.exit.2

if.then.i.2:                                      ; preds = %udp_tunnel_nic_get_port.exit.1
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  call void %25(ptr noundef %dev, i32 noundef %table, i32 noundef 2, ptr noundef nonnull %ti) #4
  br label %udp_tunnel_nic_get_port.exit.2

udp_tunnel_nic_get_port.exit.2:                   ; preds = %if.then.i.2, %udp_tunnel_nic_get_port.exit.1.udp_tunnel_nic_get_port.exit.2_crit_edge
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %port, align 4
  %conv.2 = zext i16 %27 to i32
  %shl.2 = shl nuw i32 %conv.2, 16
  %28 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %ti, align 8
  %conv3.2 = zext i16 %29 to i32
  %or.2 = or i32 %shl.2, %conv3.2
  %30 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ports, align 8
  %arrayidx5.2 = getelementptr [4 x i32], ptr %31, i32 %table, i32 2
  %32 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.2, ptr %arrayidx5.2, align 4
  store i64 0, ptr %ti, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32))
  %33 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %tobool.not.i.3 = icmp eq ptr %33, null
  br i1 %tobool.not.i.3, label %udp_tunnel_nic_get_port.exit.2.udp_tunnel_nic_get_port.exit.3_crit_edge, label %if.then.i.3

udp_tunnel_nic_get_port.exit.2.udp_tunnel_nic_get_port.exit.3_crit_edge: ; preds = %udp_tunnel_nic_get_port.exit.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %udp_tunnel_nic_get_port.exit.3

if.then.i.3:                                      ; preds = %udp_tunnel_nic_get_port.exit.2
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  call void %35(ptr noundef %dev, i32 noundef %table, i32 noundef 3, ptr noundef nonnull %ti) #4
  br label %udp_tunnel_nic_get_port.exit.3

udp_tunnel_nic_get_port.exit.3:                   ; preds = %if.then.i.3, %udp_tunnel_nic_get_port.exit.2.udp_tunnel_nic_get_port.exit.3_crit_edge
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %port, align 4
  %conv.3 = zext i16 %37 to i32
  %shl.3 = shl nuw i32 %conv.3, 16
  %38 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ti, align 8
  %conv3.3 = zext i16 %39 to i32
  %or.3 = or i32 %shl.3, %conv3.3
  %40 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ports, align 8
  %arrayidx5.3 = getelementptr [4 x i32], ptr %41, i32 %table, i32 3
  %42 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or.3, ptr %arrayidx5.3, align 4
  %sub = sub i32 0, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ti) #4
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/netdevsim/udp_tunnels.c", i32 137, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nsim_udp_tunnels_info_create._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nsim_udp_tunnels_info_create._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/netdevsim/udp_tunnels.c", i32 147, i32 21}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/netdevsim/udp_tunnels.c", i32 153, i32 27}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/netdevsim/udp_tunnels.c", i32 159, i32 27}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/netdevsim/udp_tunnels.c", i32 163, i32 22}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/netdevsim/udp_tunnels.c", i32 205, i32 22}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/netdevsim/udp_tunnels.c", i32 207, i32 22}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/netdevsim/udp_tunnels.c", i32 209, i32 22}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/netdevsim/udp_tunnels.c", i32 211, i32 22}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/netdevsim/udp_tunnels.c", i32 213, i32 22}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/netdevsim/udp_tunnels.c", i32 215, i32 21}
!28 = !{ptr @nsim_udp_tunnels_info_reset_fops, !29, !"nsim_udp_tunnels_info_reset_fops", i1 false, i1 false}
!29 = !{!"../drivers/net/netdevsim/udp_tunnels.c", i32 123, i32 37}
!30 = !{ptr @nsim_udp_tunnel_info, !31, !"nsim_udp_tunnel_info", i1 false, i1 false}
!31 = !{!"../drivers/net/netdevsim/udp_tunnels.c", i32 90, i32 41}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/netdevsim/udp_tunnels.c", i32 26, i32 4}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/netdevsim/udp_tunnels.c", i32 34, i32 19}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/netdevsim/udp_tunnels.c", i32 58, i32 4}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/netdevsim/udp_tunnels.c", i32 64, i32 19}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i8 0, i8 2}
