; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/ti/cpsw_ale.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/cpsw_ale.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ale_control_info = type { ptr, i32, i32, i32, i32, i32 }
%struct.cpsw_ale_dev_id = type { ptr, i32, i32, i32, i8, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ale_entry_fld = type { i8, i8, i8 }
%struct.cpsw_ale_params = type { ptr, ptr, i32, i32, i32, i8, i32, ptr, i32 }
%struct.cpsw_ale = type { %struct.cpsw_ale_params, %struct.timer_list, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@cpsw_ale_vlan_add_modify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 758, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unable to add vlan\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cpsw_ale_vlan_add_modify\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/net/ethernet/ti/cpsw_ale.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cpsw_ale_vlan_add_modify._entry_ptr = internal global ptr @cpsw_ale_vlan_add_modify._entry, section ".printk_index", align 4
@cpsw_ale_vlan_add_modify.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 -66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"keystone_netcp:keystone_netcp_ethss:ti_cpsw:ti_cpsw_new\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"port mask 0x%x untag 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@ale_controls = internal global { [27 x %struct.ale_control_info], [184 x i8] } { [27 x %struct.ale_control_info] [%struct.ale_control_info { ptr @.str.17, i32 8, i32 0, i32 31, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.18, i32 8, i32 0, i32 30, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.19, i32 8, i32 0, i32 29, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.20, i32 8, i32 0, i32 8, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.21, i32 8, i32 0, i32 7, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.22, i32 8, i32 0, i32 6, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.23, i32 8, i32 0, i32 5, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.24, i32 8, i32 0, i32 4, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.25, i32 8, i32 0, i32 3, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.26, i32 8, i32 0, i32 2, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.27, i32 8, i32 0, i32 1, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.28, i32 8, i32 0, i32 0, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.29, i32 64, i32 4, i32 0, i32 0, i32 2 }, %struct.ale_control_info { ptr @.str.30, i32 64, i32 4, i32 2, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.31, i32 64, i32 4, i32 3, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.32, i32 64, i32 4, i32 4, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.33, i32 64, i32 4, i32 5, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.34, i32 24, i32 0, i32 0, i32 0, i32 6 }, %struct.ale_control_info { ptr @.str.35, i32 24, i32 0, i32 8, i32 0, i32 6 }, %struct.ale_control_info { ptr @.str.36, i32 24, i32 0, i32 16, i32 0, i32 6 }, %struct.ale_control_info { ptr @.str.37, i32 24, i32 0, i32 24, i32 0, i32 6 }, %struct.ale_control_info { ptr @.str.38, i32 64, i32 4, i32 11, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.39, i32 64, i32 4, i32 13, i32 0, i32 1 }, %struct.ale_control_info { ptr @.str.40, i32 64, i32 4, i32 24, i32 0, i32 8 }, %struct.ale_control_info { ptr @.str.41, i32 64, i32 4, i32 16, i32 0, i32 8 }, %struct.ale_control_info { ptr @.str.42, i32 308, i32 0, i32 0, i32 0, i32 6 }, %struct.ale_control_info { ptr @.str.43, i32 308, i32 0, i32 15, i32 0, i32 1 }], [184 x i8] zeroinitializer }, align 32
@cpsw_ale_id_match = internal constant { [8 x %struct.cpsw_ale_dev_id], [32 x i8] } { [8 x %struct.cpsw_ale_dev_id] [%struct.cpsw_ale_dev_id { ptr @.str.48, i32 0, i32 1024, i32 255, i8 0, ptr @vlan_entry_cpsw }, %struct.cpsw_ale_dev_id { ptr @.str.49, i32 0, i32 2048, i32 255, i8 0, ptr @vlan_entry_cpsw }, %struct.cpsw_ale_dev_id { ptr @.str.50, i32 1, i32 0, i32 7, i8 1, ptr @vlan_entry_nu }, %struct.cpsw_ale_dev_id { ptr @.str.51, i32 1, i32 64, i32 7, i8 1, ptr @vlan_entry_nu }, %struct.cpsw_ale_dev_id { ptr @.str.52, i32 3, i32 64, i32 7, i8 1, ptr @vlan_entry_nu }, %struct.cpsw_ale_dev_id { ptr @.str.53, i32 3, i32 0, i32 7, i8 0, ptr @vlan_entry_k3_cpswxg }, %struct.cpsw_ale_dev_id { ptr @.str.54, i32 3, i32 512, i32 7, i8 0, ptr @vlan_entry_k3_cpswxg }, %struct.cpsw_ale_dev_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cpsw_ale_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1318, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"initialized cpsw ale version %d.%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cpsw_ale_create\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cpsw_ale_create._entry_ptr = internal global ptr @cpsw_ale_create._entry, section ".printk_index", align 4
@cpsw_ale_create._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.2, i32 1339, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ALE Table size %ld\0A\00", [44 x i8] zeroinitializer }, align 32
@cpsw_ale_create._entry_ptr.12 = internal global ptr @cpsw_ale_create._entry.10, section ".printk_index", align 4
@cpsw_ale_entry_set_fld._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 253, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set: wrong ale fld id %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cpsw_ale_entry_set_fld\00", [41 x i8] zeroinitializer }, align 32
@cpsw_ale_entry_set_fld._entry_ptr = internal global ptr @cpsw_ale_entry_set_fld._entry, section ".printk_index", align 4
@cpsw_ale_entry_get_fld._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 228, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"get: wrong ale fld id %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cpsw_ale_entry_get_fld\00", [41 x i8] zeroinitializer }, align 32
@cpsw_ale_entry_get_fld._entry_ptr = internal global ptr @cpsw_ale_entry_get_fld._entry, section ".printk_index", align 4
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clear\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ageout\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"port0_unicast_flood\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vlan_nolearn\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no_port_vlan\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"oui_deny\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bypass\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rate_limit_tx\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vlan_aware\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"auth_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rate_limit\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"port_state\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"drop_untagged\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"drop_unknown\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nolearn\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no_source_update\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown_vlan_member\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown_mcast_flood\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unknown_reg_flood\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"untagged_egress\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mac_only_port_mode\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mac_only_port_caf\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bcast_limit\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mcast_limit\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"default_thread_id\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"default_thread_id_enable\00", [39 x i8] zeroinitializer }, align 32
@cpsw_ale_aging_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&ale->timer)\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cpsw_ale_hw_aging_timer_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 1161, ptr @.str.47, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ALE aging timer overflow, set to max\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cpsw_ale_hw_aging_timer_start\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cpsw_ale_hw_aging_timer_start._entry_ptr = internal global ptr @cpsw_ale_hw_aging_timer_start._entry, section ".printk_index", align 4
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpsw\00", [27 x i8] zeroinitializer }, align 32
@vlan_entry_cpsw = internal constant { [6 x %struct.ale_entry_fld], [46 x i8] } { [6 x %struct.ale_entry_fld] [%struct.ale_entry_fld { i8 0, i8 3, i8 1 }, %struct.ale_entry_fld { i8 8, i8 3, i8 1 }, %struct.ale_entry_fld { i8 16, i8 3, i8 1 }, %struct.ale_entry_fld { i8 24, i8 3, i8 1 }, %struct.ale_entry_fld zeroinitializer, %struct.ale_entry_fld zeroinitializer], [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"66ak2h-xgbe\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"66ak2el\00", [24 x i8] zeroinitializer }, align 32
@vlan_entry_nu = internal constant { [6 x %struct.ale_entry_fld], [46 x i8] } { [6 x %struct.ale_entry_fld] [%struct.ale_entry_fld { i8 0, i8 0, i8 3 }, %struct.ale_entry_fld zeroinitializer, %struct.ale_entry_fld zeroinitializer, %struct.ale_entry_fld { i8 24, i8 0, i8 3 }, %struct.ale_entry_fld { i8 20, i8 3, i8 1 }, %struct.ale_entry_fld { i8 44, i8 3, i8 1 }], [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"66ak2g\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"am65x-cpsw2g\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"j721e-cpswxg\00", [19 x i8] zeroinitializer }, align 32
@vlan_entry_k3_cpswxg = internal constant { [4 x %struct.ale_entry_fld], [20 x i8] } { [4 x %struct.ale_entry_fld] [%struct.ale_entry_fld { i8 0, i8 0, i8 3 }, %struct.ale_entry_fld { i8 12, i8 0, i8 3 }, %struct.ale_entry_fld { i8 36, i8 0, i8 3 }, %struct.ale_entry_fld { i8 24, i8 0, i8 3 }], [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"am64-cpswxg\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 758, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 761, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [13 x i8] c"ale_controls\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 866, i32 32 }
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"cpsw_ale_id_match\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1215, i32 37 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1316, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1338, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 253, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 228, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 868, i32 12 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 876, i32 12 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 884, i32 12 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 892, i32 12 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 900, i32 12 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 908, i32 12 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 916, i32 12 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 924, i32 12 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 932, i32 12 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 940, i32 12 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 948, i32 12 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 956, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 964, i32 12 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 972, i32 12 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 980, i32 12 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 988, i32 12 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 996, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1036, i32 12 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1044, i32 12 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1052, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1060, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1004, i32 12 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1012, i32 12 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1028, i32 12 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1020, i32 12 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1068, i32 12 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1076, i32 12 }
@___asan_gen_.212 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1182, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1160, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1218, i32 13 }
@___asan_gen_.233 = private unnamed_addr constant [16 x i8] c"vlan_entry_cpsw\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 179, i32 35 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1225, i32 13 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1231, i32 13 }
@___asan_gen_.242 = private unnamed_addr constant [14 x i8] c"vlan_entry_nu\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 187, i32 35 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1238, i32 13 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1246, i32 13 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1254, i32 13 }
@___asan_gen_.254 = private unnamed_addr constant [21 x i8] c"vlan_entry_k3_cpswxg\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 195, i32 35 }
@___asan_gen_.257 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.258 = private constant [38 x i8] c"../drivers/net/ethernet/ti/cpsw_ale.c\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 1260, i32 13 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @cpsw_ale_create._entry, ptr @cpsw_ale_create._entry.10, ptr @cpsw_ale_create._entry_ptr, ptr @cpsw_ale_create._entry_ptr.12, ptr @cpsw_ale_entry_get_fld._entry, ptr @cpsw_ale_entry_get_fld._entry_ptr, ptr @cpsw_ale_entry_set_fld._entry, ptr @cpsw_ale_entry_set_fld._entry_ptr, ptr @cpsw_ale_hw_aging_timer_start._entry, ptr @cpsw_ale_hw_aging_timer_start._entry_ptr, ptr @cpsw_ale_vlan_add_modify._entry, ptr @cpsw_ale_vlan_add_modify._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ale_controls, ptr @cpsw_ale_id_match, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @cpsw_ale_aging_start.__key, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @vlan_entry_cpsw, ptr @.str.49, ptr @.str.50, ptr @vlan_entry_nu, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @vlan_entry_k3_cpswxg, ptr @.str.54], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ale_vlan_add_modify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ale_controls to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ale_id_match to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ale_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ale_create._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ale_entry_set_fld._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ale_entry_get_fld._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ale_aging_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ale_hw_aging_timer_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_entry_cpsw to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_entry_nu to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_entry_k3_cpswxg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_ale_flush_multicast(ptr nocapture noundef readonly %ale, i32 noundef %port_mask, i32 noundef %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ale_entries = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 3
  %0 = ptrtoint ptr %ale_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp86.not = icmp eq i32 %1, 0
  br i1 %cmp86.not, label %entry.for.end_crit_edge, label %cpsw_ale_read.exit.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cpsw_ale_read.exit.lr.ph:                         ; preds = %entry
  %ale_regs.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vid)
  %cmp5.not = icmp eq i32 %vid, -1
  %port_mask_bits.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %neg.i = xor i32 %port_mask, -1
  br label %cpsw_ale_read.exit

cpsw_ale_read.exit:                               ; preds = %for.inc.cpsw_ale_read.exit_crit_edge, %cpsw_ale_read.exit.lr.ph
  %idx.087 = phi i32 [ 0, %cpsw_ale_read.exit.lr.ph ], [ %inc, %for.inc.cpsw_ale_read.exit_crit_edge ]
  %2 = tail call i32 @llvm.bswap.i32(i32 %idx.087) #7
  %3 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !128
  %5 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %6, i32 52
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #7, !srcloc !129
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %9 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr24.1.i = getelementptr i8, ptr %10, i32 56
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i) #7, !srcloc !129
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %13 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr24.2.i = getelementptr i8, ptr %14, i32 60
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i) #7, !srcloc !129
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  %shr.i.i = lshr i32 %12, 28
  %and.i.i = and i32 %shr.i.i, 3
  %17 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i, label %cpsw_ale_read.exit.for.inc_crit_edge [
    i32 1, label %cpsw_ale_read.exit.if.end_crit_edge
    i32 3, label %cpsw_ale_read.exit.if.end_crit_edge89
  ]

cpsw_ale_read.exit.if.end_crit_edge89:            ; preds = %cpsw_ale_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cpsw_ale_read.exit.if.end_crit_edge:              ; preds = %cpsw_ale_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cpsw_ale_read.exit.for.inc_crit_edge:             ; preds = %cpsw_ale_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %cpsw_ale_read.exit.if.end_crit_edge, %cpsw_ale_read.exit.if.end_crit_edge89
  %shr.i.i42 = lshr i32 %12, 16
  %and.i.i43 = and i32 %shr.i.i42, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i43, i32 %vid)
  %cmp9.not = icmp eq i32 %and.i.i43, %vid
  %or.cond = select i1 %cmp5.not, i1 true, i1 %cmp9.not
  br i1 %or.cond, label %if.end11, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end11:                                         ; preds = %if.end
  %18 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end11.if.end27_crit_edge, label %if.then14

if.end11.if.end27_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then14:                                        ; preds = %if.end11
  %19 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool17.not = icmp eq i32 %19, 0
  br i1 %tobool17.not, label %if.end19, label %if.then14.for.inc_crit_edge

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end19:                                         ; preds = %if.then14
  %20 = trunc i32 %16 to i16
  %21 = trunc i32 %12 to i16
  %trunc = trunc i32 %15 to i16
  %addr.sroa.7.sroa.0.0.insert.insert = tail call i16 @llvm.bswap.i16(i16 %trunc)
  %and9.i = and i16 %addr.sroa.7.sroa.0.0.insert.insert, %21
  %and510.i = and i16 %and9.i, %20
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i53 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i53, label %if.end19.if.end27_crit_edge, label %if.then24

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then24:                                        ; preds = %if.end19
  %22 = ptrtoint ptr %port_mask_bits.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port_mask_bits.i, align 4
  %shr.i.i.i = lshr i32 %8, 2
  %notmask.i.i.i = shl nsw i32 -1, %23
  %sub2.i.i.i = xor i32 %notmask.i.i.i, -1
  %and.i.i.i = and i32 %shr.i.i.i, %sub2.i.i.i
  %and.i = and i32 %and.i.i.i, %port_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i54 = icmp eq i32 %and.i, 0
  br i1 %cmp.i54, label %if.then24.if.end27_crit_edge, label %if.end.i

if.then24.if.end27_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end.i:                                         ; preds = %if.then24
  %and1.i = and i32 %and.i.i.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl5.i.i.i = shl i32 %sub2.i.i.i, 2
  %neg.i.i.i = xor i32 %shl5.i.i.i, -1
  %and6.i.i.i = and i32 %8, %neg.i.i.i
  %shl7.i.i.i = shl nuw i32 %and1.i, 2
  %or.i.i.i = or i32 %shl7.i.i.i, %and6.i.i.i
  br label %if.end27

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %and6.i.i14.i = and i32 %12, -805306369
  br label %if.end27

if.end27:                                         ; preds = %if.else.i, %if.then2.i, %if.then24.if.end27_crit_edge, %if.end19.if.end27_crit_edge, %if.end11.if.end27_crit_edge
  %ale_entry.sroa.8.2 = phi i32 [ %12, %if.end11.if.end27_crit_edge ], [ %12, %if.then2.i ], [ %and6.i.i14.i, %if.else.i ], [ %12, %if.then24.if.end27_crit_edge ], [ %12, %if.end19.if.end27_crit_edge ]
  %ale_entry.sroa.0.2 = phi i32 [ %8, %if.end11.if.end27_crit_edge ], [ %or.i.i.i, %if.then2.i ], [ %8, %if.else.i ], [ %8, %if.then24.if.end27_crit_edge ], [ %8, %if.end19.if.end27_crit_edge ]
  %24 = ptrtoint ptr %ale_entries to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ale_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %idx.087)
  %cmp.i56 = icmp ult i32 %25, %idx.087
  br i1 %cmp.i56, label %do.end.i57, label %if.end27.cpsw_ale_write.exit_crit_edge, !prof !130

if.end27.cpsw_ale_write.exit_crit_edge:           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_write.exit

do.end.i57:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 317, i32 noundef 9, ptr noundef null) #7
  br label %cpsw_ale_write.exit

cpsw_ale_write.exit:                              ; preds = %do.end.i57, %if.end27.cpsw_ale_write.exit_crit_edge
  %26 = tail call i32 @llvm.bswap.i32(i32 %ale_entry.sroa.0.2) #7
  %27 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %28, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %26) #7, !srcloc !128
  %29 = tail call i32 @llvm.bswap.i32(i32 %ale_entry.sroa.8.2) #7
  %30 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr21.1.i = getelementptr i8, ptr %31, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.1.i, i32 %29) #7, !srcloc !128
  %32 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr21.2.i = getelementptr i8, ptr %33, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.2.i, i32 %15) #7, !srcloc !128
  %or.i = or i32 %idx.087, -2147483648
  %34 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %35 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %36, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %34) #7, !srcloc !128
  br label %for.inc

for.inc:                                          ; preds = %cpsw_ale_write.exit, %if.then14.for.inc_crit_edge, %if.end.for.inc_crit_edge, %cpsw_ale_read.exit.for.inc_crit_edge
  %inc = add nuw i32 %idx.087, 1
  %37 = ptrtoint ptr %ale_entries to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ale_entries, align 4
  %cmp = icmp ult i32 %inc, %38
  br i1 %cmp, label %for.inc.cpsw_ale_read.exit_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.cpsw_ale_read.exit_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_ale_add_ucast(ptr nocapture noundef readonly %ale, ptr nocapture noundef readonly %addr, i32 noundef %port, i32 noundef %flags, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %conv.i = zext i16 %vid to i32
  %and.i.i.i = shl nuw i32 %conv.i, 16
  %shl7.i.i.i = and i32 %and.i.i.i, 268369920
  %or.i.i5.i = or i32 %shl7.i.i.i, 805306368
  %or.i.i8.sink.i = select i1 %tobool.not.i, i32 268435456, i32 %or.i.i5.i
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 1
  %conv.i39 = zext i8 %1 to i32
  %shl7.i.i = shl nuw nsw i32 %conv.i39, 8
  %or.i.i = or i32 %shl7.i.i, %or.i.i8.sink.i
  %arrayidx.1.i = getelementptr i8, ptr %addr, i32 1
  %2 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %3 to i32
  %or.i.1.i = or i32 %or.i.i, %conv.1.i
  %arrayidx.2.i = getelementptr i8, ptr %addr, i32 2
  %4 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %5 to i32
  %shl7.i.2.i = shl nuw i32 %conv.2.i, 24
  %arrayidx.3.i = getelementptr i8, ptr %addr, i32 3
  %6 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %7 to i32
  %shl7.i.3.i = shl nuw nsw i32 %conv.3.i, 16
  %or.i.3.i = or i32 %shl7.i.3.i, %shl7.i.2.i
  %arrayidx.4.i = getelementptr i8, ptr %addr, i32 4
  %8 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.4.i, align 1
  %conv.4.i = zext i8 %9 to i32
  %shl7.i.4.i = shl nuw nsw i32 %conv.4.i, 8
  %or.i.4.i = or i32 %or.i.3.i, %shl7.i.4.i
  %arrayidx.5.i = getelementptr i8, ptr %addr, i32 5
  %10 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.5.i, align 1
  %conv.5.i = zext i8 %11 to i32
  %or.i.5.i = or i32 %or.i.4.i, %conv.5.i
  %or.i.i46 = and i32 %flags, 3
  %port_num_bits = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 6
  %12 = ptrtoint ptr %port_num_bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_num_bits, align 4
  %notmask.i.i = shl nsw i32 -1, %13
  %sub.i.i = xor i32 %notmask.i.i, -1
  %and.i.i47 = and i32 %sub.i.i, %port
  %shl7.i.i49 = shl i32 %and.i.i47, 2
  %or.i.i50 = or i32 %shl7.i.i49, %or.i.i46
  %ale_entries.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 3
  %14 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp51.not.i = icmp eq i32 %15, 0
  br i1 %cmp51.not.i, label %entry.cleanup_crit_edge, label %cpsw_ale_read.exit.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cpsw_ale_read.exit.lr.ph.i:                       ; preds = %entry
  %ale_regs.i.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  %conv.i51 = select i1 %tobool.not.i, i32 0, i32 %conv.i
  br label %cpsw_ale_read.exit.i

cpsw_ale_read.exit.i:                             ; preds = %for.inc.i.cpsw_ale_read.exit.i_crit_edge, %cpsw_ale_read.exit.lr.ph.i
  %idx.052.i = phi i32 [ 0, %cpsw_ale_read.exit.lr.ph.i ], [ %inc.i, %for.inc.i.cpsw_ale_read.exit.i_crit_edge ]
  %16 = tail call i32 @llvm.bswap.i32(i32 %idx.052.i) #7
  %17 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %16) #7, !srcloc !128
  %19 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr23.i.i = getelementptr i8, ptr %20, i32 52
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i) #7, !srcloc !129
  %22 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.1.i.i = getelementptr i8, ptr %23, i32 56
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i.i) #7, !srcloc !129
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  %26 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.2.i.i = getelementptr i8, ptr %27, i32 60
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i.i) #7, !srcloc !129
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  %shr.i.i.i = lshr i32 %25, 28
  %and.i.i.i52 = and i32 %shr.i.i.i, 3
  %30 = zext i32 %and.i.i.i52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %and.i.i.i52, label %cpsw_ale_read.exit.i.for.inc.i_crit_edge [
    i32 1, label %cpsw_ale_read.exit.i.if.end.i_crit_edge
    i32 3, label %cpsw_ale_read.exit.i.if.end.i_crit_edge140
  ]

cpsw_ale_read.exit.i.if.end.i_crit_edge140:       ; preds = %cpsw_ale_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cpsw_ale_read.exit.i.if.end.i_crit_edge:          ; preds = %cpsw_ale_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cpsw_ale_read.exit.i.for.inc.i_crit_edge:         ; preds = %cpsw_ale_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %cpsw_ale_read.exit.i.if.end.i_crit_edge, %cpsw_ale_read.exit.i.if.end.i_crit_edge140
  %shr.i.i26.i = lshr i32 %25, 16
  %and.i.i27.i = and i32 %shr.i.i26.i, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i27.i, i32 %conv.i51)
  %cmp7.not.i = icmp eq i32 %and.i.i27.i, %conv.i51
  br i1 %cmp7.not.i, label %if.end10.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end10.i:                                       ; preds = %if.end.i
  %31 = trunc i32 %29 to i16
  %trunc.i = trunc i32 %28 to i16
  %rev.i = tail call i16 @llvm.bswap.i16(i16 %trunc.i) #7
  %entry_addr.sroa.0.sroa.7.0.insert.insert.i = zext i16 %rev.i to i32
  %entry_addr.sroa.0.sroa.5.0.insert.ext.i = shl i32 %25, 16
  %entry_addr.sroa.0.sroa.0.0.insert.insert.i = or i32 %entry_addr.sroa.0.sroa.5.0.insert.ext.i, %entry_addr.sroa.0.sroa.7.0.insert.insert.i
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr, align 4
  %xor.i.i = xor i32 %33, %entry_addr.sroa.0.sroa.0.0.insert.insert.i
  %34 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.4.i, align 2
  %xor37.i.i = xor i16 %35, %31
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i53 = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i53)
  %cmp.i33.i = icmp eq i32 %or.i.i53, 0
  br i1 %cmp.i33.i, label %cpsw_ale_match_addr.exit, label %if.end10.i.for.inc.i_crit_edge

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %cpsw_ale_read.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %idx.052.i, 1
  %36 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ale_entries.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %37
  br i1 %cmp.i, label %for.inc.i.cpsw_ale_read.exit.i_crit_edge, label %for.inc.i.if.then_crit_edge

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc.i.cpsw_ale_read.exit.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit.i

cpsw_ale_match_addr.exit:                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.052.i)
  %cmp = icmp slt i32 %idx.052.i, 0
  br i1 %cmp, label %if.thenthread-pre-split, label %cpsw_ale_match_addr.exit.if.end23_crit_edge

cpsw_ale_match_addr.exit.if.end23_crit_edge:      ; preds = %cpsw_ale_match_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.thenthread-pre-split:                          ; preds = %cpsw_ale_match_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr = load i32, ptr %ale_entries.i, align 4
  br label %if.then

if.then:                                          ; preds = %if.thenthread-pre-split, %for.inc.i.if.then_crit_edge
  %39 = phi i32 [ %.pr, %if.thenthread-pre-split ], [ %37, %for.inc.i.if.then_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp10.not.i = icmp eq i32 %39, 0
  br i1 %cmp10.not.i, label %if.then.if.then17thread-pre-split_crit_edge, label %if.then.cpsw_ale_read.exit.i61_crit_edge

if.then.cpsw_ale_read.exit.i61_crit_edge:         ; preds = %if.then
  br label %cpsw_ale_read.exit.i61

if.then.if.then17thread-pre-split_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17thread-pre-split

cpsw_ale_read.exit.i61:                           ; preds = %for.inc.i64.cpsw_ale_read.exit.i61_crit_edge, %if.then.cpsw_ale_read.exit.i61_crit_edge
  %idx.011.i = phi i32 [ %inc.i62, %for.inc.i64.cpsw_ale_read.exit.i61_crit_edge ], [ 0, %if.then.cpsw_ale_read.exit.i61_crit_edge ]
  %40 = tail call i32 @llvm.bswap.i32(i32 %idx.011.i) #7
  %41 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i.i57 = getelementptr i8, ptr %42, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57, i32 %40) #7, !srcloc !128
  %43 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr23.i.i58 = getelementptr i8, ptr %44, i32 52
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i58) #7, !srcloc !129
  %46 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.1.i.i59 = getelementptr i8, ptr %47, i32 56
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i.i59) #7, !srcloc !129
  %49 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.2.i.i60 = getelementptr i8, ptr %50, i32 60
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i.i60) #7, !srcloc !129
  %52 = and i32 %48, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp3.i = icmp eq i32 %52, 0
  br i1 %cmp3.i, label %if.end, label %for.inc.i64

for.inc.i64:                                      ; preds = %cpsw_ale_read.exit.i61
  %inc.i62 = add nuw i32 %idx.011.i, 1
  %53 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ale_entries.i, align 4
  %cmp.i63 = icmp ult i32 %inc.i62, %54
  br i1 %cmp.i63, label %for.inc.i64.cpsw_ale_read.exit.i61_crit_edge, label %for.inc.i64.if.then17_crit_edge

for.inc.i64.if.then17_crit_edge:                  ; preds = %for.inc.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

for.inc.i64.cpsw_ale_read.exit.i61_crit_edge:     ; preds = %for.inc.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit.i61

if.end:                                           ; preds = %cpsw_ale_read.exit.i61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.011.i)
  %cmp15 = icmp slt i32 %idx.011.i, 0
  br i1 %cmp15, label %if.end.if.then17thread-pre-split_crit_edge, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end.if.then17thread-pre-split_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17thread-pre-split

if.then17thread-pre-split:                        ; preds = %if.end.if.then17thread-pre-split_crit_edge, %if.then.if.then17thread-pre-split_crit_edge
  %55 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr114 = load i32, ptr %ale_entries.i, align 4
  br label %if.then17

if.then17:                                        ; preds = %if.then17thread-pre-split, %for.inc.i64.if.then17_crit_edge
  %56 = phi i32 [ %.pr114, %if.then17thread-pre-split ], [ %54, %for.inc.i64.if.then17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp32.not.i = icmp eq i32 %56, 0
  br i1 %cmp32.not.i, label %if.then17.cleanup_crit_edge, label %if.then17.cpsw_ale_read.exit.i74_crit_edge

if.then17.cpsw_ale_read.exit.i74_crit_edge:       ; preds = %if.then17
  br label %cpsw_ale_read.exit.i74

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cpsw_ale_read.exit.i74:                           ; preds = %for.inc.i79.cpsw_ale_read.exit.i74_crit_edge, %if.then17.cpsw_ale_read.exit.i74_crit_edge
  %idx.033.i = phi i32 [ %inc.i77, %for.inc.i79.cpsw_ale_read.exit.i74_crit_edge ], [ 0, %if.then17.cpsw_ale_read.exit.i74_crit_edge ]
  %57 = tail call i32 @llvm.bswap.i32(i32 %idx.033.i) #7
  %58 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %59, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i68, i32 %57) #7, !srcloc !128
  %60 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr23.i.i69 = getelementptr i8, ptr %61, i32 52
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i69) #7, !srcloc !129
  %63 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.1.i.i70 = getelementptr i8, ptr %64, i32 56
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i.i70) #7, !srcloc !129
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #7
  %67 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.2.i.i71 = getelementptr i8, ptr %68, i32 60
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i.i71) #7, !srcloc !129
  %shr.i.i.i72 = lshr i32 %66, 28
  %and.i.i.i73 = and i32 %shr.i.i.i72, 3
  %70 = zext i32 %and.i.i.i73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %and.i.i.i73, label %cpsw_ale_read.exit.i74.for.inc.i79_crit_edge [
    i32 1, label %cpsw_ale_read.exit.i74.if.end.i76_crit_edge
    i32 3, label %cpsw_ale_read.exit.i74.if.end.i76_crit_edge141
  ]

cpsw_ale_read.exit.i74.if.end.i76_crit_edge141:   ; preds = %cpsw_ale_read.exit.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i76

cpsw_ale_read.exit.i74.if.end.i76_crit_edge:      ; preds = %cpsw_ale_read.exit.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i76

cpsw_ale_read.exit.i74.for.inc.i79_crit_edge:     ; preds = %cpsw_ale_read.exit.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i79

if.end.i76:                                       ; preds = %cpsw_ale_read.exit.i74.if.end.i76_crit_edge, %cpsw_ale_read.exit.i74.if.end.i76_crit_edge141
  %71 = and i32 %66, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i75 = icmp eq i32 %71, 0
  br i1 %tobool.not.i75, label %if.end8.i, label %if.end.i76.for.inc.i79_crit_edge

if.end.i76.for.inc.i79_crit_edge:                 ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i79

if.end8.i:                                        ; preds = %if.end.i76
  %shr.i.i29.i = lshr i32 %66, 30
  %72 = zext i32 %shr.i.i29.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %shr.i.i29.i, label %if.end19 [
    i32 0, label %if.end8.i.for.inc.i79_crit_edge
    i32 2, label %if.end8.i.for.inc.i79_crit_edge142
  ]

if.end8.i.for.inc.i79_crit_edge142:               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i79

if.end8.i.for.inc.i79_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i79

for.inc.i79:                                      ; preds = %if.end8.i.for.inc.i79_crit_edge, %if.end8.i.for.inc.i79_crit_edge142, %if.end.i76.for.inc.i79_crit_edge, %cpsw_ale_read.exit.i74.for.inc.i79_crit_edge
  %inc.i77 = add nuw i32 %idx.033.i, 1
  %73 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ale_entries.i, align 4
  %cmp.i78 = icmp ult i32 %inc.i77, %74
  br i1 %cmp.i78, label %for.inc.i79.cpsw_ale_read.exit.i74_crit_edge, label %for.inc.i79.cleanup_crit_edge

for.inc.i79.cleanup_crit_edge:                    ; preds = %for.inc.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i79.cpsw_ale_read.exit.i74_crit_edge:     ; preds = %for.inc.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit.i74

if.end19:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.033.i)
  %cmp20 = icmp slt i32 %idx.033.i, 0
  br i1 %cmp20, label %if.end19.cleanup_crit_edge, label %if.end19.if.end23_crit_edge

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end19.if.end23_crit_edge, %if.end.if.end23_crit_edge, %cpsw_ale_match_addr.exit.if.end23_crit_edge
  %idx.1112 = phi i32 [ %idx.033.i, %if.end19.if.end23_crit_edge ], [ %idx.011.i, %if.end.if.end23_crit_edge ], [ %idx.052.i, %cpsw_ale_match_addr.exit.if.end23_crit_edge ]
  %75 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %idx.1112)
  %cmp.i82 = icmp ult i32 %76, %idx.1112
  br i1 %cmp.i82, label %do.end.i, label %if.end23.cpsw_ale_write.exit_crit_edge, !prof !130

if.end23.cpsw_ale_write.exit_crit_edge:           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_write.exit

do.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 317, i32 noundef 9, ptr noundef null) #7
  br label %cpsw_ale_write.exit

cpsw_ale_write.exit:                              ; preds = %do.end.i, %if.end23.cpsw_ale_write.exit_crit_edge
  %77 = tail call i32 @llvm.bswap.i32(i32 %or.i.i50) #7
  %78 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %79, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %77) #7, !srcloc !128
  %80 = tail call i32 @llvm.bswap.i32(i32 %or.i.1.i) #7
  %81 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr21.1.i = getelementptr i8, ptr %82, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.1.i, i32 %80) #7, !srcloc !128
  %83 = tail call i32 @llvm.bswap.i32(i32 %or.i.5.i) #7
  %84 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr21.2.i = getelementptr i8, ptr %85, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.2.i, i32 %83) #7, !srcloc !128
  %or.i = or i32 %idx.1112, -2147483648
  %86 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %87 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %88, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %86) #7, !srcloc !128
  br label %cleanup

cleanup:                                          ; preds = %cpsw_ale_write.exit, %if.end19.cleanup_crit_edge, %for.inc.i79.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cpsw_ale_write.exit ], [ -12, %if.end19.cleanup_crit_edge ], [ -12, %if.then17.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %for.inc.i79.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_ale_del_ucast(ptr nocapture noundef readonly %ale, ptr nocapture noundef readonly %addr, i32 noundef %port, i32 noundef %flags, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ale_entries.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 3
  %0 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp51.not.i = icmp eq i32 %1, 0
  br i1 %cmp51.not.i, label %entry.cleanup_crit_edge, label %cpsw_ale_read.exit.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cpsw_ale_read.exit.lr.ph.i:                       ; preds = %entry
  %and = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %ale_regs.i.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  %2 = zext i16 %vid to i32
  %conv.i = select i1 %tobool.not, i32 0, i32 %2
  %add.ptr1.i.i = getelementptr i8, ptr %addr, i32 4
  br label %cpsw_ale_read.exit.i

cpsw_ale_read.exit.i:                             ; preds = %for.inc.i.cpsw_ale_read.exit.i_crit_edge, %cpsw_ale_read.exit.lr.ph.i
  %idx.052.i = phi i32 [ 0, %cpsw_ale_read.exit.lr.ph.i ], [ %inc.i, %for.inc.i.cpsw_ale_read.exit.i_crit_edge ]
  %3 = tail call i32 @llvm.bswap.i32(i32 %idx.052.i) #7
  %4 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %3) #7, !srcloc !128
  %6 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr23.i.i = getelementptr i8, ptr %7, i32 52
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i) #7, !srcloc !129
  %9 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.1.i.i = getelementptr i8, ptr %10, i32 56
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i.i) #7, !srcloc !129
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %13 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.2.i.i = getelementptr i8, ptr %14, i32 60
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i.i) #7, !srcloc !129
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  %shr.i.i.i = lshr i32 %12, 28
  %and.i.i.i = and i32 %shr.i.i.i, 3
  %17 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %and.i.i.i, label %cpsw_ale_read.exit.i.for.inc.i_crit_edge [
    i32 1, label %cpsw_ale_read.exit.i.if.end.i_crit_edge
    i32 3, label %cpsw_ale_read.exit.i.if.end.i_crit_edge21
  ]

cpsw_ale_read.exit.i.if.end.i_crit_edge21:        ; preds = %cpsw_ale_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cpsw_ale_read.exit.i.if.end.i_crit_edge:          ; preds = %cpsw_ale_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cpsw_ale_read.exit.i.for.inc.i_crit_edge:         ; preds = %cpsw_ale_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %cpsw_ale_read.exit.i.if.end.i_crit_edge, %cpsw_ale_read.exit.i.if.end.i_crit_edge21
  %shr.i.i26.i = lshr i32 %12, 16
  %and.i.i27.i = and i32 %shr.i.i26.i, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i27.i, i32 %conv.i)
  %cmp7.not.i = icmp eq i32 %and.i.i27.i, %conv.i
  br i1 %cmp7.not.i, label %if.end10.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end10.i:                                       ; preds = %if.end.i
  %18 = trunc i32 %16 to i16
  %trunc.i = trunc i32 %15 to i16
  %rev.i = tail call i16 @llvm.bswap.i16(i16 %trunc.i) #7
  %entry_addr.sroa.0.sroa.7.0.insert.insert.i = zext i16 %rev.i to i32
  %entry_addr.sroa.0.sroa.5.0.insert.ext.i = shl i32 %12, 16
  %entry_addr.sroa.0.sroa.0.0.insert.insert.i = or i32 %entry_addr.sroa.0.sroa.5.0.insert.ext.i, %entry_addr.sroa.0.sroa.7.0.insert.insert.i
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr, align 4
  %xor.i.i = xor i32 %20, %entry_addr.sroa.0.sroa.0.0.insert.insert.i
  %21 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %22, %18
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i33.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i33.i, label %cpsw_ale_match_addr.exit, label %if.end10.i.for.inc.i_crit_edge

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %cpsw_ale_read.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %idx.052.i, 1
  %23 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ale_entries.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %24
  br i1 %cmp.i, label %for.inc.i.cpsw_ale_read.exit.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i.cpsw_ale_read.exit.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit.i

cpsw_ale_match_addr.exit:                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.052.i)
  %cmp = icmp slt i32 %idx.052.i, 0
  br i1 %cmp, label %cpsw_ale_match_addr.exit.cleanup_crit_edge, label %if.end

cpsw_ale_match_addr.exit.cleanup_crit_edge:       ; preds = %cpsw_ale_match_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %cpsw_ale_match_addr.exit
  %25 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %idx.052.i)
  %cmp.i9 = icmp ult i32 %26, %idx.052.i
  br i1 %cmp.i9, label %do.end.i, label %if.end.cpsw_ale_write.exit_crit_edge, !prof !130

if.end.cpsw_ale_write.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_write.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 317, i32 noundef 9, ptr noundef null) #7
  br label %cpsw_ale_write.exit

cpsw_ale_write.exit:                              ; preds = %do.end.i, %if.end.cpsw_ale_write.exit_crit_edge
  %27 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !128
  %29 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr21.1.i = getelementptr i8, ptr %30, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.1.i, i32 0) #7, !srcloc !128
  %31 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr21.2.i = getelementptr i8, ptr %32, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.2.i, i32 0) #7, !srcloc !128
  %or.i = or i32 %idx.052.i, -2147483648
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %34 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %35, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %33) #7, !srcloc !128
  br label %cleanup

cleanup:                                          ; preds = %cpsw_ale_write.exit, %cpsw_ale_match_addr.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cpsw_ale_write.exit ], [ -2, %cpsw_ale_match_addr.exit.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ -2, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_ale_add_mcast(ptr nocapture noundef readonly %ale, ptr nocapture noundef readonly %addr, i32 noundef %port_mask, i32 noundef %flags, i16 noundef zeroext %vid, i32 noundef %mcast_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %ale_entries.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 3
  %0 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp51.not.i = icmp eq i32 %1, 0
  br i1 %cmp51.not.i, label %entry.if.end_crit_edge, label %cpsw_ale_read.exit.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cpsw_ale_read.exit.lr.ph.i:                       ; preds = %entry
  %ale_regs.i.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  %2 = zext i16 %vid to i32
  %conv.i = select i1 %tobool.not, i32 0, i32 %2
  %add.ptr1.i.i = getelementptr i8, ptr %addr, i32 4
  br label %cpsw_ale_read.exit.i

cpsw_ale_read.exit.i:                             ; preds = %for.inc.i.cpsw_ale_read.exit.i_crit_edge, %cpsw_ale_read.exit.lr.ph.i
  %idx.052.i = phi i32 [ 0, %cpsw_ale_read.exit.lr.ph.i ], [ %inc.i, %for.inc.i.cpsw_ale_read.exit.i_crit_edge ]
  %3 = tail call i32 @llvm.bswap.i32(i32 %idx.052.i) #7
  %4 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %3) #7, !srcloc !128
  %6 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr23.i.i = getelementptr i8, ptr %7, i32 52
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i) #7, !srcloc !129
  %9 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.1.i.i = getelementptr i8, ptr %10, i32 56
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i.i) #7, !srcloc !129
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %13 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.2.i.i = getelementptr i8, ptr %14, i32 60
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i.i) #7, !srcloc !129
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  %shr.i.i.i = lshr i32 %12, 28
  %and.i.i.i = and i32 %shr.i.i.i, 3
  %17 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %and.i.i.i, label %cpsw_ale_read.exit.i.for.inc.i_crit_edge [
    i32 1, label %cpsw_ale_read.exit.i.if.end.i_crit_edge
    i32 3, label %cpsw_ale_read.exit.i.if.end.i_crit_edge162
  ]

cpsw_ale_read.exit.i.if.end.i_crit_edge162:       ; preds = %cpsw_ale_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cpsw_ale_read.exit.i.if.end.i_crit_edge:          ; preds = %cpsw_ale_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cpsw_ale_read.exit.i.for.inc.i_crit_edge:         ; preds = %cpsw_ale_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %cpsw_ale_read.exit.i.if.end.i_crit_edge, %cpsw_ale_read.exit.i.if.end.i_crit_edge162
  %shr.i.i26.i = lshr i32 %12, 16
  %and.i.i27.i = and i32 %shr.i.i26.i, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i27.i, i32 %conv.i)
  %cmp7.not.i = icmp eq i32 %and.i.i27.i, %conv.i
  br i1 %cmp7.not.i, label %if.end10.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end10.i:                                       ; preds = %if.end.i
  %18 = trunc i32 %16 to i16
  %trunc.i = trunc i32 %15 to i16
  %rev.i = tail call i16 @llvm.bswap.i16(i16 %trunc.i) #7
  %entry_addr.sroa.0.sroa.7.0.insert.insert.i = zext i16 %rev.i to i32
  %entry_addr.sroa.0.sroa.5.0.insert.ext.i = shl i32 %12, 16
  %entry_addr.sroa.0.sroa.0.0.insert.insert.i = or i32 %entry_addr.sroa.0.sroa.5.0.insert.ext.i, %entry_addr.sroa.0.sroa.7.0.insert.insert.i
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr, align 4
  %xor.i.i = xor i32 %20, %entry_addr.sroa.0.sroa.0.0.insert.insert.i
  %21 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %22, %18
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i33.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i33.i, label %cpsw_ale_match_addr.exit, label %if.end10.i.for.inc.i_crit_edge

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %cpsw_ale_read.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %idx.052.i, 1
  %23 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ale_entries.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %24
  br i1 %cmp.i, label %for.inc.i.cpsw_ale_read.exit.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.i.cpsw_ale_read.exit.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit.i

cpsw_ale_match_addr.exit:                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %idx.052.i)
  %cmp = icmp sgt i32 %idx.052.i, -1
  br i1 %cmp, label %if.then, label %cpsw_ale_match_addr.exit.if.end_crit_edge

cpsw_ale_match_addr.exit.if.end_crit_edge:        ; preds = %cpsw_ale_match_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %cpsw_ale_match_addr.exit
  %25 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %idx.052.i)
  %cmp.i50 = icmp ult i32 %26, %idx.052.i
  br i1 %cmp.i50, label %do.end.i, label %if.then.cpsw_ale_read.exit_crit_edge, !prof !130

if.then.cpsw_ale_read.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #7
  br label %cpsw_ale_read.exit

cpsw_ale_read.exit:                               ; preds = %do.end.i, %if.then.cpsw_ale_read.exit_crit_edge
  %27 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #7, !srcloc !128
  %29 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %30, i32 52
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #7, !srcloc !129
  %32 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.1.i = getelementptr i8, ptr %33, i32 56
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i) #7, !srcloc !129
  %35 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.2.i = getelementptr i8, ptr %36, i32 60
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i) #7, !srcloc !129
  %38 = and i32 %31, -33554433
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = and i32 %34, -49
  %41 = or i32 %40, 16
  %42 = call i32 @llvm.bswap.i32(i32 %41)
  br label %if.end

if.end:                                           ; preds = %cpsw_ale_read.exit, %cpsw_ale_match_addr.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.2.i122 = phi i32 [ %idx.052.i, %cpsw_ale_read.exit ], [ %idx.052.i, %cpsw_ale_match_addr.exit.if.end_crit_edge ], [ -2, %entry.if.end_crit_edge ], [ -2, %for.inc.i.if.end_crit_edge ]
  %ale_entry.sroa.0.0 = phi i32 [ %39, %cpsw_ale_read.exit ], [ 0, %cpsw_ale_match_addr.exit.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ], [ 0, %for.inc.i.if.end_crit_edge ]
  %ale_entry.sroa.10.0 = phi i32 [ %42, %cpsw_ale_read.exit ], [ 268435456, %cpsw_ale_match_addr.exit.if.end_crit_edge ], [ 268435456, %entry.if.end_crit_edge ], [ 268435456, %for.inc.i.if.end_crit_edge ]
  %conv.i52 = zext i16 %vid to i32
  %and.i.i.i53 = shl nuw i32 %conv.i52, 16
  %or.i.i5.i = or i32 %and.i.i.i53, 805306368
  %or.i.i8.sink.i = select i1 %tobool.not, i32 %ale_entry.sroa.10.0, i32 %or.i.i5.i
  %43 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %addr, align 1
  %conv.i55 = zext i8 %44 to i32
  %and6.i.i = and i32 %or.i.i8.sink.i, 1073676288
  %shl7.i.i = shl nuw nsw i32 %conv.i55, 8
  %or.i.i56 = or i32 %shl7.i.i, %and6.i.i
  %arrayidx.1.i57 = getelementptr i8, ptr %addr, i32 1
  %45 = ptrtoint ptr %arrayidx.1.i57 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.1.i57, align 1
  %conv.1.i = zext i8 %46 to i32
  %or.i.1.i = or i32 %or.i.i56, %conv.1.i
  %arrayidx.2.i58 = getelementptr i8, ptr %addr, i32 2
  %47 = ptrtoint ptr %arrayidx.2.i58 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.2.i58, align 1
  %conv.2.i = zext i8 %48 to i32
  %shl7.i.2.i = shl nuw i32 %conv.2.i, 24
  %arrayidx.3.i = getelementptr i8, ptr %addr, i32 3
  %49 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %50 to i32
  %shl7.i.3.i = shl nuw nsw i32 %conv.3.i, 16
  %arrayidx.4.i = getelementptr i8, ptr %addr, i32 4
  %51 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.4.i, align 1
  %conv.4.i = zext i8 %52 to i32
  %and6.i.4.i = or i32 %shl7.i.3.i, %shl7.i.2.i
  %shl7.i.4.i = shl nuw nsw i32 %conv.4.i, 8
  %or.i.4.i = or i32 %and6.i.4.i, %shl7.i.4.i
  %arrayidx.5.i = getelementptr i8, ptr %addr, i32 5
  %53 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.5.i, align 1
  %conv.5.i = zext i8 %54 to i32
  %or.i.5.i = or i32 %or.i.4.i, %conv.5.i
  %55 = lshr i32 %flags, 1
  %and.i.i = and i32 %55, 2
  %or.i.i61 = or i32 %ale_entry.sroa.0.0, %and.i.i
  %and.i.i64 = shl i32 %mcast_state, 30
  %or.i.i65 = or i32 %or.i.1.i, %and.i.i64
  %port_mask_bits = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %56 = ptrtoint ptr %port_mask_bits to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port_mask_bits, align 4
  %shr.i.i = lshr i32 %ale_entry.sroa.0.0, 2
  %notmask.i.i = shl nsw i32 -1, %57
  %sub2.i.i = xor i32 %notmask.i.i, -1
  %and.i.i66 = and i32 %shr.i.i, %sub2.i.i
  %or = or i32 %and.i.i66, %port_mask
  %and.i.i68 = and i32 %or, %sub2.i.i
  %shl5.i.i = shl i32 %sub2.i.i, 2
  %neg.i.i = xor i32 %shl5.i.i, -1
  %and6.i.i69 = and i32 %or.i.i61, %neg.i.i
  %shl7.i.i70 = shl i32 %and.i.i68, 2
  %or.i.i71 = or i32 %shl7.i.i70, %and6.i.i69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i122)
  %cmp15 = icmp slt i32 %retval.2.i122, 0
  br i1 %cmp15, label %if.then17, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then17:                                        ; preds = %if.end
  %58 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp10.not.i = icmp eq i32 %59, 0
  br i1 %cmp10.not.i, label %if.then17.cleanup_crit_edge, label %cpsw_ale_read.exit.lr.ph.i74

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cpsw_ale_read.exit.lr.ph.i74:                     ; preds = %if.then17
  %ale_regs.i.i73 = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  br label %cpsw_ale_read.exit.i79

cpsw_ale_read.exit.i79:                           ; preds = %for.inc.i82.cpsw_ale_read.exit.i79_crit_edge, %cpsw_ale_read.exit.lr.ph.i74
  %idx.011.i = phi i32 [ 0, %cpsw_ale_read.exit.lr.ph.i74 ], [ %inc.i80, %for.inc.i82.cpsw_ale_read.exit.i79_crit_edge ]
  %60 = tail call i32 @llvm.bswap.i32(i32 %idx.011.i) #7
  %61 = ptrtoint ptr %ale_regs.i.i73 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ale_regs.i.i73, align 4
  %add.ptr.i.i75 = getelementptr i8, ptr %62, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i75, i32 %60) #7, !srcloc !128
  %63 = ptrtoint ptr %ale_regs.i.i73 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ale_regs.i.i73, align 4
  %add.ptr23.i.i76 = getelementptr i8, ptr %64, i32 52
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i76) #7, !srcloc !129
  %66 = ptrtoint ptr %ale_regs.i.i73 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ale_regs.i.i73, align 4
  %add.ptr24.1.i.i77 = getelementptr i8, ptr %67, i32 56
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i.i77) #7, !srcloc !129
  %69 = ptrtoint ptr %ale_regs.i.i73 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ale_regs.i.i73, align 4
  %add.ptr24.2.i.i78 = getelementptr i8, ptr %70, i32 60
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i.i78) #7, !srcloc !129
  %72 = and i32 %68, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp3.i = icmp eq i32 %72, 0
  br i1 %cmp3.i, label %if.end19, label %for.inc.i82

for.inc.i82:                                      ; preds = %cpsw_ale_read.exit.i79
  %inc.i80 = add nuw i32 %idx.011.i, 1
  %73 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ale_entries.i, align 4
  %cmp.i81 = icmp ult i32 %inc.i80, %74
  br i1 %cmp.i81, label %for.inc.i82.cpsw_ale_read.exit.i79_crit_edge, label %for.inc.i82.if.then22_crit_edge

for.inc.i82.if.then22_crit_edge:                  ; preds = %for.inc.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

for.inc.i82.cpsw_ale_read.exit.i79_crit_edge:     ; preds = %for.inc.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit.i79

if.end19:                                         ; preds = %cpsw_ale_read.exit.i79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.011.i)
  %cmp20 = icmp slt i32 %idx.011.i, 0
  br i1 %cmp20, label %if.then22thread-pre-split, label %if.end19.if.end28_crit_edge

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then22thread-pre-split:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr = load i32, ptr %ale_entries.i, align 4
  br label %if.then22

if.then22:                                        ; preds = %if.then22thread-pre-split, %for.inc.i82.if.then22_crit_edge
  %76 = phi i32 [ %.pr, %if.then22thread-pre-split ], [ %74, %for.inc.i82.if.then22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp32.not.i = icmp eq i32 %76, 0
  br i1 %cmp32.not.i, label %if.then22.cleanup_crit_edge, label %if.then22.cpsw_ale_read.exit.i92_crit_edge

if.then22.cpsw_ale_read.exit.i92_crit_edge:       ; preds = %if.then22
  br label %cpsw_ale_read.exit.i92

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cpsw_ale_read.exit.i92:                           ; preds = %for.inc.i97.cpsw_ale_read.exit.i92_crit_edge, %if.then22.cpsw_ale_read.exit.i92_crit_edge
  %idx.033.i = phi i32 [ %inc.i95, %for.inc.i97.cpsw_ale_read.exit.i92_crit_edge ], [ 0, %if.then22.cpsw_ale_read.exit.i92_crit_edge ]
  %77 = tail call i32 @llvm.bswap.i32(i32 %idx.033.i) #7
  %78 = ptrtoint ptr %ale_regs.i.i73 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ale_regs.i.i73, align 4
  %add.ptr.i.i86 = getelementptr i8, ptr %79, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i86, i32 %77) #7, !srcloc !128
  %80 = ptrtoint ptr %ale_regs.i.i73 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ale_regs.i.i73, align 4
  %add.ptr23.i.i87 = getelementptr i8, ptr %81, i32 52
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i87) #7, !srcloc !129
  %83 = ptrtoint ptr %ale_regs.i.i73 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ale_regs.i.i73, align 4
  %add.ptr24.1.i.i88 = getelementptr i8, ptr %84, i32 56
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i.i88) #7, !srcloc !129
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #7
  %87 = ptrtoint ptr %ale_regs.i.i73 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ale_regs.i.i73, align 4
  %add.ptr24.2.i.i89 = getelementptr i8, ptr %88, i32 60
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i.i89) #7, !srcloc !129
  %shr.i.i.i90 = lshr i32 %86, 28
  %and.i.i.i91 = and i32 %shr.i.i.i90, 3
  %90 = zext i32 %and.i.i.i91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %and.i.i.i91, label %cpsw_ale_read.exit.i92.for.inc.i97_crit_edge [
    i32 1, label %cpsw_ale_read.exit.i92.if.end.i94_crit_edge
    i32 3, label %cpsw_ale_read.exit.i92.if.end.i94_crit_edge163
  ]

cpsw_ale_read.exit.i92.if.end.i94_crit_edge163:   ; preds = %cpsw_ale_read.exit.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i94

cpsw_ale_read.exit.i92.if.end.i94_crit_edge:      ; preds = %cpsw_ale_read.exit.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i94

cpsw_ale_read.exit.i92.for.inc.i97_crit_edge:     ; preds = %cpsw_ale_read.exit.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i97

if.end.i94:                                       ; preds = %cpsw_ale_read.exit.i92.if.end.i94_crit_edge, %cpsw_ale_read.exit.i92.if.end.i94_crit_edge163
  %91 = and i32 %86, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i93 = icmp eq i32 %91, 0
  br i1 %tobool.not.i93, label %if.end8.i, label %if.end.i94.for.inc.i97_crit_edge

if.end.i94.for.inc.i97_crit_edge:                 ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i97

if.end8.i:                                        ; preds = %if.end.i94
  %shr.i.i29.i = lshr i32 %86, 30
  %92 = zext i32 %shr.i.i29.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %shr.i.i29.i, label %if.end24 [
    i32 0, label %if.end8.i.for.inc.i97_crit_edge
    i32 2, label %if.end8.i.for.inc.i97_crit_edge164
  ]

if.end8.i.for.inc.i97_crit_edge164:               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i97

if.end8.i.for.inc.i97_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i97

for.inc.i97:                                      ; preds = %if.end8.i.for.inc.i97_crit_edge, %if.end8.i.for.inc.i97_crit_edge164, %if.end.i94.for.inc.i97_crit_edge, %cpsw_ale_read.exit.i92.for.inc.i97_crit_edge
  %inc.i95 = add nuw i32 %idx.033.i, 1
  %93 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ale_entries.i, align 4
  %cmp.i96 = icmp ult i32 %inc.i95, %94
  br i1 %cmp.i96, label %for.inc.i97.cpsw_ale_read.exit.i92_crit_edge, label %for.inc.i97.cleanup_crit_edge

for.inc.i97.cleanup_crit_edge:                    ; preds = %for.inc.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i97.cpsw_ale_read.exit.i92_crit_edge:     ; preds = %for.inc.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit.i92

if.end24:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.033.i)
  %cmp25 = icmp slt i32 %idx.033.i, 0
  br i1 %cmp25, label %if.end24.cleanup_crit_edge, label %if.end24.if.end28_crit_edge

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end24.if.end28_crit_edge, %if.end19.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %idx.1134 = phi i32 [ %idx.033.i, %if.end24.if.end28_crit_edge ], [ %idx.011.i, %if.end19.if.end28_crit_edge ], [ %retval.2.i122, %if.end.if.end28_crit_edge ]
  %95 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %idx.1134)
  %cmp.i100 = icmp ult i32 %96, %idx.1134
  br i1 %cmp.i100, label %do.end.i101, label %if.end28.cpsw_ale_write.exit_crit_edge, !prof !130

if.end28.cpsw_ale_write.exit_crit_edge:           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_write.exit

do.end.i101:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 317, i32 noundef 9, ptr noundef null) #7
  br label %cpsw_ale_write.exit

cpsw_ale_write.exit:                              ; preds = %do.end.i101, %if.end28.cpsw_ale_write.exit_crit_edge
  %ale_regs.i102 = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  %97 = tail call i32 @llvm.bswap.i32(i32 %or.i.i71) #7
  %98 = ptrtoint ptr %ale_regs.i102 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ale_regs.i102, align 4
  %add.ptr.i103 = getelementptr i8, ptr %99, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %97) #7, !srcloc !128
  %100 = tail call i32 @llvm.bswap.i32(i32 %or.i.i65) #7
  %101 = ptrtoint ptr %ale_regs.i102 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ale_regs.i102, align 4
  %add.ptr21.1.i = getelementptr i8, ptr %102, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.1.i, i32 %100) #7, !srcloc !128
  %103 = tail call i32 @llvm.bswap.i32(i32 %or.i.5.i) #7
  %104 = ptrtoint ptr %ale_regs.i102 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ale_regs.i102, align 4
  %add.ptr21.2.i = getelementptr i8, ptr %105, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.2.i, i32 %103) #7, !srcloc !128
  %or.i = or i32 %idx.1134, -2147483648
  %106 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %107 = ptrtoint ptr %ale_regs.i102 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ale_regs.i102, align 4
  %add.ptr24.i = getelementptr i8, ptr %108, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %106) #7, !srcloc !128
  br label %cleanup

cleanup:                                          ; preds = %cpsw_ale_write.exit, %if.end24.cleanup_crit_edge, %for.inc.i97.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %if.then17.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cpsw_ale_write.exit ], [ -12, %if.end24.cleanup_crit_edge ], [ -12, %if.then22.cleanup_crit_edge ], [ -12, %if.then17.cleanup_crit_edge ], [ -12, %for.inc.i97.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_ale_del_mcast(ptr nocapture noundef readonly %ale, ptr nocapture noundef readonly %addr, i32 noundef %port_mask, i32 noundef %flags, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ale_entries.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 3
  %0 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp51.not.i = icmp eq i32 %1, 0
  br i1 %cmp51.not.i, label %entry.cleanup_crit_edge, label %cpsw_ale_read.exit.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cpsw_ale_read.exit.lr.ph.i:                       ; preds = %entry
  %and = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %ale_regs.i.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  %2 = zext i16 %vid to i32
  %conv.i = select i1 %tobool.not, i32 0, i32 %2
  %add.ptr1.i.i = getelementptr i8, ptr %addr, i32 4
  br label %cpsw_ale_read.exit.i

cpsw_ale_read.exit.i:                             ; preds = %for.inc.i.cpsw_ale_read.exit.i_crit_edge, %cpsw_ale_read.exit.lr.ph.i
  %idx.052.i = phi i32 [ 0, %cpsw_ale_read.exit.lr.ph.i ], [ %inc.i, %for.inc.i.cpsw_ale_read.exit.i_crit_edge ]
  %3 = tail call i32 @llvm.bswap.i32(i32 %idx.052.i) #7
  %4 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %3) #7, !srcloc !128
  %6 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr23.i.i = getelementptr i8, ptr %7, i32 52
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i) #7, !srcloc !129
  %9 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.1.i.i = getelementptr i8, ptr %10, i32 56
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i.i) #7, !srcloc !129
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %13 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.2.i.i = getelementptr i8, ptr %14, i32 60
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i.i) #7, !srcloc !129
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  %shr.i.i.i = lshr i32 %12, 28
  %and.i.i.i = and i32 %shr.i.i.i, 3
  %17 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %and.i.i.i, label %cpsw_ale_read.exit.i.for.inc.i_crit_edge [
    i32 1, label %cpsw_ale_read.exit.i.if.end.i_crit_edge
    i32 3, label %cpsw_ale_read.exit.i.if.end.i_crit_edge64
  ]

cpsw_ale_read.exit.i.if.end.i_crit_edge64:        ; preds = %cpsw_ale_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cpsw_ale_read.exit.i.if.end.i_crit_edge:          ; preds = %cpsw_ale_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cpsw_ale_read.exit.i.for.inc.i_crit_edge:         ; preds = %cpsw_ale_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %cpsw_ale_read.exit.i.if.end.i_crit_edge, %cpsw_ale_read.exit.i.if.end.i_crit_edge64
  %shr.i.i26.i = lshr i32 %12, 16
  %and.i.i27.i = and i32 %shr.i.i26.i, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i27.i, i32 %conv.i)
  %cmp7.not.i = icmp eq i32 %and.i.i27.i, %conv.i
  br i1 %cmp7.not.i, label %if.end10.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end10.i:                                       ; preds = %if.end.i
  %18 = trunc i32 %16 to i16
  %trunc.i = trunc i32 %15 to i16
  %rev.i = tail call i16 @llvm.bswap.i16(i16 %trunc.i) #7
  %entry_addr.sroa.0.sroa.7.0.insert.insert.i = zext i16 %rev.i to i32
  %entry_addr.sroa.0.sroa.5.0.insert.ext.i = shl i32 %12, 16
  %entry_addr.sroa.0.sroa.0.0.insert.insert.i = or i32 %entry_addr.sroa.0.sroa.5.0.insert.ext.i, %entry_addr.sroa.0.sroa.7.0.insert.insert.i
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %addr, align 4
  %xor.i.i = xor i32 %20, %entry_addr.sroa.0.sroa.0.0.insert.insert.i
  %21 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %22, %18
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i33.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i33.i, label %cpsw_ale_match_addr.exit, label %if.end10.i.for.inc.i_crit_edge

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end10.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %cpsw_ale_read.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %idx.052.i, 1
  %23 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ale_entries.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %24
  br i1 %cmp.i, label %for.inc.i.cpsw_ale_read.exit.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i.cpsw_ale_read.exit.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit.i

cpsw_ale_match_addr.exit:                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.052.i)
  %cmp = icmp slt i32 %idx.052.i, 0
  br i1 %cmp, label %cpsw_ale_match_addr.exit.cleanup_crit_edge, label %if.end

cpsw_ale_match_addr.exit.cleanup_crit_edge:       ; preds = %cpsw_ale_match_addr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %cpsw_ale_match_addr.exit
  %25 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %idx.052.i)
  %cmp.i30 = icmp ult i32 %26, %idx.052.i
  br i1 %cmp.i30, label %do.end.i, label %if.end.cpsw_ale_read.exit_crit_edge, !prof !130

if.end.cpsw_ale_read.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #7
  br label %cpsw_ale_read.exit

cpsw_ale_read.exit:                               ; preds = %do.end.i, %if.end.cpsw_ale_read.exit_crit_edge
  %27 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #7, !srcloc !128
  %29 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %30, i32 52
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #7, !srcloc !129
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  %33 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.1.i = getelementptr i8, ptr %34, i32 56
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i) #7, !srcloc !129
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  %37 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.2.i = getelementptr i8, ptr %38, i32 60
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i) #7, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port_mask)
  %tobool4.not = icmp eq i32 %port_mask, 0
  br i1 %tobool4.not, label %cpsw_ale_read.exit.if.else_crit_edge, label %if.end9

cpsw_ale_read.exit.if.else_crit_edge:             ; preds = %cpsw_ale_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end9:                                          ; preds = %cpsw_ale_read.exit
  %port_mask_bits = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %40 = ptrtoint ptr %port_mask_bits to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port_mask_bits, align 4
  %shr.i.i = lshr i32 %32, 2
  %notmask.i.i = shl nsw i32 -1, %41
  %42 = or i32 %notmask.i.i, %port_mask
  %43 = xor i32 %42, -1
  %and8 = and i32 %shr.i.i, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool10.not = icmp eq i32 %and8, 0
  br i1 %tobool10.not, label %if.end9.if.else_crit_edge, label %if.then11

if.end9.if.else_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %port_mask_bits to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port_mask_bits, align 4
  %notmask.i.i32 = shl nsw i32 -1, %45
  %sub.i.i = xor i32 %notmask.i.i32, -1
  %and.i.i33 = and i32 %and8, %sub.i.i
  %shl5.i.i = shl i32 %sub.i.i, 2
  %neg.i.i = xor i32 %shl5.i.i, -1
  %and6.i.i = and i32 %32, %neg.i.i
  %shl7.i.i = shl nuw i32 %and.i.i33, 2
  %or.i.i34 = or i32 %and6.i.i, %shl7.i.i
  br label %if.end15

if.else:                                          ; preds = %if.end9.if.else_crit_edge, %cpsw_ale_read.exit.if.else_crit_edge
  %and6.i.i35 = and i32 %36, -805306369
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then11
  %ale_entry.sroa.0.0 = phi i32 [ %32, %if.else ], [ %or.i.i34, %if.then11 ]
  %ale_entry.sroa.8.0 = phi i32 [ %and6.i.i35, %if.else ], [ %36, %if.then11 ]
  %46 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %idx.052.i)
  %cmp.i37 = icmp ult i32 %47, %idx.052.i
  br i1 %cmp.i37, label %do.end.i38, label %if.end15.cpsw_ale_write.exit_crit_edge, !prof !130

if.end15.cpsw_ale_write.exit_crit_edge:           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_write.exit

do.end.i38:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 317, i32 noundef 9, ptr noundef null) #7
  br label %cpsw_ale_write.exit

cpsw_ale_write.exit:                              ; preds = %do.end.i38, %if.end15.cpsw_ale_write.exit_crit_edge
  %48 = tail call i32 @llvm.bswap.i32(i32 %ale_entry.sroa.0.0) #7
  %49 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %50, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %48) #7, !srcloc !128
  %51 = tail call i32 @llvm.bswap.i32(i32 %ale_entry.sroa.8.0) #7
  %52 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr21.1.i = getelementptr i8, ptr %53, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.1.i, i32 %51) #7, !srcloc !128
  %54 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr21.2.i = getelementptr i8, ptr %55, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.2.i, i32 %39) #7, !srcloc !128
  %or.i = or i32 %idx.052.i, -2147483648
  %56 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %57 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %58, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %56) #7, !srcloc !128
  br label %cleanup

cleanup:                                          ; preds = %cpsw_ale_write.exit, %cpsw_ale_match_addr.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cpsw_ale_write.exit ], [ -2, %cpsw_ale_match_addr.exit.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ -2, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_ale_add_vlan(ptr noundef %ale, i16 noundef zeroext %vid, i32 noundef %port_mask, i32 noundef %untag, i32 noundef %reg_mcast, i32 noundef %unreg_mcast) local_unnamed_addr #0 align 64 {
entry:
  %ale_entry = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ale_entry) #7
  %0 = call ptr @memset(ptr %ale_entry, i32 0, i32 12)
  %ale_entries.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 3
  %1 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp20.not.i = icmp eq i32 %2, 0
  br i1 %cmp20.not.i, label %entry.if.end_crit_edge, label %cpsw_ale_read.exit.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = zext i16 %vid to i32
  br label %if.end

cpsw_ale_read.exit.lr.ph.i:                       ; preds = %entry
  %ale_regs.i.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  %conv.i = zext i16 %vid to i32
  br label %cpsw_ale_read.exit.i

cpsw_ale_read.exit.i:                             ; preds = %for.inc.i.cpsw_ale_read.exit.i_crit_edge, %cpsw_ale_read.exit.lr.ph.i
  %idx.021.i = phi i32 [ 0, %cpsw_ale_read.exit.lr.ph.i ], [ %inc.i, %for.inc.i.cpsw_ale_read.exit.i_crit_edge ]
  %3 = tail call i32 @llvm.bswap.i32(i32 %idx.021.i) #7
  %4 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %3) #7, !srcloc !128
  %6 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr23.i.i = getelementptr i8, ptr %7, i32 52
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i) #7, !srcloc !129
  %9 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.1.i.i = getelementptr i8, ptr %10, i32 56
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i.i) #7, !srcloc !129
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %13 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.2.i.i = getelementptr i8, ptr %14, i32 60
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i.i) #7, !srcloc !129
  %16 = and i32 %12, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %16)
  %cmp3.not.i = icmp eq i32 %16, 536870912
  %shr.i.i17.i = lshr i32 %12, 16
  %and.i.i18.i = and i32 %shr.i.i17.i, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i18.i, i32 %conv.i)
  %cmp6.i = icmp eq i32 %and.i.i18.i, %conv.i
  %or.cond.i = select i1 %cmp3.not.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %cpsw_ale_match_vlan.exit, label %for.inc.i

for.inc.i:                                        ; preds = %cpsw_ale_read.exit.i
  %inc.i = add nuw i32 %idx.021.i, 1
  %17 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ale_entries.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %18
  br i1 %cmp.i, label %for.inc.i.cpsw_ale_read.exit.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.i.cpsw_ale_read.exit.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit.i

cpsw_ale_match_vlan.exit:                         ; preds = %cpsw_ale_read.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %idx.021.i)
  %cmp = icmp sgt i32 %idx.021.i, -1
  br i1 %cmp, label %if.then, label %cpsw_ale_match_vlan.exit.if.end_crit_edge

cpsw_ale_match_vlan.exit.if.end_crit_edge:        ; preds = %cpsw_ale_match_vlan.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %cpsw_ale_match_vlan.exit
  %19 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %idx.021.i)
  %cmp.i50 = icmp ult i32 %20, %idx.021.i
  br i1 %cmp.i50, label %do.end.i, label %if.then.cpsw_ale_read.exit_crit_edge, !prof !130

if.then.cpsw_ale_read.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #7
  br label %cpsw_ale_read.exit

cpsw_ale_read.exit:                               ; preds = %do.end.i, %if.then.cpsw_ale_read.exit_crit_edge
  %21 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #7, !srcloc !128
  %23 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %24, i32 52
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #7, !srcloc !129
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  %27 = ptrtoint ptr %ale_entry to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ale_entry, align 4
  %28 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.1.i = getelementptr i8, ptr %29, i32 56
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i) #7, !srcloc !129
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  %arrayidx.1.i = getelementptr inbounds i32, ptr %ale_entry, i32 1
  %32 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx.1.i, align 4
  %33 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.2.i = getelementptr i8, ptr %34, i32 60
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i) #7, !srcloc !129
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  %arrayidx.2.i = getelementptr inbounds i32, ptr %ale_entry, i32 2
  %37 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx.2.i, align 4
  br label %if.end

if.end:                                           ; preds = %cpsw_ale_read.exit, %cpsw_ale_match_vlan.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %conv.pre-phi = phi i32 [ %.pre, %entry.if.end_crit_edge ], [ %conv.i, %cpsw_ale_read.exit ], [ %conv.i, %cpsw_ale_match_vlan.exit.if.end_crit_edge ], [ %conv.i, %for.inc.i.if.end_crit_edge ]
  %retval.0.i191 = phi i32 [ -2, %entry.if.end_crit_edge ], [ %idx.021.i, %cpsw_ale_read.exit ], [ %idx.021.i, %cpsw_ale_match_vlan.exit.if.end_crit_edge ], [ -2, %for.inc.i.if.end_crit_edge ]
  %arrayidx.i.i = getelementptr inbounds i32, ptr %ale_entry, i32 1
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i, align 4
  %and6.i.i = and i32 %39, -1073676289
  %and.i.i = shl nuw i32 %conv.pre-phi, 16
  %shl7.i.i = and i32 %and.i.i, 268369920
  %or.i.i = or i32 %shl7.i.i, %and6.i.i
  %or.i.i53 = or i32 %or.i.i, 536870912
  store i32 %or.i.i53, ptr %arrayidx.i.i, align 4
  %vlan_entry_tbl.i.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 9
  %40 = ptrtoint ptr %vlan_entry_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vlan_entry_tbl.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %ale, null
  br i1 %tobool.not.i.i.i, label %if.end.cpsw_ale_vlan_set_fld.exit.i_crit_edge, label %if.end.i.i.i

if.end.cpsw_ale_vlan_set_fld.exit.i_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_vlan_set_fld.exit.i

if.end.i.i.i:                                     ; preds = %if.end
  %arrayidx.i.i.i = getelementptr %struct.ale_entry_fld, ptr %41, i32 3
  %flags.i.i.i = getelementptr %struct.ale_entry_fld, ptr %41, i32 3, i32 2
  %42 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %flags.i.i.i, align 1
  %conv.i.i.i = zext i8 %43 to i32
  %and.i.i11.i = and i32 %conv.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i11.i)
  %tobool2.not.i.i.i = icmp eq i32 %and.i.i11.i, 0
  br i1 %tobool2.not.i.i.i, label %do.end.i.i.i, label %if.end4.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.13, i32 noundef 3) #10
  br label %cpsw_ale_vlan_set_fld.exit.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  %num_bits.i.i.i = getelementptr %struct.ale_entry_fld, ptr %41, i32 3, i32 1
  %46 = ptrtoint ptr %num_bits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %num_bits.i.i.i, align 1
  %conv5.i.i.i = zext i8 %47 to i32
  %and8.i.i.i = and i32 %conv.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %and8.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %if.end4.i.i.i.if.end11.i.i.i_crit_edge, label %if.then10.i.i.i

if.end4.i.i.i.if.end11.i.i.i_crit_edge:           ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i.i

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %port_mask_bits.i.i.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %48 = ptrtoint ptr %port_mask_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port_mask_bits.i.i.i, align 4
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.then10.i.i.i, %if.end4.i.i.i.if.end11.i.i.i_crit_edge
  %bits.0.i.i.i = phi i32 [ %49, %if.then10.i.i.i ], [ %conv5.i.i.i, %if.end4.i.i.i.if.end11.i.i.i_crit_edge ]
  %50 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv12.i.i.i = zext i8 %51 to i32
  %notmask.i.i.i.i = shl nsw i32 -1, %bits.0.i.i.i
  %sub.i.i.i.i = xor i32 %notmask.i.i.i.i, -1
  %and.i.i.i.i = and i32 %sub.i.i.i.i, %untag
  %div18.i.i.i.i = lshr i32 %conv12.i.i.i, 5
  %sub1.i.i.i.i = and i32 %conv12.i.i.i, 31
  %sub2.i.i.i.i = sub nsw i32 2, %div18.i.i.i.i
  %shl5.i.i.i.i = shl i32 %sub.i.i.i.i, %sub1.i.i.i.i
  %neg.i.i.i.i = xor i32 %shl5.i.i.i.i, -1
  %arrayidx.i.i.i.i = getelementptr i32, ptr %ale_entry, i32 %sub2.i.i.i.i
  %52 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %and6.i.i.i.i = and i32 %53, %neg.i.i.i.i
  %shl7.i.i.i.i = shl i32 %and.i.i.i.i, %sub1.i.i.i.i
  %or.i.i.i.i = or i32 %and6.i.i.i.i, %shl7.i.i.i.i
  store i32 %or.i.i.i.i, ptr %arrayidx.i.i.i.i, align 4
  br label %cpsw_ale_vlan_set_fld.exit.i

cpsw_ale_vlan_set_fld.exit.i:                     ; preds = %if.end11.i.i.i, %do.end.i.i.i, %if.end.cpsw_ale_vlan_set_fld.exit.i_crit_edge
  %and.i = and i32 %untag, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %p0_untag_vid_mask1.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 8
  %54 = ptrtoint ptr %p0_untag_vid_mask1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %p0_untag_vid_mask1.i, align 4
  %rem.i.i7.i = and i32 %conv.pre-phi, 31
  %shl.i.i8.i = shl nuw i32 1, %rem.i.i7.i
  %div2.i.i9.i = lshr i32 %conv.pre-phi, 5
  %add.ptr.i.i10.i = getelementptr i32, ptr %55, i32 %div2.i.i9.i
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %cpsw_ale_vlan_set_fld.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %add.ptr.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr.i.i10.i, align 4
  %or.i.i.i = or i32 %57, %shl.i.i8.i
  br label %cpsw_ale_set_vlan_untag.exit

if.else.i:                                        ; preds = %cpsw_ale_vlan_set_fld.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i.i = xor i32 %shl.i.i8.i, -1
  %58 = ptrtoint ptr %add.ptr.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i.i10.i, align 4
  %and.i.i.i = and i32 %59, %neg.i.i.i
  br label %cpsw_ale_set_vlan_untag.exit

cpsw_ale_set_vlan_untag.exit:                     ; preds = %if.else.i, %if.then.i
  %and.i.i.sink.i = phi i32 [ %and.i.i.i, %if.else.i ], [ %or.i.i.i, %if.then.i ]
  %60 = ptrtoint ptr %add.ptr.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and.i.i.sink.i, ptr %add.ptr.i.i10.i, align 4
  %nu_switch_ale = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 5
  %61 = ptrtoint ptr %nu_switch_ale to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %nu_switch_ale, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not = icmp eq i8 %62, 0
  %63 = ptrtoint ptr %vlan_entry_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vlan_entry_tbl.i.i, align 4
  br i1 %tobool.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %cpsw_ale_set_vlan_untag.exit
  br i1 %tobool.not.i.i.i, label %if.then5.cpsw_ale_vlan_set_fld.exit154_crit_edge, label %if.end.i.i

if.then5.cpsw_ale_vlan_set_fld.exit154_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_vlan_set_fld.exit154

if.end.i.i:                                       ; preds = %if.then5
  %arrayidx.i.i54 = getelementptr %struct.ale_entry_fld, ptr %64, i32 2
  %flags.i.i = getelementptr %struct.ale_entry_fld, ptr %64, i32 2, i32 2
  %65 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %flags.i.i, align 1
  %conv.i.i = zext i8 %66 to i32
  %and.i.i55 = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i55)
  %tobool2.not.i.i = icmp eq i32 %and.i.i55, 0
  br i1 %tobool2.not.i.i, label %do.end.i.i, label %if.end4.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.13, i32 noundef 2) #10
  br label %if.end.i.i67

if.end4.i.i:                                      ; preds = %if.end.i.i
  %num_bits.i.i = getelementptr %struct.ale_entry_fld, ptr %64, i32 2, i32 1
  %69 = ptrtoint ptr %num_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %num_bits.i.i, align 1
  %conv5.i.i = zext i8 %70 to i32
  %and8.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end4.i.i.if.end11.i.i_crit_edge, label %if.then10.i.i

if.end4.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

if.then10.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %port_mask_bits.i.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %71 = ptrtoint ptr %port_mask_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port_mask_bits.i.i, align 4
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then10.i.i, %if.end4.i.i.if.end11.i.i_crit_edge
  %bits.0.i.i = phi i32 [ %72, %if.then10.i.i ], [ %conv5.i.i, %if.end4.i.i.if.end11.i.i_crit_edge ]
  %73 = ptrtoint ptr %arrayidx.i.i54 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i.i54, align 1
  %conv12.i.i = zext i8 %74 to i32
  %notmask.i.i.i = shl nsw i32 -1, %bits.0.i.i
  %sub.i.i.i = xor i32 %notmask.i.i.i, -1
  %and.i.i.i56 = and i32 %sub.i.i.i, %reg_mcast
  %div18.i.i.i = lshr i32 %conv12.i.i, 5
  %sub1.i.i.i = and i32 %conv12.i.i, 31
  %sub2.i.i.i = sub nsw i32 2, %div18.i.i.i
  %shl5.i.i.i = shl i32 %sub.i.i.i, %sub1.i.i.i
  %neg.i.i.i57 = xor i32 %shl5.i.i.i, -1
  %arrayidx.i.i.i58 = getelementptr i32, ptr %ale_entry, i32 %sub2.i.i.i
  %75 = ptrtoint ptr %arrayidx.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i.i.i58, align 4
  %and6.i.i.i = and i32 %76, %neg.i.i.i57
  %shl7.i.i.i = shl i32 %and.i.i.i56, %sub1.i.i.i
  %or.i.i.i59 = or i32 %and6.i.i.i, %shl7.i.i.i
  store i32 %or.i.i.i59, ptr %arrayidx.i.i.i58, align 4
  br label %if.end.i.i67

if.end.i.i67:                                     ; preds = %if.end11.i.i, %do.end.i.i
  %77 = ptrtoint ptr %vlan_entry_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vlan_entry_tbl.i.i, align 4
  %arrayidx.i.i62 = getelementptr %struct.ale_entry_fld, ptr %78, i32 1
  %flags.i.i63 = getelementptr %struct.ale_entry_fld, ptr %78, i32 1, i32 2
  %79 = ptrtoint ptr %flags.i.i63 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %flags.i.i63, align 1
  %conv.i.i64 = zext i8 %80 to i32
  %and.i.i65 = and i32 %conv.i.i64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i65)
  %tobool2.not.i.i66 = icmp eq i32 %and.i.i65, 0
  br i1 %tobool2.not.i.i66, label %do.end.i.i68, label %if.end4.i.i73

do.end.i.i68:                                     ; preds = %if.end.i.i67
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.13, i32 noundef 1) #10
  br label %if.end.i.i130

if.end4.i.i73:                                    ; preds = %if.end.i.i67
  %num_bits.i.i69 = getelementptr %struct.ale_entry_fld, ptr %78, i32 1, i32 1
  %83 = ptrtoint ptr %num_bits.i.i69 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %num_bits.i.i69, align 1
  %conv5.i.i70 = zext i8 %84 to i32
  %and8.i.i71 = and i32 %conv.i.i64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i71)
  %tobool9.not.i.i72 = icmp eq i32 %and8.i.i71, 0
  br i1 %tobool9.not.i.i72, label %if.end4.i.i73.if.end11.i.i90_crit_edge, label %if.then10.i.i75

if.end4.i.i73.if.end11.i.i90_crit_edge:           ; preds = %if.end4.i.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i90

if.then10.i.i75:                                  ; preds = %if.end4.i.i73
  call void @__sanitizer_cov_trace_pc() #9
  %port_mask_bits.i.i74 = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %85 = ptrtoint ptr %port_mask_bits.i.i74 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %port_mask_bits.i.i74, align 4
  br label %if.end11.i.i90

if.end11.i.i90:                                   ; preds = %if.then10.i.i75, %if.end4.i.i73.if.end11.i.i90_crit_edge
  %bits.0.i.i76 = phi i32 [ %86, %if.then10.i.i75 ], [ %conv5.i.i70, %if.end4.i.i73.if.end11.i.i90_crit_edge ]
  %87 = ptrtoint ptr %arrayidx.i.i62 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i.i62, align 1
  %conv12.i.i77 = zext i8 %88 to i32
  %notmask.i.i.i78 = shl nsw i32 -1, %bits.0.i.i76
  %sub.i.i.i79 = xor i32 %notmask.i.i.i78, -1
  %and.i.i.i80 = and i32 %sub.i.i.i79, %unreg_mcast
  %div18.i.i.i81 = lshr i32 %conv12.i.i77, 5
  %sub1.i.i.i82 = and i32 %conv12.i.i77, 31
  %sub2.i.i.i83 = sub nsw i32 2, %div18.i.i.i81
  %shl5.i.i.i84 = shl i32 %sub.i.i.i79, %sub1.i.i.i82
  %neg.i.i.i85 = xor i32 %shl5.i.i.i84, -1
  %arrayidx.i.i.i86 = getelementptr i32, ptr %ale_entry, i32 %sub2.i.i.i83
  %89 = ptrtoint ptr %arrayidx.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i.i.i86, align 4
  %and6.i.i.i87 = and i32 %90, %neg.i.i.i85
  %shl7.i.i.i88 = shl i32 %and.i.i.i80, %sub1.i.i.i82
  %or.i.i.i89 = or i32 %and6.i.i.i87, %shl7.i.i.i88
  store i32 %or.i.i.i89, ptr %arrayidx.i.i.i86, align 4
  br label %if.end.i.i130

if.else:                                          ; preds = %cpsw_ale_set_vlan_untag.exit
  br i1 %tobool.not.i.i.i, label %if.end10, label %if.end.i.i99

if.end.i.i99:                                     ; preds = %if.else
  %arrayidx.i.i94 = getelementptr %struct.ale_entry_fld, ptr %64, i32 4
  %flags.i.i95 = getelementptr %struct.ale_entry_fld, ptr %64, i32 4, i32 2
  %91 = ptrtoint ptr %flags.i.i95 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %flags.i.i95, align 1
  %conv.i.i96 = zext i8 %92 to i32
  %and.i.i97 = and i32 %conv.i.i96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i97)
  %tobool2.not.i.i98 = icmp eq i32 %and.i.i97, 0
  br i1 %tobool2.not.i.i98, label %do.end.i.i100, label %if.end4.i.i105

do.end.i.i100:                                    ; preds = %if.end.i.i99
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.13, i32 noundef 4) #10
  br label %if.end10.thread194

if.end4.i.i105:                                   ; preds = %if.end.i.i99
  %num_bits.i.i101 = getelementptr %struct.ale_entry_fld, ptr %64, i32 4, i32 1
  %95 = ptrtoint ptr %num_bits.i.i101 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %num_bits.i.i101, align 1
  %conv5.i.i102 = zext i8 %96 to i32
  %and8.i.i103 = and i32 %conv.i.i96, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i103)
  %tobool9.not.i.i104 = icmp eq i32 %and8.i.i103, 0
  br i1 %tobool9.not.i.i104, label %if.end4.i.i105.if.end11.i.i122_crit_edge, label %if.then10.i.i107

if.end4.i.i105.if.end11.i.i122_crit_edge:         ; preds = %if.end4.i.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i122

if.then10.i.i107:                                 ; preds = %if.end4.i.i105
  call void @__sanitizer_cov_trace_pc() #9
  %port_mask_bits.i.i106 = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %97 = ptrtoint ptr %port_mask_bits.i.i106 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %port_mask_bits.i.i106, align 4
  br label %if.end11.i.i122

if.end11.i.i122:                                  ; preds = %if.then10.i.i107, %if.end4.i.i105.if.end11.i.i122_crit_edge
  %bits.0.i.i108 = phi i32 [ %98, %if.then10.i.i107 ], [ %conv5.i.i102, %if.end4.i.i105.if.end11.i.i122_crit_edge ]
  %99 = ptrtoint ptr %arrayidx.i.i94 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.i.i94, align 1
  %conv12.i.i109 = zext i8 %100 to i32
  %notmask.i.i.i110 = shl nsw i32 -1, %bits.0.i.i108
  %sub.i.i.i111 = xor i32 %notmask.i.i.i110, -1
  %and.i.i.i112 = and i32 %sub.i.i.i111, 1
  %div18.i.i.i113 = lshr i32 %conv12.i.i109, 5
  %sub1.i.i.i114 = and i32 %conv12.i.i109, 31
  %sub2.i.i.i115 = sub nsw i32 2, %div18.i.i.i113
  %shl5.i.i.i116 = shl i32 %sub.i.i.i111, %sub1.i.i.i114
  %neg.i.i.i117 = xor i32 %shl5.i.i.i116, -1
  %arrayidx.i.i.i118 = getelementptr i32, ptr %ale_entry, i32 %sub2.i.i.i115
  %101 = ptrtoint ptr %arrayidx.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i.i.i118, align 4
  %and6.i.i.i119 = and i32 %102, %neg.i.i.i117
  %shl7.i.i.i120 = shl nuw i32 %and.i.i.i112, %sub1.i.i.i114
  %or.i.i.i121 = or i32 %and6.i.i.i119, %shl7.i.i.i120
  store i32 %or.i.i.i121, ptr %arrayidx.i.i.i118, align 4
  br label %if.end10.thread194

if.end10.thread194:                               ; preds = %if.end11.i.i122, %do.end.i.i100
  call fastcc void @cpsw_ale_set_vlan_mcast(ptr noundef nonnull %ale, ptr noundef nonnull %ale_entry, i32 noundef %reg_mcast, i32 noundef %unreg_mcast)
  br label %if.end.i.i130

if.end10:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @cpsw_ale_set_vlan_mcast(ptr noundef null, ptr noundef nonnull %ale_entry, i32 noundef %reg_mcast, i32 noundef %unreg_mcast)
  br label %cpsw_ale_vlan_set_fld.exit154

if.end.i.i130:                                    ; preds = %if.end10.thread194, %if.end11.i.i90, %do.end.i.i68
  %103 = ptrtoint ptr %vlan_entry_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %vlan_entry_tbl.i.i, align 4
  %flags.i.i126 = getelementptr %struct.ale_entry_fld, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %flags.i.i126 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %flags.i.i126, align 1
  %conv.i.i127 = zext i8 %106 to i32
  %and.i.i128 = and i32 %conv.i.i127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i128)
  %tobool2.not.i.i129 = icmp eq i32 %and.i.i128, 0
  br i1 %tobool2.not.i.i129, label %do.end.i.i131, label %if.end4.i.i136

do.end.i.i131:                                    ; preds = %if.end.i.i130
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ale, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.13, i32 noundef 0) #10
  br label %cpsw_ale_vlan_set_fld.exit154

if.end4.i.i136:                                   ; preds = %if.end.i.i130
  %num_bits.i.i132 = getelementptr %struct.ale_entry_fld, ptr %104, i32 0, i32 1
  %109 = ptrtoint ptr %num_bits.i.i132 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %num_bits.i.i132, align 1
  %conv5.i.i133 = zext i8 %110 to i32
  %and8.i.i134 = and i32 %conv.i.i127, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i134)
  %tobool9.not.i.i135 = icmp eq i32 %and8.i.i134, 0
  br i1 %tobool9.not.i.i135, label %if.end4.i.i136.if.end11.i.i153_crit_edge, label %if.then10.i.i138

if.end4.i.i136.if.end11.i.i153_crit_edge:         ; preds = %if.end4.i.i136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i153

if.then10.i.i138:                                 ; preds = %if.end4.i.i136
  call void @__sanitizer_cov_trace_pc() #9
  %port_mask_bits.i.i137 = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %111 = ptrtoint ptr %port_mask_bits.i.i137 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %port_mask_bits.i.i137, align 4
  br label %if.end11.i.i153

if.end11.i.i153:                                  ; preds = %if.then10.i.i138, %if.end4.i.i136.if.end11.i.i153_crit_edge
  %bits.0.i.i139 = phi i32 [ %112, %if.then10.i.i138 ], [ %conv5.i.i133, %if.end4.i.i136.if.end11.i.i153_crit_edge ]
  %113 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %104, align 1
  %conv12.i.i140 = zext i8 %114 to i32
  %notmask.i.i.i141 = shl nsw i32 -1, %bits.0.i.i139
  %sub.i.i.i142 = xor i32 %notmask.i.i.i141, -1
  %and.i.i.i143 = and i32 %sub.i.i.i142, %port_mask
  %div18.i.i.i144 = lshr i32 %conv12.i.i140, 5
  %sub1.i.i.i145 = and i32 %conv12.i.i140, 31
  %sub2.i.i.i146 = sub nsw i32 2, %div18.i.i.i144
  %shl5.i.i.i147 = shl i32 %sub.i.i.i142, %sub1.i.i.i145
  %neg.i.i.i148 = xor i32 %shl5.i.i.i147, -1
  %arrayidx.i.i.i149 = getelementptr i32, ptr %ale_entry, i32 %sub2.i.i.i146
  %115 = ptrtoint ptr %arrayidx.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx.i.i.i149, align 4
  %and6.i.i.i150 = and i32 %116, %neg.i.i.i148
  %shl7.i.i.i151 = shl i32 %and.i.i.i143, %sub1.i.i.i145
  %or.i.i.i152 = or i32 %and6.i.i.i150, %shl7.i.i.i151
  store i32 %or.i.i.i152, ptr %arrayidx.i.i.i149, align 4
  br label %cpsw_ale_vlan_set_fld.exit154

cpsw_ale_vlan_set_fld.exit154:                    ; preds = %if.end11.i.i153, %do.end.i.i131, %if.end10, %if.then5.cpsw_ale_vlan_set_fld.exit154_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i191)
  %cmp12 = icmp slt i32 %retval.0.i191, 0
  br i1 %cmp12, label %if.then14, label %cpsw_ale_vlan_set_fld.exit154.if.end25_crit_edge

cpsw_ale_vlan_set_fld.exit154.if.end25_crit_edge: ; preds = %cpsw_ale_vlan_set_fld.exit154
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then14:                                        ; preds = %cpsw_ale_vlan_set_fld.exit154
  %117 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp10.not.i = icmp eq i32 %118, 0
  br i1 %cmp10.not.i, label %if.then14.cleanup_crit_edge, label %cpsw_ale_read.exit.lr.ph.i157

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cpsw_ale_read.exit.lr.ph.i157:                    ; preds = %if.then14
  %ale_regs.i.i156 = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  br label %cpsw_ale_read.exit.i162

cpsw_ale_read.exit.i162:                          ; preds = %for.inc.i165.cpsw_ale_read.exit.i162_crit_edge, %cpsw_ale_read.exit.lr.ph.i157
  %idx.011.i = phi i32 [ 0, %cpsw_ale_read.exit.lr.ph.i157 ], [ %inc.i163, %for.inc.i165.cpsw_ale_read.exit.i162_crit_edge ]
  %119 = call i32 @llvm.bswap.i32(i32 %idx.011.i) #7
  %120 = ptrtoint ptr %ale_regs.i.i156 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ale_regs.i.i156, align 4
  %add.ptr.i.i158 = getelementptr i8, ptr %121, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i158, i32 %119) #7, !srcloc !128
  %122 = ptrtoint ptr %ale_regs.i.i156 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ale_regs.i.i156, align 4
  %add.ptr23.i.i159 = getelementptr i8, ptr %123, i32 52
  %124 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i159) #7, !srcloc !129
  %125 = ptrtoint ptr %ale_regs.i.i156 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ale_regs.i.i156, align 4
  %add.ptr24.1.i.i160 = getelementptr i8, ptr %126, i32 56
  %127 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i.i160) #7, !srcloc !129
  %128 = ptrtoint ptr %ale_regs.i.i156 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ale_regs.i.i156, align 4
  %add.ptr24.2.i.i161 = getelementptr i8, ptr %129, i32 60
  %130 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i.i161) #7, !srcloc !129
  %131 = and i32 %127, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %cmp3.i = icmp eq i32 %131, 0
  br i1 %cmp3.i, label %if.end16, label %for.inc.i165

for.inc.i165:                                     ; preds = %cpsw_ale_read.exit.i162
  %inc.i163 = add nuw i32 %idx.011.i, 1
  %132 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ale_entries.i, align 4
  %cmp.i164 = icmp ult i32 %inc.i163, %133
  br i1 %cmp.i164, label %for.inc.i165.cpsw_ale_read.exit.i162_crit_edge, label %for.inc.i165.if.then19_crit_edge

for.inc.i165.if.then19_crit_edge:                 ; preds = %for.inc.i165
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

for.inc.i165.cpsw_ale_read.exit.i162_crit_edge:   ; preds = %for.inc.i165
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit.i162

if.end16:                                         ; preds = %cpsw_ale_read.exit.i162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.011.i)
  %cmp17 = icmp slt i32 %idx.011.i, 0
  br i1 %cmp17, label %if.then19thread-pre-split, label %if.end16.if.end25_crit_edge

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then19thread-pre-split:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %134 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %.pr = load i32, ptr %ale_entries.i, align 4
  br label %if.then19

if.then19:                                        ; preds = %if.then19thread-pre-split, %for.inc.i165.if.then19_crit_edge
  %135 = phi i32 [ %.pr, %if.then19thread-pre-split ], [ %133, %for.inc.i165.if.then19_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp32.not.i = icmp eq i32 %135, 0
  br i1 %cmp32.not.i, label %if.then19.cleanup_crit_edge, label %if.then19.cpsw_ale_read.exit.i175_crit_edge

if.then19.cpsw_ale_read.exit.i175_crit_edge:      ; preds = %if.then19
  br label %cpsw_ale_read.exit.i175

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cpsw_ale_read.exit.i175:                          ; preds = %for.inc.i179.cpsw_ale_read.exit.i175_crit_edge, %if.then19.cpsw_ale_read.exit.i175_crit_edge
  %idx.033.i = phi i32 [ %inc.i177, %for.inc.i179.cpsw_ale_read.exit.i175_crit_edge ], [ 0, %if.then19.cpsw_ale_read.exit.i175_crit_edge ]
  %136 = call i32 @llvm.bswap.i32(i32 %idx.033.i) #7
  %137 = ptrtoint ptr %ale_regs.i.i156 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ale_regs.i.i156, align 4
  %add.ptr.i.i170 = getelementptr i8, ptr %138, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i170, i32 %136) #7, !srcloc !128
  %139 = ptrtoint ptr %ale_regs.i.i156 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ale_regs.i.i156, align 4
  %add.ptr23.i.i171 = getelementptr i8, ptr %140, i32 52
  %141 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i171) #7, !srcloc !129
  %142 = ptrtoint ptr %ale_regs.i.i156 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ale_regs.i.i156, align 4
  %add.ptr24.1.i.i172 = getelementptr i8, ptr %143, i32 56
  %144 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i.i172) #7, !srcloc !129
  %145 = call i32 @llvm.bswap.i32(i32 %144) #7
  %146 = ptrtoint ptr %ale_regs.i.i156 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ale_regs.i.i156, align 4
  %add.ptr24.2.i.i173 = getelementptr i8, ptr %147, i32 60
  %148 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i.i173) #7, !srcloc !129
  %shr.i.i.i = lshr i32 %145, 28
  %and.i.i.i174 = and i32 %shr.i.i.i, 3
  %149 = zext i32 %and.i.i.i174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %and.i.i.i174, label %cpsw_ale_read.exit.i175.for.inc.i179_crit_edge [
    i32 1, label %cpsw_ale_read.exit.i175.if.end.i_crit_edge
    i32 3, label %cpsw_ale_read.exit.i175.if.end.i_crit_edge234
  ]

cpsw_ale_read.exit.i175.if.end.i_crit_edge234:    ; preds = %cpsw_ale_read.exit.i175
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cpsw_ale_read.exit.i175.if.end.i_crit_edge:       ; preds = %cpsw_ale_read.exit.i175
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cpsw_ale_read.exit.i175.for.inc.i179_crit_edge:   ; preds = %cpsw_ale_read.exit.i175
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i179

if.end.i:                                         ; preds = %cpsw_ale_read.exit.i175.if.end.i_crit_edge, %cpsw_ale_read.exit.i175.if.end.i_crit_edge234
  %150 = and i32 %145, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool.not.i176 = icmp eq i32 %150, 0
  br i1 %tobool.not.i176, label %if.end8.i, label %if.end.i.for.inc.i179_crit_edge

if.end.i.for.inc.i179_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i179

if.end8.i:                                        ; preds = %if.end.i
  %shr.i.i29.i = lshr i32 %145, 30
  %151 = zext i32 %shr.i.i29.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %shr.i.i29.i, label %if.end21 [
    i32 0, label %if.end8.i.for.inc.i179_crit_edge
    i32 2, label %if.end8.i.for.inc.i179_crit_edge235
  ]

if.end8.i.for.inc.i179_crit_edge235:              ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i179

if.end8.i.for.inc.i179_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i179

for.inc.i179:                                     ; preds = %if.end8.i.for.inc.i179_crit_edge, %if.end8.i.for.inc.i179_crit_edge235, %if.end.i.for.inc.i179_crit_edge, %cpsw_ale_read.exit.i175.for.inc.i179_crit_edge
  %inc.i177 = add nuw i32 %idx.033.i, 1
  %152 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %ale_entries.i, align 4
  %cmp.i178 = icmp ult i32 %inc.i177, %153
  br i1 %cmp.i178, label %for.inc.i179.cpsw_ale_read.exit.i175_crit_edge, label %for.inc.i179.cleanup_crit_edge

for.inc.i179.cleanup_crit_edge:                   ; preds = %for.inc.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i179.cpsw_ale_read.exit.i175_crit_edge:   ; preds = %for.inc.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit.i175

if.end21:                                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.033.i)
  %cmp22 = icmp slt i32 %idx.033.i, 0
  br i1 %cmp22, label %if.end21.cleanup_crit_edge, label %if.end21.if.end25_crit_edge

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end21.if.end25_crit_edge, %if.end16.if.end25_crit_edge, %cpsw_ale_vlan_set_fld.exit154.if.end25_crit_edge
  %idx.1206 = phi i32 [ %idx.033.i, %if.end21.if.end25_crit_edge ], [ %idx.011.i, %if.end16.if.end25_crit_edge ], [ %retval.0.i191, %cpsw_ale_vlan_set_fld.exit154.if.end25_crit_edge ]
  %154 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %idx.1206)
  %cmp.i182 = icmp ult i32 %155, %idx.1206
  br i1 %cmp.i182, label %do.end.i183, label %if.end25.cpsw_ale_write.exit_crit_edge, !prof !130

if.end25.cpsw_ale_write.exit_crit_edge:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_write.exit

do.end.i183:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 317, i32 noundef 9, ptr noundef null) #7
  br label %cpsw_ale_write.exit

cpsw_ale_write.exit:                              ; preds = %do.end.i183, %if.end25.cpsw_ale_write.exit_crit_edge
  %ale_regs.i184 = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  %156 = ptrtoint ptr %ale_entry to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %ale_entry, align 4
  %158 = call i32 @llvm.bswap.i32(i32 %157) #7
  %159 = ptrtoint ptr %ale_regs.i184 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ale_regs.i184, align 4
  %add.ptr.i185 = getelementptr i8, ptr %160, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i185, i32 %158) #7, !srcloc !128
  %161 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx.i.i, align 4
  %163 = call i32 @llvm.bswap.i32(i32 %162) #7
  %164 = ptrtoint ptr %ale_regs.i184 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ale_regs.i184, align 4
  %add.ptr21.1.i = getelementptr i8, ptr %165, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.1.i, i32 %163) #7, !srcloc !128
  %arrayidx.2.i187 = getelementptr inbounds i32, ptr %ale_entry, i32 2
  %166 = ptrtoint ptr %arrayidx.2.i187 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx.2.i187, align 4
  %168 = call i32 @llvm.bswap.i32(i32 %167) #7
  %169 = ptrtoint ptr %ale_regs.i184 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ale_regs.i184, align 4
  %add.ptr21.2.i = getelementptr i8, ptr %170, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.2.i, i32 %168) #7, !srcloc !128
  %or.i = or i32 %idx.1206, -2147483648
  %171 = call i32 @llvm.bswap.i32(i32 %or.i) #7
  %172 = ptrtoint ptr %ale_regs.i184 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ale_regs.i184, align 4
  %add.ptr24.i = getelementptr i8, ptr %173, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %171) #7, !srcloc !128
  br label %cleanup

cleanup:                                          ; preds = %cpsw_ale_write.exit, %if.end21.cleanup_crit_edge, %for.inc.i179.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.then14.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cpsw_ale_write.exit ], [ -12, %if.end21.cleanup_crit_edge ], [ -12, %if.then19.cleanup_crit_edge ], [ -12, %if.then14.cleanup_crit_edge ], [ -12, %for.inc.i179.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ale_entry) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpsw_ale_set_vlan_mcast(ptr noundef readonly %ale, ptr noundef readonly %ale_entry, i32 noundef %reg_mcast, i32 noundef %unreg_mcast) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_entry_tbl.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 9
  %0 = ptrtoint ptr %vlan_entry_tbl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vlan_entry_tbl.i, align 4
  %tobool.not.i.i = icmp eq ptr %ale, null
  %tobool1.not.i.i = icmp eq ptr %ale_entry, null
  %or.cond.i.i = or i1 %tobool.not.i.i, %tobool1.not.i.i
  br i1 %or.cond.i.i, label %entry.cpsw_ale_vlan_get_fld.exit_crit_edge, label %if.end.i.i

entry.cpsw_ale_vlan_get_fld.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_vlan_get_fld.exit

if.end.i.i:                                       ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.ale_entry_fld, ptr %1, i32 5
  %flags.i.i = getelementptr %struct.ale_entry_fld, ptr %1, i32 5, i32 2
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags.i.i, align 1
  %conv.i.i = zext i8 %3 to i32
  %and.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %do.end.i.i, label %if.end4.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.15, i32 noundef 5) #10
  br label %cpsw_ale_vlan_get_fld.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %num_bits.i.i = getelementptr %struct.ale_entry_fld, ptr %1, i32 5, i32 1
  %6 = ptrtoint ptr %num_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_bits.i.i, align 1
  %conv5.i.i = zext i8 %7 to i32
  %and8.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end4.i.i.if.end11.i.i_crit_edge, label %if.then10.i.i

if.end4.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

if.then10.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %port_mask_bits.i.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %8 = ptrtoint ptr %port_mask_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_mask_bits.i.i, align 4
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then10.i.i, %if.end4.i.i.if.end11.i.i_crit_edge
  %bits.0.i.i = phi i32 [ %9, %if.then10.i.i ], [ %conv5.i.i, %if.end4.i.i.if.end11.i.i_crit_edge ]
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  %conv12.i.i = zext i8 %11 to i32
  %div7.i.i.i = lshr i32 %conv12.i.i, 5
  %sub.i.i.i = and i32 %conv12.i.i, 31
  %sub1.i.i.i = sub nsw i32 2, %div7.i.i.i
  %arrayidx.i.i.i = getelementptr i32, ptr %ale_entry, i32 %sub1.i.i.i
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i.i = lshr i32 %13, %sub.i.i.i
  %notmask.i.i.i = shl nsw i32 -1, %bits.0.i.i
  %sub2.i.i.i = xor i32 %notmask.i.i.i, -1
  %and.i.i.i = and i32 %shr.i.i.i, %sub2.i.i.i
  %phi.bo = shl i32 %and.i.i.i, 2
  %phi.bo46 = add i32 %phi.bo, 192
  br label %cpsw_ale_vlan_get_fld.exit

cpsw_ale_vlan_get_fld.exit:                       ; preds = %if.end11.i.i, %do.end.i.i, %entry.cpsw_ale_vlan_get_fld.exit_crit_edge
  %retval.0.i.i = phi i32 [ %phi.bo46, %if.end11.i.i ], [ 184, %do.end.i.i ], [ 104, %entry.cpsw_ale_vlan_get_fld.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %reg_mcast)
  %ale_regs = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  %15 = ptrtoint ptr %ale_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ale_regs, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %retval.0.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #7, !srcloc !128
  %17 = ptrtoint ptr %vlan_entry_tbl.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vlan_entry_tbl.i, align 4
  br i1 %or.cond.i.i, label %cpsw_ale_vlan_get_fld.exit.cpsw_ale_vlan_get_fld.exit45_crit_edge, label %if.end.i.i24

cpsw_ale_vlan_get_fld.exit.cpsw_ale_vlan_get_fld.exit45_crit_edge: ; preds = %cpsw_ale_vlan_get_fld.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_vlan_get_fld.exit45

if.end.i.i24:                                     ; preds = %cpsw_ale_vlan_get_fld.exit
  %arrayidx.i.i19 = getelementptr %struct.ale_entry_fld, ptr %18, i32 4
  %flags.i.i20 = getelementptr %struct.ale_entry_fld, ptr %18, i32 4, i32 2
  %19 = ptrtoint ptr %flags.i.i20 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags.i.i20, align 1
  %conv.i.i21 = zext i8 %20 to i32
  %and.i.i22 = and i32 %conv.i.i21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i22)
  %tobool2.not.i.i23 = icmp eq i32 %and.i.i22, 0
  br i1 %tobool2.not.i.i23, label %do.end.i.i25, label %if.end4.i.i30

do.end.i.i25:                                     ; preds = %if.end.i.i24
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.15, i32 noundef 4) #10
  br label %cpsw_ale_vlan_get_fld.exit45

if.end4.i.i30:                                    ; preds = %if.end.i.i24
  %num_bits.i.i26 = getelementptr %struct.ale_entry_fld, ptr %18, i32 4, i32 1
  %23 = ptrtoint ptr %num_bits.i.i26 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_bits.i.i26, align 1
  %conv5.i.i27 = zext i8 %24 to i32
  %and8.i.i28 = and i32 %conv.i.i21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i28)
  %tobool9.not.i.i29 = icmp eq i32 %and8.i.i28, 0
  br i1 %tobool9.not.i.i29, label %if.end4.i.i30.if.end11.i.i43_crit_edge, label %if.then10.i.i32

if.end4.i.i30.if.end11.i.i43_crit_edge:           ; preds = %if.end4.i.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i43

if.then10.i.i32:                                  ; preds = %if.end4.i.i30
  call void @__sanitizer_cov_trace_pc() #9
  %port_mask_bits.i.i31 = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %25 = ptrtoint ptr %port_mask_bits.i.i31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port_mask_bits.i.i31, align 4
  br label %if.end11.i.i43

if.end11.i.i43:                                   ; preds = %if.then10.i.i32, %if.end4.i.i30.if.end11.i.i43_crit_edge
  %bits.0.i.i33 = phi i32 [ %26, %if.then10.i.i32 ], [ %conv5.i.i27, %if.end4.i.i30.if.end11.i.i43_crit_edge ]
  %27 = ptrtoint ptr %arrayidx.i.i19 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.i19, align 1
  %conv12.i.i34 = zext i8 %28 to i32
  %div7.i.i.i35 = lshr i32 %conv12.i.i34, 5
  %sub.i.i.i36 = and i32 %conv12.i.i34, 31
  %sub1.i.i.i37 = sub nsw i32 2, %div7.i.i.i35
  %arrayidx.i.i.i38 = getelementptr i32, ptr %ale_entry, i32 %sub1.i.i.i37
  %29 = ptrtoint ptr %arrayidx.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i.i38, align 4
  %shr.i.i.i39 = lshr i32 %30, %sub.i.i.i36
  %notmask.i.i.i40 = shl nsw i32 -1, %bits.0.i.i33
  %sub2.i.i.i41 = xor i32 %notmask.i.i.i40, -1
  %and.i.i.i42 = and i32 %shr.i.i.i39, %sub2.i.i.i41
  %phi.bo47 = shl i32 %and.i.i.i42, 2
  %phi.bo48 = add i32 %phi.bo47, 192
  br label %cpsw_ale_vlan_get_fld.exit45

cpsw_ale_vlan_get_fld.exit45:                     ; preds = %if.end11.i.i43, %do.end.i.i25, %cpsw_ale_vlan_get_fld.exit.cpsw_ale_vlan_get_fld.exit45_crit_edge
  %retval.0.i.i44 = phi i32 [ %phi.bo48, %if.end11.i.i43 ], [ 184, %do.end.i.i25 ], [ 104, %cpsw_ale_vlan_get_fld.exit.cpsw_ale_vlan_get_fld.exit45_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %31 = tail call i32 @llvm.bswap.i32(i32 %unreg_mcast)
  %32 = ptrtoint ptr %ale_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ale_regs, align 4
  %add.ptr9 = getelementptr i8, ptr %33, i32 %retval.0.i.i44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %31) #7, !srcloc !128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_ale_vlan_del_modify(ptr noundef %ale, i16 noundef zeroext %vid, i32 noundef %port_mask) local_unnamed_addr #0 align 64 {
entry:
  %ale_entry = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ale_entry) #7
  %ale_entries.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 3
  %0 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp20.not.i = icmp eq i32 %1, 0
  br i1 %cmp20.not.i, label %entry.cleanup_crit_edge, label %cpsw_ale_read.exit.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cpsw_ale_read.exit.lr.ph.i:                       ; preds = %entry
  %ale_regs.i.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  %conv.i = zext i16 %vid to i32
  br label %cpsw_ale_read.exit.i

cpsw_ale_read.exit.i:                             ; preds = %for.inc.i.cpsw_ale_read.exit.i_crit_edge, %cpsw_ale_read.exit.lr.ph.i
  %idx.021.i = phi i32 [ 0, %cpsw_ale_read.exit.lr.ph.i ], [ %inc.i, %for.inc.i.cpsw_ale_read.exit.i_crit_edge ]
  %2 = tail call i32 @llvm.bswap.i32(i32 %idx.021.i) #7
  %3 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #7, !srcloc !128
  %5 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr23.i.i = getelementptr i8, ptr %6, i32 52
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i) #7, !srcloc !129
  %8 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.1.i.i = getelementptr i8, ptr %9, i32 56
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i.i) #7, !srcloc !129
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  %12 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.2.i.i = getelementptr i8, ptr %13, i32 60
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i.i) #7, !srcloc !129
  %15 = and i32 %11, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %15)
  %cmp3.not.i = icmp eq i32 %15, 536870912
  %shr.i.i17.i = lshr i32 %11, 16
  %and.i.i18.i = and i32 %shr.i.i17.i, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i18.i, i32 %conv.i)
  %cmp6.i = icmp eq i32 %and.i.i18.i, %conv.i
  %or.cond.i = select i1 %cmp3.not.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %cpsw_ale_match_vlan.exit, label %for.inc.i

for.inc.i:                                        ; preds = %cpsw_ale_read.exit.i
  %inc.i = add nuw i32 %idx.021.i, 1
  %16 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ale_entries.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %for.inc.i.cpsw_ale_read.exit.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i.cpsw_ale_read.exit.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit.i

cpsw_ale_match_vlan.exit:                         ; preds = %cpsw_ale_read.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.021.i)
  %cmp = icmp slt i32 %idx.021.i, 0
  br i1 %cmp, label %cpsw_ale_match_vlan.exit.cleanup_crit_edge, label %if.end

cpsw_ale_match_vlan.exit.cleanup_crit_edge:       ; preds = %cpsw_ale_match_vlan.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %cpsw_ale_match_vlan.exit
  %18 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %idx.021.i)
  %cmp.i13 = icmp ult i32 %19, %idx.021.i
  br i1 %cmp.i13, label %do.end.i, label %if.end.cpsw_ale_read.exit_crit_edge, !prof !130

if.end.cpsw_ale_read.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #7
  br label %cpsw_ale_read.exit

cpsw_ale_read.exit:                               ; preds = %do.end.i, %if.end.cpsw_ale_read.exit_crit_edge
  %20 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !128
  %22 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %23, i32 52
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #7, !srcloc !129
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  %26 = ptrtoint ptr %ale_entry to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %ale_entry, align 4
  %27 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.1.i = getelementptr i8, ptr %28, i32 56
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i) #7, !srcloc !129
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  %arrayidx.1.i = getelementptr inbounds i32, ptr %ale_entry, i32 1
  %31 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx.1.i, align 4
  %32 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.2.i = getelementptr i8, ptr %33, i32 60
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i) #7, !srcloc !129
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  %arrayidx.2.i = getelementptr inbounds i32, ptr %ale_entry, i32 2
  %36 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx.2.i, align 4
  call fastcc void @cpsw_ale_vlan_del_modify_int(ptr noundef %ale, ptr noundef nonnull %ale_entry, i16 noundef zeroext %vid, i32 noundef %port_mask)
  %37 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %idx.021.i)
  %cmp.i15 = icmp ult i32 %38, %idx.021.i
  br i1 %cmp.i15, label %do.end.i16, label %cpsw_ale_read.exit.cpsw_ale_write.exit_crit_edge, !prof !130

cpsw_ale_read.exit.cpsw_ale_write.exit_crit_edge: ; preds = %cpsw_ale_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_write.exit

do.end.i16:                                       ; preds = %cpsw_ale_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 317, i32 noundef 9, ptr noundef null) #7
  br label %cpsw_ale_write.exit

cpsw_ale_write.exit:                              ; preds = %do.end.i16, %cpsw_ale_read.exit.cpsw_ale_write.exit_crit_edge
  %39 = ptrtoint ptr %ale_entry to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ale_entry, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40) #7
  %42 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %43, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %41) #7, !srcloc !128
  %44 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.1.i, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45) #7
  %47 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr21.1.i = getelementptr i8, ptr %48, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.1.i, i32 %46) #7, !srcloc !128
  %49 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.2.i, align 4
  %51 = call i32 @llvm.bswap.i32(i32 %50) #7
  %52 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr21.2.i = getelementptr i8, ptr %53, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.2.i, i32 %51) #7, !srcloc !128
  %or.i = or i32 %idx.021.i, -2147483648
  %54 = call i32 @llvm.bswap.i32(i32 %or.i) #7
  %55 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %56, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %54) #7, !srcloc !128
  br label %cleanup

cleanup:                                          ; preds = %cpsw_ale_write.exit, %cpsw_ale_match_vlan.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cpsw_ale_write.exit ], [ -2, %cpsw_ale_match_vlan.exit.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ -2, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ale_entry) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpsw_ale_vlan_del_modify_int(ptr noundef %ale, ptr noundef %ale_entry, i16 noundef zeroext %vid, i32 noundef %port_mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_entry_tbl.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 9
  %0 = ptrtoint ptr %vlan_entry_tbl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vlan_entry_tbl.i, align 4
  %tobool.not.i.i = icmp eq ptr %ale, null
  %tobool1.not.i.i = icmp eq ptr %ale_entry, null
  %or.cond.i.i = or i1 %tobool.not.i.i, %tobool1.not.i.i
  br i1 %or.cond.i.i, label %cpsw_ale_vlan_get_fld.exit.thread, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  %flags.i.i = getelementptr %struct.ale_entry_fld, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags.i.i, align 1
  %conv.i.i = zext i8 %3 to i32
  %and.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %do.end.i.i, label %if.end4.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.15, i32 noundef 0) #10
  br label %cpsw_ale_vlan_get_fld.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %num_bits.i.i = getelementptr %struct.ale_entry_fld, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %num_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_bits.i.i, align 1
  %conv5.i.i = zext i8 %7 to i32
  %and8.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end4.i.i.if.end11.i.i_crit_edge, label %if.then10.i.i

if.end4.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

if.then10.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %port_mask_bits.i.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %8 = ptrtoint ptr %port_mask_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_mask_bits.i.i, align 4
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then10.i.i, %if.end4.i.i.if.end11.i.i_crit_edge
  %bits.0.i.i = phi i32 [ %9, %if.then10.i.i ], [ %conv5.i.i, %if.end4.i.i.if.end11.i.i_crit_edge ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %1, align 1
  %conv12.i.i = zext i8 %11 to i32
  %div7.i.i.i = lshr i32 %conv12.i.i, 5
  %sub.i.i.i = and i32 %conv12.i.i, 31
  %sub1.i.i.i = sub nsw i32 2, %div7.i.i.i
  %arrayidx.i.i.i = getelementptr i32, ptr %ale_entry, i32 %sub1.i.i.i
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i.i = lshr i32 %13, %sub.i.i.i
  %notmask.i.i.i = shl nsw i32 -1, %bits.0.i.i
  %sub2.i.i.i = xor i32 %notmask.i.i.i, -1
  %and.i.i.i = and i32 %shr.i.i.i, %sub2.i.i.i
  br label %cpsw_ale_vlan_get_fld.exit

cpsw_ale_vlan_get_fld.exit:                       ; preds = %if.end11.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %and.i.i.i, %if.end11.i.i ], [ -2, %do.end.i.i ]
  %neg = xor i32 %port_mask, -1
  %and = and i32 %retval.0.i.i, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %14 = ptrtoint ptr %vlan_entry_tbl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vlan_entry_tbl.i, align 4
  %arrayidx.i.i.i44 = getelementptr %struct.ale_entry_fld, ptr %15, i32 3
  %flags.i.i.i = getelementptr %struct.ale_entry_fld, ptr %15, i32 3, i32 2
  %16 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flags.i.i.i, align 1
  %conv.i.i.i = zext i8 %17 to i32
  %and.i.i11.i = and i32 %conv.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i11.i)
  %tobool2.not.i.i.i = icmp eq i32 %and.i.i11.i, 0
  br i1 %tobool.not, label %if.end.i.i.i, label %if.end.i.i55

cpsw_ale_vlan_get_fld.exit.thread:                ; preds = %entry
  %neg275 = and i32 %port_mask, -22
  %and276 = xor i32 %neg275, -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and276)
  %tobool.not277 = icmp eq i32 %and276, 0
  br i1 %tobool.not277, label %cpsw_ale_vlan_get_fld.exit.thread.cpsw_ale_set_vlan_untag.exit_crit_edge, label %cpsw_ale_vlan_get_fld.exit.thread.cpsw_ale_vlan_set_fld.exit.i_crit_edge

cpsw_ale_vlan_get_fld.exit.thread.cpsw_ale_vlan_set_fld.exit.i_crit_edge: ; preds = %cpsw_ale_vlan_get_fld.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_vlan_set_fld.exit.i

cpsw_ale_vlan_get_fld.exit.thread.cpsw_ale_set_vlan_untag.exit_crit_edge: ; preds = %cpsw_ale_vlan_get_fld.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_set_vlan_untag.exit

if.end.i.i.i:                                     ; preds = %cpsw_ale_vlan_get_fld.exit
  br i1 %tobool2.not.i.i.i, label %do.end.i.i.i, label %if.end4.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.13, i32 noundef 3) #10
  br label %cpsw_ale_set_vlan_untag.exit

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  %num_bits.i.i.i = getelementptr %struct.ale_entry_fld, ptr %15, i32 3, i32 1
  %20 = ptrtoint ptr %num_bits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_bits.i.i.i, align 1
  %conv5.i.i.i = zext i8 %21 to i32
  %and8.i.i.i = and i32 %conv.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %and8.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %if.end4.i.i.i.if.end11.i.i.i_crit_edge, label %if.then10.i.i.i

if.end4.i.i.i.if.end11.i.i.i_crit_edge:           ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i.i

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %port_mask_bits.i.i.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %22 = ptrtoint ptr %port_mask_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port_mask_bits.i.i.i, align 4
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.then10.i.i.i, %if.end4.i.i.i.if.end11.i.i.i_crit_edge
  %bits.0.i.i.i = phi i32 [ %23, %if.then10.i.i.i ], [ %conv5.i.i.i, %if.end4.i.i.i.if.end11.i.i.i_crit_edge ]
  %24 = ptrtoint ptr %arrayidx.i.i.i44 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.i.i44, align 1
  %conv12.i.i.i = zext i8 %25 to i32
  %notmask.i.i.i.i = shl nsw i32 -1, %bits.0.i.i.i
  %sub.i.i.i.i = xor i32 %notmask.i.i.i.i, -1
  %div18.i.i.i.i = lshr i32 %conv12.i.i.i, 5
  %sub1.i.i.i.i = and i32 %conv12.i.i.i, 31
  %sub2.i.i.i.i = sub nsw i32 2, %div18.i.i.i.i
  %shl5.i.i.i.i = shl i32 %sub.i.i.i.i, %sub1.i.i.i.i
  %neg.i.i.i.i = xor i32 %shl5.i.i.i.i, -1
  %arrayidx.i.i.i.i = getelementptr i32, ptr %ale_entry, i32 %sub2.i.i.i.i
  %26 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %and6.i.i.i.i = and i32 %27, %neg.i.i.i.i
  store i32 %and6.i.i.i.i, ptr %arrayidx.i.i.i.i, align 4
  br label %cpsw_ale_set_vlan_untag.exit

cpsw_ale_set_vlan_untag.exit:                     ; preds = %if.end11.i.i.i, %do.end.i.i.i, %cpsw_ale_vlan_get_fld.exit.thread.cpsw_ale_set_vlan_untag.exit_crit_edge
  %p0_untag_vid_mask1.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 8
  %28 = ptrtoint ptr %p0_untag_vid_mask1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %p0_untag_vid_mask1.i, align 4
  %conv2.i = zext i16 %vid to i32
  %rem.i.i7.i = and i32 %conv2.i, 31
  %shl.i.i8.i = shl nuw i32 1, %rem.i.i7.i
  %div2.i.i9.i = lshr i32 %conv2.i, 5
  %add.ptr.i.i10.i = getelementptr i32, ptr %29, i32 %div2.i.i9.i
  %neg.i.i.i = xor i32 %shl.i.i8.i, -1
  %30 = ptrtoint ptr %add.ptr.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i10.i, align 4
  %and.i.i.i45 = and i32 %31, %neg.i.i.i
  store i32 %and.i.i.i45, ptr %add.ptr.i.i10.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %ale_entry, i32 1
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  %and6.i.i = and i32 %33, -805306369
  store i32 %and6.i.i, ptr %arrayidx.i.i, align 4
  br label %cleanup

if.end.i.i55:                                     ; preds = %cpsw_ale_vlan_get_fld.exit
  br i1 %tobool2.not.i.i.i, label %do.end.i.i56, label %if.end4.i.i61

do.end.i.i56:                                     ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.15, i32 noundef 3) #10
  br label %if.end.i.i86

if.end4.i.i61:                                    ; preds = %if.end.i.i55
  %num_bits.i.i57 = getelementptr %struct.ale_entry_fld, ptr %15, i32 3, i32 1
  %36 = ptrtoint ptr %num_bits.i.i57 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %num_bits.i.i57, align 1
  %conv5.i.i58 = zext i8 %37 to i32
  %and8.i.i59 = and i32 %conv.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i59)
  %tobool9.not.i.i60 = icmp eq i32 %and8.i.i59, 0
  br i1 %tobool9.not.i.i60, label %if.end4.i.i61.if.end11.i.i74_crit_edge, label %if.then10.i.i63

if.end4.i.i61.if.end11.i.i74_crit_edge:           ; preds = %if.end4.i.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i74

if.then10.i.i63:                                  ; preds = %if.end4.i.i61
  call void @__sanitizer_cov_trace_pc() #9
  %port_mask_bits.i.i62 = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %38 = ptrtoint ptr %port_mask_bits.i.i62 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port_mask_bits.i.i62, align 4
  br label %if.end11.i.i74

if.end11.i.i74:                                   ; preds = %if.then10.i.i63, %if.end4.i.i61.if.end11.i.i74_crit_edge
  %bits.0.i.i64 = phi i32 [ %39, %if.then10.i.i63 ], [ %conv5.i.i58, %if.end4.i.i61.if.end11.i.i74_crit_edge ]
  %40 = ptrtoint ptr %arrayidx.i.i.i44 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.i.i44, align 1
  %conv12.i.i65 = zext i8 %41 to i32
  %div7.i.i.i66 = lshr i32 %conv12.i.i65, 5
  %sub.i.i.i67 = and i32 %conv12.i.i65, 31
  %sub1.i.i.i68 = sub nsw i32 2, %div7.i.i.i66
  %arrayidx.i.i.i69 = getelementptr i32, ptr %ale_entry, i32 %sub1.i.i.i68
  %42 = ptrtoint ptr %arrayidx.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i.i69, align 4
  %shr.i.i.i70 = lshr i32 %43, %sub.i.i.i67
  %notmask.i.i.i71 = shl nsw i32 -1, %bits.0.i.i64
  %sub2.i.i.i72 = xor i32 %notmask.i.i.i71, -1
  %and.i.i.i73 = and i32 %shr.i.i.i70, %sub2.i.i.i72
  br label %if.end.i.i86

if.end.i.i86:                                     ; preds = %if.end11.i.i74, %do.end.i.i56
  %retval.0.i.i75 = phi i32 [ %and.i.i.i73, %if.end11.i.i74 ], [ -2, %do.end.i.i56 ]
  %44 = ptrtoint ptr %vlan_entry_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vlan_entry_tbl.i, align 4
  %arrayidx.i.i81 = getelementptr %struct.ale_entry_fld, ptr %45, i32 2
  %flags.i.i82 = getelementptr %struct.ale_entry_fld, ptr %45, i32 2, i32 2
  %46 = ptrtoint ptr %flags.i.i82 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %flags.i.i82, align 1
  %conv.i.i83 = zext i8 %47 to i32
  %and.i.i84 = and i32 %conv.i.i83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i84)
  %tobool2.not.i.i85 = icmp eq i32 %and.i.i84, 0
  br i1 %tobool2.not.i.i85, label %do.end.i.i87, label %if.end4.i.i92

do.end.i.i87:                                     ; preds = %if.end.i.i86
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.15, i32 noundef 2) #10
  br label %if.end.i.i117

if.end4.i.i92:                                    ; preds = %if.end.i.i86
  %num_bits.i.i88 = getelementptr %struct.ale_entry_fld, ptr %45, i32 2, i32 1
  %50 = ptrtoint ptr %num_bits.i.i88 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %num_bits.i.i88, align 1
  %conv5.i.i89 = zext i8 %51 to i32
  %and8.i.i90 = and i32 %conv.i.i83, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i90)
  %tobool9.not.i.i91 = icmp eq i32 %and8.i.i90, 0
  br i1 %tobool9.not.i.i91, label %if.end4.i.i92.if.end11.i.i105_crit_edge, label %if.then10.i.i94

if.end4.i.i92.if.end11.i.i105_crit_edge:          ; preds = %if.end4.i.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i105

if.then10.i.i94:                                  ; preds = %if.end4.i.i92
  call void @__sanitizer_cov_trace_pc() #9
  %port_mask_bits.i.i93 = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %52 = ptrtoint ptr %port_mask_bits.i.i93 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port_mask_bits.i.i93, align 4
  br label %if.end11.i.i105

if.end11.i.i105:                                  ; preds = %if.then10.i.i94, %if.end4.i.i92.if.end11.i.i105_crit_edge
  %bits.0.i.i95 = phi i32 [ %53, %if.then10.i.i94 ], [ %conv5.i.i89, %if.end4.i.i92.if.end11.i.i105_crit_edge ]
  %54 = ptrtoint ptr %arrayidx.i.i81 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i.i81, align 1
  %conv12.i.i96 = zext i8 %55 to i32
  %div7.i.i.i97 = lshr i32 %conv12.i.i96, 5
  %sub.i.i.i98 = and i32 %conv12.i.i96, 31
  %sub1.i.i.i99 = sub nsw i32 2, %div7.i.i.i97
  %arrayidx.i.i.i100 = getelementptr i32, ptr %ale_entry, i32 %sub1.i.i.i99
  %56 = ptrtoint ptr %arrayidx.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.i.i100, align 4
  %shr.i.i.i101 = lshr i32 %57, %sub.i.i.i98
  %notmask.i.i.i102 = shl nsw i32 -1, %bits.0.i.i95
  %sub2.i.i.i103 = xor i32 %notmask.i.i.i102, -1
  %and.i.i.i104 = and i32 %shr.i.i.i101, %sub2.i.i.i103
  br label %if.end.i.i117

if.end.i.i117:                                    ; preds = %if.end11.i.i105, %do.end.i.i87
  %retval.0.i.i106.ph = phi i32 [ -2, %do.end.i.i87 ], [ %and.i.i.i104, %if.end11.i.i105 ]
  %58 = ptrtoint ptr %vlan_entry_tbl.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vlan_entry_tbl.i, align 4
  %arrayidx.i.i112 = getelementptr %struct.ale_entry_fld, ptr %59, i32 1
  %flags.i.i113 = getelementptr %struct.ale_entry_fld, ptr %59, i32 1, i32 2
  %60 = ptrtoint ptr %flags.i.i113 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %flags.i.i113, align 1
  %conv.i.i114 = zext i8 %61 to i32
  %and.i.i115 = and i32 %conv.i.i114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i115)
  %tobool2.not.i.i116 = icmp eq i32 %and.i.i115, 0
  br i1 %tobool2.not.i.i116, label %do.end.i.i118, label %if.end4.i.i123

do.end.i.i118:                                    ; preds = %if.end.i.i117
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.15, i32 noundef 1) #10
  br label %if.end.i.i.i148

if.end4.i.i123:                                   ; preds = %if.end.i.i117
  %num_bits.i.i119 = getelementptr %struct.ale_entry_fld, ptr %59, i32 1, i32 1
  %64 = ptrtoint ptr %num_bits.i.i119 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %num_bits.i.i119, align 1
  %conv5.i.i120 = zext i8 %65 to i32
  %and8.i.i121 = and i32 %conv.i.i114, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i121)
  %tobool9.not.i.i122 = icmp eq i32 %and8.i.i121, 0
  br i1 %tobool9.not.i.i122, label %if.end4.i.i123.if.end11.i.i136_crit_edge, label %if.then10.i.i125

if.end4.i.i123.if.end11.i.i136_crit_edge:         ; preds = %if.end4.i.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i136

if.then10.i.i125:                                 ; preds = %if.end4.i.i123
  call void @__sanitizer_cov_trace_pc() #9
  %port_mask_bits.i.i124 = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %66 = ptrtoint ptr %port_mask_bits.i.i124 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port_mask_bits.i.i124, align 4
  br label %if.end11.i.i136

if.end11.i.i136:                                  ; preds = %if.then10.i.i125, %if.end4.i.i123.if.end11.i.i136_crit_edge
  %bits.0.i.i126 = phi i32 [ %67, %if.then10.i.i125 ], [ %conv5.i.i120, %if.end4.i.i123.if.end11.i.i136_crit_edge ]
  %68 = ptrtoint ptr %arrayidx.i.i112 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i.i112, align 1
  %conv12.i.i127 = zext i8 %69 to i32
  %div7.i.i.i128 = lshr i32 %conv12.i.i127, 5
  %sub.i.i.i129 = and i32 %conv12.i.i127, 31
  %sub1.i.i.i130 = sub nsw i32 2, %div7.i.i.i128
  %arrayidx.i.i.i131 = getelementptr i32, ptr %ale_entry, i32 %sub1.i.i.i130
  %70 = ptrtoint ptr %arrayidx.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i.i.i131, align 4
  %shr.i.i.i132 = lshr i32 %71, %sub.i.i.i129
  %notmask.i.i.i133 = shl nsw i32 -1, %bits.0.i.i126
  %sub2.i.i.i134 = xor i32 %notmask.i.i.i133, -1
  %and.i.i.i135 = and i32 %shr.i.i.i132, %sub2.i.i.i134
  br label %if.end.i.i.i148

if.end.i.i.i148:                                  ; preds = %if.end11.i.i136, %do.end.i.i118
  %retval.0.i.i137.ph = phi i32 [ -2, %do.end.i.i118 ], [ %and.i.i.i135, %if.end11.i.i136 ]
  %and4298 = and i32 %retval.0.i.i75, %and
  %and5299 = and i32 %retval.0.i.i106.ph, %and
  %and6300 = and i32 %retval.0.i.i137.ph, %and
  %72 = ptrtoint ptr %vlan_entry_tbl.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %vlan_entry_tbl.i, align 4
  %arrayidx.i.i.i143 = getelementptr %struct.ale_entry_fld, ptr %73, i32 3
  %flags.i.i.i144 = getelementptr %struct.ale_entry_fld, ptr %73, i32 3, i32 2
  %74 = ptrtoint ptr %flags.i.i.i144 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %flags.i.i.i144, align 1
  %conv.i.i.i145 = zext i8 %75 to i32
  %and.i.i11.i146 = and i32 %conv.i.i.i145, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i11.i146)
  %tobool2.not.i.i.i147 = icmp eq i32 %and.i.i11.i146, 0
  br i1 %tobool2.not.i.i.i147, label %do.end.i.i.i149, label %if.end4.i.i.i154

do.end.i.i.i149:                                  ; preds = %if.end.i.i.i148
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.13, i32 noundef 3) #10
  br label %cpsw_ale_vlan_set_fld.exit.i

if.end4.i.i.i154:                                 ; preds = %if.end.i.i.i148
  %num_bits.i.i.i150 = getelementptr %struct.ale_entry_fld, ptr %73, i32 3, i32 1
  %78 = ptrtoint ptr %num_bits.i.i.i150 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %num_bits.i.i.i150, align 1
  %conv5.i.i.i151 = zext i8 %79 to i32
  %and8.i.i.i152 = and i32 %conv.i.i.i145, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i152)
  %tobool9.not.i.i.i153 = icmp eq i32 %and8.i.i.i152, 0
  br i1 %tobool9.not.i.i.i153, label %if.end4.i.i.i154.if.end11.i.i.i168_crit_edge, label %if.then10.i.i.i156

if.end4.i.i.i154.if.end11.i.i.i168_crit_edge:     ; preds = %if.end4.i.i.i154
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i.i168

if.then10.i.i.i156:                               ; preds = %if.end4.i.i.i154
  call void @__sanitizer_cov_trace_pc() #9
  %port_mask_bits.i.i.i155 = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %80 = ptrtoint ptr %port_mask_bits.i.i.i155 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port_mask_bits.i.i.i155, align 4
  br label %if.end11.i.i.i168

if.end11.i.i.i168:                                ; preds = %if.then10.i.i.i156, %if.end4.i.i.i154.if.end11.i.i.i168_crit_edge
  %bits.0.i.i.i157 = phi i32 [ %81, %if.then10.i.i.i156 ], [ %conv5.i.i.i151, %if.end4.i.i.i154.if.end11.i.i.i168_crit_edge ]
  %82 = ptrtoint ptr %arrayidx.i.i.i143 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.i.i.i143, align 1
  %conv12.i.i.i158 = zext i8 %83 to i32
  %notmask.i.i.i.i159 = shl nsw i32 -1, %bits.0.i.i.i157
  %sub.i.i.i.i160 = xor i32 %notmask.i.i.i.i159, -1
  %and.i.i.i.i = and i32 %and4298, %sub.i.i.i.i160
  %div18.i.i.i.i161 = lshr i32 %conv12.i.i.i158, 5
  %sub1.i.i.i.i162 = and i32 %conv12.i.i.i158, 31
  %sub2.i.i.i.i163 = sub nsw i32 2, %div18.i.i.i.i161
  %shl5.i.i.i.i164 = shl i32 %sub.i.i.i.i160, %sub1.i.i.i.i162
  %neg.i.i.i.i165 = xor i32 %shl5.i.i.i.i164, -1
  %arrayidx.i.i.i.i166 = getelementptr i32, ptr %ale_entry, i32 %sub2.i.i.i.i163
  %84 = ptrtoint ptr %arrayidx.i.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i.i.i.i166, align 4
  %and6.i.i.i.i167 = and i32 %85, %neg.i.i.i.i165
  %shl7.i.i.i.i = shl i32 %and.i.i.i.i, %sub1.i.i.i.i162
  %or.i.i.i.i = or i32 %and6.i.i.i.i167, %shl7.i.i.i.i
  store i32 %or.i.i.i.i, ptr %arrayidx.i.i.i.i166, align 4
  br label %cpsw_ale_vlan_set_fld.exit.i

cpsw_ale_vlan_set_fld.exit.i:                     ; preds = %if.end11.i.i.i168, %do.end.i.i.i149, %cpsw_ale_vlan_get_fld.exit.thread.cpsw_ale_vlan_set_fld.exit.i_crit_edge
  %and6308 = phi i32 [ %and6300, %if.end11.i.i.i168 ], [ %and6300, %do.end.i.i.i149 ], [ %and276, %cpsw_ale_vlan_get_fld.exit.thread.cpsw_ale_vlan_set_fld.exit.i_crit_edge ]
  %and5306 = phi i32 [ %and5299, %if.end11.i.i.i168 ], [ %and5299, %do.end.i.i.i149 ], [ %and276, %cpsw_ale_vlan_get_fld.exit.thread.cpsw_ale_vlan_set_fld.exit.i_crit_edge ]
  %and4304 = phi i32 [ %and4298, %if.end11.i.i.i168 ], [ %and4298, %do.end.i.i.i149 ], [ %and276, %cpsw_ale_vlan_get_fld.exit.thread.cpsw_ale_vlan_set_fld.exit.i_crit_edge ]
  %and278280283291302 = phi i32 [ %and, %if.end11.i.i.i168 ], [ %and, %do.end.i.i.i149 ], [ %and276, %cpsw_ale_vlan_get_fld.exit.thread.cpsw_ale_vlan_set_fld.exit.i_crit_edge ]
  %and.i = and i32 %and4304, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %p0_untag_vid_mask1.i169 = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 8
  %86 = ptrtoint ptr %p0_untag_vid_mask1.i169 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %p0_untag_vid_mask1.i169, align 4
  %conv2.i170 = zext i16 %vid to i32
  %rem.i.i7.i171 = and i32 %conv2.i170, 31
  %shl.i.i8.i172 = shl nuw i32 1, %rem.i.i7.i171
  %div2.i.i9.i173 = lshr i32 %conv2.i170, 5
  %add.ptr.i.i10.i174 = getelementptr i32, ptr %87, i32 %div2.i.i9.i173
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %cpsw_ale_vlan_set_fld.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %add.ptr.i.i10.i174 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %add.ptr.i.i10.i174, align 4
  %or.i.i.i = or i32 %89, %shl.i.i8.i172
  br label %cpsw_ale_set_vlan_untag.exit177

if.else.i:                                        ; preds = %cpsw_ale_vlan_set_fld.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i.i175 = xor i32 %shl.i.i8.i172, -1
  %90 = ptrtoint ptr %add.ptr.i.i10.i174 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr.i.i10.i174, align 4
  %and.i.i.i176 = and i32 %91, %neg.i.i.i175
  br label %cpsw_ale_set_vlan_untag.exit177

cpsw_ale_set_vlan_untag.exit177:                  ; preds = %if.else.i, %if.then.i
  %and.i.i.sink.i = phi i32 [ %and.i.i.i176, %if.else.i ], [ %or.i.i.i, %if.then.i ]
  %92 = ptrtoint ptr %add.ptr.i.i10.i174 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %and.i.i.sink.i, ptr %add.ptr.i.i10.i174, align 4
  %nu_switch_ale = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 5
  %93 = ptrtoint ptr %nu_switch_ale to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %nu_switch_ale, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool7.not = icmp eq i8 %94, 0
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %cpsw_ale_set_vlan_untag.exit177
  %95 = ptrtoint ptr %vlan_entry_tbl.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %vlan_entry_tbl.i, align 4
  br i1 %or.cond.i.i, label %if.then8.cleanup_crit_edge, label %if.end.i.i187

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i187:                                    ; preds = %if.then8
  %arrayidx.i.i182 = getelementptr %struct.ale_entry_fld, ptr %96, i32 2
  %flags.i.i183 = getelementptr %struct.ale_entry_fld, ptr %96, i32 2, i32 2
  %97 = ptrtoint ptr %flags.i.i183 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %flags.i.i183, align 1
  %conv.i.i184 = zext i8 %98 to i32
  %and.i.i185 = and i32 %conv.i.i184, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i185)
  %tobool2.not.i.i186 = icmp eq i32 %and.i.i185, 0
  br i1 %tobool2.not.i.i186, label %do.end.i.i188, label %if.end4.i.i193

do.end.i.i188:                                    ; preds = %if.end.i.i187
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.13, i32 noundef 2) #10
  br label %if.end.i.i216

if.end4.i.i193:                                   ; preds = %if.end.i.i187
  %num_bits.i.i189 = getelementptr %struct.ale_entry_fld, ptr %96, i32 2, i32 1
  %101 = ptrtoint ptr %num_bits.i.i189 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %num_bits.i.i189, align 1
  %conv5.i.i190 = zext i8 %102 to i32
  %and8.i.i191 = and i32 %conv.i.i184, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i191)
  %tobool9.not.i.i192 = icmp eq i32 %and8.i.i191, 0
  br i1 %tobool9.not.i.i192, label %if.end4.i.i193.if.end11.i.i206_crit_edge, label %if.then10.i.i195

if.end4.i.i193.if.end11.i.i206_crit_edge:         ; preds = %if.end4.i.i193
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i206

if.then10.i.i195:                                 ; preds = %if.end4.i.i193
  call void @__sanitizer_cov_trace_pc() #9
  %port_mask_bits.i.i194 = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %103 = ptrtoint ptr %port_mask_bits.i.i194 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %port_mask_bits.i.i194, align 4
  br label %if.end11.i.i206

if.end11.i.i206:                                  ; preds = %if.then10.i.i195, %if.end4.i.i193.if.end11.i.i206_crit_edge
  %bits.0.i.i196 = phi i32 [ %104, %if.then10.i.i195 ], [ %conv5.i.i190, %if.end4.i.i193.if.end11.i.i206_crit_edge ]
  %105 = ptrtoint ptr %arrayidx.i.i182 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i.i182, align 1
  %conv12.i.i197 = zext i8 %106 to i32
  %notmask.i.i.i198 = shl nsw i32 -1, %bits.0.i.i196
  %sub.i.i.i199 = xor i32 %notmask.i.i.i198, -1
  %and.i.i.i200 = and i32 %and5306, %sub.i.i.i199
  %div18.i.i.i = lshr i32 %conv12.i.i197, 5
  %sub1.i.i.i201 = and i32 %conv12.i.i197, 31
  %sub2.i.i.i202 = sub nsw i32 2, %div18.i.i.i
  %shl5.i.i.i = shl i32 %sub.i.i.i199, %sub1.i.i.i201
  %neg.i.i.i203 = xor i32 %shl5.i.i.i, -1
  %arrayidx.i.i.i204 = getelementptr i32, ptr %ale_entry, i32 %sub2.i.i.i202
  %107 = ptrtoint ptr %arrayidx.i.i.i204 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx.i.i.i204, align 4
  %and6.i.i.i = and i32 %108, %neg.i.i.i203
  %shl7.i.i.i = shl i32 %and.i.i.i200, %sub1.i.i.i201
  %or.i.i.i205 = or i32 %and6.i.i.i, %shl7.i.i.i
  store i32 %or.i.i.i205, ptr %arrayidx.i.i.i204, align 4
  br label %if.end.i.i216

if.end.i.i216:                                    ; preds = %if.end11.i.i206, %do.end.i.i188
  %109 = ptrtoint ptr %vlan_entry_tbl.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %vlan_entry_tbl.i, align 4
  %arrayidx.i.i211 = getelementptr %struct.ale_entry_fld, ptr %110, i32 1
  %flags.i.i212 = getelementptr %struct.ale_entry_fld, ptr %110, i32 1, i32 2
  %111 = ptrtoint ptr %flags.i.i212 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %flags.i.i212, align 1
  %conv.i.i213 = zext i8 %112 to i32
  %and.i.i214 = and i32 %conv.i.i213, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i214)
  %tobool2.not.i.i215 = icmp eq i32 %and.i.i214, 0
  br i1 %tobool2.not.i.i215, label %do.end.i.i217, label %if.end4.i.i222

do.end.i.i217:                                    ; preds = %if.end.i.i216
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.13, i32 noundef 1) #10
  br label %if.end.i.i249

if.end4.i.i222:                                   ; preds = %if.end.i.i216
  %num_bits.i.i218 = getelementptr %struct.ale_entry_fld, ptr %110, i32 1, i32 1
  %115 = ptrtoint ptr %num_bits.i.i218 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %num_bits.i.i218, align 1
  %conv5.i.i219 = zext i8 %116 to i32
  %and8.i.i220 = and i32 %conv.i.i213, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i220)
  %tobool9.not.i.i221 = icmp eq i32 %and8.i.i220, 0
  br i1 %tobool9.not.i.i221, label %if.end4.i.i222.if.end11.i.i239_crit_edge, label %if.then10.i.i224

if.end4.i.i222.if.end11.i.i239_crit_edge:         ; preds = %if.end4.i.i222
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i239

if.then10.i.i224:                                 ; preds = %if.end4.i.i222
  call void @__sanitizer_cov_trace_pc() #9
  %port_mask_bits.i.i223 = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %117 = ptrtoint ptr %port_mask_bits.i.i223 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %port_mask_bits.i.i223, align 4
  br label %if.end11.i.i239

if.end11.i.i239:                                  ; preds = %if.then10.i.i224, %if.end4.i.i222.if.end11.i.i239_crit_edge
  %bits.0.i.i225 = phi i32 [ %118, %if.then10.i.i224 ], [ %conv5.i.i219, %if.end4.i.i222.if.end11.i.i239_crit_edge ]
  %119 = ptrtoint ptr %arrayidx.i.i211 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.i.i211, align 1
  %conv12.i.i226 = zext i8 %120 to i32
  %notmask.i.i.i227 = shl nsw i32 -1, %bits.0.i.i225
  %sub.i.i.i228 = xor i32 %notmask.i.i.i227, -1
  %and.i.i.i229 = and i32 %and6308, %sub.i.i.i228
  %div18.i.i.i230 = lshr i32 %conv12.i.i226, 5
  %sub1.i.i.i231 = and i32 %conv12.i.i226, 31
  %sub2.i.i.i232 = sub nsw i32 2, %div18.i.i.i230
  %shl5.i.i.i233 = shl i32 %sub.i.i.i228, %sub1.i.i.i231
  %neg.i.i.i234 = xor i32 %shl5.i.i.i233, -1
  %arrayidx.i.i.i235 = getelementptr i32, ptr %ale_entry, i32 %sub2.i.i.i232
  %121 = ptrtoint ptr %arrayidx.i.i.i235 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx.i.i.i235, align 4
  %and6.i.i.i236 = and i32 %122, %neg.i.i.i234
  %shl7.i.i.i237 = shl i32 %and.i.i.i229, %sub1.i.i.i231
  %or.i.i.i238 = or i32 %and6.i.i.i236, %shl7.i.i.i237
  store i32 %or.i.i.i238, ptr %arrayidx.i.i.i235, align 4
  br label %if.end.i.i249

if.end9:                                          ; preds = %cpsw_ale_set_vlan_untag.exit177
  tail call fastcc void @cpsw_ale_set_vlan_mcast(ptr noundef %ale, ptr noundef %ale_entry, i32 noundef %and5306, i32 noundef %and6308)
  br i1 %or.cond.i.i, label %if.end9.cleanup_crit_edge, label %if.end9.if.end.i.i249_crit_edge

if.end9.if.end.i.i249_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i249

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i249:                                    ; preds = %if.end9.if.end.i.i249_crit_edge, %if.end11.i.i239, %do.end.i.i217
  %123 = ptrtoint ptr %vlan_entry_tbl.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %vlan_entry_tbl.i, align 4
  %flags.i.i245 = getelementptr %struct.ale_entry_fld, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %flags.i.i245 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %flags.i.i245, align 1
  %conv.i.i246 = zext i8 %126 to i32
  %and.i.i247 = and i32 %conv.i.i246, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i247)
  %tobool2.not.i.i248 = icmp eq i32 %and.i.i247, 0
  br i1 %tobool2.not.i.i248, label %do.end.i.i250, label %if.end4.i.i255

do.end.i.i250:                                    ; preds = %if.end.i.i249
  call void @__sanitizer_cov_trace_pc() #9
  %127 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.13, i32 noundef 0) #10
  br label %cleanup

if.end4.i.i255:                                   ; preds = %if.end.i.i249
  %num_bits.i.i251 = getelementptr %struct.ale_entry_fld, ptr %124, i32 0, i32 1
  %129 = ptrtoint ptr %num_bits.i.i251 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %num_bits.i.i251, align 1
  %conv5.i.i252 = zext i8 %130 to i32
  %and8.i.i253 = and i32 %conv.i.i246, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i253)
  %tobool9.not.i.i254 = icmp eq i32 %and8.i.i253, 0
  br i1 %tobool9.not.i.i254, label %if.end4.i.i255.if.end11.i.i272_crit_edge, label %if.then10.i.i257

if.end4.i.i255.if.end11.i.i272_crit_edge:         ; preds = %if.end4.i.i255
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i272

if.then10.i.i257:                                 ; preds = %if.end4.i.i255
  call void @__sanitizer_cov_trace_pc() #9
  %port_mask_bits.i.i256 = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %131 = ptrtoint ptr %port_mask_bits.i.i256 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %port_mask_bits.i.i256, align 4
  br label %if.end11.i.i272

if.end11.i.i272:                                  ; preds = %if.then10.i.i257, %if.end4.i.i255.if.end11.i.i272_crit_edge
  %bits.0.i.i258 = phi i32 [ %132, %if.then10.i.i257 ], [ %conv5.i.i252, %if.end4.i.i255.if.end11.i.i272_crit_edge ]
  %133 = ptrtoint ptr %124 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %124, align 1
  %conv12.i.i259 = zext i8 %134 to i32
  %notmask.i.i.i260 = shl nsw i32 -1, %bits.0.i.i258
  %sub.i.i.i261 = xor i32 %notmask.i.i.i260, -1
  %and.i.i.i262 = and i32 %and278280283291302, %sub.i.i.i261
  %div18.i.i.i263 = lshr i32 %conv12.i.i259, 5
  %sub1.i.i.i264 = and i32 %conv12.i.i259, 31
  %sub2.i.i.i265 = sub nsw i32 2, %div18.i.i.i263
  %shl5.i.i.i266 = shl i32 %sub.i.i.i261, %sub1.i.i.i264
  %neg.i.i.i267 = xor i32 %shl5.i.i.i266, -1
  %arrayidx.i.i.i268 = getelementptr i32, ptr %ale_entry, i32 %sub2.i.i.i265
  %135 = ptrtoint ptr %arrayidx.i.i.i268 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx.i.i.i268, align 4
  %and6.i.i.i269 = and i32 %136, %neg.i.i.i267
  %shl7.i.i.i270 = shl i32 %and.i.i.i262, %sub1.i.i.i264
  %or.i.i.i271 = or i32 %and6.i.i.i269, %shl7.i.i.i270
  store i32 %or.i.i.i271, ptr %arrayidx.i.i.i268, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11.i.i272, %do.end.i.i250, %if.end9.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %cpsw_ale_set_vlan_untag.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_ale_del_vlan(ptr noundef %ale, i16 noundef zeroext %vid, i32 noundef %port_mask) local_unnamed_addr #0 align 64 {
entry:
  %ale_entry = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ale_entry) #7
  %ale_entries.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 3
  %0 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp20.not.i = icmp eq i32 %1, 0
  br i1 %cmp20.not.i, label %entry.cleanup_crit_edge, label %cpsw_ale_read.exit.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cpsw_ale_read.exit.lr.ph.i:                       ; preds = %entry
  %ale_regs.i.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  %conv.i = zext i16 %vid to i32
  br label %cpsw_ale_read.exit.i

cpsw_ale_read.exit.i:                             ; preds = %for.inc.i.cpsw_ale_read.exit.i_crit_edge, %cpsw_ale_read.exit.lr.ph.i
  %idx.021.i = phi i32 [ 0, %cpsw_ale_read.exit.lr.ph.i ], [ %inc.i, %for.inc.i.cpsw_ale_read.exit.i_crit_edge ]
  %2 = tail call i32 @llvm.bswap.i32(i32 %idx.021.i) #7
  %3 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #7, !srcloc !128
  %5 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr23.i.i = getelementptr i8, ptr %6, i32 52
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i) #7, !srcloc !129
  %8 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.1.i.i = getelementptr i8, ptr %9, i32 56
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i.i) #7, !srcloc !129
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  %12 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.2.i.i = getelementptr i8, ptr %13, i32 60
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i.i) #7, !srcloc !129
  %15 = and i32 %11, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %15)
  %cmp3.not.i = icmp eq i32 %15, 536870912
  %shr.i.i17.i = lshr i32 %11, 16
  %and.i.i18.i = and i32 %shr.i.i17.i, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i18.i, i32 %conv.i)
  %cmp6.i = icmp eq i32 %and.i.i18.i, %conv.i
  %or.cond.i = select i1 %cmp3.not.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %cpsw_ale_match_vlan.exit, label %for.inc.i

for.inc.i:                                        ; preds = %cpsw_ale_read.exit.i
  %inc.i = add nuw i32 %idx.021.i, 1
  %16 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ale_entries.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %for.inc.i.cpsw_ale_read.exit.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i.cpsw_ale_read.exit.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit.i

cpsw_ale_match_vlan.exit:                         ; preds = %cpsw_ale_read.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.021.i)
  %cmp = icmp slt i32 %idx.021.i, 0
  br i1 %cmp, label %cpsw_ale_match_vlan.exit.cleanup_crit_edge, label %if.end

cpsw_ale_match_vlan.exit.cleanup_crit_edge:       ; preds = %cpsw_ale_match_vlan.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %cpsw_ale_match_vlan.exit
  %18 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %idx.021.i)
  %cmp.i29 = icmp ult i32 %19, %idx.021.i
  br i1 %cmp.i29, label %do.end.i, label %if.end.cpsw_ale_read.exit_crit_edge, !prof !130

if.end.cpsw_ale_read.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #7
  br label %cpsw_ale_read.exit

cpsw_ale_read.exit:                               ; preds = %do.end.i, %if.end.cpsw_ale_read.exit_crit_edge
  %20 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !128
  %22 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %23, i32 52
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #7, !srcloc !129
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  %26 = ptrtoint ptr %ale_entry to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %ale_entry, align 4
  %27 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.1.i = getelementptr i8, ptr %28, i32 56
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i) #7, !srcloc !129
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  %arrayidx.1.i = getelementptr inbounds i32, ptr %ale_entry, i32 1
  %31 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx.1.i, align 4
  %32 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.2.i = getelementptr i8, ptr %33, i32 60
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i) #7, !srcloc !129
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  %arrayidx.2.i = getelementptr inbounds i32, ptr %ale_entry, i32 2
  %36 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx.2.i, align 4
  %vlan_entry_tbl.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 9
  %37 = ptrtoint ptr %vlan_entry_tbl.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vlan_entry_tbl.i, align 4
  %tobool.not.i.i = icmp eq ptr %ale, null
  br i1 %tobool.not.i.i, label %cpsw_ale_read.exit.cpsw_ale_vlan_get_fld.exit_crit_edge, label %if.end.i.i

cpsw_ale_read.exit.cpsw_ale_vlan_get_fld.exit_crit_edge: ; preds = %cpsw_ale_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_vlan_get_fld.exit

if.end.i.i:                                       ; preds = %cpsw_ale_read.exit
  %flags.i.i = getelementptr %struct.ale_entry_fld, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %flags.i.i, align 1
  %conv.i.i = zext i8 %40 to i32
  %and.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %do.end.i.i, label %if.end4.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.15, i32 noundef 0) #10
  br label %cpsw_ale_vlan_get_fld.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %num_bits.i.i = getelementptr %struct.ale_entry_fld, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %num_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %num_bits.i.i, align 1
  %conv5.i.i = zext i8 %44 to i32
  %and8.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end4.i.i.if.end11.i.i_crit_edge, label %if.then10.i.i

if.end4.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

if.then10.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %port_mask_bits.i.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %45 = ptrtoint ptr %port_mask_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port_mask_bits.i.i, align 4
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then10.i.i, %if.end4.i.i.if.end11.i.i_crit_edge
  %bits.0.i.i = phi i32 [ %46, %if.then10.i.i ], [ %conv5.i.i, %if.end4.i.i.if.end11.i.i_crit_edge ]
  %47 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %38, align 1
  %conv12.i.i = zext i8 %48 to i32
  %div7.i.i.i = lshr i32 %conv12.i.i, 5
  %sub.i.i.i = and i32 %conv12.i.i, 31
  %sub1.i.i.i = sub nsw i32 2, %div7.i.i.i
  %arrayidx.i.i.i = getelementptr i32, ptr %ale_entry, i32 %sub1.i.i.i
  %49 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i.i = lshr i32 %50, %sub.i.i.i
  %notmask.i.i.i = shl nsw i32 -1, %bits.0.i.i
  %sub2.i.i.i = xor i32 %notmask.i.i.i, -1
  %and.i.i.i = and i32 %shr.i.i.i, %sub2.i.i.i
  br label %cpsw_ale_vlan_get_fld.exit

cpsw_ale_vlan_get_fld.exit:                       ; preds = %if.end11.i.i, %do.end.i.i, %cpsw_ale_read.exit.cpsw_ale_vlan_get_fld.exit_crit_edge
  %retval.0.i.i = phi i32 [ %and.i.i.i, %if.end11.i.i ], [ -2, %do.end.i.i ], [ -22, %cpsw_ale_read.exit.cpsw_ale_vlan_get_fld.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port_mask)
  %tobool.not = icmp eq i32 %port_mask, 0
  br i1 %tobool.not, label %cpsw_ale_vlan_get_fld.exit.if.then5_crit_edge, label %lor.lhs.false

cpsw_ale_vlan_get_fld.exit.if.then5_crit_edge:    ; preds = %cpsw_ale_vlan_get_fld.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

lor.lhs.false:                                    ; preds = %cpsw_ale_vlan_get_fld.exit
  %neg = xor i32 %port_mask, -1
  %and = and i32 %retval.0.i.i, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %lor.lhs.false.if.then5_crit_edge, label %if.else

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %cpsw_ale_vlan_get_fld.exit.if.then5_crit_edge
  %51 = ptrtoint ptr %vlan_entry_tbl.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vlan_entry_tbl.i, align 4
  br i1 %tobool.not.i.i, label %if.then5.cpsw_ale_set_vlan_untag.exit_crit_edge, label %if.end.i.i.i

if.then5.cpsw_ale_set_vlan_untag.exit_crit_edge:  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_set_vlan_untag.exit

if.end.i.i.i:                                     ; preds = %if.then5
  %arrayidx.i.i.i30 = getelementptr %struct.ale_entry_fld, ptr %52, i32 3
  %flags.i.i.i = getelementptr %struct.ale_entry_fld, ptr %52, i32 3, i32 2
  %53 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %flags.i.i.i, align 1
  %conv.i.i.i = zext i8 %54 to i32
  %and.i.i11.i = and i32 %conv.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i11.i)
  %tobool2.not.i.i.i = icmp eq i32 %and.i.i11.i, 0
  br i1 %tobool2.not.i.i.i, label %do.end.i.i.i, label %if.end4.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.13, i32 noundef 3) #10
  br label %cpsw_ale_set_vlan_untag.exit

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  %num_bits.i.i.i = getelementptr %struct.ale_entry_fld, ptr %52, i32 3, i32 1
  %57 = ptrtoint ptr %num_bits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %num_bits.i.i.i, align 1
  %conv5.i.i.i = zext i8 %58 to i32
  %and8.i.i.i = and i32 %conv.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %and8.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %if.end4.i.i.i.if.end11.i.i.i_crit_edge, label %if.then10.i.i.i

if.end4.i.i.i.if.end11.i.i.i_crit_edge:           ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i.i

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %port_mask_bits.i.i.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %59 = ptrtoint ptr %port_mask_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port_mask_bits.i.i.i, align 4
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.then10.i.i.i, %if.end4.i.i.i.if.end11.i.i.i_crit_edge
  %bits.0.i.i.i = phi i32 [ %60, %if.then10.i.i.i ], [ %conv5.i.i.i, %if.end4.i.i.i.if.end11.i.i.i_crit_edge ]
  %61 = ptrtoint ptr %arrayidx.i.i.i30 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i.i.i30, align 1
  %conv12.i.i.i = zext i8 %62 to i32
  %notmask.i.i.i.i = shl nsw i32 -1, %bits.0.i.i.i
  %sub.i.i.i.i = xor i32 %notmask.i.i.i.i, -1
  %div18.i.i.i.i = lshr i32 %conv12.i.i.i, 5
  %sub1.i.i.i.i = and i32 %conv12.i.i.i, 31
  %sub2.i.i.i.i = sub nsw i32 2, %div18.i.i.i.i
  %shl5.i.i.i.i = shl i32 %sub.i.i.i.i, %sub1.i.i.i.i
  %neg.i.i.i.i = xor i32 %shl5.i.i.i.i, -1
  %arrayidx.i.i.i.i = getelementptr i32, ptr %ale_entry, i32 %sub2.i.i.i.i
  %63 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %and6.i.i.i.i = and i32 %64, %neg.i.i.i.i
  store i32 %and6.i.i.i.i, ptr %arrayidx.i.i.i.i, align 4
  br label %cpsw_ale_set_vlan_untag.exit

cpsw_ale_set_vlan_untag.exit:                     ; preds = %if.end11.i.i.i, %do.end.i.i.i, %if.then5.cpsw_ale_set_vlan_untag.exit_crit_edge
  %p0_untag_vid_mask1.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 8
  %65 = ptrtoint ptr %p0_untag_vid_mask1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %p0_untag_vid_mask1.i, align 4
  %rem.i.i7.i = and i32 %conv.i, 31
  %shl.i.i8.i = shl nuw i32 1, %rem.i.i7.i
  %div2.i.i9.i = lshr i32 %conv.i, 5
  %add.ptr.i.i10.i = getelementptr i32, ptr %66, i32 %div2.i.i9.i
  %neg.i.i.i = xor i32 %shl.i.i8.i, -1
  %67 = ptrtoint ptr %add.ptr.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i.i10.i, align 4
  %and.i.i.i31 = and i32 %68, %neg.i.i.i
  store i32 %and.i.i.i31, ptr %add.ptr.i.i10.i, align 4
  %69 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.1.i, align 4
  %and6.i.i = and i32 %70, -805306369
  store i32 %and6.i.i, ptr %arrayidx.1.i, align 4
  br label %if.end10

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %and8 = and i32 %port_mask, -2
  call fastcc void @cpsw_ale_vlan_del_modify_int(ptr noundef %ale, ptr noundef nonnull %ale_entry, i16 noundef zeroext %vid, i32 noundef %and8)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %cpsw_ale_set_vlan_untag.exit
  %71 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %idx.021.i)
  %cmp.i33 = icmp ult i32 %72, %idx.021.i
  br i1 %cmp.i33, label %do.end.i34, label %if.end10.cpsw_ale_write.exit_crit_edge, !prof !130

if.end10.cpsw_ale_write.exit_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_write.exit

do.end.i34:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 317, i32 noundef 9, ptr noundef null) #7
  br label %cpsw_ale_write.exit

cpsw_ale_write.exit:                              ; preds = %do.end.i34, %if.end10.cpsw_ale_write.exit_crit_edge
  %73 = ptrtoint ptr %ale_entry to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ale_entry, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %74) #7
  %76 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %77, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %75) #7, !srcloc !128
  %78 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.1.i, align 4
  %80 = call i32 @llvm.bswap.i32(i32 %79) #7
  %81 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr21.1.i = getelementptr i8, ptr %82, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.1.i, i32 %80) #7, !srcloc !128
  %83 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.2.i, align 4
  %85 = call i32 @llvm.bswap.i32(i32 %84) #7
  %86 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr21.2.i = getelementptr i8, ptr %87, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.2.i, i32 %85) #7, !srcloc !128
  %or.i = or i32 %idx.021.i, -2147483648
  %88 = call i32 @llvm.bswap.i32(i32 %or.i) #7
  %89 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %90, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %88) #7, !srcloc !128
  br label %cleanup

cleanup:                                          ; preds = %cpsw_ale_write.exit, %cpsw_ale_match_vlan.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cpsw_ale_write.exit ], [ -2, %cpsw_ale_match_vlan.exit.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ -2, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ale_entry) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_ale_vlan_add_modify(ptr noundef %ale, i16 noundef zeroext %vid, i32 noundef %port_mask, i32 noundef %untag_mask, i32 noundef %reg_mask, i32 noundef %unreg_mask) local_unnamed_addr #0 align 64 {
entry:
  %ale_entry = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ale_entry) #7
  %0 = call ptr @memset(ptr %ale_entry, i32 0, i32 12)
  %ale_entries.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 3
  %1 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp20.not.i = icmp eq i32 %2, 0
  br i1 %cmp20.not.i, label %entry.if.end_crit_edge, label %cpsw_ale_read.exit.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cpsw_ale_read.exit.lr.ph.i:                       ; preds = %entry
  %ale_regs.i.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  %conv.i = zext i16 %vid to i32
  br label %cpsw_ale_read.exit.i

cpsw_ale_read.exit.i:                             ; preds = %for.inc.i.cpsw_ale_read.exit.i_crit_edge, %cpsw_ale_read.exit.lr.ph.i
  %idx.021.i = phi i32 [ 0, %cpsw_ale_read.exit.lr.ph.i ], [ %inc.i, %for.inc.i.cpsw_ale_read.exit.i_crit_edge ]
  %3 = tail call i32 @llvm.bswap.i32(i32 %idx.021.i) #7
  %4 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %3) #7, !srcloc !128
  %6 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr23.i.i = getelementptr i8, ptr %7, i32 52
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i.i) #7, !srcloc !129
  %9 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.1.i.i = getelementptr i8, ptr %10, i32 56
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i.i) #7, !srcloc !129
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %13 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.2.i.i = getelementptr i8, ptr %14, i32 60
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i.i) #7, !srcloc !129
  %16 = and i32 %12, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %16)
  %cmp3.not.i = icmp eq i32 %16, 536870912
  %shr.i.i17.i = lshr i32 %12, 16
  %and.i.i18.i = and i32 %shr.i.i17.i, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i18.i, i32 %conv.i)
  %cmp6.i = icmp eq i32 %and.i.i18.i, %conv.i
  %or.cond.i = select i1 %cmp3.not.i, i1 %cmp6.i, i1 false
  br i1 %or.cond.i, label %cpsw_ale_match_vlan.exit, label %for.inc.i

for.inc.i:                                        ; preds = %cpsw_ale_read.exit.i
  %inc.i = add nuw i32 %idx.021.i, 1
  %17 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ale_entries.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %18
  br i1 %cmp.i, label %for.inc.i.cpsw_ale_read.exit.i_crit_edge, label %for.inc.i.if.end_crit_edge

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.i.cpsw_ale_read.exit.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit.i

cpsw_ale_match_vlan.exit:                         ; preds = %cpsw_ale_read.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %idx.021.i)
  %cmp = icmp sgt i32 %idx.021.i, -1
  br i1 %cmp, label %if.then, label %cpsw_ale_match_vlan.exit.if.end_crit_edge

cpsw_ale_match_vlan.exit.if.end_crit_edge:        ; preds = %cpsw_ale_match_vlan.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %cpsw_ale_match_vlan.exit
  %19 = ptrtoint ptr %ale_entries.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ale_entries.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %idx.021.i)
  %cmp.i60 = icmp ult i32 %20, %idx.021.i
  br i1 %cmp.i60, label %do.end.i, label %if.then.cpsw_ale_read.exit_crit_edge, !prof !130

if.then.cpsw_ale_read.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 302, i32 noundef 9, ptr noundef null) #7
  br label %cpsw_ale_read.exit

cpsw_ale_read.exit:                               ; preds = %do.end.i, %if.then.cpsw_ale_read.exit_crit_edge
  %21 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #7, !srcloc !128
  %23 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %24, i32 52
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #7, !srcloc !129
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  %27 = ptrtoint ptr %ale_entry to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ale_entry, align 4
  %28 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.1.i = getelementptr i8, ptr %29, i32 56
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i) #7, !srcloc !129
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  %arrayidx.1.i = getelementptr inbounds i32, ptr %ale_entry, i32 1
  %32 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx.1.i, align 4
  %33 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr24.2.i = getelementptr i8, ptr %34, i32 60
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i) #7, !srcloc !129
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  %arrayidx.2.i = getelementptr inbounds i32, ptr %ale_entry, i32 2
  %37 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx.2.i, align 4
  br label %if.end

if.end:                                           ; preds = %cpsw_ale_read.exit, %cpsw_ale_match_vlan.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %vlan_entry_tbl.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 9
  %38 = ptrtoint ptr %vlan_entry_tbl.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vlan_entry_tbl.i, align 4
  %tobool.not.i.i = icmp eq ptr %ale, null
  br i1 %tobool.not.i.i, label %if.end.cpsw_ale_vlan_get_fld.exit146_crit_edge, label %if.end.i.i

if.end.cpsw_ale_vlan_get_fld.exit146_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_vlan_get_fld.exit146

if.end.i.i:                                       ; preds = %if.end
  %flags.i.i = getelementptr %struct.ale_entry_fld, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %flags.i.i, align 1
  %conv.i.i = zext i8 %41 to i32
  %and.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i.i, label %do.end.i.i, label %if.end4.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.15, i32 noundef 0) #10
  br label %if.end.i.i67

if.end4.i.i:                                      ; preds = %if.end.i.i
  %num_bits.i.i = getelementptr %struct.ale_entry_fld, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %num_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %num_bits.i.i, align 1
  %conv5.i.i = zext i8 %45 to i32
  %and8.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end4.i.i.if.end11.i.i_crit_edge, label %if.then10.i.i

if.end4.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

if.then10.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %port_mask_bits.i.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %46 = ptrtoint ptr %port_mask_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port_mask_bits.i.i, align 4
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then10.i.i, %if.end4.i.i.if.end11.i.i_crit_edge
  %bits.0.i.i = phi i32 [ %47, %if.then10.i.i ], [ %conv5.i.i, %if.end4.i.i.if.end11.i.i_crit_edge ]
  %48 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %39, align 1
  %conv12.i.i = zext i8 %49 to i32
  %div7.i.i.i = lshr i32 %conv12.i.i, 5
  %sub.i.i.i = and i32 %conv12.i.i, 31
  %sub1.i.i.i = sub nsw i32 2, %div7.i.i.i
  %arrayidx.i.i.i = getelementptr i32, ptr %ale_entry, i32 %sub1.i.i.i
  %50 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i.i = lshr i32 %51, %sub.i.i.i
  %notmask.i.i.i = shl nsw i32 -1, %bits.0.i.i
  %sub2.i.i.i = xor i32 %notmask.i.i.i, -1
  %and.i.i.i = and i32 %shr.i.i.i, %sub2.i.i.i
  br label %if.end.i.i67

if.end.i.i67:                                     ; preds = %if.end11.i.i, %do.end.i.i
  %retval.0.i.i.ph = phi i32 [ -2, %do.end.i.i ], [ %and.i.i.i, %if.end11.i.i ]
  %52 = ptrtoint ptr %vlan_entry_tbl.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vlan_entry_tbl.i, align 4
  %arrayidx.i.i = getelementptr %struct.ale_entry_fld, ptr %53, i32 2
  %flags.i.i63 = getelementptr %struct.ale_entry_fld, ptr %53, i32 2, i32 2
  %54 = ptrtoint ptr %flags.i.i63 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %flags.i.i63, align 1
  %conv.i.i64 = zext i8 %55 to i32
  %and.i.i65 = and i32 %conv.i.i64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i65)
  %tobool2.not.i.i66 = icmp eq i32 %and.i.i65, 0
  br i1 %tobool2.not.i.i66, label %do.end.i.i68, label %if.end4.i.i73

do.end.i.i68:                                     ; preds = %if.end.i.i67
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.15, i32 noundef 2) #10
  br label %if.end.i.i96

if.end4.i.i73:                                    ; preds = %if.end.i.i67
  %num_bits.i.i69 = getelementptr %struct.ale_entry_fld, ptr %53, i32 2, i32 1
  %58 = ptrtoint ptr %num_bits.i.i69 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %num_bits.i.i69, align 1
  %conv5.i.i70 = zext i8 %59 to i32
  %and8.i.i71 = and i32 %conv.i.i64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i71)
  %tobool9.not.i.i72 = icmp eq i32 %and8.i.i71, 0
  br i1 %tobool9.not.i.i72, label %if.end4.i.i73.if.end11.i.i86_crit_edge, label %if.then10.i.i75

if.end4.i.i73.if.end11.i.i86_crit_edge:           ; preds = %if.end4.i.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i86

if.then10.i.i75:                                  ; preds = %if.end4.i.i73
  call void @__sanitizer_cov_trace_pc() #9
  %port_mask_bits.i.i74 = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %60 = ptrtoint ptr %port_mask_bits.i.i74 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port_mask_bits.i.i74, align 4
  br label %if.end11.i.i86

if.end11.i.i86:                                   ; preds = %if.then10.i.i75, %if.end4.i.i73.if.end11.i.i86_crit_edge
  %bits.0.i.i76 = phi i32 [ %61, %if.then10.i.i75 ], [ %conv5.i.i70, %if.end4.i.i73.if.end11.i.i86_crit_edge ]
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i.i, align 1
  %conv12.i.i77 = zext i8 %63 to i32
  %div7.i.i.i78 = lshr i32 %conv12.i.i77, 5
  %sub.i.i.i79 = and i32 %conv12.i.i77, 31
  %sub1.i.i.i80 = sub nsw i32 2, %div7.i.i.i78
  %arrayidx.i.i.i81 = getelementptr i32, ptr %ale_entry, i32 %sub1.i.i.i80
  %64 = ptrtoint ptr %arrayidx.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i.i.i81, align 4
  %shr.i.i.i82 = lshr i32 %65, %sub.i.i.i79
  %notmask.i.i.i83 = shl nsw i32 -1, %bits.0.i.i76
  %sub2.i.i.i84 = xor i32 %notmask.i.i.i83, -1
  %and.i.i.i85 = and i32 %shr.i.i.i82, %sub2.i.i.i84
  br label %if.end.i.i96

if.end.i.i96:                                     ; preds = %if.end11.i.i86, %do.end.i.i68
  %retval.0.i.i87.ph = phi i32 [ -2, %do.end.i.i68 ], [ %and.i.i.i85, %if.end11.i.i86 ]
  %66 = ptrtoint ptr %vlan_entry_tbl.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vlan_entry_tbl.i, align 4
  %arrayidx.i.i91 = getelementptr %struct.ale_entry_fld, ptr %67, i32 1
  %flags.i.i92 = getelementptr %struct.ale_entry_fld, ptr %67, i32 1, i32 2
  %68 = ptrtoint ptr %flags.i.i92 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %flags.i.i92, align 1
  %conv.i.i93 = zext i8 %69 to i32
  %and.i.i94 = and i32 %conv.i.i93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i94)
  %tobool2.not.i.i95 = icmp eq i32 %and.i.i94, 0
  br i1 %tobool2.not.i.i95, label %do.end.i.i97, label %if.end4.i.i102

do.end.i.i97:                                     ; preds = %if.end.i.i96
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.15, i32 noundef 1) #10
  br label %if.end.i.i125

if.end4.i.i102:                                   ; preds = %if.end.i.i96
  %num_bits.i.i98 = getelementptr %struct.ale_entry_fld, ptr %67, i32 1, i32 1
  %72 = ptrtoint ptr %num_bits.i.i98 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %num_bits.i.i98, align 1
  %conv5.i.i99 = zext i8 %73 to i32
  %and8.i.i100 = and i32 %conv.i.i93, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i100)
  %tobool9.not.i.i101 = icmp eq i32 %and8.i.i100, 0
  br i1 %tobool9.not.i.i101, label %if.end4.i.i102.if.end11.i.i115_crit_edge, label %if.then10.i.i104

if.end4.i.i102.if.end11.i.i115_crit_edge:         ; preds = %if.end4.i.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i115

if.then10.i.i104:                                 ; preds = %if.end4.i.i102
  call void @__sanitizer_cov_trace_pc() #9
  %port_mask_bits.i.i103 = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %74 = ptrtoint ptr %port_mask_bits.i.i103 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port_mask_bits.i.i103, align 4
  br label %if.end11.i.i115

if.end11.i.i115:                                  ; preds = %if.then10.i.i104, %if.end4.i.i102.if.end11.i.i115_crit_edge
  %bits.0.i.i105 = phi i32 [ %75, %if.then10.i.i104 ], [ %conv5.i.i99, %if.end4.i.i102.if.end11.i.i115_crit_edge ]
  %76 = ptrtoint ptr %arrayidx.i.i91 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i.i91, align 1
  %conv12.i.i106 = zext i8 %77 to i32
  %div7.i.i.i107 = lshr i32 %conv12.i.i106, 5
  %sub.i.i.i108 = and i32 %conv12.i.i106, 31
  %sub1.i.i.i109 = sub nsw i32 2, %div7.i.i.i107
  %arrayidx.i.i.i110 = getelementptr i32, ptr %ale_entry, i32 %sub1.i.i.i109
  %78 = ptrtoint ptr %arrayidx.i.i.i110 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i.i.i110, align 4
  %shr.i.i.i111 = lshr i32 %79, %sub.i.i.i108
  %notmask.i.i.i112 = shl nsw i32 -1, %bits.0.i.i105
  %sub2.i.i.i113 = xor i32 %notmask.i.i.i112, -1
  %and.i.i.i114 = and i32 %shr.i.i.i111, %sub2.i.i.i113
  br label %if.end.i.i125

if.end.i.i125:                                    ; preds = %if.end11.i.i115, %do.end.i.i97
  %retval.0.i.i116.ph = phi i32 [ -2, %do.end.i.i97 ], [ %and.i.i.i114, %if.end11.i.i115 ]
  %80 = ptrtoint ptr %vlan_entry_tbl.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vlan_entry_tbl.i, align 4
  %arrayidx.i.i120 = getelementptr %struct.ale_entry_fld, ptr %81, i32 3
  %flags.i.i121 = getelementptr %struct.ale_entry_fld, ptr %81, i32 3, i32 2
  %82 = ptrtoint ptr %flags.i.i121 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %flags.i.i121, align 1
  %conv.i.i122 = zext i8 %83 to i32
  %and.i.i123 = and i32 %conv.i.i122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123)
  %tobool2.not.i.i124 = icmp eq i32 %and.i.i123, 0
  br i1 %tobool2.not.i.i124, label %do.end.i.i126, label %if.end4.i.i131

do.end.i.i126:                                    ; preds = %if.end.i.i125
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.15, i32 noundef 3) #10
  br label %cpsw_ale_vlan_get_fld.exit146

if.end4.i.i131:                                   ; preds = %if.end.i.i125
  %num_bits.i.i127 = getelementptr %struct.ale_entry_fld, ptr %81, i32 3, i32 1
  %86 = ptrtoint ptr %num_bits.i.i127 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %num_bits.i.i127, align 1
  %conv5.i.i128 = zext i8 %87 to i32
  %and8.i.i129 = and i32 %conv.i.i122, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i129)
  %tobool9.not.i.i130 = icmp eq i32 %and8.i.i129, 0
  br i1 %tobool9.not.i.i130, label %if.end4.i.i131.if.end11.i.i144_crit_edge, label %if.then10.i.i133

if.end4.i.i131.if.end11.i.i144_crit_edge:         ; preds = %if.end4.i.i131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i144

if.then10.i.i133:                                 ; preds = %if.end4.i.i131
  call void @__sanitizer_cov_trace_pc() #9
  %port_mask_bits.i.i132 = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %88 = ptrtoint ptr %port_mask_bits.i.i132 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port_mask_bits.i.i132, align 4
  br label %if.end11.i.i144

if.end11.i.i144:                                  ; preds = %if.then10.i.i133, %if.end4.i.i131.if.end11.i.i144_crit_edge
  %bits.0.i.i134 = phi i32 [ %89, %if.then10.i.i133 ], [ %conv5.i.i128, %if.end4.i.i131.if.end11.i.i144_crit_edge ]
  %90 = ptrtoint ptr %arrayidx.i.i120 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.i.i120, align 1
  %conv12.i.i135 = zext i8 %91 to i32
  %div7.i.i.i136 = lshr i32 %conv12.i.i135, 5
  %sub.i.i.i137 = and i32 %conv12.i.i135, 31
  %sub1.i.i.i138 = sub nsw i32 2, %div7.i.i.i136
  %arrayidx.i.i.i139 = getelementptr i32, ptr %ale_entry, i32 %sub1.i.i.i138
  %92 = ptrtoint ptr %arrayidx.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.i.i.i139, align 4
  %shr.i.i.i140 = lshr i32 %93, %sub.i.i.i137
  %notmask.i.i.i141 = shl nsw i32 -1, %bits.0.i.i134
  %sub2.i.i.i142 = xor i32 %notmask.i.i.i141, -1
  %and.i.i.i143 = and i32 %shr.i.i.i140, %sub2.i.i.i142
  br label %cpsw_ale_vlan_get_fld.exit146

cpsw_ale_vlan_get_fld.exit146:                    ; preds = %if.end11.i.i144, %do.end.i.i126, %if.end.cpsw_ale_vlan_get_fld.exit146_crit_edge
  %retval.0.i.i116166 = phi i32 [ %retval.0.i.i116.ph, %if.end11.i.i144 ], [ %retval.0.i.i116.ph, %do.end.i.i126 ], [ -22, %if.end.cpsw_ale_vlan_get_fld.exit146_crit_edge ]
  %retval.0.i.i151155164 = phi i32 [ %retval.0.i.i.ph, %if.end11.i.i144 ], [ %retval.0.i.i.ph, %do.end.i.i126 ], [ -22, %if.end.cpsw_ale_vlan_get_fld.exit146_crit_edge ]
  %retval.0.i.i87157162 = phi i32 [ %retval.0.i.i87.ph, %if.end11.i.i144 ], [ %retval.0.i.i87.ph, %do.end.i.i126 ], [ -22, %if.end.cpsw_ale_vlan_get_fld.exit146_crit_edge ]
  %retval.0.i.i145 = phi i32 [ %and.i.i.i143, %if.end11.i.i144 ], [ -2, %do.end.i.i126 ], [ -22, %if.end.cpsw_ale_vlan_get_fld.exit146_crit_edge ]
  %or = or i32 %retval.0.i.i151155164, %port_mask
  %neg = xor i32 %port_mask, -1
  %and = and i32 %retval.0.i.i145, %neg
  %or10 = or i32 %and, %untag_mask
  %and12 = and i32 %retval.0.i.i87157162, %neg
  %or13 = or i32 %and12, %reg_mask
  %and15 = and i32 %retval.0.i.i116166, %neg
  %or16 = or i32 %and15, %unreg_mask
  %call17 = tail call i32 @cpsw_ale_add_vlan(ptr noundef %ale, i16 noundef zeroext %vid, i32 noundef %or, i32 noundef %or10, i32 noundef %or13, i32 noundef %or16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not = icmp eq i32 %call17, 0
  br i1 %tobool.not, label %do.body20, label %do.end

do.end:                                           ; preds = %cpsw_ale_vlan_get_fld.exit146
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str) #10
  br label %cleanup

do.body20:                                        ; preds = %cpsw_ale_vlan_get_fld.exit146
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_ale_vlan_add_modify.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_ale_vlan_add_modify, %if.then25)) #7
          to label %cleanup [label %if.then25], !srcloc !134

if.then25:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_ale_vlan_add_modify.__UNIQUE_ID_ddebug341, ptr noundef %97, ptr noundef nonnull @.str.6, i32 noundef %or, i32 noundef %untag_mask) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %do.body20, %do.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ale_entry) #7
  ret i32 %call17
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_ale_set_unreg_mcast(ptr noundef readonly %ale, i32 noundef %unreg_mcast_mask, i1 noundef zeroext %add) local_unnamed_addr #0 align 64 {
entry:
  %ale_entry = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ale_entry) #7
  %0 = getelementptr inbounds [3 x i32], ptr %ale_entry, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i32], ptr %ale_entry, i32 0, i32 2
  %ale_entries = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 3
  %2 = ptrtoint ptr %ale_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ale_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp61.not = icmp eq i32 %3, 0
  br i1 %cmp61.not, label %entry.for.end_crit_edge, label %cpsw_ale_read.exit.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cpsw_ale_read.exit.lr.ph:                         ; preds = %entry
  %ale_regs.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  %vlan_entry_tbl.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 9
  %tobool.not.i.i = icmp eq ptr %ale, null
  %port_mask_bits.i.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  %neg57 = xor i32 %unreg_mcast_mask, -1
  br label %cpsw_ale_read.exit

cpsw_ale_read.exit:                               ; preds = %for.inc.cpsw_ale_read.exit_crit_edge, %cpsw_ale_read.exit.lr.ph
  %idx.062 = phi i32 [ 0, %cpsw_ale_read.exit.lr.ph ], [ %inc, %for.inc.cpsw_ale_read.exit_crit_edge ]
  %4 = tail call i32 @llvm.bswap.i32(i32 %idx.062) #7
  %5 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !128
  %7 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %8, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #7, !srcloc !129
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %11 = ptrtoint ptr %ale_entry to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ale_entry, align 4
  %12 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr24.1.i = getelementptr i8, ptr %13, i32 56
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i) #7, !srcloc !129
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %0, align 4
  %17 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr24.2.i = getelementptr i8, ptr %18, i32 60
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i) #7, !srcloc !129
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %1, align 4
  %22 = and i32 %15, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %22)
  %cmp3.not = icmp eq i32 %22, 536870912
  br i1 %cmp3.not, label %if.end, label %cpsw_ale_read.exit.for.inc_crit_edge

cpsw_ale_read.exit.for.inc_crit_edge:             ; preds = %cpsw_ale_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %cpsw_ale_read.exit
  %23 = ptrtoint ptr %vlan_entry_tbl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vlan_entry_tbl.i, align 4
  br i1 %tobool.not.i.i, label %if.end.cpsw_ale_vlan_set_fld.exit_crit_edge, label %if.end.i.i

if.end.cpsw_ale_vlan_set_fld.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_vlan_set_fld.exit

if.end.i.i:                                       ; preds = %if.end
  %arrayidx.i.i21 = getelementptr %struct.ale_entry_fld, ptr %24, i32 1
  %flags.i.i = getelementptr %struct.ale_entry_fld, ptr %24, i32 1, i32 2
  %25 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %flags.i.i, align 1
  %conv.i.i = zext i8 %26 to i32
  %and.i.i22 = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i22)
  %tobool2.not.i.i = icmp eq i32 %and.i.i22, 0
  br i1 %tobool2.not.i.i, label %do.end.i.i, label %if.end4.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.15, i32 noundef 1) #10
  br label %if.end.i.i30

if.end4.i.i:                                      ; preds = %if.end.i.i
  %num_bits.i.i = getelementptr %struct.ale_entry_fld, ptr %24, i32 1, i32 1
  %29 = ptrtoint ptr %num_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num_bits.i.i, align 1
  %conv5.i.i = zext i8 %30 to i32
  %and8.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end4.i.i.if.end11.i.i_crit_edge, label %if.then10.i.i

if.end4.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

if.then10.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %port_mask_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port_mask_bits.i.i, align 4
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then10.i.i, %if.end4.i.i.if.end11.i.i_crit_edge
  %bits.0.i.i = phi i32 [ %32, %if.then10.i.i ], [ %conv5.i.i, %if.end4.i.i.if.end11.i.i_crit_edge ]
  %33 = ptrtoint ptr %arrayidx.i.i21 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i21, align 1
  %conv12.i.i = zext i8 %34 to i32
  %div7.i.i.i = lshr i32 %conv12.i.i, 5
  %sub.i.i.i = and i32 %conv12.i.i, 31
  %sub1.i.i.i = sub nsw i32 2, %div7.i.i.i
  %arrayidx.i.i.i = getelementptr i32, ptr %ale_entry, i32 %sub1.i.i.i
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i.i = lshr i32 %36, %sub.i.i.i
  %notmask.i.i.i = shl nsw i32 -1, %bits.0.i.i
  %sub2.i.i.i = xor i32 %notmask.i.i.i, -1
  %and.i.i.i = and i32 %shr.i.i.i, %sub2.i.i.i
  br label %if.end.i.i30

if.end.i.i30:                                     ; preds = %if.end11.i.i, %do.end.i.i
  %retval.0.i.i.ph = phi i32 [ -2, %do.end.i.i ], [ %and.i.i.i, %if.end11.i.i ]
  %or56 = or i32 %retval.0.i.i.ph, %unreg_mcast_mask
  %and58 = and i32 %retval.0.i.i.ph, %neg57
  %unreg_members.059 = select i1 %add, i32 %or56, i32 %and58
  %37 = ptrtoint ptr %vlan_entry_tbl.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vlan_entry_tbl.i, align 4
  %arrayidx.i.i25 = getelementptr %struct.ale_entry_fld, ptr %38, i32 1
  %flags.i.i26 = getelementptr %struct.ale_entry_fld, ptr %38, i32 1, i32 2
  %39 = ptrtoint ptr %flags.i.i26 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %flags.i.i26, align 1
  %conv.i.i27 = zext i8 %40 to i32
  %and.i.i28 = and i32 %conv.i.i27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i28)
  %tobool2.not.i.i29 = icmp eq i32 %and.i.i28, 0
  br i1 %tobool2.not.i.i29, label %do.end.i.i31, label %if.end4.i.i36

do.end.i.i31:                                     ; preds = %if.end.i.i30
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.13, i32 noundef 1) #10
  br label %cpsw_ale_vlan_set_fld.exit

if.end4.i.i36:                                    ; preds = %if.end.i.i30
  %num_bits.i.i32 = getelementptr %struct.ale_entry_fld, ptr %38, i32 1, i32 1
  %43 = ptrtoint ptr %num_bits.i.i32 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %num_bits.i.i32, align 1
  %conv5.i.i33 = zext i8 %44 to i32
  %and8.i.i34 = and i32 %conv.i.i27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i34)
  %tobool9.not.i.i35 = icmp eq i32 %and8.i.i34, 0
  br i1 %tobool9.not.i.i35, label %if.end4.i.i36.if.end11.i.i47_crit_edge, label %if.then10.i.i38

if.end4.i.i36.if.end11.i.i47_crit_edge:           ; preds = %if.end4.i.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i47

if.then10.i.i38:                                  ; preds = %if.end4.i.i36
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %port_mask_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port_mask_bits.i.i, align 4
  br label %if.end11.i.i47

if.end11.i.i47:                                   ; preds = %if.then10.i.i38, %if.end4.i.i36.if.end11.i.i47_crit_edge
  %bits.0.i.i39 = phi i32 [ %46, %if.then10.i.i38 ], [ %conv5.i.i33, %if.end4.i.i36.if.end11.i.i47_crit_edge ]
  %47 = ptrtoint ptr %arrayidx.i.i25 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i.i25, align 1
  %conv12.i.i40 = zext i8 %48 to i32
  %notmask.i.i.i41 = shl nsw i32 -1, %bits.0.i.i39
  %sub.i.i.i42 = xor i32 %notmask.i.i.i41, -1
  %and.i.i.i43 = and i32 %unreg_members.059, %sub.i.i.i42
  %div18.i.i.i = lshr i32 %conv12.i.i40, 5
  %sub1.i.i.i44 = and i32 %conv12.i.i40, 31
  %sub2.i.i.i45 = sub nsw i32 2, %div18.i.i.i
  %shl5.i.i.i = shl i32 %sub.i.i.i42, %sub1.i.i.i44
  %neg.i.i.i = xor i32 %shl5.i.i.i, -1
  %arrayidx.i.i.i46 = getelementptr i32, ptr %ale_entry, i32 %sub2.i.i.i45
  %49 = ptrtoint ptr %arrayidx.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i.i46, align 4
  %and6.i.i.i = and i32 %50, %neg.i.i.i
  %shl7.i.i.i = shl i32 %and.i.i.i43, %sub1.i.i.i44
  %or.i.i.i = or i32 %and6.i.i.i, %shl7.i.i.i
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i46, align 4
  br label %cpsw_ale_vlan_set_fld.exit

cpsw_ale_vlan_set_fld.exit:                       ; preds = %if.end11.i.i47, %do.end.i.i31, %if.end.cpsw_ale_vlan_set_fld.exit_crit_edge
  %51 = ptrtoint ptr %ale_entries to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ale_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %idx.062)
  %cmp.i49 = icmp ult i32 %52, %idx.062
  br i1 %cmp.i49, label %do.end.i50, label %cpsw_ale_vlan_set_fld.exit.cpsw_ale_write.exit_crit_edge, !prof !130

cpsw_ale_vlan_set_fld.exit.cpsw_ale_write.exit_crit_edge: ; preds = %cpsw_ale_vlan_set_fld.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_write.exit

do.end.i50:                                       ; preds = %cpsw_ale_vlan_set_fld.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 317, i32 noundef 9, ptr noundef null) #7
  br label %cpsw_ale_write.exit

cpsw_ale_write.exit:                              ; preds = %do.end.i50, %cpsw_ale_vlan_set_fld.exit.cpsw_ale_write.exit_crit_edge
  %53 = ptrtoint ptr %ale_entry to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ale_entry, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  %56 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %57, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %55) #7, !srcloc !128
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %0, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #7
  %61 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr21.1.i = getelementptr i8, ptr %62, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.1.i, i32 %60) #7, !srcloc !128
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %1, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #7
  %66 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr21.2.i = getelementptr i8, ptr %67, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.2.i, i32 %65) #7, !srcloc !128
  %or.i = or i32 %idx.062, -2147483648
  %68 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %69 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %70, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %68) #7, !srcloc !128
  br label %for.inc

for.inc:                                          ; preds = %cpsw_ale_write.exit, %cpsw_ale_read.exit.for.inc_crit_edge
  %inc = add nuw i32 %idx.062, 1
  %71 = ptrtoint ptr %ale_entries to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ale_entries, align 4
  %cmp = icmp ult i32 %inc, %72
  br i1 %cmp, label %for.inc.cpsw_ale_read.exit_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.cpsw_ale_read.exit_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ale_entry) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_ale_set_allmulti(ptr noundef readonly %ale, i32 noundef %allmulti, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %ale_entry = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ale_entry) #7
  %0 = getelementptr inbounds [3 x i32], ptr %ale_entry, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i32], ptr %ale_entry, i32 0, i32 2
  %ale_entries = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 3
  %2 = ptrtoint ptr %ale_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ale_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp69.not = icmp eq i32 %3, 0
  br i1 %cmp69.not, label %entry.for.end_crit_edge, label %cpsw_ale_read.exit.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cpsw_ale_read.exit.lr.ph:                         ; preds = %entry
  %ale_regs.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  %vlan_entry_tbl.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 9
  %tobool.not.i.i = icmp eq ptr %ale, null
  %port_mask_bits.i.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %port)
  %cmp6.not = icmp ne i32 %port, -1
  %shl = shl nuw i32 1, %port
  %nu_switch_ale = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %allmulti)
  %tobool.not.i = icmp ne i32 %allmulti, 0
  %masksel.i61 = zext i1 %tobool.not.i to i32
  br label %cpsw_ale_read.exit

cpsw_ale_read.exit:                               ; preds = %cleanup.cpsw_ale_read.exit_crit_edge, %cpsw_ale_read.exit.lr.ph
  %idx.070 = phi i32 [ 0, %cpsw_ale_read.exit.lr.ph ], [ %inc, %cleanup.cpsw_ale_read.exit_crit_edge ]
  %4 = tail call i32 @llvm.bswap.i32(i32 %idx.070) #7
  %5 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !128
  %7 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %8, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #7, !srcloc !129
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %11 = ptrtoint ptr %ale_entry to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ale_entry, align 4
  %12 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr24.1.i = getelementptr i8, ptr %13, i32 56
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i) #7, !srcloc !129
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %0, align 4
  %17 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr24.2.i = getelementptr i8, ptr %18, i32 60
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i) #7, !srcloc !129
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %1, align 4
  %22 = and i32 %15, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %22)
  %cmp3.not = icmp eq i32 %22, 536870912
  br i1 %cmp3.not, label %if.end, label %cpsw_ale_read.exit.cleanup_crit_edge

cpsw_ale_read.exit.cleanup_crit_edge:             ; preds = %cpsw_ale_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %cpsw_ale_read.exit
  %23 = ptrtoint ptr %vlan_entry_tbl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vlan_entry_tbl.i, align 4
  br i1 %tobool.not.i.i, label %if.end.cpsw_ale_vlan_get_fld.exit_crit_edge, label %if.end.i.i

if.end.cpsw_ale_vlan_get_fld.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_vlan_get_fld.exit

if.end.i.i:                                       ; preds = %if.end
  %flags.i.i = getelementptr %struct.ale_entry_fld, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %flags.i.i, align 1
  %conv.i.i = zext i8 %26 to i32
  %and.i.i28 = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i28)
  %tobool2.not.i.i = icmp eq i32 %and.i.i28, 0
  br i1 %tobool2.not.i.i, label %do.end.i.i, label %if.end4.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.15, i32 noundef 0) #10
  br label %cpsw_ale_vlan_get_fld.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %num_bits.i.i = getelementptr %struct.ale_entry_fld, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %num_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num_bits.i.i, align 1
  %conv5.i.i = zext i8 %30 to i32
  %and8.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end4.i.i.if.end11.i.i_crit_edge, label %if.then10.i.i

if.end4.i.i.if.end11.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

if.then10.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %port_mask_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port_mask_bits.i.i, align 4
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then10.i.i, %if.end4.i.i.if.end11.i.i_crit_edge
  %bits.0.i.i = phi i32 [ %32, %if.then10.i.i ], [ %conv5.i.i, %if.end4.i.i.if.end11.i.i_crit_edge ]
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %24, align 1
  %conv12.i.i = zext i8 %34 to i32
  %div7.i.i.i = lshr i32 %conv12.i.i, 5
  %sub.i.i.i = and i32 %conv12.i.i, 31
  %sub1.i.i.i = sub nsw i32 2, %div7.i.i.i
  %arrayidx.i.i.i = getelementptr i32, ptr %ale_entry, i32 %sub1.i.i.i
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i.i = lshr i32 %36, %sub.i.i.i
  %notmask.i.i.i = shl nsw i32 -1, %bits.0.i.i
  %sub2.i.i.i = xor i32 %notmask.i.i.i, -1
  %and.i.i.i = and i32 %shr.i.i.i, %sub2.i.i.i
  br label %cpsw_ale_vlan_get_fld.exit

cpsw_ale_vlan_get_fld.exit:                       ; preds = %if.end11.i.i, %do.end.i.i, %if.end.cpsw_ale_vlan_get_fld.exit_crit_edge
  %retval.0.i.i = phi i32 [ %and.i.i.i, %if.end11.i.i ], [ -2, %do.end.i.i ], [ -22, %if.end.cpsw_ale_vlan_get_fld.exit_crit_edge ]
  %and = and i32 %retval.0.i.i, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp6.not, i1 %tobool.not, i1 false
  br i1 %or.cond, label %cpsw_ale_vlan_get_fld.exit.cleanup_crit_edge, label %if.end8

cpsw_ale_vlan_get_fld.exit.cleanup_crit_edge:     ; preds = %cpsw_ale_vlan_get_fld.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %cpsw_ale_vlan_get_fld.exit
  %37 = ptrtoint ptr %nu_switch_ale to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %nu_switch_ale, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool10.not = icmp eq i8 %38, 0
  %39 = ptrtoint ptr %vlan_entry_tbl.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vlan_entry_tbl.i, align 4
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end8
  br i1 %tobool.not.i.i, label %if.then11.if.end14_crit_edge, label %if.end.i.i.i

if.then11.if.end14_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.end.i.i.i:                                     ; preds = %if.then11
  %arrayidx.i.i.i29 = getelementptr %struct.ale_entry_fld, ptr %40, i32 1
  %flags.i.i.i = getelementptr %struct.ale_entry_fld, ptr %40, i32 1, i32 2
  %41 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %flags.i.i.i, align 1
  %conv.i.i.i = zext i8 %42 to i32
  %and.i.i.i30 = and i32 %conv.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i30)
  %tobool2.not.i.i.i = icmp eq i32 %and.i.i.i30, 0
  br i1 %tobool2.not.i.i.i, label %do.end.i.i.i, label %if.end4.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.15, i32 noundef 1) #10
  br label %if.end.i.i14.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  %num_bits.i.i.i = getelementptr %struct.ale_entry_fld, ptr %40, i32 1, i32 1
  %45 = ptrtoint ptr %num_bits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num_bits.i.i.i, align 1
  %conv5.i.i.i = zext i8 %46 to i32
  %and8.i.i.i = and i32 %conv.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %and8.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %if.end4.i.i.i.if.end11.i.i.i_crit_edge, label %if.then10.i.i.i

if.end4.i.i.i.if.end11.i.i.i_crit_edge:           ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i.i

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %port_mask_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port_mask_bits.i.i, align 4
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.then10.i.i.i, %if.end4.i.i.i.if.end11.i.i.i_crit_edge
  %bits.0.i.i.i = phi i32 [ %48, %if.then10.i.i.i ], [ %conv5.i.i.i, %if.end4.i.i.i.if.end11.i.i.i_crit_edge ]
  %49 = ptrtoint ptr %arrayidx.i.i.i29 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i.i.i29, align 1
  %conv12.i.i.i = zext i8 %50 to i32
  %div7.i.i.i.i = lshr i32 %conv12.i.i.i, 5
  %sub.i.i.i.i = and i32 %conv12.i.i.i, 31
  %sub1.i.i.i.i = sub nsw i32 2, %div7.i.i.i.i
  %arrayidx.i.i.i.i = getelementptr i32, ptr %ale_entry, i32 %sub1.i.i.i.i
  %51 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %shr.i.i.i.i = lshr i32 %52, %sub.i.i.i.i
  %notmask.i.i.i.i = shl nsw i32 -1, %bits.0.i.i.i
  %sub2.i.i.i.i = and i32 %notmask.i.i.i.i, -2
  %and.i.i.i.i = xor i32 %sub2.i.i.i.i, -2
  %phi.bo.i = and i32 %shr.i.i.i.i, %and.i.i.i.i
  br label %if.end.i.i14.i

if.end.i.i14.i:                                   ; preds = %if.end11.i.i.i, %do.end.i.i.i
  %retval.0.i.i.ph.i = phi i32 [ -2, %do.end.i.i.i ], [ %phi.bo.i, %if.end11.i.i.i ]
  %unreg_mcast.036.i = or i32 %retval.0.i.i.ph.i, %masksel.i61
  %53 = ptrtoint ptr %vlan_entry_tbl.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vlan_entry_tbl.i, align 4
  %arrayidx.i.i9.i = getelementptr %struct.ale_entry_fld, ptr %54, i32 1
  %flags.i.i10.i = getelementptr %struct.ale_entry_fld, ptr %54, i32 1, i32 2
  %55 = ptrtoint ptr %flags.i.i10.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %flags.i.i10.i, align 1
  %conv.i.i11.i = zext i8 %56 to i32
  %and.i.i12.i = and i32 %conv.i.i11.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i12.i)
  %tobool2.not.i.i13.i = icmp eq i32 %and.i.i12.i, 0
  br i1 %tobool2.not.i.i13.i, label %do.end.i.i15.i, label %if.end4.i.i20.i

do.end.i.i15.i:                                   ; preds = %if.end.i.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.13, i32 noundef 1) #10
  br label %if.end14

if.end4.i.i20.i:                                  ; preds = %if.end.i.i14.i
  %num_bits.i.i16.i = getelementptr %struct.ale_entry_fld, ptr %54, i32 1, i32 1
  %59 = ptrtoint ptr %num_bits.i.i16.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %num_bits.i.i16.i, align 1
  %conv5.i.i17.i = zext i8 %60 to i32
  %and8.i.i18.i = and i32 %conv.i.i11.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i18.i)
  %tobool9.not.i.i19.i = icmp eq i32 %and8.i.i18.i, 0
  br i1 %tobool9.not.i.i19.i, label %if.end4.i.i20.i.if.end11.i.i31.i_crit_edge, label %if.then10.i.i22.i

if.end4.i.i20.i.if.end11.i.i31.i_crit_edge:       ; preds = %if.end4.i.i20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i31.i

if.then10.i.i22.i:                                ; preds = %if.end4.i.i20.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %port_mask_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port_mask_bits.i.i, align 4
  br label %if.end11.i.i31.i

if.end11.i.i31.i:                                 ; preds = %if.then10.i.i22.i, %if.end4.i.i20.i.if.end11.i.i31.i_crit_edge
  %bits.0.i.i23.i = phi i32 [ %62, %if.then10.i.i22.i ], [ %conv5.i.i17.i, %if.end4.i.i20.i.if.end11.i.i31.i_crit_edge ]
  %63 = ptrtoint ptr %arrayidx.i.i9.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i.i9.i, align 1
  %conv12.i.i24.i = zext i8 %64 to i32
  %notmask.i.i.i25.i = shl nsw i32 -1, %bits.0.i.i23.i
  %sub.i.i.i26.i = xor i32 %notmask.i.i.i25.i, -1
  %and.i.i.i27.i = and i32 %unreg_mcast.036.i, %sub.i.i.i26.i
  %div18.i.i.i.i = lshr i32 %conv12.i.i24.i, 5
  %sub1.i.i.i28.i = and i32 %conv12.i.i24.i, 31
  %sub2.i.i.i29.i = sub nsw i32 2, %div18.i.i.i.i
  %shl5.i.i.i.i = shl i32 %sub.i.i.i26.i, %sub1.i.i.i28.i
  %neg.i.i.i.i = xor i32 %shl5.i.i.i.i, -1
  %arrayidx.i.i.i30.i = getelementptr i32, ptr %ale_entry, i32 %sub2.i.i.i29.i
  %65 = ptrtoint ptr %arrayidx.i.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i.i.i30.i, align 4
  %and6.i.i.i.i = and i32 %66, %neg.i.i.i.i
  %shl7.i.i.i.i = shl i32 %and.i.i.i27.i, %sub1.i.i.i28.i
  %or.i.i.i.i = or i32 %and6.i.i.i.i, %shl7.i.i.i.i
  store i32 %or.i.i.i.i, ptr %arrayidx.i.i.i30.i, align 4
  br label %if.end14

if.else:                                          ; preds = %if.end8
  br i1 %tobool.not.i.i, label %if.else.cpsw_ale_vlan_set_unreg_mcast_idx.exit_crit_edge, label %if.end.i.i.i38

if.else.cpsw_ale_vlan_set_unreg_mcast_idx.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_vlan_set_unreg_mcast_idx.exit

if.end.i.i.i38:                                   ; preds = %if.else
  %arrayidx.i.i.i33 = getelementptr %struct.ale_entry_fld, ptr %40, i32 4
  %flags.i.i.i34 = getelementptr %struct.ale_entry_fld, ptr %40, i32 4, i32 2
  %67 = ptrtoint ptr %flags.i.i.i34 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %flags.i.i.i34, align 1
  %conv.i.i.i35 = zext i8 %68 to i32
  %and.i.i.i36 = and i32 %conv.i.i.i35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i36)
  %tobool2.not.i.i.i37 = icmp eq i32 %and.i.i.i36, 0
  br i1 %tobool2.not.i.i.i37, label %do.end.i.i.i39, label %if.end4.i.i.i44

do.end.i.i.i39:                                   ; preds = %if.end.i.i.i38
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.15, i32 noundef 4) #10
  br label %cpsw_ale_vlan_set_unreg_mcast_idx.exit

if.end4.i.i.i44:                                  ; preds = %if.end.i.i.i38
  %num_bits.i.i.i40 = getelementptr %struct.ale_entry_fld, ptr %40, i32 4, i32 1
  %71 = ptrtoint ptr %num_bits.i.i.i40 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %num_bits.i.i.i40, align 1
  %conv5.i.i.i41 = zext i8 %72 to i32
  %and8.i.i.i42 = and i32 %conv.i.i.i35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i42)
  %tobool9.not.i.i.i43 = icmp eq i32 %and8.i.i.i42, 0
  br i1 %tobool9.not.i.i.i43, label %if.end4.i.i.i44.if.end11.i.i.i58_crit_edge, label %if.then10.i.i.i46

if.end4.i.i.i44.if.end11.i.i.i58_crit_edge:       ; preds = %if.end4.i.i.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i.i58

if.then10.i.i.i46:                                ; preds = %if.end4.i.i.i44
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %port_mask_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %port_mask_bits.i.i, align 4
  br label %if.end11.i.i.i58

if.end11.i.i.i58:                                 ; preds = %if.then10.i.i.i46, %if.end4.i.i.i44.if.end11.i.i.i58_crit_edge
  %bits.0.i.i.i47 = phi i32 [ %74, %if.then10.i.i.i46 ], [ %conv5.i.i.i41, %if.end4.i.i.i44.if.end11.i.i.i58_crit_edge ]
  %75 = ptrtoint ptr %arrayidx.i.i.i33 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i.i.i33, align 1
  %conv12.i.i.i48 = zext i8 %76 to i32
  %div7.i.i.i.i49 = lshr i32 %conv12.i.i.i48, 5
  %sub.i.i.i.i50 = and i32 %conv12.i.i.i48, 31
  %sub1.i.i.i.i51 = sub nsw i32 2, %div7.i.i.i.i49
  %arrayidx.i.i.i.i52 = getelementptr i32, ptr %ale_entry, i32 %sub1.i.i.i.i51
  %77 = ptrtoint ptr %arrayidx.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i.i.i.i52, align 4
  %shr.i.i.i.i53 = lshr i32 %78, %sub.i.i.i.i50
  %notmask.i.i.i.i54 = shl nsw i32 -1, %bits.0.i.i.i47
  %sub2.i.i.i.i55 = xor i32 %notmask.i.i.i.i54, -1
  %and.i.i.i.i56 = and i32 %shr.i.i.i.i53, %sub2.i.i.i.i55
  %phi.bo.i57 = shl i32 %and.i.i.i.i56, 2
  %phi.bo13.i = add i32 %phi.bo.i57, 192
  br label %cpsw_ale_vlan_set_unreg_mcast_idx.exit

cpsw_ale_vlan_set_unreg_mcast_idx.exit:           ; preds = %if.end11.i.i.i58, %do.end.i.i.i39, %if.else.cpsw_ale_vlan_set_unreg_mcast_idx.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ %phi.bo13.i, %if.end11.i.i.i58 ], [ 184, %do.end.i.i.i39 ], [ 104, %if.else.cpsw_ale_vlan_set_unreg_mcast_idx.exit_crit_edge ]
  %79 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %80, i32 %retval.0.i.i.i
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60) #7, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  %82 = and i32 %81, -16777217
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #7
  %unreg_mcast.0.i = or i32 %83, %masksel.i61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %84 = tail call i32 @llvm.bswap.i32(i32 %unreg_mcast.0.i) #7
  %85 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %86, i32 %retval.0.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %84) #7, !srcloc !128
  br label %if.end14

if.end14:                                         ; preds = %cpsw_ale_vlan_set_unreg_mcast_idx.exit, %if.end11.i.i31.i, %do.end.i.i15.i, %if.then11.if.end14_crit_edge
  %87 = ptrtoint ptr %ale_entries to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ale_entries, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %idx.070)
  %cmp.i63 = icmp ult i32 %88, %idx.070
  br i1 %cmp.i63, label %do.end.i64, label %if.end14.cpsw_ale_write.exit_crit_edge, !prof !130

if.end14.cpsw_ale_write.exit_crit_edge:           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_write.exit

do.end.i64:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 317, i32 noundef 9, ptr noundef null) #7
  br label %cpsw_ale_write.exit

cpsw_ale_write.exit:                              ; preds = %do.end.i64, %if.end14.cpsw_ale_write.exit_crit_edge
  %89 = ptrtoint ptr %ale_entry to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ale_entry, align 4
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #7
  %92 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %93, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %91) #7, !srcloc !128
  %94 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %0, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #7
  %97 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr21.1.i = getelementptr i8, ptr %98, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.1.i, i32 %96) #7, !srcloc !128
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %1, align 4
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #7
  %102 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr21.2.i = getelementptr i8, ptr %103, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.2.i, i32 %101) #7, !srcloc !128
  %or.i = or i32 %idx.070, -2147483648
  %104 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %105 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %106, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %104) #7, !srcloc !128
  br label %cleanup

cleanup:                                          ; preds = %cpsw_ale_write.exit, %cpsw_ale_vlan_get_fld.exit.cleanup_crit_edge, %cpsw_ale_read.exit.cleanup_crit_edge
  %inc = add nuw i32 %idx.070, 1
  %107 = ptrtoint ptr %ale_entries to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ale_entries, align 4
  %cmp = icmp ult i32 %inc, %108
  br i1 %cmp, label %cleanup.cpsw_ale_read.exit_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.cpsw_ale_read.exit_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ale_entry) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_ale_control_set(ptr nocapture noundef readonly %ale, i32 noundef %port, i32 noundef %control, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %control)
  %cmp1 = icmp ugt i32 %control, 26
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_offset = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %control, i32 2
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %port_shift = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %control, i32 4
  %2 = ptrtoint ptr %port_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3 = icmp eq i32 %3, 0
  br i1 %cmp3, label %land.lhs.true.lor.lhs.false7_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

land.lhs.true.lor.lhs.false7_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false7

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %cmp6 = icmp slt i32 %port, 0
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end5.lor.lhs.false7_crit_edge

if.end5.lor.lhs.false7_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false7:                                   ; preds = %if.end5.lor.lhs.false7_crit_edge, %land.lhs.true.lor.lhs.false7_crit_edge
  %port.addr.052 = phi i32 [ %port, %if.end5.lor.lhs.false7_crit_edge ], [ 0, %land.lhs.true.lor.lhs.false7_crit_edge ]
  %ale_ports = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 4
  %4 = ptrtoint ptr %ale_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ale_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %port.addr.052, i32 %5)
  %cmp8.not = icmp ult i32 %port.addr.052, %5
  br i1 %cmp8.not, label %if.end10, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false7
  %bits = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %control, i32 5
  %6 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bits, align 4
  %notmask = shl nsw i32 -1, %7
  %and = and i32 %notmask, %value
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end12, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %sub = xor i32 %notmask, -1
  %offset13 = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %control, i32 1
  %8 = ptrtoint ptr %offset13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset13, align 4
  %mul = mul i32 %port.addr.052, %1
  %add = add i32 %9, %mul
  %shift15 = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %control, i32 3
  %10 = ptrtoint ptr %shift15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %shift15, align 4
  %port_shift16 = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %control, i32 4
  %12 = ptrtoint ptr %port_shift16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_shift16, align 4
  %mul17 = mul i32 %13, %port.addr.052
  %add18 = add i32 %mul17, %11
  %ale_regs = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  %14 = ptrtoint ptr %ale_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ale_regs, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %add
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !129
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %shl21 = shl i32 %sub, %add18
  %neg22 = xor i32 %shl21, -1
  %and23 = and i32 %17, %neg22
  %shl24 = shl i32 %value, %add18
  %or = or i32 %and23, %shl24
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  %19 = ptrtoint ptr %ale_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ale_regs, align 4
  %add.ptr27 = getelementptr i8, ptr %20, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %18) #7, !srcloc !128
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end10.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_ale_control_get(ptr nocapture noundef readonly %ale, i32 noundef %port, i32 noundef %control) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %control)
  %cmp1 = icmp ugt i32 %control, 26
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_offset = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %control, i32 2
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %port_shift = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %control, i32 4
  %2 = ptrtoint ptr %port_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3 = icmp eq i32 %3, 0
  br i1 %cmp3, label %land.lhs.true.lor.lhs.false7_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

land.lhs.true.lor.lhs.false7_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false7

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %cmp6 = icmp slt i32 %port, 0
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end5.lor.lhs.false7_crit_edge

if.end5.lor.lhs.false7_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false7:                                   ; preds = %if.end5.lor.lhs.false7_crit_edge, %land.lhs.true.lor.lhs.false7_crit_edge
  %port.addr.036 = phi i32 [ %port, %if.end5.lor.lhs.false7_crit_edge ], [ 0, %land.lhs.true.lor.lhs.false7_crit_edge ]
  %ale_ports = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 4
  %4 = ptrtoint ptr %ale_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ale_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %port.addr.036, i32 %5)
  %cmp8.not = icmp ult i32 %port.addr.036, %5
  br i1 %cmp8.not, label %if.end10, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  %offset11 = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %control, i32 1
  %6 = ptrtoint ptr %offset11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset11, align 4
  %mul = mul i32 %port.addr.036, %1
  %add = add i32 %7, %mul
  %shift13 = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %control, i32 3
  %8 = ptrtoint ptr %shift13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shift13, align 4
  %port_shift14 = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %control, i32 4
  %10 = ptrtoint ptr %port_shift14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_shift14, align 4
  %mul15 = mul i32 %11, %port.addr.036
  %add16 = add i32 %mul15, %9
  %ale_regs = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  %12 = ptrtoint ptr %ale_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ale_regs, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %add
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !129
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %shr = lshr i32 %15, %add16
  %bits = getelementptr [27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 %control, i32 5
  %16 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bits, align 4
  %notmask = shl nsw i32 -1, %17
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %lor.lhs.false7.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false7.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_ale_start(ptr noundef %ale) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ale_ports.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 4
  %0 = ptrtoint ptr %ale_ports.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not.i.not = icmp eq i32 %1, 0
  br i1 %cmp8.not.i.not, label %entry.cpsw_ale_control_set.exit26_crit_edge, label %if.end10.i

entry.cpsw_ale_control_set.exit26_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_control_set.exit26

if.end10.i:                                       ; preds = %entry
  %2 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 0, i32 5), align 4
  %notmask.i = shl nsw i32 -1, %2
  %and.i = and i32 %notmask.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.end10.i.cpsw_ale_control_set.exit_crit_edge

if.end10.i.cpsw_ale_control_set.exit_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_control_set.exit

if.end12.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = xor i32 %notmask.i, -1
  %3 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 0, i32 1), align 4
  %4 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 0, i32 3), align 4
  %ale_regs.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  %5 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %3
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !129
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %shl21.i = shl i32 %sub.i, %4
  %neg22.i = xor i32 %shl21.i, -1
  %and23.i = and i32 %8, %neg22.i
  %shl24.i = shl nuw i32 1, %4
  %or.i = or i32 %and23.i, %shl24.i
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %10 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %11, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %9) #7, !srcloc !128
  br label %cpsw_ale_control_set.exit

cpsw_ale_control_set.exit:                        ; preds = %if.end12.i, %if.end10.i.cpsw_ale_control_set.exit_crit_edge
  %12 = ptrtoint ptr %ale_ports.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %ale_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp8.not.i9.not = icmp eq i32 %.pr, 0
  br i1 %cmp8.not.i9.not, label %cpsw_ale_control_set.exit.cpsw_ale_control_set.exit26_crit_edge, label %if.end10.i14

cpsw_ale_control_set.exit.cpsw_ale_control_set.exit26_crit_edge: ; preds = %cpsw_ale_control_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_control_set.exit26

if.end10.i14:                                     ; preds = %cpsw_ale_control_set.exit
  %13 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 1, i32 5), align 4
  %notmask.i11 = shl nsw i32 -1, %13
  %and.i12 = and i32 %notmask.i11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12)
  %tobool.not.i13 = icmp eq i32 %and.i12, 0
  br i1 %tobool.not.i13, label %if.end12.i24, label %if.end10.i14.cpsw_ale_control_set.exit26_crit_edge

if.end10.i14.cpsw_ale_control_set.exit26_crit_edge: ; preds = %if.end10.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_control_set.exit26

if.end12.i24:                                     ; preds = %if.end10.i14
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i15 = xor i32 %notmask.i11, -1
  %14 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 1, i32 1), align 4
  %15 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 1, i32 3), align 4
  %ale_regs.i16 = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  %16 = ptrtoint ptr %ale_regs.i16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ale_regs.i16, align 4
  %add.ptr.i17 = getelementptr i8, ptr %17, i32 %14
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #7, !srcloc !129
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %shl21.i18 = shl i32 %sub.i15, %15
  %neg22.i19 = xor i32 %shl21.i18, -1
  %and23.i20 = and i32 %19, %neg22.i19
  %shl24.i21 = shl nuw i32 1, %15
  %or.i22 = or i32 %and23.i20, %shl24.i21
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i22) #7
  %21 = ptrtoint ptr %ale_regs.i16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ale_regs.i16, align 4
  %add.ptr27.i23 = getelementptr i8, ptr %22, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i23, i32 %20) #7, !srcloc !128
  br label %cpsw_ale_control_set.exit26

cpsw_ale_control_set.exit26:                      ; preds = %if.end12.i24, %if.end10.i14.cpsw_ale_control_set.exit26_crit_edge, %cpsw_ale_control_set.exit.cpsw_ale_control_set.exit26_crit_edge, %entry.cpsw_ale_control_set.exit26_crit_edge
  %ale_ageout.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 2
  %23 = ptrtoint ptr %ale_ageout.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ale_ageout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i27 = icmp eq i32 %24, 0
  br i1 %tobool.not.i27, label %cpsw_ale_control_set.exit26.cpsw_ale_aging_start.exit_crit_edge, label %if.end.i

cpsw_ale_control_set.exit26.cpsw_ale_aging_start.exit_crit_edge: ; preds = %cpsw_ale_control_set.exit26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_aging_start.exit

if.end.i:                                         ; preds = %cpsw_ale_control_set.exit26
  %features.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 4
  %25 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %features.i, align 4
  %and.i28 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %tobool1.not.i = icmp eq i32 %and.i28, 0
  br i1 %tobool1.not.i, label %do.body.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %bus_freq.i.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 8
  %27 = ptrtoint ptr %bus_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bus_freq.i.i, align 4
  %div.i.i = udiv i32 %28, 1000000
  %mul.i.i = mul i32 %div.i.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %mul.i.i)
  %tobool.not.i.i = icmp ult i32 %mul.i.i, 16777216
  br i1 %tobool.not.i.i, label %if.then2.i.cpsw_ale_hw_aging_timer_start.exit.i_crit_edge, label %if.then.i.i

if.then2.i.cpsw_ale_hw_aging_timer_start.exit.i_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_hw_aging_timer_start.exit.i

if.then.i.i:                                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ale, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.45) #10
  br label %cpsw_ale_hw_aging_timer_start.exit.i

cpsw_ale_hw_aging_timer_start.exit.i:             ; preds = %if.then.i.i, %if.then2.i.cpsw_ale_hw_aging_timer_start.exit.i_crit_edge
  %aging_timer.0.i.i = phi i32 [ 16777215, %if.then.i.i ], [ %mul.i.i, %if.then2.i.cpsw_ale_hw_aging_timer_start.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %31 = tail call i32 @llvm.bswap.i32(i32 %aging_timer.0.i.i) #7
  %ale_regs.i.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  %32 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %31) #7, !srcloc !128
  br label %cpsw_ale_aging_start.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %timer.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @cpsw_ale_timer, i32 noundef 0, ptr noundef nonnull @.str.44, ptr noundef nonnull @cpsw_ale_aging_start.__key) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %ageout.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 2
  %35 = ptrtoint ptr %ageout.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ageout.i, align 4
  %add.i = add i32 %36, %34
  %expires.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %timer.i) #7
  br label %cpsw_ale_aging_start.exit

cpsw_ale_aging_start.exit:                        ; preds = %do.body.i, %cpsw_ale_hw_aging_timer_start.exit.i, %cpsw_ale_control_set.exit26.cpsw_ale_aging_start.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_ale_stop(ptr noundef %ale) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ale_ageout.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 2
  %0 = ptrtoint ptr %ale_ageout.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale_ageout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.cpsw_ale_aging_stop.exit_crit_edge, label %if.end.i

entry.cpsw_ale_aging_stop.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_aging_stop.exit

if.end.i:                                         ; preds = %entry
  %features.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 4
  %2 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features.i, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  tail call void @arm_heavy_mb() #7
  %ale_regs.i.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  %4 = ptrtoint ptr %ale_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ale_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !128
  br label %cpsw_ale_aging_stop.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %timer.i = getelementptr inbounds %struct.cpsw_ale, ptr %ale, i32 0, i32 1
  %call.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #7
  br label %cpsw_ale_aging_stop.exit

cpsw_ale_aging_stop.exit:                         ; preds = %if.end3.i, %if.then2.i, %entry.cpsw_ale_aging_stop.exit_crit_edge
  %ale_ports.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 4
  %6 = ptrtoint ptr %ale_ports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ale_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8.not.i.not = icmp eq i32 %7, 0
  br i1 %cmp8.not.i.not, label %cpsw_ale_aging_stop.exit.cpsw_ale_control_set.exit26_crit_edge, label %if.end10.i

cpsw_ale_aging_stop.exit.cpsw_ale_control_set.exit26_crit_edge: ; preds = %cpsw_ale_aging_stop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_control_set.exit26

if.end10.i:                                       ; preds = %cpsw_ale_aging_stop.exit
  %8 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 1, i32 5), align 4
  %notmask.i = shl nsw i32 -1, %8
  %and.i5 = and i32 %notmask.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5)
  %tobool.not.i6 = icmp eq i32 %and.i5, 0
  br i1 %tobool.not.i6, label %if.end12.i, label %if.end10.i.cpsw_ale_control_set.exit_crit_edge

if.end10.i.cpsw_ale_control_set.exit_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_control_set.exit

if.end12.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = xor i32 %notmask.i, -1
  %9 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 1, i32 1), align 4
  %10 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 1, i32 3), align 4
  %ale_regs.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  %11 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %9
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !129
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  %shl21.i = shl i32 %sub.i, %10
  %neg22.i = xor i32 %shl21.i, -1
  %and23.i = and i32 %14, %neg22.i
  %shl24.i = shl nuw i32 1, %10
  %or.i = or i32 %and23.i, %shl24.i
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %16 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %17, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %15) #7, !srcloc !128
  br label %cpsw_ale_control_set.exit

cpsw_ale_control_set.exit:                        ; preds = %if.end12.i, %if.end10.i.cpsw_ale_control_set.exit_crit_edge
  %18 = ptrtoint ptr %ale_ports.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %ale_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp8.not.i13.not = icmp eq i32 %.pr, 0
  br i1 %cmp8.not.i13.not, label %cpsw_ale_control_set.exit.cpsw_ale_control_set.exit26_crit_edge, label %if.end10.i16

cpsw_ale_control_set.exit.cpsw_ale_control_set.exit26_crit_edge: ; preds = %cpsw_ale_control_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_control_set.exit26

if.end10.i16:                                     ; preds = %cpsw_ale_control_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 0, i32 5), align 4
  %notmask.i15 = shl nsw i32 -1, %19
  %sub.i17 = xor i32 %notmask.i15, -1
  %20 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 0, i32 1), align 4
  %21 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 0, i32 3), align 4
  %ale_regs.i18 = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  %22 = ptrtoint ptr %ale_regs.i18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ale_regs.i18, align 4
  %add.ptr.i19 = getelementptr i8, ptr %23, i32 %20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19) #7, !srcloc !129
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  %shl21.i20 = shl i32 %sub.i17, %21
  %neg22.i21 = xor i32 %shl21.i20, -1
  %and23.i22 = and i32 %25, %neg22.i21
  %26 = tail call i32 @llvm.bswap.i32(i32 %and23.i22) #7
  %27 = ptrtoint ptr %ale_regs.i18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ale_regs.i18, align 4
  %add.ptr27.i23 = getelementptr i8, ptr %28, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i23, i32 %26) #7, !srcloc !128
  br label %cpsw_ale_control_set.exit26

cpsw_ale_control_set.exit26:                      ; preds = %if.end10.i16, %cpsw_ale_control_set.exit.cpsw_ale_control_set.exit26_crit_edge, %cpsw_ale_aging_stop.exit.cpsw_ale_control_set.exit26_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cpsw_ale_create(ptr nocapture noundef %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_id = getelementptr inbounds %struct.cpsw_ale_params, ptr %params, i32 0, i32 7
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %while.body.preheader.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.preheader.i:                           ; preds = %entry
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(5) @.str.48) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %while.body.preheader.i.if.end_crit_edge, label %if.end5.i

while.body.preheader.i.if.end_crit_edge:          ; preds = %while.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end5.i:                                        ; preds = %while.body.preheader.i
  %call.1.i = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(12) @.str.49) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp.1.i = icmp eq i32 %call.1.i, 0
  br i1 %cmp.1.i, label %if.end5.i.if.end_crit_edge, label %if.end5.1.i

if.end5.i.if.end_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end5.1.i:                                      ; preds = %if.end5.i
  %call.2.i = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(8) @.str.50) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp.2.i = icmp eq i32 %call.2.i, 0
  br i1 %cmp.2.i, label %if.end5.1.i.if.end_crit_edge, label %if.end5.2.i

if.end5.1.i.if.end_crit_edge:                     ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end5.2.i:                                      ; preds = %if.end5.1.i
  %call.3.i = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(7) @.str.51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp.3.i = icmp eq i32 %call.3.i, 0
  br i1 %cmp.3.i, label %if.end5.2.i.if.end_crit_edge, label %if.end5.3.i

if.end5.2.i.if.end_crit_edge:                     ; preds = %if.end5.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end5.3.i:                                      ; preds = %if.end5.2.i
  %call.4.i = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(13) @.str.52) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %cmp.4.i = icmp eq i32 %call.4.i, 0
  br i1 %cmp.4.i, label %if.end5.3.i.if.end_crit_edge, label %if.end5.4.i

if.end5.3.i.if.end_crit_edge:                     ; preds = %if.end5.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end5.4.i:                                      ; preds = %if.end5.3.i
  %call.5.i = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(13) @.str.53) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %cmp.5.i = icmp eq i32 %call.5.i, 0
  br i1 %cmp.5.i, label %if.end5.4.i.if.end_crit_edge, label %if.end5.5.i

if.end5.4.i.if.end_crit_edge:                     ; preds = %if.end5.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end5.5.i:                                      ; preds = %if.end5.4.i
  %call.6.i = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull dereferenceable(12) @.str.54) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %cmp.6.i = icmp eq i32 %call.6.i, 0
  br i1 %cmp.6.i, label %if.end5.5.i.if.end_crit_edge, label %if.end5.5.i.cleanup_crit_edge

if.end5.5.i.cleanup_crit_edge:                    ; preds = %if.end5.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5.5.i.if.end_crit_edge:                     ; preds = %if.end5.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %if.end5.5.i.if.end_crit_edge, %if.end5.4.i.if.end_crit_edge, %if.end5.3.i.if.end_crit_edge, %if.end5.2.i.if.end_crit_edge, %if.end5.1.i.if.end_crit_edge, %if.end5.i.if.end_crit_edge, %while.body.preheader.i.if.end_crit_edge
  %retval.0.i.ph = phi ptr [ getelementptr inbounds ([8 x %struct.cpsw_ale_dev_id], ptr @cpsw_ale_id_match, i32 0, i32 5), %if.end5.4.i.if.end_crit_edge ], [ getelementptr inbounds ([8 x %struct.cpsw_ale_dev_id], ptr @cpsw_ale_id_match, i32 0, i32 4), %if.end5.3.i.if.end_crit_edge ], [ getelementptr inbounds ([8 x %struct.cpsw_ale_dev_id], ptr @cpsw_ale_id_match, i32 0, i32 3), %if.end5.2.i.if.end_crit_edge ], [ getelementptr inbounds ([8 x %struct.cpsw_ale_dev_id], ptr @cpsw_ale_id_match, i32 0, i32 2), %if.end5.1.i.if.end_crit_edge ], [ getelementptr inbounds ([8 x %struct.cpsw_ale_dev_id], ptr @cpsw_ale_id_match, i32 0, i32 1), %if.end5.i.if.end_crit_edge ], [ @cpsw_ale_id_match, %while.body.preheader.i.if.end_crit_edge ], [ getelementptr inbounds ([8 x %struct.cpsw_ale_dev_id], ptr @cpsw_ale_id_match, i32 0, i32 6), %if.end5.5.i.if.end_crit_edge ]
  %tbl_entries = getelementptr inbounds %struct.cpsw_ale_dev_id, ptr %retval.0.i.ph, i32 0, i32 2
  %2 = ptrtoint ptr %tbl_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tbl_entries, align 4
  %ale_entries2 = getelementptr inbounds %struct.cpsw_ale_params, ptr %params, i32 0, i32 3
  %4 = ptrtoint ptr %ale_entries2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %ale_entries2, align 4
  %major_ver_mask = getelementptr inbounds %struct.cpsw_ale_dev_id, ptr %retval.0.i.ph, i32 0, i32 3
  %5 = ptrtoint ptr %major_ver_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %major_ver_mask, align 4
  %major_ver_mask3 = getelementptr inbounds %struct.cpsw_ale_params, ptr %params, i32 0, i32 6
  %7 = ptrtoint ptr %major_ver_mask3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %major_ver_mask3, align 4
  %nu_switch_ale = getelementptr inbounds %struct.cpsw_ale_dev_id, ptr %retval.0.i.ph, i32 0, i32 4
  %8 = ptrtoint ptr %nu_switch_ale to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nu_switch_ale, align 4, !range !131
  %nu_switch_ale5 = getelementptr inbounds %struct.cpsw_ale_params, ptr %params, i32 0, i32 5
  %10 = ptrtoint ptr %nu_switch_ale5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %nu_switch_ale5, align 4
  %11 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %params, align 4
  %call.i173 = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 116, i32 noundef 3520) #7
  %tobool7.not = icmp eq ptr %call.i173, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %13 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %params, align 4
  %call12 = tail call ptr @devm_bitmap_zalloc(ptr noundef %14, i32 noundef 4096, i32 noundef 3264) #7
  %p0_untag_vid_mask = getelementptr inbounds %struct.cpsw_ale, ptr %call.i173, i32 0, i32 8
  %15 = ptrtoint ptr %p0_untag_vid_mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call12, ptr %p0_untag_vid_mask, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.end10.cleanup_crit_edge, label %if.end17

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %16 = call ptr @memcpy(ptr %call.i173, ptr %params, i32 36)
  %ale_ageout = getelementptr inbounds %struct.cpsw_ale_params, ptr %call.i173, i32 0, i32 2
  %17 = ptrtoint ptr %ale_ageout to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ale_ageout, align 4
  %mul = mul i32 %18, 100
  %ageout = getelementptr inbounds %struct.cpsw_ale, ptr %call.i173, i32 0, i32 2
  %19 = ptrtoint ptr %ageout to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul, ptr %ageout, align 4
  %features = getelementptr inbounds %struct.cpsw_ale_dev_id, ptr %retval.0.i.ph, i32 0, i32 1
  %20 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %features, align 4
  %features20 = getelementptr inbounds %struct.cpsw_ale, ptr %call.i173, i32 0, i32 4
  %22 = ptrtoint ptr %features20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %features20, align 4
  %vlan_entry_tbl = getelementptr inbounds %struct.cpsw_ale_dev_id, ptr %retval.0.i.ph, i32 0, i32 5
  %23 = ptrtoint ptr %vlan_entry_tbl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vlan_entry_tbl, align 4
  %vlan_entry_tbl21 = getelementptr inbounds %struct.cpsw_ale, ptr %call.i173, i32 0, i32 9
  %25 = ptrtoint ptr %vlan_entry_tbl21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %vlan_entry_tbl21, align 4
  %ale_regs = getelementptr inbounds %struct.cpsw_ale_params, ptr %call.i173, i32 0, i32 1
  %26 = ptrtoint ptr %ale_regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ale_regs, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !129
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %shr = lshr i32 %29, 8
  %major_ver_mask25 = getelementptr inbounds %struct.cpsw_ale_params, ptr %call.i173, i32 0, i32 6
  %30 = ptrtoint ptr %major_ver_mask25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %major_ver_mask25, align 4
  %and = and i32 %shr, %31
  %shl = shl nuw i32 %and, 8
  %and26 = and i32 %29, 255
  %or = or i32 %shl, %and26
  %version = getelementptr inbounds %struct.cpsw_ale, ptr %call.i173, i32 0, i32 3
  %32 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or, ptr %version, align 4
  %33 = ptrtoint ptr %call.i173 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i173, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.7, i32 noundef %and, i32 noundef %and26) #10
  %35 = ptrtoint ptr %features20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %features20, align 4
  %and35 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end17.do.end58_crit_edge, label %land.lhs.true

if.end17.do.end58_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end58

land.lhs.true:                                    ; preds = %if.end17
  %ale_entries38 = getelementptr inbounds %struct.cpsw_ale_params, ptr %call.i173, i32 0, i32 3
  %37 = ptrtoint ptr %ale_entries38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ale_entries38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool39.not = icmp eq i32 %38, 0
  br i1 %tobool39.not, label %if.then40, label %land.lhs.true.do.end58_crit_edge

land.lhs.true.do.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end58

if.then40:                                        ; preds = %land.lhs.true
  %39 = ptrtoint ptr %ale_regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ale_regs, align 4
  %add.ptr44 = getelementptr i8, ptr %40, i32 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #7, !srcloc !129
  %42 = lshr i32 %41, 24
  %and47 = and i32 %42, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.then40.cleanup_crit_edge, label %if.end51

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end51:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %mul52 = shl nuw nsw i32 %and47, 10
  %43 = ptrtoint ptr %ale_entries38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul52, ptr %ale_entries38, align 4
  br label %do.end58

do.end58:                                         ; preds = %if.end51, %land.lhs.true.do.end58_crit_edge, %if.end17.do.end58_crit_edge
  %44 = ptrtoint ptr %call.i173 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i173, align 4
  %ale_entries62 = getelementptr inbounds %struct.cpsw_ale_params, ptr %call.i173, i32 0, i32 3
  %46 = ptrtoint ptr %ale_entries62 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ale_entries62, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.11, i32 noundef %47) #10
  %ale_ports = getelementptr inbounds %struct.cpsw_ale_params, ptr %call.i173, i32 0, i32 4
  %48 = ptrtoint ptr %ale_ports to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ale_ports, align 4
  %port_mask_bits = getelementptr inbounds %struct.cpsw_ale, ptr %call.i173, i32 0, i32 5
  %50 = ptrtoint ptr %port_mask_bits to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %port_mask_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp.i174 = icmp ugt i32 %49, 1
  %sub.i175 = add i32 %49, -1
  %51 = tail call i32 @llvm.ctlz.i32(i32 %sub.i175, i1 false) #7, !range !139
  %add.i = sub nuw nsw i32 32, %51
  %cond99 = select i1 %cmp.i174, i32 %add.i, i32 0
  %port_num_bits = getelementptr inbounds %struct.cpsw_ale, ptr %call.i173, i32 0, i32 6
  %52 = ptrtoint ptr %port_num_bits to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %cond99, ptr %port_num_bits, align 4
  %vlan_field_bits = getelementptr inbounds %struct.cpsw_ale, ptr %call.i173, i32 0, i32 7
  %53 = ptrtoint ptr %vlan_field_bits to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %49, ptr %vlan_field_bits, align 4
  %nu_switch_ale103 = getelementptr inbounds %struct.cpsw_ale_params, ptr %call.i173, i32 0, i32 5
  %54 = ptrtoint ptr %nu_switch_ale103 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %nu_switch_ale103, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool104.not = icmp eq i8 %55, 0
  br i1 %tobool104.not, label %do.end58.if.end114_crit_edge, label %if.then105

do.end58.if.end114_crit_edge:                     ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.then105:                                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #9
  store i32 %49, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 17, i32 5), align 4
  store i32 144, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 17, i32 1), align 4
  store i32 %49, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 18, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 18, i32 3), align 4
  store i32 148, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 18, i32 1), align 4
  store i32 %49, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 19, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 19, i32 3), align 4
  store i32 152, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 19, i32 1), align 4
  store i32 %49, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 20, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 20, i32 3), align 4
  store i32 156, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 20, i32 1), align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then105, %do.end58.if.end114_crit_edge
  %call115 = tail call i32 @cpsw_ale_control_set(ptr noundef nonnull %call.i173, i32 noundef 0, i32 noundef 1, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end114, %if.then40.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end5.5.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i173, %if.end114 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end5.5.i.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end10.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then40.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_bitmap_zalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_ale_dump(ptr nocapture noundef readonly %ale, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ale_entries = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 3
  %0 = ptrtoint ptr %ale_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %cpsw_ale_read.exit.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cpsw_ale_read.exit.lr.ph:                         ; preds = %entry
  %ale_regs.i = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 1
  br label %cpsw_ale_read.exit

cpsw_ale_read.exit:                               ; preds = %cpsw_ale_read.exit.cpsw_ale_read.exit_crit_edge, %cpsw_ale_read.exit.lr.ph
  %i.07 = phi i32 [ 0, %cpsw_ale_read.exit.lr.ph ], [ %inc, %cpsw_ale_read.exit.cpsw_ale_read.exit_crit_edge ]
  %data.addr.06 = phi ptr [ %data, %cpsw_ale_read.exit.lr.ph ], [ %add.ptr, %cpsw_ale_read.exit.cpsw_ale_read.exit_crit_edge ]
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.07) #7
  %3 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #7, !srcloc !128
  %5 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %6, i32 52
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #7, !srcloc !129
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %9 = ptrtoint ptr %data.addr.06 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %data.addr.06, align 4
  %10 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr24.1.i = getelementptr i8, ptr %11, i32 56
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.1.i) #7, !srcloc !129
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  %arrayidx.1.i = getelementptr i32, ptr %data.addr.06, i32 1
  %14 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx.1.i, align 4
  %15 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr24.2.i = getelementptr i8, ptr %16, i32 60
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.2.i) #7, !srcloc !129
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  %arrayidx.2.i = getelementptr i32, ptr %data.addr.06, i32 2
  %19 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx.2.i, align 4
  %add.ptr = getelementptr i32, ptr %data.addr.06, i32 3
  %inc = add nuw i32 %i.07, 1
  %20 = ptrtoint ptr %ale_entries to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ale_entries, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %cpsw_ale_read.exit.cpsw_ale_read.exit_crit_edge, label %cpsw_ale_read.exit.for.end_crit_edge

cpsw_ale_read.exit.for.end_crit_edge:             ; preds = %cpsw_ale_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cpsw_ale_read.exit.cpsw_ale_read.exit_crit_edge:  ; preds = %cpsw_ale_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_read.exit

for.end:                                          ; preds = %cpsw_ale_read.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cpsw_ale_get_num_entries(ptr noundef readonly %ale) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ale, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ale_entries = getelementptr inbounds %struct.cpsw_ale_params, ptr %ale, i32 0, i32 3
  %0 = ptrtoint ptr %ale_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale_entries, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpsw_ale_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ale_ports.i = getelementptr i8, ptr %t, i32 -20
  %0 = ptrtoint ptr %ale_ports.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not.i.not = icmp eq i32 %1, 0
  br i1 %cmp8.not.i.not, label %entry.cpsw_ale_control_set.exit_crit_edge, label %if.end10.i

entry.cpsw_ale_control_set.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_control_set.exit

if.end10.i:                                       ; preds = %entry
  %2 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 2, i32 5), align 4
  %notmask.i = shl nsw i32 -1, %2
  %and.i = and i32 %notmask.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.end10.i.cpsw_ale_control_set.exit_crit_edge

if.end10.i.cpsw_ale_control_set.exit_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpsw_ale_control_set.exit

if.end12.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = xor i32 %notmask.i, -1
  %3 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 2, i32 1), align 4
  %4 = load i32, ptr getelementptr inbounds ([27 x %struct.ale_control_info], ptr @ale_controls, i32 0, i32 2, i32 3), align 4
  %ale_regs.i = getelementptr i8, ptr %t, i32 -32
  %5 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %3
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !129
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %shl21.i = shl i32 %sub.i, %4
  %neg22.i = xor i32 %shl21.i, -1
  %and23.i = and i32 %8, %neg22.i
  %shl24.i = shl nuw i32 1, %4
  %or.i = or i32 %and23.i, %shl24.i
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %10 = ptrtoint ptr %ale_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ale_regs.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %11, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %9) #7, !srcloc !128
  br label %cpsw_ale_control_set.exit

cpsw_ale_control_set.exit:                        ; preds = %if.end12.i, %if.end10.i.cpsw_ale_control_set.exit_crit_edge, %entry.cpsw_ale_control_set.exit_crit_edge
  %ageout = getelementptr i8, ptr %t, i32 48
  %12 = ptrtoint ptr %ageout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ageout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %cpsw_ale_control_set.exit.if.end_crit_edge, label %if.then

cpsw_ale_control_set.exit.if.end_crit_edge:       ; preds = %cpsw_ale_control_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %cpsw_ale_control_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %14, %13
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %15 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %cpsw_ale_control_set.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !93, !94, !95, !96, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 758, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cpsw_ale_vlan_add_modify._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @cpsw_ale_vlan_add_modify._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 761, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @cpsw_ale_vlan_add_modify.__UNIQUE_ID_ddebug341, !9, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 1316, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @cpsw_ale_create._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @cpsw_ale_create._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 1338, i32 2}
!20 = !{ptr @cpsw_ale_create._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @cpsw_ale_create._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 253, i32 3}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @cpsw_ale_entry_set_fld._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @cpsw_ale_entry_set_fld._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 228, i32 3}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @cpsw_ale_entry_get_fld._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @cpsw_ale_entry_get_fld._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 868, i32 12}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 876, i32 12}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 884, i32 12}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 892, i32 12}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 900, i32 12}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 908, i32 12}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 916, i32 12}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 924, i32 12}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 932, i32 12}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 940, i32 12}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 948, i32 12}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 956, i32 12}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 964, i32 12}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 972, i32 12}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 980, i32 12}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 988, i32 12}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 996, i32 12}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 1036, i32 12}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 1044, i32 12}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 1052, i32 12}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 1060, i32 12}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 1004, i32 12}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 1012, i32 12}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 1028, i32 12}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 1020, i32 12}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 1068, i32 12}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 1076, i32 12}
!86 = !{ptr @ale_controls, !87, !"ale_controls", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 866, i32 32}
!88 = !{ptr @cpsw_ale_aging_start.__key, !89, !"__key", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 1182, i32 2}
!90 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 1160, i32 3}
!93 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @cpsw_ale_hw_aging_timer_start._entry, !92, !"_entry", i1 false, i1 false}
!96 = !{ptr @cpsw_ale_hw_aging_timer_start._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 1218, i32 13}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 1225, i32 13}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 1231, i32 13}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 1238, i32 13}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 1246, i32 13}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 1254, i32 13}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 1260, i32 13}
!111 = !{ptr @cpsw_ale_id_match, !112, !"cpsw_ale_id_match", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 1215, i32 37}
!113 = !{ptr @vlan_entry_cpsw, !114, !"vlan_entry_cpsw", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 179, i32 35}
!115 = !{ptr @vlan_entry_nu, !116, !"vlan_entry_nu", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 187, i32 35}
!117 = !{ptr @vlan_entry_k3_cpswxg, !118, !"vlan_entry_k3_cpswxg", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/ti/cpsw_ale.c", i32 195, i32 35}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{i64 6581738}
!129 = !{i64 6582156}
!130 = !{!"branch_weights", i32 1, i32 2000}
!131 = !{i8 0, i8 2}
!132 = !{i64 2156094311}
!133 = !{i64 2156094813}
!134 = !{i64 2149152968, i64 2149152973, i64 2149152986, i64 2149153030, i64 2149153064, i64 2149153085}
!135 = !{i64 2156100519}
!136 = !{i64 2156100962}
!137 = !{i64 2156107932}
!138 = !{i64 2156108368}
!139 = !{i32 0, i32 33}
