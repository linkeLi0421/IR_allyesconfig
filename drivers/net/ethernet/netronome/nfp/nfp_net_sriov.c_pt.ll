; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfp_net_sriov.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfp_net_sriov.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nfp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i32, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.ifla_vf_info = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mac\00", [28 x i8] zeroinitializer }, align 32
@nfp_app_set_vf_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 75, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"nfp: invalid Ethernet address %pM for VF id %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfp_app_set_vf_mac\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/netronome/nfp/nfp_net_sriov.c\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_app_set_vf_mac._entry_ptr = internal global ptr @nfp_app_set_vf_mac._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MAC\00", [28 x i8] zeroinitializer }, align 32
@nfp_app_set_vf_mac._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 89, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"nfp: MAC %pM set on VF %d, reload the VF driver to make this change effective.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nfp_app_set_vf_mac._entry_ptr.10 = internal global ptr @nfp_app_set_vf_mac._entry.7, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vlan\00", [27 x i8] zeroinitializer }, align 32
@nfp_app_set_vf_vlan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 111, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nfp: invalid vlan id or qos for VF id %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfp_app_set_vf_vlan\00", [44 x i8] zeroinitializer }, align 32
@nfp_app_set_vf_vlan._entry_ptr = internal global ptr @nfp_app_set_vf_vlan._entry, section ".printk_index", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spoofchk\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"trust\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link_state\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link state\00", [21 x i8] zeroinitializer }, align 32
@nfp_net_sriov_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 27, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nfp: ndo_set_vf_%s not supported\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfp_net_sriov_check\00", [44 x i8] zeroinitializer }, align 32
@nfp_net_sriov_check._entry_ptr = internal global ptr @nfp_net_sriov_check._entry, section ".printk_index", align 4
@nfp_net_sriov_check._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 32, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nfp: invalid VF id %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nfp_net_sriov_check._entry_ptr.23 = internal global ptr @nfp_net_sriov_check._entry.21, section ".printk_index", align 4
@nfp_net_sriov_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 58, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"nfp: FW refused VF %s update with errno: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfp_net_sriov_update\00", [43 x i8] zeroinitializer }, align 32
@nfp_net_sriov_update._entry_ptr = internal global ptr @nfp_net_sriov_update._entry, section ".printk_index", align 4
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 68, i32 64 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 73, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 85, i32 65 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 87, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 102, i32 65 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 110, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 133, i32 7 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 157, i32 7 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 182, i32 7 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 204, i32 9 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 27, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 32, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [54 x i8] c"../drivers/net/ethernet/netronome/nfp/nfp_net_sriov.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 57, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @nfp_app_set_vf_mac._entry, ptr @nfp_app_set_vf_mac._entry.7, ptr @nfp_app_set_vf_mac._entry_ptr, ptr @nfp_app_set_vf_mac._entry_ptr.10, ptr @nfp_app_set_vf_vlan._entry, ptr @nfp_app_set_vf_vlan._entry_ptr, ptr @nfp_net_sriov_check._entry, ptr @nfp_net_sriov_check._entry.21, ptr @nfp_net_sriov_check._entry_ptr, ptr @nfp_net_sriov_check._entry_ptr.23, ptr @nfp_net_sriov_update._entry, ptr @nfp_net_sriov_update._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_app_set_vf_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_app_set_vf_mac._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_app_set_vf_vlan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_sriov_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_sriov_check._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_net_sriov_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_app_set_vf_mac(ptr noundef %netdev, i32 noundef %vf, ptr noundef %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_app_from_netdev(ptr noundef %netdev) #4
  %call1 = tail call fastcc i32 @nfp_net_sriov_check(ptr noundef %call, i32 noundef %vf, i16 noundef zeroext 1, ptr noundef nonnull @.str)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %pf = getelementptr inbounds %struct.nfp_app, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pf, align 4
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cpp, align 4
  %call4 = tail call ptr @nfp_cpp_device(ptr noundef %6) #4
  %parent = getelementptr inbounds %struct.device, ptr %call4, i32 0, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef %mac, i32 noundef %vf) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %mul = shl i32 %vf, 4
  %add = add i32 %mul, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %mac to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %mac, align 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %pf10 = getelementptr inbounds %struct.nfp_app, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %pf10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pf10, align 4
  %vfcfg_tbl2 = getelementptr inbounds %struct.nfp_pf, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %vfcfg_tbl2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vfcfg_tbl2, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #4, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  tail call void @arm_heavy_mb() #4
  %add.ptr14 = getelementptr i8, ptr %mac, i32 4
  %16 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %add.ptr14, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %19 = ptrtoint ptr %pf10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pf10, align 4
  %vfcfg_tbl217 = getelementptr inbounds %struct.nfp_pf, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %vfcfg_tbl217 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vfcfg_tbl217, align 4
  %add.ptr18 = getelementptr i8, ptr %22, i32 %add
  %add.ptr19 = getelementptr i8, ptr %add.ptr18, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr19, i16 %18) #4, !srcloc !60
  %call20 = tail call fastcc i32 @nfp_net_sriov_update(ptr noundef %call, i32 noundef %vf, i16 noundef zeroext 1, ptr noundef nonnull @.str.6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.end25, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end25:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %pf10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pf10, align 4
  %cpp27 = getelementptr inbounds %struct.nfp_pf, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %cpp27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cpp27, align 4
  %call28 = tail call ptr @nfp_cpp_device(ptr noundef %26) #4
  %parent29 = getelementptr inbounds %struct.device, ptr %call28, i32 0, i32 1
  %27 = ptrtoint ptr %parent29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent29, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.8, ptr noundef %mac, i32 noundef %vf) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %do.end25 ], [ %call20, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_app_from_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_net_sriov_check(ptr noundef readonly %app, i32 noundef %vf, i16 noundef zeroext %cap, ptr noundef %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %app, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pf = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  %vfcfg_tbl2 = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vfcfg_tbl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfcfg_tbl2, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %3) #4, !srcloc !61
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  %and35 = and i16 %5, %cap
  call void @__sanitizer_cov_trace_cmp2(i16 %and35, i16 %cap)
  %cmp.not = icmp eq i16 %and35, %cap
  br i1 %cmp.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pf, align 4
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpp, align 4
  %call10 = tail call ptr @nfp_cpp_device(ptr noundef %9) #4
  %parent = getelementptr inbounds %struct.device, ptr %call10, i32 0, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.19, ptr noundef %msg) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vf)
  %cmp12 = icmp slt i32 %vf, 0
  br i1 %cmp12, label %if.end11.do.end21_crit_edge, label %lor.lhs.false14

if.end11.do.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end21

lor.lhs.false14:                                  ; preds = %if.end11
  %12 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pf, align 4
  %num_vfs = getelementptr inbounds %struct.nfp_pf, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %vf)
  %cmp16.not = icmp ugt i32 %15, %vf
  br i1 %cmp16.not, label %lor.lhs.false14.cleanup_crit_edge, label %lor.lhs.false14.do.end21_crit_edge

lor.lhs.false14.do.end21_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end21

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end21:                                         ; preds = %lor.lhs.false14.do.end21_crit_edge, %if.end11.do.end21_crit_edge
  %16 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pf, align 4
  %cpp23 = getelementptr inbounds %struct.nfp_pf, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %cpp23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cpp23, align 4
  %call24 = tail call ptr @nfp_cpp_device(ptr noundef %19) #4
  %parent25 = getelementptr inbounds %struct.device, ptr %call24, i32 0, i32 1
  %20 = ptrtoint ptr %parent25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent25, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.22, i32 noundef %vf) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %lor.lhs.false14.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end ], [ -22, %do.end21 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_net_sriov_update(ptr nocapture noundef readonly %app, i32 noundef %vf, i16 noundef zeroext %update, ptr noundef %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  tail call void @arm_heavy_mb() #4
  %conv = trunc i32 %vf to i8
  %pf = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  %vfcfg_tbl2 = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vfcfg_tbl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfcfg_tbl2, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #4, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  %4 = tail call i16 @llvm.bswap.i16(i16 %update)
  %5 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pf, align 4
  %vfcfg_tbl25 = getelementptr inbounds %struct.nfp_pf, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %vfcfg_tbl25 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vfcfg_tbl25, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6, i16 %4) #4, !srcloc !60
  %9 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pf, align 4
  %vnics = getelementptr inbounds %struct.nfp_pf, ptr %10, i32 0, i32 31
  %11 = ptrtoint ptr %vnics to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vnics, align 4
  %add.ptr8 = getelementptr i8, ptr %12, i32 -58864
  %call = tail call i32 @nfp_net_reconfig(ptr noundef %add.ptr8, i32 noundef 8192) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pf, align 4
  %vfcfg_tbl210 = getelementptr inbounds %struct.nfp_pf, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %vfcfg_tbl210 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vfcfg_tbl210, align 4
  %add.ptr11 = getelementptr i8, ptr %16, i32 2
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11) #4, !srcloc !61
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  %conv15 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool16.not = icmp eq i16 %17, 0
  br i1 %tobool16.not, label %if.end.if.end23_crit_edge, label %do.end20

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pf, align 4
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cpp, align 4
  %call22 = tail call ptr @nfp_cpp_device(ptr noundef %22) #4
  %parent = getelementptr inbounds %struct.device, ptr %call22, i32 0, i32 1
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.24, ptr noundef %msg, i32 noundef %conv15) #7
  br label %if.end23

if.end23:                                         ; preds = %do.end20, %if.end.if.end23_crit_edge
  %sub = sub nsw i32 0, %conv15
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end23 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_app_set_vf_vlan(ptr noundef %netdev, i32 noundef %vf, i16 noundef zeroext %vlan, i8 noundef zeroext %qos, i16 noundef zeroext %vlan_proto) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_app_from_netdev(ptr noundef %netdev) #4
  %call1 = tail call fastcc i32 @nfp_net_sriov_check(ptr noundef %call, i32 noundef %vf, i16 noundef zeroext 2, ptr noundef nonnull @.str.11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %vlan_proto)
  %cmp.not = icmp eq i16 %vlan_proto, -32512
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %vlan)
  %cmp6 = icmp ugt i16 %vlan, 4095
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %qos)
  %cmp9 = icmp ugt i8 %qos, 7
  %or.cond = or i1 %cmp6, %cmp9
  br i1 %or.cond, label %do.end, label %do.end56

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %pf = getelementptr inbounds %struct.nfp_app, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpp, align 4
  %call12 = tail call ptr @nfp_cpp_device(ptr noundef %3) #4
  %parent = getelementptr inbounds %struct.device, ptr %call12, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.12, i32 noundef %vf) #7
  br label %cleanup

do.end56:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %conv8 = zext i8 %qos to i16
  %6 = and i16 %vlan, 4095
  %shl59 = shl i16 %conv8, 13
  %or = or i16 %shl59, %6
  %mul = shl i32 %vf, 4
  %add = add i32 %mul, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  tail call void @arm_heavy_mb() #4
  %7 = tail call i16 @llvm.bswap.i16(i16 %or)
  %pf65 = getelementptr inbounds %struct.nfp_app, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %pf65 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pf65, align 4
  %vfcfg_tbl2 = getelementptr inbounds %struct.nfp_pf, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %vfcfg_tbl2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vfcfg_tbl2, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %add
  %add.ptr66 = getelementptr i8, ptr %add.ptr, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr66, i16 %7) #4, !srcloc !60
  %call67 = tail call fastcc i32 @nfp_net_sriov_update(ptr noundef %call, i32 noundef %vf, i16 noundef zeroext 2, ptr noundef nonnull @.str.11)
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call67, %do.end56 ], [ %call1, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_app_set_vf_spoofchk(ptr noundef %netdev, i32 noundef %vf, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_app_from_netdev(ptr noundef %netdev) #4
  %call1 = tail call fastcc i32 @nfp_net_sriov_check(ptr noundef %call, i32 noundef %vf, i16 noundef zeroext 4, ptr noundef nonnull @.str.14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mul = shl i32 %vf, 4
  %add2 = add i32 %mul, 20
  %pf = getelementptr inbounds %struct.nfp_app, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  %vfcfg_tbl2 = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vfcfg_tbl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfcfg_tbl2, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %add2
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  %5 = and i8 %4, -5
  %shl = select i1 %enable, i8 4, i8 0
  %or = or i8 %5, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pf, align 4
  %vfcfg_tbl235 = getelementptr inbounds %struct.nfp_pf, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %vfcfg_tbl235 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vfcfg_tbl235, align 4
  %add.ptr36 = getelementptr i8, ptr %9, i32 %add2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36, i8 %or) #4, !srcloc !64
  %call37 = tail call fastcc i32 @nfp_net_sriov_update(ptr noundef %call, i32 noundef %vf, i16 noundef zeroext 4, ptr noundef nonnull @.str.14)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_app_set_vf_trust(ptr noundef %netdev, i32 noundef %vf, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_app_from_netdev(ptr noundef %netdev) #4
  %call1 = tail call fastcc i32 @nfp_net_sriov_check(ptr noundef %call, i32 noundef %vf, i16 noundef zeroext 16, ptr noundef nonnull @.str.15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mul = shl i32 %vf, 4
  %add2 = add i32 %mul, 20
  %pf = getelementptr inbounds %struct.nfp_app, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  %vfcfg_tbl2 = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vfcfg_tbl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfcfg_tbl2, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %add2
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !71
  %5 = and i8 %4, -9
  %shl = select i1 %enable, i8 8, i8 0
  %or = or i8 %5, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !72
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pf, align 4
  %vfcfg_tbl235 = getelementptr inbounds %struct.nfp_pf, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %vfcfg_tbl235 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vfcfg_tbl235, align 4
  %add.ptr36 = getelementptr i8, ptr %9, i32 %add2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36, i8 %or) #4, !srcloc !64
  %call37 = tail call fastcc i32 @nfp_net_sriov_update(ptr noundef %call, i32 noundef %vf, i16 noundef zeroext 16, ptr noundef nonnull @.str.15)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_app_set_vf_link_state(ptr noundef %netdev, i32 noundef %vf, i32 noundef %link_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_app_from_netdev(ptr noundef %netdev) #4
  %call1 = tail call fastcc i32 @nfp_net_sriov_check(ptr noundef %call, i32 noundef %vf, i16 noundef zeroext 8, ptr noundef nonnull @.str.16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %link_state)
  %switch = icmp ult i32 %link_state, 3
  br i1 %switch, label %do.end21, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %mul = shl i32 %vf, 4
  %add2 = add i32 %mul, 20
  %pf = getelementptr inbounds %struct.nfp_app, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  %vfcfg_tbl2 = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vfcfg_tbl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfcfg_tbl2, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %add2
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !73
  %5 = and i8 %4, -4
  %6 = trunc i32 %link_state to i8
  %conv25 = or i8 %5, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !74
  tail call void @arm_heavy_mb() #4
  %7 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pf, align 4
  %vfcfg_tbl230 = getelementptr inbounds %struct.nfp_pf, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %vfcfg_tbl230 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vfcfg_tbl230, align 4
  %add.ptr31 = getelementptr i8, ptr %10, i32 %add2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 %conv25) #4, !srcloc !64
  %call32 = tail call fastcc i32 @nfp_net_sriov_update(ptr noundef %call, i32 noundef %vf, i16 noundef zeroext 8, ptr noundef nonnull @.str.17)
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %do.end21 ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_app_get_vf_config(ptr noundef %netdev, i32 noundef %vf, ptr nocapture noundef writeonly %ivi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_app_from_netdev(ptr noundef %netdev) #4
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %pf.i = getelementptr inbounds %struct.nfp_app, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf.i, align 4
  %vfcfg_tbl2.i = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vfcfg_tbl2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfcfg_tbl2.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %3) #4, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vf)
  %cmp12.i = icmp slt i32 %vf, 0
  br i1 %cmp12.i, label %if.end.i.do.end21.i_crit_edge, label %lor.lhs.false14.i

if.end.i.do.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end21.i

lor.lhs.false14.i:                                ; preds = %if.end.i
  %5 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pf.i, align 4
  %num_vfs.i = getelementptr inbounds %struct.nfp_pf, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %num_vfs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_vfs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %vf)
  %cmp16.not.i = icmp ugt i32 %8, %vf
  br i1 %cmp16.not.i, label %if.end, label %lor.lhs.false14.i.do.end21.i_crit_edge

lor.lhs.false14.i.do.end21.i_crit_edge:           ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end21.i

do.end21.i:                                       ; preds = %lor.lhs.false14.i.do.end21.i_crit_edge, %if.end.i.do.end21.i_crit_edge
  %9 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pf.i, align 4
  %cpp23.i = getelementptr inbounds %struct.nfp_pf, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %cpp23.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpp23.i, align 4
  %call24.i = tail call ptr @nfp_cpp_device(ptr noundef %12) #4
  %parent25.i = getelementptr inbounds %struct.device, ptr %call24.i, i32 0, i32 1
  %13 = ptrtoint ptr %parent25.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent25.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.22, i32 noundef %vf) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #6
  %mul = shl i32 %vf, 4
  %add = add i32 %mul, 16
  %15 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pf.i, align 4
  %vfcfg_tbl2 = getelementptr inbounds %struct.nfp_pf, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %vfcfg_tbl2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vfcfg_tbl2, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 %add
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !75
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !76
  %21 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pf.i, align 4
  %vfcfg_tbl27 = getelementptr inbounds %struct.nfp_pf, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %vfcfg_tbl27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vfcfg_tbl27, align 4
  %add.ptr8 = getelementptr i8, ptr %24, i32 %add
  %add.ptr9 = getelementptr i8, ptr %add.ptr8, i32 6
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9) #4, !srcloc !61
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %27 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pf.i, align 4
  %vfcfg_tbl216 = getelementptr inbounds %struct.nfp_pf, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %vfcfg_tbl216 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vfcfg_tbl216, align 4
  %add.ptr17 = getelementptr i8, ptr %30, i32 %add
  %add.ptr18 = getelementptr i8, ptr %add.ptr17, i32 4
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr18) #4, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  %32 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pf.i, align 4
  %vfcfg_tbl225 = getelementptr inbounds %struct.nfp_pf, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %vfcfg_tbl225 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vfcfg_tbl225, align 4
  %add.ptr26 = getelementptr i8, ptr %35, i32 %add
  %add.ptr27 = getelementptr i8, ptr %add.ptr26, i32 8
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr27) #4, !srcloc !61
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  %38 = getelementptr inbounds i8, ptr %ivi, i32 8
  %39 = call ptr @memset(ptr %38, i32 0, i32 64)
  %40 = ptrtoint ptr %ivi to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %vf, ptr %ivi, align 4
  %mac = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 1
  %41 = ptrtoint ptr %mac to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %20, ptr %mac, align 1
  %arrayidx33 = getelementptr %struct.ifla_vf_info, ptr %ivi, i32 0, i32 1, i32 4
  %42 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %26, ptr %arrayidx33, align 1
  %conv = zext i16 %37 to i32
  %and = and i32 %conv, 4095
  %vlan = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 2
  %43 = ptrtoint ptr %vlan to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and, ptr %vlan, align 4
  %44 = lshr i32 %conv, 13
  %qos = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 3
  %45 = ptrtoint ptr %qos to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %qos, align 4
  %conv82 = zext i8 %31 to i32
  %and83 = lshr i32 %conv82, 2
  %46 = and i32 %and83, 1
  %spoofchk = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 4
  %47 = ptrtoint ptr %spoofchk to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %spoofchk, align 4
  %and102 = lshr i32 %conv82, 3
  %48 = and i32 %and102, 1
  %trusted = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 9
  %49 = ptrtoint ptr %trusted to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %trusted, align 4
  %and121 = and i32 %conv82, 3
  %linkstate = getelementptr inbounds %struct.ifla_vf_info, ptr %ivi, i32 0, i32 5
  %50 = ptrtoint ptr %linkstate to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and121, ptr %linkstate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end21.i, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ], [ -95, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %do.end21.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_net_reconfig(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16, !17, !19, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_sriov.c", i32 68, i32 64}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_sriov.c", i32 73, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nfp_app_set_vf_mac._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @nfp_app_set_vf_mac._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_sriov.c", i32 85, i32 65}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_sriov.c", i32 87, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nfp_app_set_vf_mac._entry.7, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @nfp_app_set_vf_mac._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_sriov.c", i32 102, i32 65}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_sriov.c", i32 110, i32 3}
!21 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @nfp_app_set_vf_vlan._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @nfp_app_set_vf_vlan._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_sriov.c", i32 133, i32 7}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_sriov.c", i32 157, i32 7}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_sriov.c", i32 182, i32 7}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_sriov.c", i32 204, i32 9}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_sriov.c", i32 218, i32 40}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_sriov.c", i32 27, i32 3}
!36 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @nfp_net_sriov_check._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @nfp_net_sriov_check._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_sriov.c", i32 32, i32 3}
!41 = !{ptr @nfp_net_sriov_check._entry.21, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @nfp_net_sriov_check._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_sriov.c", i32 57, i32 3}
!45 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @nfp_net_sriov_update._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @nfp_net_sriov_update._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2158811633}
!58 = !{i64 6079164}
!59 = !{i64 2158812144}
!60 = !{i64 6078544}
!61 = !{i64 6078744}
!62 = !{i64 2158800580}
!63 = !{i64 2158804606}
!64 = !{i64 6078967}
!65 = !{i64 2158804895}
!66 = !{i64 2158807180}
!67 = !{i64 2158844533}
!68 = !{i64 6079362}
!69 = !{i64 2158845035}
!70 = !{i64 2158858665}
!71 = !{i64 2158859028}
!72 = !{i64 2158872658}
!73 = !{i64 2158873024}
!74 = !{i64 2158886702}
!75 = !{i64 6079582}
!76 = !{i64 2158887332}
!77 = !{i64 2158887902}
!78 = !{i64 2158888178}
!79 = !{i64 2158888748}
