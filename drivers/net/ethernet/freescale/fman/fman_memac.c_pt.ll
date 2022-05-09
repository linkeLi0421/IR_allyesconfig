; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/fman/fman_memac.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/fman/fman_memac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fman_mac = type { ptr, i64, i32, i16, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.fman_rev_info, i8, ptr, i8 }
%struct.fman_rev_info = type { i8, i8 }
%struct.memac_regs = type { [2 x i32], i32, %struct.mac_addr, i32, [1 x i32], i32, i32, [2 x i32], i32, [4 x i32], i32, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, [2 x i32], [7 x %struct.mac_addr], i32, i32, [8 x i32], i32, [7 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, [14 x i32], i32, i32, [14 x i32], i32, [3 x i32], i32, [3 x i32], i32, [3 x i32], i32, i32, i32, i32 }
%struct.mac_addr = type { i32, i32 }
%struct.memac_cfg = type { i8, i8, i8, ptr, i16, i16, i32 }
%struct.eth_hash_entry = type { i64, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.eth_hash_t = type { i16, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fixed_phy_status = type { i32, i32, i32, i32, i32 }
%struct.fman_mac_params = type { ptr, [6 x i8], i8, i32, i16, ptr, ptr, ptr, ptr, i8, ptr }

@memac_add_hash_mac_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013fsl_dpaa_mac: Unicast Address\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"memac_add_hash_mac_address\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/freescale/fman/fman_memac.c\00", [47 x i8] zeroinitializer }, align 32
@memac_add_hash_mac_address._entry_ptr = internal global ptr @memac_add_hash_mac_address._entry, section ".printk_index", align 4
@memac_set_exception._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 1019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013fsl_dpaa_mac: Undefined exception\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"memac_set_exception\00", [44 x i8] zeroinitializer }, align 32
@memac_set_exception._entry_ptr = internal global ptr @memac_set_exception._entry, section ".printk_index", align 4
@memac_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1053, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013fsl_dpaa_mac: mEMAC reset failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"memac_init\00", [21 x i8] zeroinitializer }, align 32
@memac_init._entry_ptr = internal global ptr @memac_init._entry, section ".printk_index", align 4
@memac_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 1114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013fsl_dpaa_mac: settings Mac max frame length is FAILED\0A\00", [39 x i8] zeroinitializer }, align 32
@memac_init._entry_ptr.9 = internal global ptr @memac_init._entry.7, section ".printk_index", align 4
@memac_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 1121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013fsl_dpaa_mac: allocation hash table is FAILED\0A\00", [47 x i8] zeroinitializer }, align 32
@memac_init._entry_ptr.12 = internal global ptr @memac_init._entry.10, section ".printk_index", align 4
@memac_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 1128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@memac_init._entry_ptr.14 = internal global ptr @memac_init._entry.13, section ".printk_index", align 4
@memac_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 1201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013fsl_dpaa_mac: PCS PHY node is not available\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"memac_config\00", [19 x i8] zeroinitializer }, align 32
@memac_config._entry_ptr = internal global ptr @memac_config._entry, section ".printk_index", align 4
@memac_config._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 1208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013fsl_dpaa_mac: of_phy_find_device (PCS PHY) failed\0A\00", [43 x i8] zeroinitializer }, align 32
@memac_config._entry_ptr.19 = internal global ptr @memac_config._entry.17, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_init_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013fsl_dpaa_mac: Uninitialized exception handler\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"check_init_parameters\00", [42 x i8] zeroinitializer }, align 32
@check_init_parameters._entry_ptr = internal global ptr @check_init_parameters._entry, section ".printk_index", align 4
@check_init_parameters._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014fsl_dpaa_mac: Uninitialize event handler\0A\00", [52 x i8] zeroinitializer }, align 32
@check_init_parameters._entry_ptr.24 = internal global ptr @check_init_parameters._entry.22, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.memac_init = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 32774, i32 32774, i32 32774, i32 32774, i32 2, i32 2, i32 0], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 10, i64 1000]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 9, i64 26, i64 34]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 18]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 18]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 924, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1019, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1053, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1114, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1121, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1128, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1201, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1208, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 604, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [52 x i8] c"../drivers/net/ethernet/freescale/fman/fman_memac.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 608, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [24 x i8] c"switch.table.memac_init\00", align 1
@llvm.compiler.used = appending global [36 x ptr] [ptr @check_init_parameters._entry, ptr @check_init_parameters._entry.22, ptr @check_init_parameters._entry_ptr, ptr @check_init_parameters._entry_ptr.24, ptr @memac_add_hash_mac_address._entry, ptr @memac_add_hash_mac_address._entry_ptr, ptr @memac_config._entry, ptr @memac_config._entry.17, ptr @memac_config._entry_ptr, ptr @memac_config._entry_ptr.19, ptr @memac_init._entry, ptr @memac_init._entry.10, ptr @memac_init._entry.13, ptr @memac_init._entry.7, ptr @memac_init._entry_ptr, ptr @memac_init._entry_ptr.12, ptr @memac_init._entry_ptr.14, ptr @memac_init._entry_ptr.9, ptr @memac_set_exception._entry, ptr @memac_set_exception._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @switch.table.memac_init], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memac_add_hash_mac_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memac_set_exception._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memac_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memac_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memac_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memac_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memac_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memac_config._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_init_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_init_parameters._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.memac_init to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memac_enable(ptr nocapture noundef readonly %memac, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %memac_drv_param = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 11
  %0 = ptrtoint ptr %memac_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memac_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %memac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memac, align 8
  %command_config = getelementptr inbounds %struct.memac_regs, ptr %3, i32 0, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %command_config) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  %trunc = trunc i32 %mode to i2
  %rev = call i2 @llvm.bitreverse.i2(i2 %trunc)
  %5 = zext i2 %rev to i32
  %6 = or i32 %4, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !56
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %command_config, i32 %6) #8, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memac_disable(ptr nocapture noundef readonly %memac, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %memac_drv_param = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 11
  %0 = ptrtoint ptr %memac_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memac_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %memac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memac, align 8
  %command_config = getelementptr inbounds %struct.memac_regs, ptr %3, i32 0, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %command_config) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  %and = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and5 = and i32 %4, -3
  %spec.select = select i1 %tobool.not, i32 %4, i32 %and5
  %and7 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %and10 = and i32 %spec.select, -2
  %tmp.1 = select i1 %tobool8.not, i32 %spec.select, i32 %and10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %command_config, i32 %tmp.1) #8, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memac_set_promiscuous(ptr nocapture noundef readonly %memac, i1 noundef zeroext %new_val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %memac_drv_param = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 11
  %0 = ptrtoint ptr %memac_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memac_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %memac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memac, align 8
  %command_config = getelementptr inbounds %struct.memac_regs, ptr %3, i32 0, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %command_config) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %and = and i32 %4, -17
  %masksel = select i1 %new_val, i32 16, i32 0
  %tmp.0 = or i32 %and, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %command_config, i32 %tmp.0) #8, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memac_adjust_link(ptr nocapture noundef readonly %memac, i16 noundef zeroext %speed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %memac_drv_param = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 11
  %0 = ptrtoint ptr %memac_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memac_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %memac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memac, align 8
  %if_mode = getelementptr inbounds %struct.memac_regs, ptr %3, i32 0, i32 122
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %if_mode) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  %and = and i32 %4, -65
  %phy_if = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 2
  %5 = ptrtoint ptr %phy_if to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phy_if, align 8
  %7 = add i32 %6, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %if.then5, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then5:                                         ; preds = %if.end
  %and7 = and i32 %4, -61505
  %or = or i32 %and7, 4096
  %9 = zext i16 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %speed, label %if.then5.do.body_crit_edge [
    i16 1000, label %sw.bb
    i16 10, label %sw.bb11
  ]

if.then5.do.body_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

sw.bb:                                            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %or8 = or i32 %and7, 20480
  br label %do.body

sw.bb11:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %or12 = or i32 %and7, 12288
  br label %do.body

do.body:                                          ; preds = %sw.bb11, %sw.bb, %if.then5.do.body_crit_edge, %if.end.do.body_crit_edge
  %tmp.0 = phi i32 [ %or12, %sw.bb11 ], [ %or8, %sw.bb ], [ %and, %if.end.do.body_crit_edge ], [ %or, %if.then5.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %if_mode, i32 %tmp.0) #8, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @memac_cfg_max_frame_len(ptr nocapture noundef readonly %memac, i16 noundef zeroext %new_val) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %memac_drv_param = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 11
  %0 = ptrtoint ptr %memac_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memac_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %max_frame_length = getelementptr inbounds %struct.memac_cfg, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %max_frame_length to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %new_val, ptr %max_frame_length, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @memac_cfg_reset_on_init(ptr nocapture noundef readonly %memac, i1 noundef zeroext %enable) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %memac_drv_param = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 11
  %0 = ptrtoint ptr %memac_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memac_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %frombool = zext i1 %enable to i8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %1, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @memac_cfg_fixed_link(ptr nocapture noundef readonly %memac, ptr noundef %fixed_link) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %memac_drv_param = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 11
  %0 = ptrtoint ptr %memac_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memac_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fixed_link2 = getelementptr inbounds %struct.memac_cfg, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fixed_link2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fixed_link, ptr %fixed_link2, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memac_set_tx_pause_frames(ptr nocapture noundef readonly %memac, i8 noundef zeroext %priority, i16 noundef zeroext %pause_time, i16 noundef zeroext %thresh_time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %memac_drv_param = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 11
  %0 = ptrtoint ptr %memac_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memac_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %memac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memac, align 8
  %tx_fifo_sections = getelementptr inbounds %struct.memac_regs, ptr %3, i32 0, i32 6
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tx_fifo_sections) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  %and = and i32 %4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %and)
  %cmp = icmp eq i32 %and, 25
  %or4 = or i32 %and, 1048576
  %tmp.0 = select i1 %cmp, i32 4194329, i32 %or4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tx_fifo_sections, i32 %tmp.0) #8, !srcloc !57
  %command_config = getelementptr inbounds %struct.memac_regs, ptr %3, i32 0, i32 1
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %command_config) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  %and12 = and i32 %5, -524289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %command_config, i32 %and12) #8, !srcloc !57
  %conv = zext i8 %priority to i32
  %div93 = lshr i32 %conv, 1
  %arrayidx = getelementptr %struct.memac_regs, ptr %3, i32 0, i32 15, i32 %div93
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  %rem = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %tmp.1.v = select i1 %tobool.not, i32 -65536, i32 65535
  %tmp.1 = and i32 %6, %tmp.1.v
  %conv25 = zext i16 %pause_time to i32
  %mul = shl nuw nsw i32 %rem, 4
  %shl = shl nuw i32 %conv25, %mul
  %or28 = or i32 %tmp.1, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %or28) #8, !srcloc !57
  %arrayidx39 = getelementptr %struct.memac_regs, ptr %3, i32 0, i32 16, i32 %div93
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx39) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %tmp.2 = and i32 %7, %tmp.1.v
  %conv50 = zext i16 %thresh_time to i32
  %shl54 = shl nuw i32 %conv50, %mul
  %or55 = or i32 %tmp.2, %shl54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx39, i32 %or55) #8, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memac_accept_rx_pause_frames(ptr nocapture noundef readonly %memac, i1 noundef zeroext %en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %memac_drv_param = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 11
  %0 = ptrtoint ptr %memac_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memac_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %memac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memac, align 8
  %command_config = getelementptr inbounds %struct.memac_regs, ptr %3, i32 0, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %command_config) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  %and = and i32 %4, -257
  %masksel = select i1 %en, i32 0, i32 256
  %tmp.0 = or i32 %and, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %command_config, i32 %tmp.0) #8, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memac_modify_mac_address(ptr nocapture noundef readonly %memac, ptr nocapture noundef readonly %enet_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %memac_drv_param = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 11
  %0 = ptrtoint ptr %memac_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memac_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %memac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memac, align 8
  %arrayidx11.i = getelementptr i8, ptr %enet_addr, i32 4
  %4 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %5 to i32
  %arrayidx13.i = getelementptr i8, ptr %enet_addr, i32 5
  %6 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %7 to i32
  %shl15.i = shl nuw nsw i32 %conv14.i, 8
  %or16.i = or i32 %shl15.i, %conv12.i
  %arrayidx1.i = getelementptr i8, ptr %enet_addr, i32 1
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %9 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 8
  %10 = ptrtoint ptr %enet_addr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enet_addr, align 1
  %conv.i = zext i8 %11 to i32
  %or.i = or i32 %shl.i, %conv.i
  %arrayidx3.i = getelementptr i8, ptr %enet_addr, i32 2
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %13 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 16
  %or6.i = or i32 %or.i, %shl5.i
  %arrayidx7.i = getelementptr i8, ptr %enet_addr, i32 3
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %15 to i32
  %shl9.i = shl nuw i32 %conv8.i, 24
  %or10.i = or i32 %or6.i, %shl9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %mac_addr0.i = getelementptr inbounds %struct.memac_regs, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac_addr0.i, i32 %or10.i) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  %mac_addr_u.i = getelementptr inbounds %struct.memac_regs, ptr %3, i32 0, i32 2, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac_addr_u.i, i32 %or16.i) #8, !srcloc !57
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memac_add_hash_mac_address(ptr nocapture noundef readonly %memac, ptr nocapture noundef readonly %eth_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %memac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memac, align 8
  %memac_drv_param = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 11
  %2 = ptrtoint ptr %memac_drv_param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memac_drv_param, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %eth_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %eth_addr, align 1
  %conv = zext i8 %5 to i64
  %shl = shl nuw nsw i64 %conv, 40
  %arrayidx2 = getelementptr [6 x i8], ptr %eth_addr, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %7 to i64
  %shl4 = shl nuw nsw i64 %conv3, 32
  %or = or i64 %shl4, %shl
  %arrayidx5 = getelementptr [6 x i8], ptr %eth_addr, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %9 to i64
  %shl7 = shl nuw nsw i64 %conv6, 24
  %or8 = or i64 %or, %shl7
  %arrayidx9 = getelementptr [6 x i8], ptr %eth_addr, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %11 to i64
  %shl11 = shl nuw nsw i64 %conv10, 16
  %or12 = or i64 %or8, %shl11
  %arrayidx13 = getelementptr [6 x i8], ptr %eth_addr, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %13 to i64
  %shl15 = shl nuw nsw i64 %conv14, 8
  %or16 = or i64 %or12, %shl15
  %arrayidx17 = getelementptr [6 x i8], ptr %eth_addr, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %15 to i64
  %or19 = or i64 %or16, %conv18
  %16 = and i64 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool.not = icmp eq i64 %16, 0
  br i1 %tobool.not, label %do.end, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 2592, i32 noundef 16) #11
  %tobool26.not = icmp eq ptr %call7.i, null
  br i1 %tobool26.not, label %for.body.i.preheader.cleanup_crit_edge, label %if.end28

for.body.i.preheader.cleanup_crit_edge:           ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup

if.end28:                                         ; preds = %for.body.i.preheader
  %eth_addr.addr.123.i = lshr i64 %or19, 1
  %and731.i = xor i64 %eth_addr.addr.123.i, %or19
  %eth_addr.addr.1.i = lshr i64 %or19, 2
  %and7.132.i = xor i64 %and731.i, %eth_addr.addr.1.i
  %eth_addr.addr.1.1.i = lshr i64 %or19, 3
  %and7.233.i = xor i64 %and7.132.i, %eth_addr.addr.1.1.i
  %eth_addr.addr.1.2.i = lshr i64 %or19, 4
  %and7.334.i = xor i64 %and7.233.i, %eth_addr.addr.1.2.i
  %eth_addr.addr.1.3.i = lshr i64 %or19, 5
  %and7.435.i = xor i64 %and7.334.i, %eth_addr.addr.1.3.i
  %eth_addr.addr.1.4.i = lshr i64 %or19, 6
  %and7.536.i = xor i64 %and7.435.i, %eth_addr.addr.1.4.i
  %eth_addr.addr.1.5.i = lshr i64 %or19, 7
  %and7.637.i = xor i64 %and7.536.i, %eth_addr.addr.1.5.i
  %and7.637.i.tr = trunc i64 %and7.637.i to i32
  %18 = shl i32 %and7.637.i.tr, 5
  %19 = and i32 %18, 32
  %eth_addr.addr.123.i.1 = lshr i64 %or16, 9
  %eth_addr.addr.1.6.i = lshr exact i64 %or16, 8
  %and731.i.1 = xor i64 %eth_addr.addr.123.i.1, %eth_addr.addr.1.6.i
  %eth_addr.addr.1.i.1 = lshr i64 %or16, 10
  %and7.132.i.1 = xor i64 %and731.i.1, %eth_addr.addr.1.i.1
  %eth_addr.addr.1.1.i.1 = lshr i64 %or16, 11
  %and7.233.i.1 = xor i64 %and7.132.i.1, %eth_addr.addr.1.1.i.1
  %eth_addr.addr.1.2.i.1 = lshr i64 %or16, 12
  %and7.334.i.1 = xor i64 %and7.233.i.1, %eth_addr.addr.1.2.i.1
  %eth_addr.addr.1.3.i.1 = lshr i64 %or16, 13
  %and7.435.i.1 = xor i64 %and7.334.i.1, %eth_addr.addr.1.3.i.1
  %eth_addr.addr.1.4.i.1 = lshr i64 %or16, 14
  %and7.536.i.1 = xor i64 %and7.435.i.1, %eth_addr.addr.1.4.i.1
  %eth_addr.addr.1.5.i.1 = lshr i64 %or16, 15
  %and7.637.i.1 = xor i64 %and7.536.i.1, %eth_addr.addr.1.5.i.1
  %and7.637.i.1.tr = trunc i64 %and7.637.i.1 to i32
  %20 = shl i32 %and7.637.i.1.tr, 4
  %21 = and i32 %20, 16
  %conv11.i.1 = or i32 %19, %21
  %eth_addr.addr.123.i.2 = lshr i64 %or12, 17
  %eth_addr.addr.1.6.i.1 = lshr exact i64 %or12, 16
  %and731.i.2 = xor i64 %eth_addr.addr.123.i.2, %eth_addr.addr.1.6.i.1
  %eth_addr.addr.1.i.2 = lshr i64 %or12, 18
  %and7.132.i.2 = xor i64 %and731.i.2, %eth_addr.addr.1.i.2
  %eth_addr.addr.1.1.i.2 = lshr i64 %or12, 19
  %and7.233.i.2 = xor i64 %and7.132.i.2, %eth_addr.addr.1.1.i.2
  %eth_addr.addr.1.2.i.2 = lshr i64 %or12, 20
  %and7.334.i.2 = xor i64 %and7.233.i.2, %eth_addr.addr.1.2.i.2
  %eth_addr.addr.1.3.i.2 = lshr i64 %or12, 21
  %and7.435.i.2 = xor i64 %and7.334.i.2, %eth_addr.addr.1.3.i.2
  %eth_addr.addr.1.4.i.2 = lshr i64 %or12, 22
  %and7.536.i.2 = xor i64 %and7.435.i.2, %eth_addr.addr.1.4.i.2
  %eth_addr.addr.1.5.i.2 = lshr i64 %or12, 23
  %and7.637.i.2 = xor i64 %and7.536.i.2, %eth_addr.addr.1.5.i.2
  %and7.637.i.2.tr = trunc i64 %and7.637.i.2 to i32
  %22 = shl i32 %and7.637.i.2.tr, 3
  %23 = and i32 %22, 8
  %conv11.i.2 = or i32 %conv11.i.1, %23
  %eth_addr.addr.123.i.3 = lshr i64 %or8, 25
  %eth_addr.addr.1.6.i.2 = lshr exact i64 %or8, 24
  %and731.i.3 = xor i64 %eth_addr.addr.123.i.3, %eth_addr.addr.1.6.i.2
  %eth_addr.addr.1.i.3 = lshr i64 %or8, 26
  %and7.132.i.3 = xor i64 %and731.i.3, %eth_addr.addr.1.i.3
  %eth_addr.addr.1.1.i.3 = lshr i64 %or8, 27
  %and7.233.i.3 = xor i64 %and7.132.i.3, %eth_addr.addr.1.1.i.3
  %eth_addr.addr.1.2.i.3 = lshr i64 %or8, 28
  %and7.334.i.3 = xor i64 %and7.233.i.3, %eth_addr.addr.1.2.i.3
  %eth_addr.addr.1.3.i.3 = lshr i64 %or8, 29
  %and7.435.i.3 = xor i64 %and7.334.i.3, %eth_addr.addr.1.3.i.3
  %eth_addr.addr.1.4.i.3 = lshr i64 %conv6, 6
  %and7.536.i.3 = xor i64 %and7.435.i.3, %eth_addr.addr.1.4.i.3
  %and7.536.i.3.masked = and i64 %and7.536.i.3, 1
  %eth_addr.addr.1.5.i.3 = lshr i64 %conv6, 7
  %xor.6.i.3 = xor i64 %and7.536.i.3.masked, %eth_addr.addr.1.5.i.3
  %xor.6.i.3.tr = trunc i64 %xor.6.i.3 to i32
  %24 = shl nuw nsw i32 %xor.6.i.3.tr, 2
  %conv11.i.3 = or i32 %conv11.i.2, %24
  %eth_addr.addr.123.i.4 = lshr i64 %or, 33
  %eth_addr.addr.1.6.i.3 = lshr exact i64 %or, 32
  %and731.i.4 = xor i64 %eth_addr.addr.123.i.4, %eth_addr.addr.1.6.i.3
  %eth_addr.addr.1.i.4 = lshr i64 %or, 34
  %and7.132.i.4 = xor i64 %and731.i.4, %eth_addr.addr.1.i.4
  %eth_addr.addr.1.1.i.4 = lshr i64 %or, 35
  %and7.233.i.4 = xor i64 %and7.132.i.4, %eth_addr.addr.1.1.i.4
  %eth_addr.addr.1.2.i.4 = lshr i64 %or, 36
  %and7.334.i.4 = xor i64 %and7.233.i.4, %eth_addr.addr.1.2.i.4
  %eth_addr.addr.1.3.i.4 = lshr i64 %conv3, 5
  %and7.435.i.4 = xor i64 %and7.334.i.4, %eth_addr.addr.1.3.i.4
  %eth_addr.addr.1.4.i.4 = lshr i64 %conv3, 6
  %and7.536.i.4 = xor i64 %and7.435.i.4, %eth_addr.addr.1.4.i.4
  %and7.536.i.4.masked = and i64 %and7.536.i.4, 1
  %eth_addr.addr.1.5.i.4 = lshr i64 %conv3, 7
  %xor.6.i.4 = xor i64 %and7.536.i.4.masked, %eth_addr.addr.1.5.i.4
  %xor.6.i.4.tr = trunc i64 %xor.6.i.4 to i32
  %25 = shl nuw nsw i32 %xor.6.i.4.tr, 1
  %eth_addr.addr.123.i.5 = lshr i64 %conv, 1
  %and731.i.5 = xor i64 %eth_addr.addr.123.i.5, %conv
  %eth_addr.addr.1.i.5 = lshr i64 %conv, 2
  %and7.132.i.5 = xor i64 %and731.i.5, %eth_addr.addr.1.i.5
  %eth_addr.addr.1.1.i.5 = lshr i64 %conv, 3
  %and7.233.i.5 = xor i64 %and7.132.i.5, %eth_addr.addr.1.1.i.5
  %eth_addr.addr.1.2.i.5 = lshr i64 %conv, 4
  %and7.334.i.5 = xor i64 %and7.233.i.5, %eth_addr.addr.1.2.i.5
  %eth_addr.addr.1.3.i.5 = lshr i64 %conv, 5
  %and7.435.i.5 = xor i64 %and7.334.i.5, %eth_addr.addr.1.3.i.5
  %eth_addr.addr.1.4.i.5 = lshr i64 %conv, 6
  %and7.536.i.5 = xor i64 %and7.435.i.5, %eth_addr.addr.1.4.i.5
  %and7.536.i.5.masked = and i64 %and7.536.i.5, 1
  %eth_addr.addr.1.5.i.5 = lshr i64 %conv, 7
  %xor.6.i.5 = xor i64 %and7.536.i.5.masked, %eth_addr.addr.1.5.i.5
  %26 = trunc i64 %xor.6.i.5 to i32
  %conv11.i.4.masked = or i32 %conv11.i.3, %25
  %and24 = or i32 %conv11.i.4.masked, %26
  %27 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %or19, ptr %call7.i, align 8
  %node = getelementptr inbounds %struct.eth_hash_entry, ptr %call7.i, i32 0, i32 1
  %28 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %node, ptr %node, align 8
  %prev.i = getelementptr inbounds %struct.eth_hash_entry, ptr %call7.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %node, ptr %prev.i, align 4
  %multicast_addr_hash = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 7
  %30 = ptrtoint ptr %multicast_addr_hash to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %multicast_addr_hash, align 4
  %lsts = getelementptr inbounds %struct.eth_hash_t, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %lsts to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lsts, align 4
  %arrayidx31 = getelementptr %struct.list_head, ptr %33, i32 %and24
  %prev.i52 = getelementptr %struct.list_head, ptr %33, i32 %and24, i32 1
  %34 = ptrtoint ptr %prev.i52 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i52, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %35, ptr noundef %arrayidx31) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end28.list_add_tail.exit_crit_edge

if.end28.list_add_tail.exit_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %prev.i52 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %node, ptr %prev.i52, align 4
  %37 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx31, ptr %node, align 8
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %node, ptr %35, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end28.list_add_tail.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %or35 = or i32 %and24, 256
  %hashtable_ctrl = getelementptr inbounds %struct.memac_regs, ptr %1, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %hashtable_ctrl, i32 %or35) #8, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end, %for.body.i.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %for.body.i.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memac_set_allmulti(ptr nocapture noundef %memac, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %memac_drv_param = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 11
  %0 = ptrtoint ptr %memac_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memac_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %memac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memac, align 8
  %hashtable_ctrl = getelementptr inbounds %struct.memac_regs, ptr %3, i32 0, i32 8
  br i1 %enable, label %if.end.do.body_crit_edge, label %if.end.do.body7_crit_edge

if.end.do.body7_crit_edge:                        ; preds = %if.end
  br label %do.body7

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end.do.body_crit_edge
  %entry1.029 = phi i32 [ %inc, %do.body.do.body_crit_edge ], [ 0, %if.end.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @arm_heavy_mb() #8
  %or = or i32 %entry1.029, 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %hashtable_ctrl, i32 %or) #8, !srcloc !57
  %inc = add nuw nsw i32 %entry1.029, 1
  %exitcond31.not = icmp eq i32 %inc, 64
  br i1 %exitcond31.not, label %do.body.if.end14_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

do.body7:                                         ; preds = %do.body7.do.body7_crit_edge, %if.end.do.body7_crit_edge
  %entry1.128 = phi i32 [ %inc12, %do.body7.do.body7_crit_edge ], [ 0, %if.end.do.body7_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %and = and i32 %entry1.128, 2147483391
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %hashtable_ctrl, i32 %and) #8, !srcloc !57
  %inc12 = add nuw nsw i32 %entry1.128, 1
  %exitcond.not = icmp eq i32 %inc12, 64
  br i1 %exitcond.not, label %do.body7.if.end14_crit_edge, label %do.body7.do.body7_crit_edge

do.body7.do.body7_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body7

do.body7.if.end14_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end14:                                         ; preds = %do.body7.if.end14_crit_edge, %do.body.if.end14_crit_edge
  %allmulti_enabled = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 16
  %4 = ptrtoint ptr %allmulti_enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %allmulti_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @memac_set_tstamp(ptr nocapture noundef readnone %memac, i1 noundef zeroext %enable) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memac_del_hash_mac_address(ptr nocapture noundef readonly %memac, ptr nocapture noundef readonly %eth_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %memac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memac, align 8
  %memac_drv_param = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 11
  %2 = ptrtoint ptr %memac_drv_param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memac_drv_param, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %eth_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %eth_addr, align 1
  %conv = zext i8 %5 to i64
  %shl = shl nuw nsw i64 %conv, 40
  %arrayidx2 = getelementptr [6 x i8], ptr %eth_addr, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %7 to i64
  %shl4 = shl nuw nsw i64 %conv3, 32
  %or = or i64 %shl4, %shl
  %arrayidx5 = getelementptr [6 x i8], ptr %eth_addr, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %9 to i64
  %shl7 = shl nuw nsw i64 %conv6, 24
  %or8 = or i64 %or, %shl7
  %arrayidx9 = getelementptr [6 x i8], ptr %eth_addr, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %11 to i64
  %shl11 = shl nuw nsw i64 %conv10, 16
  %or12 = or i64 %or8, %shl11
  %arrayidx13 = getelementptr [6 x i8], ptr %eth_addr, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %13 to i64
  %shl15 = shl nuw nsw i64 %conv14, 8
  %or16 = or i64 %or12, %shl15
  %arrayidx17 = getelementptr [6 x i8], ptr %eth_addr, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %15 to i64
  %or19 = or i64 %or16, %conv18
  %eth_addr.addr.123.i = lshr i64 %or19, 1
  %and731.i = xor i64 %eth_addr.addr.123.i, %or19
  %eth_addr.addr.1.i = lshr i64 %or19, 2
  %and7.132.i = xor i64 %and731.i, %eth_addr.addr.1.i
  %eth_addr.addr.1.1.i = lshr i64 %or19, 3
  %and7.233.i = xor i64 %and7.132.i, %eth_addr.addr.1.1.i
  %eth_addr.addr.1.2.i = lshr i64 %or19, 4
  %and7.334.i = xor i64 %and7.233.i, %eth_addr.addr.1.2.i
  %eth_addr.addr.1.3.i = lshr i64 %or19, 5
  %and7.435.i = xor i64 %and7.334.i, %eth_addr.addr.1.3.i
  %eth_addr.addr.1.4.i = lshr i64 %or19, 6
  %and7.536.i = xor i64 %and7.435.i, %eth_addr.addr.1.4.i
  %eth_addr.addr.1.5.i = lshr i64 %or19, 7
  %and7.637.i = xor i64 %and7.536.i, %eth_addr.addr.1.5.i
  %eth_addr.addr.1.6.i = lshr exact i64 %or16, 8
  %and7.637.i.tr = trunc i64 %and7.637.i to i32
  %16 = shl i32 %and7.637.i.tr, 5
  %17 = and i32 %16, 32
  %eth_addr.addr.123.i.1 = lshr i64 %or16, 9
  %and731.i.1 = xor i64 %eth_addr.addr.123.i.1, %eth_addr.addr.1.6.i
  %eth_addr.addr.1.i.1 = lshr i64 %or16, 10
  %and7.132.i.1 = xor i64 %and731.i.1, %eth_addr.addr.1.i.1
  %eth_addr.addr.1.1.i.1 = lshr i64 %or16, 11
  %and7.233.i.1 = xor i64 %and7.132.i.1, %eth_addr.addr.1.1.i.1
  %eth_addr.addr.1.2.i.1 = lshr i64 %or16, 12
  %and7.334.i.1 = xor i64 %and7.233.i.1, %eth_addr.addr.1.2.i.1
  %eth_addr.addr.1.3.i.1 = lshr i64 %or16, 13
  %and7.435.i.1 = xor i64 %and7.334.i.1, %eth_addr.addr.1.3.i.1
  %eth_addr.addr.1.4.i.1 = lshr i64 %or16, 14
  %and7.536.i.1 = xor i64 %and7.435.i.1, %eth_addr.addr.1.4.i.1
  %eth_addr.addr.1.5.i.1 = lshr i64 %or16, 15
  %and7.637.i.1 = xor i64 %and7.536.i.1, %eth_addr.addr.1.5.i.1
  %eth_addr.addr.1.6.i.1 = lshr exact i64 %or12, 16
  %and7.637.i.1.tr = trunc i64 %and7.637.i.1 to i32
  %18 = shl i32 %and7.637.i.1.tr, 4
  %19 = and i32 %18, 16
  %conv11.i.1 = or i32 %17, %19
  %eth_addr.addr.123.i.2 = lshr i64 %or12, 17
  %and731.i.2 = xor i64 %eth_addr.addr.123.i.2, %eth_addr.addr.1.6.i.1
  %eth_addr.addr.1.i.2 = lshr i64 %or12, 18
  %and7.132.i.2 = xor i64 %and731.i.2, %eth_addr.addr.1.i.2
  %eth_addr.addr.1.1.i.2 = lshr i64 %or12, 19
  %and7.233.i.2 = xor i64 %and7.132.i.2, %eth_addr.addr.1.1.i.2
  %eth_addr.addr.1.2.i.2 = lshr i64 %or12, 20
  %and7.334.i.2 = xor i64 %and7.233.i.2, %eth_addr.addr.1.2.i.2
  %eth_addr.addr.1.3.i.2 = lshr i64 %or12, 21
  %and7.435.i.2 = xor i64 %and7.334.i.2, %eth_addr.addr.1.3.i.2
  %eth_addr.addr.1.4.i.2 = lshr i64 %or12, 22
  %and7.536.i.2 = xor i64 %and7.435.i.2, %eth_addr.addr.1.4.i.2
  %eth_addr.addr.1.5.i.2 = lshr i64 %or12, 23
  %and7.637.i.2 = xor i64 %and7.536.i.2, %eth_addr.addr.1.5.i.2
  %eth_addr.addr.1.6.i.2 = lshr exact i64 %or8, 24
  %and7.637.i.2.tr = trunc i64 %and7.637.i.2 to i32
  %20 = shl i32 %and7.637.i.2.tr, 3
  %21 = and i32 %20, 8
  %conv11.i.2 = or i32 %conv11.i.1, %21
  %eth_addr.addr.123.i.3 = lshr i64 %or8, 25
  %and731.i.3 = xor i64 %eth_addr.addr.123.i.3, %eth_addr.addr.1.6.i.2
  %eth_addr.addr.1.i.3 = lshr i64 %or8, 26
  %and7.132.i.3 = xor i64 %and731.i.3, %eth_addr.addr.1.i.3
  %eth_addr.addr.1.1.i.3 = lshr i64 %or8, 27
  %and7.233.i.3 = xor i64 %and7.132.i.3, %eth_addr.addr.1.1.i.3
  %eth_addr.addr.1.2.i.3 = lshr i64 %or8, 28
  %and7.334.i.3 = xor i64 %and7.233.i.3, %eth_addr.addr.1.2.i.3
  %eth_addr.addr.1.3.i.3 = lshr i64 %or8, 29
  %and7.435.i.3 = xor i64 %and7.334.i.3, %eth_addr.addr.1.3.i.3
  %eth_addr.addr.1.4.i.3 = lshr i64 %conv6, 6
  %and7.536.i.3 = xor i64 %and7.435.i.3, %eth_addr.addr.1.4.i.3
  %eth_addr.addr.1.5.i.3 = lshr i64 %conv6, 7
  %and7.536.i.3.masked = and i64 %and7.536.i.3, 1
  %xor.6.i.3 = xor i64 %and7.536.i.3.masked, %eth_addr.addr.1.5.i.3
  %eth_addr.addr.1.6.i.3 = lshr exact i64 %or, 32
  %xor.6.i.3.tr = trunc i64 %xor.6.i.3 to i32
  %22 = shl nuw nsw i32 %xor.6.i.3.tr, 2
  %conv11.i.3 = or i32 %conv11.i.2, %22
  %eth_addr.addr.123.i.4 = lshr i64 %or, 33
  %and731.i.4 = xor i64 %eth_addr.addr.123.i.4, %eth_addr.addr.1.6.i.3
  %eth_addr.addr.1.i.4 = lshr i64 %or, 34
  %and7.132.i.4 = xor i64 %and731.i.4, %eth_addr.addr.1.i.4
  %eth_addr.addr.1.1.i.4 = lshr i64 %or, 35
  %and7.233.i.4 = xor i64 %and7.132.i.4, %eth_addr.addr.1.1.i.4
  %eth_addr.addr.1.2.i.4 = lshr i64 %or, 36
  %and7.334.i.4 = xor i64 %and7.233.i.4, %eth_addr.addr.1.2.i.4
  %eth_addr.addr.1.3.i.4 = lshr i64 %conv3, 5
  %and7.435.i.4 = xor i64 %and7.334.i.4, %eth_addr.addr.1.3.i.4
  %eth_addr.addr.1.4.i.4 = lshr i64 %conv3, 6
  %and7.536.i.4 = xor i64 %and7.435.i.4, %eth_addr.addr.1.4.i.4
  %eth_addr.addr.1.5.i.4 = lshr i64 %conv3, 7
  %and7.536.i.4.masked = and i64 %and7.536.i.4, 1
  %xor.6.i.4 = xor i64 %and7.536.i.4.masked, %eth_addr.addr.1.5.i.4
  %xor.6.i.4.tr = trunc i64 %xor.6.i.4 to i32
  %23 = shl nuw nsw i32 %xor.6.i.4.tr, 1
  %eth_addr.addr.123.i.5 = lshr i64 %conv, 1
  %and731.i.5 = xor i64 %eth_addr.addr.123.i.5, %conv
  %eth_addr.addr.1.i.5 = lshr i64 %conv, 2
  %and7.132.i.5 = xor i64 %and731.i.5, %eth_addr.addr.1.i.5
  %eth_addr.addr.1.1.i.5 = lshr i64 %conv, 3
  %and7.233.i.5 = xor i64 %and7.132.i.5, %eth_addr.addr.1.1.i.5
  %eth_addr.addr.1.2.i.5 = lshr i64 %conv, 4
  %and7.334.i.5 = xor i64 %and7.233.i.5, %eth_addr.addr.1.2.i.5
  %eth_addr.addr.1.3.i.5 = lshr i64 %conv, 5
  %and7.435.i.5 = xor i64 %and7.334.i.5, %eth_addr.addr.1.3.i.5
  %eth_addr.addr.1.4.i.5 = lshr i64 %conv, 6
  %and7.536.i.5 = xor i64 %and7.435.i.5, %eth_addr.addr.1.4.i.5
  %eth_addr.addr.1.5.i.5 = lshr i64 %conv, 7
  %and7.536.i.5.masked = and i64 %and7.536.i.5, 1
  %xor.6.i.5 = xor i64 %and7.536.i.5.masked, %eth_addr.addr.1.5.i.5
  %24 = trunc i64 %xor.6.i.5 to i32
  %conv11.i.4.masked = or i32 %conv11.i.3, %23
  %and = or i32 %conv11.i.4.masked, %24
  %multicast_addr_hash = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 7
  %25 = ptrtoint ptr %multicast_addr_hash to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %multicast_addr_hash, align 4
  %lsts = getelementptr inbounds %struct.eth_hash_t, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %lsts to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lsts, align 4
  %arrayidx21 = getelementptr %struct.list_head, ptr %28, i32 %and
  %29 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %pos.074 = load ptr, ptr %arrayidx21, align 4
  %cmp.i.not75 = icmp eq ptr %pos.074, %arrayidx21
  br i1 %cmp.i.not75, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %pos.076 = phi ptr [ %pos.0, %for.inc.for.body_crit_edge ], [ %pos.074, %if.end.for.body_crit_edge ]
  %tobool26.not = icmp eq ptr %pos.076, null
  %add.ptr = getelementptr i8, ptr %pos.076, i32 -8
  %tobool28.not71 = icmp eq ptr %add.ptr, null
  %tobool28.not = or i1 %tobool26.not, %tobool28.not71
  br i1 %tobool28.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %or19)
  %cmp = icmp eq i64 %31, %or19
  br i1 %cmp, label %if.then31, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then31:                                        ; preds = %land.lhs.true
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pos.076) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then31.list_del_init.exit_crit_edge

if.then31.list_del_init.exit_crit_edge:           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.076, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %pos.076 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pos.076, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then31.list_del_init.exit_crit_edge
  %38 = ptrtoint ptr %pos.076 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %pos.076, ptr %pos.076, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %pos.076, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %pos.076, ptr %prev.i3.i, align 4
  tail call void @kfree(ptr noundef nonnull %add.ptr) #8
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %40 = ptrtoint ptr %pos.076 to i32
  call void @__asan_load4_noabort(i32 %40)
  %pos.0 = load ptr, ptr %pos.076, align 4
  %cmp.i.not = icmp eq ptr %pos.0, %arrayidx21
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_del_init.exit, %if.end.for.end_crit_edge
  %allmulti_enabled = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 16
  %41 = ptrtoint ptr %allmulti_enabled to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %allmulti_enabled, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool34.not = icmp eq i8 %42, 0
  br i1 %tobool34.not, label %if.then35, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then35:                                        ; preds = %for.end
  %43 = ptrtoint ptr %multicast_addr_hash to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %multicast_addr_hash, align 4
  %lsts37 = getelementptr inbounds %struct.eth_hash_t, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %lsts37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lsts37, align 4
  %arrayidx38 = getelementptr %struct.list_head, ptr %46, i32 %and
  %47 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %arrayidx38, align 4
  %cmp.i69.not = icmp eq ptr %48, %arrayidx38
  br i1 %cmp.i69.not, label %do.body, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void @arm_heavy_mb() #8
  %hashtable_ctrl = getelementptr inbounds %struct.memac_regs, ptr %1, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %hashtable_ctrl, i32 %and) #8, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then35.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then35.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memac_set_exception(ptr nocapture noundef %memac, i32 noundef %exception, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %memac_drv_param = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 11
  %0 = ptrtoint ptr %memac_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memac_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %exception to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %exception, label %do.end [
    i32 4, label %if.end.if.then2_crit_edge
    i32 9, label %sw.bb1.i
    i32 34, label %sw.bb2.i
    i32 26, label %sw.bb3.i
  ]

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2

if.then2:                                         ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end.if.then2_crit_edge
  %bit_mask.0.i.ph = phi i32 [ 33554432, %if.end.if.then2_crit_edge ], [ 16777216, %sw.bb1.i ], [ 536870912, %sw.bb2.i ], [ 1073741824, %sw.bb3.i ]
  br i1 %enable, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %exceptions = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 10
  %3 = ptrtoint ptr %exceptions to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %exceptions, align 8
  %or = or i32 %4, %bit_mask.0.i.ph
  store i32 %or, ptr %exceptions, align 8
  %.pre = xor i32 %bit_mask.0.i.ph, -1
  br label %if.end9

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %bit_mask.0.i.ph, -1
  %exceptions5 = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 10
  %5 = ptrtoint ptr %exceptions5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %exceptions5, align 8
  %and = and i32 %6, %neg
  store i32 %and, ptr %exceptions5, align 8
  br label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  br label %cleanup

if.end9:                                          ; preds = %if.else, %if.then4
  %neg.i.pre-phi = phi i32 [ %.pre, %if.then4 ], [ %neg, %if.else ]
  %7 = ptrtoint ptr %memac to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %memac, align 8
  %imask.i = getelementptr inbounds %struct.memac_regs, ptr %8, i32 0, i32 13
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %imask.i) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  %or.i = or i32 %9, %bit_mask.0.i.ph
  %and.i = and i32 %9, %neg.i.pre-phi
  %tmp.0.i = select i1 %enable, i32 %or.i, i32 %and.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imask.i, i32 %tmp.0.i) #8, !srcloc !57
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memac_init(ptr noundef %memac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %memac_drv_param1 = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 11
  %0 = ptrtoint ptr %memac_drv_param1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memac_drv_param1, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %exception_cb.i = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 5
  %2 = ptrtoint ptr %exception_cb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %exception_cb.i, align 4
  %tobool.not.i205 = icmp eq ptr %3, null
  br i1 %tobool.not.i205, label %if.end.check_init_parameters.exit_crit_edge, label %if.end.i

if.end.check_init_parameters.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_init_parameters.exit

if.end.i:                                         ; preds = %if.end
  %event_cb.i = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 6
  %4 = ptrtoint ptr %event_cb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %event_cb.i, align 8
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.end.i.check_init_parameters.exit_crit_edge, label %if.end4

if.end.i.check_init_parameters.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_init_parameters.exit

check_init_parameters.exit:                       ; preds = %if.end.i.check_init_parameters.exit_crit_edge, %if.end.check_init_parameters.exit_crit_edge
  %.str.23.sink.i = phi ptr [ @.str.20, %if.end.check_init_parameters.exit_crit_edge ], [ @.str.23, %if.end.i.check_init_parameters.exit_crit_edge ]
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.23.sink.i) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end.i
  %6 = ptrtoint ptr %memac_drv_param1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %memac_drv_param1, align 4
  %fm_rev_info = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 13
  %8 = ptrtoint ptr %fm_rev_info to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fm_rev_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %9)
  %cmp = icmp eq i8 %9, 6
  br i1 %cmp, label %land.lhs.true, label %if.end4.if.end12_crit_edge

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %minor = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 13, i32 1
  %10 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %minor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %cmp9 = icmp eq i8 %11, 4
  %phi.sel = select i1 %cmp9, i32 4194400, i32 4194329
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.end4.if.end12_crit_edge
  %slow_10g_if.0.off0 = phi i32 [ 4194329, %if.end4.if.end12_crit_edge ], [ %phi.sel, %land.lhs.true ]
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %7, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not = icmp eq i8 %13, 0
  br i1 %tobool13.not, label %if.end12.if.end20_crit_edge, label %if.then14

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then14:                                        ; preds = %if.end12
  %14 = ptrtoint ptr %memac to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %memac, align 8
  %command_config.i = getelementptr inbounds %struct.memac_regs, ptr %15, i32 0, i32 1
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %command_config.i) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  %or.i = or i32 %16, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %command_config.i, i32 %or.i) #8, !srcloc !57
  br label %do.body3.i

do.body3.i:                                       ; preds = %land.rhs.i.do.body3.i_crit_edge, %if.then14
  %count.0.i = phi i32 [ 100, %if.then14 ], [ %dec.i, %land.rhs.i.do.body3.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %command_config.i) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  %and.i = and i32 %18, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i206 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i206, label %do.body3.i.if.end20_crit_edge, label %land.rhs.i

do.body3.i.if.end20_crit_edge:                    ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.rhs.i:                                       ; preds = %do.body3.i
  %dec.i = add nsw i32 %count.0.i, -1
  %tobool9.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool9.not.i, label %do.end, label %land.rhs.i.do.body3.i_crit_edge

land.rhs.i.do.body3.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3.i

do.end:                                           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %cleanup

if.end20:                                         ; preds = %do.body3.i.if.end20_crit_edge, %if.end12.if.end20_crit_edge
  %addr = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 1
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %cmp21.not = icmp eq i64 %20, 0
  br i1 %cmp21.not, label %if.end20.if.end33_crit_edge, label %for.body.preheader

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

for.body.preheader:                               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i64 %20, 40
  %conv29 = trunc i64 %shr to i32
  %21 = trunc i64 %20 to i32
  %22 = trunc i64 %20 to i32
  %23 = ptrtoint ptr %memac to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %memac, align 8
  %trunc = trunc i64 %20 to i16
  %rev = call i16 @llvm.bswap.i16(i16 %trunc)
  %or16.i = zext i16 %rev to i32
  %sh.diff = lshr i64 %20, 24
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %shl.i = and i32 %tr.sh.diff, 65280
  %conv.i = and i32 %conv29, 255
  %or.i207 = or i32 %shl.i, %conv.i
  %25 = lshr i32 %21, 8
  %shl5.i = and i32 %25, 16711680
  %or6.i = or i32 %or.i207, %shl5.i
  %26 = shl i32 %22, 8
  %conv8.i = and i32 %26, -16777216
  %or10.i = or i32 %or6.i, %conv8.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %mac_addr0.i = getelementptr inbounds %struct.memac_regs, ptr %24, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac_addr0.i, i32 %or10.i) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  %mac_addr_u.i = getelementptr inbounds %struct.memac_regs, ptr %24, i32 0, i32 2, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mac_addr_u.i, i32 %or16.i) #8, !srcloc !57
  br label %if.end33

if.end33:                                         ; preds = %for.body.preheader, %if.end20.if.end33_crit_edge
  %fixed_link34 = getelementptr inbounds %struct.memac_cfg, ptr %7, i32 0, i32 3
  %27 = ptrtoint ptr %fixed_link34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fixed_link34, align 4
  %29 = ptrtoint ptr %memac to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %memac, align 8
  %31 = ptrtoint ptr %memac_drv_param1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %memac_drv_param1, align 4
  %phy_if = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 2
  %33 = ptrtoint ptr %phy_if to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %phy_if, align 8
  %exceptions = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 10
  %35 = ptrtoint ptr %exceptions to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %exceptions, align 8
  %promiscuous_mode_enable.i = getelementptr inbounds %struct.memac_cfg, ptr %32, i32 0, i32 2
  %37 = ptrtoint ptr %promiscuous_mode_enable.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %promiscuous_mode_enable.i, align 2, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i208 = icmp eq i8 %38, 0
  %spec.select.i = select i1 %tobool.not.i208, i32 0, i32 16
  %pause_ignore.i = getelementptr inbounds %struct.memac_cfg, ptr %32, i32 0, i32 1
  %39 = ptrtoint ptr %pause_ignore.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pause_ignore.i, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool1.not.i209 = icmp eq i8 %40, 0
  %or3.i = or i32 %spec.select.i, 256
  %tmp.1.i = select i1 %tobool1.not.i209, i32 %spec.select.i, i32 %or3.i
  %or7.i = or i32 %tmp.1.i, 133184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @arm_heavy_mb() #8
  %command_config.i210 = getelementptr inbounds %struct.memac_regs, ptr %30, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %command_config.i210, i32 %or7.i) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  %max_frame_length.i = getelementptr inbounds %struct.memac_cfg, ptr %32, i32 0, i32 4
  %41 = ptrtoint ptr %max_frame_length.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %max_frame_length.i, align 4
  %conv.i211 = zext i16 %42 to i32
  %maxfrm.i = getelementptr inbounds %struct.memac_regs, ptr %30, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maxfrm.i, i32 %conv.i211) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %pause_quanta.i = getelementptr inbounds %struct.memac_cfg, ptr %32, i32 0, i32 5
  %43 = ptrtoint ptr %pause_quanta.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %pause_quanta.i, align 2
  %conv14.i212 = zext i16 %44 to i32
  %pause_quanta15.i = getelementptr inbounds %struct.memac_regs, ptr %30, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pause_quanta15.i, i32 %conv14.i212) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %pause_thresh.i = getelementptr inbounds %struct.memac_regs, ptr %30, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pause_thresh.i, i32 0) #8, !srcloc !57
  %switch.tableidx = add i32 %34, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %switch.tableidx)
  %45 = icmp ult i32 %switch.tableidx, 14
  br i1 %45, label %switch.lookup, label %if.end33.init.exit_crit_edge

if.end33.init.exit_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %init.exit

switch.lookup:                                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table.memac_init, i32 0, i32 %switch.tableidx
  %46 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %init.exit

init.exit:                                        ; preds = %switch.lookup, %if.end33.init.exit_crit_edge
  %tmp.2.i = phi i32 [ %switch.load, %switch.lookup ], [ 2, %if.end33.init.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  %if_mode.i = getelementptr inbounds %struct.memac_regs, ptr %30, i32 0, i32 122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %if_mode.i, i32 %tmp.2.i) #8, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %34)
  %cmp39.i = icmp eq i32 %34, 15
  %tmp.3.i = select i1 %cmp39.i, i32 %slow_10g_if.0.off0, i32 1048608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @arm_heavy_mb() #8
  %tx_fifo_sections.i = getelementptr inbounds %struct.memac_regs, ptr %30, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tx_fifo_sections.i, i32 %tmp.3.i) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  tail call void @arm_heavy_mb() #8
  %ievent.i = getelementptr inbounds %struct.memac_regs, ptr %30, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ievent.i, i32 -1) #8, !srcloc !57
  %imask.i.i = getelementptr inbounds %struct.memac_regs, ptr %30, i32 0, i32 13
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %imask.i.i) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  %or.i.i = or i32 %47, %36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imask.i.i, i32 %or.i.i) #8, !srcloc !57
  %48 = ptrtoint ptr %fm_rev_info to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %fm_rev_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %49)
  %cmp42 = icmp eq i8 %49, 6
  br i1 %cmp42, label %land.lhs.true44, label %init.exit.if.end64_crit_edge

init.exit.if.end64_crit_edge:                     ; preds = %init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

land.lhs.true44:                                  ; preds = %init.exit
  %minor46 = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 13, i32 1
  %50 = ptrtoint ptr %minor46 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %minor46, align 1
  %52 = zext i8 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %51, label %land.lhs.true44.if.end64_crit_edge [
    i8 0, label %land.lhs.true44.if.then55_crit_edge
    i8 3, label %land.lhs.true44.if.then55_crit_edge266
  ]

land.lhs.true44.if.then55_crit_edge266:           ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then55

land.lhs.true44.if.then55_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then55

land.lhs.true44.if.end64_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then55:                                        ; preds = %land.lhs.true44.if.then55_crit_edge, %land.lhs.true44.if.then55_crit_edge266
  %53 = ptrtoint ptr %memac to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %memac, align 8
  %command_config = getelementptr inbounds %struct.memac_regs, ptr %54, i32 0, i32 1
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %command_config) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  %and = and i32 %55, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %56 = ptrtoint ptr %memac to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %memac, align 8
  %command_config63 = getelementptr inbounds %struct.memac_regs, ptr %57, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %command_config63, i32 %and) #8, !srcloc !57
  br label %if.end64

if.end64:                                         ; preds = %if.then55, %land.lhs.true44.if.end64_crit_edge, %init.exit.if.end64_crit_edge
  %58 = ptrtoint ptr %phy_if to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %phy_if, align 8
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %59, label %if.end64.if.end104_crit_edge [
    i32 4, label %if.then68
    i32 18, label %for.cond77.preheader
  ]

if.end64.if.end104_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

for.cond77.preheader:                             ; preds = %if.end64
  %pcsphy = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 15
  %basex_if91 = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 14
  br label %for.body81

if.then68:                                        ; preds = %if.end64
  %basex_if = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 14
  %61 = ptrtoint ptr %basex_if to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %basex_if, align 2, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool69.not = icmp eq i8 %62, 0
  br i1 %tobool69.not, label %if.else, label %if.then70

if.then70:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  %pcsphy.i = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 15
  %63 = ptrtoint ptr %pcsphy.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pcsphy.i, align 8
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %64, i32 0, i32 6
  %67 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_write(ptr noundef %66, i32 noundef %68, i32 noundef 4, i16 noundef zeroext 416) #8
  %69 = ptrtoint ptr %pcsphy.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pcsphy.i, align 8
  %bus.i11.i = getelementptr inbounds %struct.mdio_device, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %bus.i11.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bus.i11.i, align 8
  %addr.i12.i = getelementptr inbounds %struct.mdio_device, ptr %70, i32 0, i32 6
  %73 = ptrtoint ptr %addr.i12.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %addr.i12.i, align 8
  %call.i13.i = tail call i32 @mdiobus_write(ptr noundef %72, i32 noundef %74, i32 noundef 19, i16 noundef zeroext 47) #8
  %75 = ptrtoint ptr %pcsphy.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pcsphy.i, align 8
  %bus.i14.i = getelementptr inbounds %struct.mdio_device, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %bus.i14.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bus.i14.i, align 8
  %addr.i15.i = getelementptr inbounds %struct.mdio_device, ptr %76, i32 0, i32 6
  %79 = ptrtoint ptr %addr.i15.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %addr.i15.i, align 8
  %call.i16.i = tail call i32 @mdiobus_write(ptr noundef %78, i32 noundef %80, i32 noundef 18, i16 noundef zeroext -20728) #8
  %81 = ptrtoint ptr %pcsphy.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pcsphy.i, align 8
  %bus.i17.i = getelementptr inbounds %struct.mdio_device, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %bus.i17.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bus.i17.i, align 8
  %addr.i18.i = getelementptr inbounds %struct.mdio_device, ptr %82, i32 0, i32 6
  %85 = ptrtoint ptr %addr.i18.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %addr.i18.i, align 8
  %call.i19.i = tail call i32 @mdiobus_write(ptr noundef %84, i32 noundef %86, i32 noundef 0, i16 noundef zeroext 4928) #8
  br label %if.end104

if.else:                                          ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @setup_sgmii_internal_phy(ptr noundef %memac, ptr noundef %28)
  br label %if.end104

for.body81:                                       ; preds = %if.end95.for.body81_crit_edge, %for.cond77.preheader
  %i.0265 = phi i8 [ 0, %for.cond77.preheader ], [ %inc101, %if.end95.for.body81_crit_edge ]
  %87 = ptrtoint ptr %pcsphy to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pcsphy, align 8
  %addr82 = getelementptr inbounds %struct.mdio_device, ptr %88, i32 0, i32 6
  %89 = ptrtoint ptr %addr82 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %addr82, align 8
  %conv84 = and i32 %90, 255
  %conv84.tr = trunc i32 %90 to i8
  %91 = shl i8 %conv84.tr, 2
  %conv86 = or i8 %91, %i.0265
  %conv87 = zext i8 %conv86 to i32
  store i32 %conv87, ptr %addr82, align 8
  %92 = ptrtoint ptr %basex_if91 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %basex_if91, align 2, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool92.not = icmp eq i8 %93, 0
  br i1 %tobool92.not, label %if.else94, label %if.then93

if.then93:                                        ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %pcsphy to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pcsphy, align 8
  %bus.i.i214 = getelementptr inbounds %struct.mdio_device, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %bus.i.i214 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bus.i.i214, align 8
  %addr.i.i215 = getelementptr inbounds %struct.mdio_device, ptr %95, i32 0, i32 6
  %98 = ptrtoint ptr %addr.i.i215 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %addr.i.i215, align 8
  %call.i.i216 = tail call i32 @mdiobus_write(ptr noundef %97, i32 noundef %99, i32 noundef 4, i16 noundef zeroext 416) #8
  %100 = ptrtoint ptr %pcsphy to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pcsphy, align 8
  %bus.i11.i217 = getelementptr inbounds %struct.mdio_device, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %bus.i11.i217 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bus.i11.i217, align 8
  %addr.i12.i218 = getelementptr inbounds %struct.mdio_device, ptr %101, i32 0, i32 6
  %104 = ptrtoint ptr %addr.i12.i218 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %addr.i12.i218, align 8
  %call.i13.i219 = tail call i32 @mdiobus_write(ptr noundef %103, i32 noundef %105, i32 noundef 19, i16 noundef zeroext 47) #8
  %106 = ptrtoint ptr %pcsphy to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pcsphy, align 8
  %bus.i14.i220 = getelementptr inbounds %struct.mdio_device, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %bus.i14.i220 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bus.i14.i220, align 8
  %addr.i15.i221 = getelementptr inbounds %struct.mdio_device, ptr %107, i32 0, i32 6
  %110 = ptrtoint ptr %addr.i15.i221 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %addr.i15.i221, align 8
  %call.i16.i222 = tail call i32 @mdiobus_write(ptr noundef %109, i32 noundef %111, i32 noundef 18, i16 noundef zeroext -20728) #8
  %112 = ptrtoint ptr %pcsphy to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pcsphy, align 8
  %bus.i17.i223 = getelementptr inbounds %struct.mdio_device, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %bus.i17.i223 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bus.i17.i223, align 8
  %addr.i18.i224 = getelementptr inbounds %struct.mdio_device, ptr %113, i32 0, i32 6
  %116 = ptrtoint ptr %addr.i18.i224 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %addr.i18.i224, align 8
  %call.i19.i225 = tail call i32 @mdiobus_write(ptr noundef %115, i32 noundef %117, i32 noundef 0, i16 noundef zeroext 4928) #8
  br label %if.end95

if.else94:                                        ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @setup_sgmii_internal_phy(ptr noundef %memac, ptr noundef %28)
  br label %if.end95

if.end95:                                         ; preds = %if.else94, %if.then93
  %118 = ptrtoint ptr %pcsphy to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pcsphy, align 8
  %addr99 = getelementptr inbounds %struct.mdio_device, ptr %119, i32 0, i32 6
  %120 = ptrtoint ptr %addr99 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %conv84, ptr %addr99, align 8
  %inc101 = add nuw nsw i8 %i.0265, 1
  %cmp79 = icmp ult i8 %i.0265, 3
  br i1 %cmp79, label %if.end95.for.body81_crit_edge, label %if.end95.if.end104_crit_edge

if.end95.if.end104_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.end95.for.body81_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body81

if.end104:                                        ; preds = %if.end95.if.end104_crit_edge, %if.else, %if.then70, %if.end64.if.end104_crit_edge
  %fm = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 12
  %121 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %fm, align 8
  %mac_id = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 9
  %123 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %mac_id, align 4
  %max_frame_length = getelementptr inbounds %struct.memac_cfg, ptr %7, i32 0, i32 4
  %125 = ptrtoint ptr %max_frame_length to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %max_frame_length, align 4
  %call105 = tail call i32 @fman_set_mac_max_frame(ptr noundef %122, i8 noundef zeroext %124, i16 noundef zeroext %126) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end113, label %do.end110

do.end110:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end113:                                        ; preds = %if.end104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %127 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %127, i32 noundef 3264, i32 noundef 8) #11
  %tobool.not.i226 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i226, label %if.end113.alloc_hash_table.exit.thread_crit_edge, label %if.end.i227

if.end113.alloc_hash_table.exit.thread_crit_edge: ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %alloc_hash_table.exit.thread

if.end.i227:                                      ; preds = %if.end113
  %128 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 64, ptr %call7.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %129 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %129, i32 noundef 3264, i32 noundef 512) #11
  %lsts.i = getelementptr inbounds %struct.eth_hash_t, ptr %call7.i.i, i32 0, i32 1
  %130 = ptrtoint ptr %lsts.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call7.i.i.i, ptr %lsts.i, align 4
  %tobool5.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i227
  %131 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %cmp2.not.i = icmp eq i16 %132, 0
  br i1 %cmp2.not.i, label %for.cond.preheader.i.if.end123_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end123_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

if.then6.i:                                       ; preds = %if.end.i227
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %alloc_hash_table.exit.thread

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %133 = ptrtoint ptr %lsts.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %lsts.i, align 4
  %arrayidx.i = getelementptr %struct.list_head, ptr %134, i32 %i.03.i
  %135 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %arrayidx.i, ptr %arrayidx.i, align 4
  %prev.i.i = getelementptr %struct.list_head, ptr %134, i32 %i.03.i, i32 1
  %136 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %arrayidx.i, ptr %prev.i.i, align 4
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %137 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %call7.i.i, align 8
  %conv9.i = zext i16 %138 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv9.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end123_crit_edge

for.body.i.if.end123_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

alloc_hash_table.exit.thread:                     ; preds = %if.then6.i, %if.end113.alloc_hash_table.exit.thread_crit_edge
  %multicast_addr_hash251 = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 7
  %139 = ptrtoint ptr %multicast_addr_hash251 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %multicast_addr_hash251, align 4
  tail call fastcc void @free_init_resources(ptr noundef %memac)
  %call122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.end123:                                        ; preds = %for.body.i.if.end123_crit_edge, %for.cond.preheader.i.if.end123_crit_edge
  %multicast_addr_hash = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 7
  %140 = ptrtoint ptr %multicast_addr_hash to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call7.i.i, ptr %multicast_addr_hash, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %141 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i229 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %141, i32 noundef 3264, i32 noundef 8) #11
  %tobool.not.i230 = icmp eq ptr %call7.i.i229, null
  br i1 %tobool.not.i230, label %if.end123.alloc_hash_table.exit246.thread_crit_edge, label %if.end.i234

if.end123.alloc_hash_table.exit246.thread_crit_edge: ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %alloc_hash_table.exit246.thread

if.end.i234:                                      ; preds = %if.end123
  %142 = ptrtoint ptr %call7.i.i229 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 64, ptr %call7.i.i229, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %143 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i231 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %143, i32 noundef 3264, i32 noundef 512) #11
  %lsts.i232 = getelementptr inbounds %struct.eth_hash_t, ptr %call7.i.i229, i32 0, i32 1
  %144 = ptrtoint ptr %lsts.i232 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call7.i.i.i231, ptr %lsts.i232, align 4
  %tobool5.not.i233 = icmp eq ptr %call7.i.i.i231, null
  br i1 %tobool5.not.i233, label %if.then6.i237, label %for.cond.preheader.i236

for.cond.preheader.i236:                          ; preds = %if.end.i234
  %145 = ptrtoint ptr %call7.i.i229 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %call7.i.i229, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %146)
  %cmp2.not.i235 = icmp eq i16 %146, 0
  br i1 %cmp2.not.i235, label %for.cond.preheader.i236.if.end133_crit_edge, label %for.cond.preheader.i236.for.body.i244_crit_edge

for.cond.preheader.i236.for.body.i244_crit_edge:  ; preds = %for.cond.preheader.i236
  br label %for.body.i244

for.cond.preheader.i236.if.end133_crit_edge:      ; preds = %for.cond.preheader.i236
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

if.then6.i237:                                    ; preds = %if.end.i234
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i229) #8
  br label %alloc_hash_table.exit246.thread

for.body.i244:                                    ; preds = %for.body.i244.for.body.i244_crit_edge, %for.cond.preheader.i236.for.body.i244_crit_edge
  %i.03.i238 = phi i32 [ %inc.i241, %for.body.i244.for.body.i244_crit_edge ], [ 0, %for.cond.preheader.i236.for.body.i244_crit_edge ]
  %147 = ptrtoint ptr %lsts.i232 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %lsts.i232, align 4
  %arrayidx.i239 = getelementptr %struct.list_head, ptr %148, i32 %i.03.i238
  %149 = ptrtoint ptr %arrayidx.i239 to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %arrayidx.i239, ptr %arrayidx.i239, align 4
  %prev.i.i240 = getelementptr %struct.list_head, ptr %148, i32 %i.03.i238, i32 1
  %150 = ptrtoint ptr %prev.i.i240 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %arrayidx.i239, ptr %prev.i.i240, align 4
  %inc.i241 = add nuw nsw i32 %i.03.i238, 1
  %151 = ptrtoint ptr %call7.i.i229 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %call7.i.i229, align 8
  %conv9.i242 = zext i16 %152 to i32
  %cmp.i243 = icmp ult i32 %inc.i241, %conv9.i242
  br i1 %cmp.i243, label %for.body.i244.for.body.i244_crit_edge, label %for.body.i244.if.end133_crit_edge

for.body.i244.if.end133_crit_edge:                ; preds = %for.body.i244
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

for.body.i244.for.body.i244_crit_edge:            ; preds = %for.body.i244
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i244

alloc_hash_table.exit246.thread:                  ; preds = %if.then6.i237, %if.end123.alloc_hash_table.exit246.thread_crit_edge
  %unicast_addr_hash258 = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 8
  %153 = ptrtoint ptr %unicast_addr_hash258 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr null, ptr %unicast_addr_hash258, align 8
  tail call fastcc void @free_init_resources(ptr noundef %memac)
  %call132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.end133:                                        ; preds = %for.body.i244.if.end133_crit_edge, %for.cond.preheader.i236.if.end133_crit_edge
  %unicast_addr_hash = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 8
  %154 = ptrtoint ptr %unicast_addr_hash to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call7.i.i229, ptr %unicast_addr_hash, align 8
  %155 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %fm, align 8
  %157 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %mac_id, align 4
  tail call void @fman_register_intr(ptr noundef %156, i32 noundef 0, i8 noundef zeroext %158, i32 noundef 0, ptr noundef nonnull @memac_err_exception, ptr noundef %memac) #8
  %159 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %fm, align 8
  %161 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %mac_id, align 4
  tail call void @fman_register_intr(ptr noundef %160, i32 noundef 0, i8 noundef zeroext %162, i32 noundef 1, ptr noundef nonnull @memac_exception, ptr noundef %memac) #8
  tail call void @kfree(ptr noundef %7) #8
  %163 = ptrtoint ptr %memac_drv_param1 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr null, ptr %memac_drv_param1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end133, %alloc_hash_table.exit246.thread, %alloc_hash_table.exit.thread, %do.end110, %do.end, %check_init_parameters.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ %call105, %do.end110 ], [ 0, %if.end133 ], [ -12, %alloc_hash_table.exit246.thread ], [ -12, %alloc_hash_table.exit.thread ], [ -22, %entry.cleanup_crit_edge ], [ -22, %check_init_parameters.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_sgmii_internal_phy(ptr nocapture noundef readonly %memac, ptr noundef readonly %fixed_link) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcsphy = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 15
  %0 = ptrtoint ptr %pcsphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcsphy, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !95

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 519, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  %tobool24.not = icmp eq ptr %fixed_link, null
  br i1 %tobool24.not, label %if.end23.if.end40_crit_edge, label %if.else

if.end23.if.end40_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %speed = getelementptr inbounds %struct.fixed_phy_status, ptr %fixed_link, i32 0, i32 1
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 100
  %switch.select = select i1 %switch.selectcmp, i16 5, i16 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %switch.selectcmp69 = icmp eq i32 %3, 10
  %switch.select70 = select i1 %switch.selectcmp69, i16 1, i16 %switch.select
  %duplex = getelementptr inbounds %struct.fixed_phy_status, ptr %fixed_link, i32 0, i32 2
  %4 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool34.not = icmp eq i32 %5, 0
  %6 = or i16 %switch.select70, 16
  %spec.select = select i1 %tobool34.not, i16 %6, i16 %switch.select70
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.end23.if.end40_crit_edge
  %. = phi i16 [ 320, %if.else ], [ 4928, %if.end23.if.end40_crit_edge ]
  %tmp_reg16.1 = phi i16 [ %spec.select, %if.else ], [ 3, %if.end23.if.end40_crit_edge ]
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %8, i32 noundef %10, i32 noundef 20, i16 noundef zeroext %tmp_reg16.1) #8
  %11 = ptrtoint ptr %pcsphy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcsphy, align 8
  %bus.i71 = getelementptr inbounds %struct.mdio_device, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %bus.i71 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i71, align 8
  %addr.i72 = getelementptr inbounds %struct.mdio_device, ptr %12, i32 0, i32 6
  %15 = ptrtoint ptr %addr.i72 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr.i72, align 8
  %call.i73 = tail call i32 @mdiobus_write(ptr noundef %14, i32 noundef %16, i32 noundef 4, i16 noundef zeroext 16385) #8
  %17 = ptrtoint ptr %pcsphy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcsphy, align 8
  %bus.i74 = getelementptr inbounds %struct.mdio_device, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %bus.i74 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus.i74, align 8
  %addr.i75 = getelementptr inbounds %struct.mdio_device, ptr %18, i32 0, i32 6
  %21 = ptrtoint ptr %addr.i75 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr.i75, align 8
  %call.i76 = tail call i32 @mdiobus_write(ptr noundef %20, i32 noundef %22, i32 noundef 19, i16 noundef zeroext 7) #8
  %23 = ptrtoint ptr %pcsphy to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcsphy, align 8
  %bus.i77 = getelementptr inbounds %struct.mdio_device, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %bus.i77 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus.i77, align 8
  %addr.i78 = getelementptr inbounds %struct.mdio_device, ptr %24, i32 0, i32 6
  %27 = ptrtoint ptr %addr.i78 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr.i78, align 8
  %call.i79 = tail call i32 @mdiobus_write(ptr noundef %26, i32 noundef %28, i32 noundef 18, i16 noundef zeroext -24288) #8
  %29 = ptrtoint ptr %pcsphy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcsphy, align 8
  %bus.i80 = getelementptr inbounds %struct.mdio_device, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %bus.i80 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i80, align 8
  %addr.i81 = getelementptr inbounds %struct.mdio_device, ptr %30, i32 0, i32 6
  %33 = ptrtoint ptr %addr.i81 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr.i81, align 8
  %call.i82 = tail call i32 @mdiobus_write(ptr noundef %32, i32 noundef %34, i32 noundef 0, i16 noundef zeroext %.) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fman_set_mac_max_frame(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_init_resources(ptr nocapture noundef %memac) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fm = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 12
  %0 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fm, align 8
  %mac_id = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 9
  %2 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac_id, align 4
  tail call void @fman_unregister_intr(ptr noundef %1, i32 noundef 0, i8 noundef zeroext %3, i32 noundef 0) #8
  %4 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fm, align 8
  %6 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mac_id, align 4
  tail call void @fman_unregister_intr(ptr noundef %5, i32 noundef 0, i8 noundef zeroext %7, i32 noundef 1) #8
  %multicast_addr_hash = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 7
  %8 = ptrtoint ptr %multicast_addr_hash to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %multicast_addr_hash, align 4
  tail call fastcc void @free_hash_table(ptr noundef %9)
  %10 = ptrtoint ptr %multicast_addr_hash to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %multicast_addr_hash, align 4
  %unicast_addr_hash = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 8
  %11 = ptrtoint ptr %unicast_addr_hash to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %unicast_addr_hash, align 8
  tail call fastcc void @free_hash_table(ptr noundef %12)
  %13 = ptrtoint ptr %unicast_addr_hash to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %unicast_addr_hash, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fman_register_intr(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @memac_err_exception(ptr nocapture noundef readonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %ievent = getelementptr inbounds %struct.memac_regs, ptr %1, i32 0, i32 10
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ievent) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  %imask3 = getelementptr inbounds %struct.memac_regs, ptr %1, i32 0, i32 13
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %imask3) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  %and = lshr i32 %3, 16
  %shr = and i32 %2, 25344
  %and6 = and i32 %shr, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ievent, i32 %and6) #8, !srcloc !57
  %and8 = and i32 %and6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 5
  %4 = ptrtoint ptr %exception_cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %exception_cb, align 4
  %dev_id = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 8
  tail call void %5(ptr noundef %7, i32 noundef 34) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and9 = and i32 %and6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end14_crit_edge, label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb12 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 5
  %8 = ptrtoint ptr %exception_cb12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %exception_cb12, align 4
  %dev_id13 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %10 = ptrtoint ptr %dev_id13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_id13, align 8
  tail call void %9(ptr noundef %11, i32 noundef 4) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %and15 = and i32 %and6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end20_crit_edge, label %if.then17

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb18 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 5
  %12 = ptrtoint ptr %exception_cb18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %exception_cb18, align 4
  %dev_id19 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %14 = ptrtoint ptr %dev_id19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id19, align 8
  tail call void %13(ptr noundef %15, i32 noundef 9) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14.if.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @memac_exception(ptr nocapture noundef readonly %handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %ievent = getelementptr inbounds %struct.memac_regs, ptr %1, i32 0, i32 10
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ievent) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  %imask3 = getelementptr inbounds %struct.memac_regs, ptr %1, i32 0, i32 13
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %imask3) #8, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  %and = lshr i32 %3, 16
  %shr = and i32 %2, 25344
  %and6 = and i32 %shr, %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ievent, i32 %and6) #8, !srcloc !57
  %and8 = and i32 %and6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 5
  %4 = ptrtoint ptr %exception_cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %exception_cb, align 4
  %dev_id = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 8
  tail call void %5(ptr noundef %7, i32 noundef 26) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @memac_free(ptr noundef %memac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fm.i = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 12
  %0 = ptrtoint ptr %fm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fm.i, align 8
  %mac_id.i = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 9
  %2 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac_id.i, align 4
  tail call void @fman_unregister_intr(ptr noundef %1, i32 noundef 0, i8 noundef zeroext %3, i32 noundef 0) #8
  %4 = ptrtoint ptr %fm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fm.i, align 8
  %6 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mac_id.i, align 4
  tail call void @fman_unregister_intr(ptr noundef %5, i32 noundef 0, i8 noundef zeroext %7, i32 noundef 1) #8
  %multicast_addr_hash.i = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 7
  %8 = ptrtoint ptr %multicast_addr_hash.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %multicast_addr_hash.i, align 4
  tail call fastcc void @free_hash_table(ptr noundef %9) #8
  %10 = ptrtoint ptr %multicast_addr_hash.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %multicast_addr_hash.i, align 4
  %unicast_addr_hash.i = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 8
  %11 = ptrtoint ptr %unicast_addr_hash.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %unicast_addr_hash.i, align 8
  tail call fastcc void @free_hash_table(ptr noundef %12) #8
  %13 = ptrtoint ptr %unicast_addr_hash.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %unicast_addr_hash.i, align 8
  %pcsphy = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 15
  %14 = ptrtoint ptr %pcsphy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcsphy, align 8
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @put_device(ptr noundef nonnull %15) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %memac_drv_param = getelementptr inbounds %struct.fman_mac, ptr %memac, i32 0, i32 11
  %16 = ptrtoint ptr %memac_drv_param to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %memac_drv_param, align 4
  tail call void @kfree(ptr noundef %17) #8
  tail call void @kfree(ptr noundef %memac) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @memac_config(ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 72) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i109 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 16) #11
  %tobool3.not = icmp eq ptr %call7.i.i109, null
  br i1 %tobool3.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end6

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %memac_drv_param7 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 11
  %4 = ptrtoint ptr %memac_drv_param7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i109, ptr %memac_drv_param7, align 4
  %5 = ptrtoint ptr %call7.i.i109 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %call7.i.i109, align 8
  %promiscuous_mode_enable.i = getelementptr inbounds %struct.memac_cfg, ptr %call7.i.i109, i32 0, i32 2
  %6 = ptrtoint ptr %promiscuous_mode_enable.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %promiscuous_mode_enable.i, align 2
  %pause_ignore.i = getelementptr inbounds %struct.memac_cfg, ptr %call7.i.i109, i32 0, i32 1
  %7 = ptrtoint ptr %pause_ignore.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %pause_ignore.i, align 1
  %tx_ipg_length.i = getelementptr inbounds %struct.memac_cfg, ptr %call7.i.i109, i32 0, i32 6
  %8 = ptrtoint ptr %tx_ipg_length.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 12, ptr %tx_ipg_length.i, align 4
  %max_frame_length.i = getelementptr inbounds %struct.memac_cfg, ptr %call7.i.i109, i32 0, i32 4
  %9 = ptrtoint ptr %max_frame_length.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1536, ptr %max_frame_length.i, align 8
  %pause_quanta.i = getelementptr inbounds %struct.memac_cfg, ptr %call7.i.i109, i32 0, i32 5
  %10 = ptrtoint ptr %pause_quanta.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -4096, ptr %pause_quanta.i, align 2
  %addr = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %addr, align 4
  %conv = zext i8 %12 to i64
  %shl = shl nuw nsw i64 %conv, 40
  %arrayidx9 = getelementptr %struct.fman_mac_params, ptr %params, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %14 to i64
  %shl11 = shl nuw nsw i64 %conv10, 32
  %or = or i64 %shl11, %shl
  %arrayidx13 = getelementptr %struct.fman_mac_params, ptr %params, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx13, align 2
  %conv14 = zext i8 %16 to i64
  %shl15 = shl nuw nsw i64 %conv14, 24
  %or16 = or i64 %or, %shl15
  %arrayidx18 = getelementptr %struct.fman_mac_params, ptr %params, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %18 to i64
  %shl20 = shl nuw nsw i64 %conv19, 16
  %or21 = or i64 %or16, %shl20
  %arrayidx23 = getelementptr %struct.fman_mac_params, ptr %params, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx23, align 4
  %conv24 = zext i8 %20 to i64
  %shl25 = shl nuw nsw i64 %conv24, 8
  %or26 = or i64 %or21, %shl25
  %arrayidx28 = getelementptr %struct.fman_mac_params, ptr %params, i32 0, i32 1, i32 5
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %22 to i64
  %or30 = or i64 %or26, %conv29
  %addr31 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %addr31 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %or30, ptr %addr31, align 8
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %1, ptr %call7.i.i, align 8
  %max_speed = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 4
  %25 = ptrtoint ptr %max_speed to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %max_speed, align 4
  %max_speed32 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %max_speed32 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %max_speed32, align 4
  %phy_if = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 3
  %28 = ptrtoint ptr %phy_if to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %phy_if, align 4
  %phy_if33 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %phy_if33 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %phy_if33, align 8
  %mac_id = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 2
  %31 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mac_id, align 2
  %mac_id34 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 9
  %33 = ptrtoint ptr %mac_id34 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %mac_id34, align 4
  %exceptions = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 10
  %34 = ptrtoint ptr %exceptions to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1660944384, ptr %exceptions, align 8
  %exception_cb = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 8
  %35 = ptrtoint ptr %exception_cb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %exception_cb, align 4
  %exception_cb35 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %exception_cb35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %exception_cb35, align 4
  %event_cb = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 7
  %38 = ptrtoint ptr %event_cb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %event_cb, align 4
  %event_cb36 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 6
  %40 = ptrtoint ptr %event_cb36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %event_cb36, align 8
  %dev_id = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 6
  %41 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_id, align 4
  %dev_id37 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %dev_id37 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %dev_id37, align 8
  %fm = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 5
  %44 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fm, align 4
  %fm38 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 12
  %46 = ptrtoint ptr %fm38 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %fm38, align 8
  %basex_if = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 9
  %47 = ptrtoint ptr %basex_if to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %basex_if, align 4, !range !79
  %basex_if40 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 14
  %49 = ptrtoint ptr %basex_if40 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %basex_if40, align 2
  %fm_rev_info = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 13
  tail call void @fman_get_revision(ptr noundef %45, ptr noundef %fm_rev_info) #8
  %50 = ptrtoint ptr %phy_if33 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %phy_if33, align 8
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %51, label %if.end6.cleanup_crit_edge [
    i32 4, label %if.end6.if.then47_crit_edge
    i32 18, label %if.end6.if.then47_crit_edge110
  ]

if.end6.if.then47_crit_edge110:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47

if.end6.if.then47_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then47:                                        ; preds = %if.end6.if.then47_crit_edge, %if.end6.if.then47_crit_edge110
  %internal_phy_node = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 10
  %53 = ptrtoint ptr %internal_phy_node to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %internal_phy_node, align 4
  %tobool48.not = icmp eq ptr %54, null
  br i1 %tobool48.not, label %if.then47.cleanup.sink.split.sink.split_crit_edge, label %if.end52

if.then47.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

if.end52:                                         ; preds = %if.then47
  %call54 = tail call ptr @of_phy_find_device(ptr noundef nonnull %54) #8
  %pcsphy = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 15
  %55 = ptrtoint ptr %pcsphy to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call54, ptr %pcsphy, align 8
  %tobool56.not = icmp eq ptr %call54, null
  br i1 %tobool56.not, label %if.end52.cleanup.sink.split.sink.split_crit_edge, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end52.cleanup.sink.split.sink.split_crit_edge, %if.then47.cleanup.sink.split.sink.split_crit_edge
  %.str.15.sink = phi ptr [ @.str.15, %if.then47.cleanup.sink.split.sink.split_crit_edge ], [ @.str.18, %if.end52.cleanup.sink.split.sink.split_crit_edge ]
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.15.sink) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end.cleanup.sink.split_crit_edge
  %call63 = tail call i32 @memac_free(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end52.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end6.cleanup_crit_edge ], [ %call7.i.i, %if.end52.cleanup_crit_edge ], [ null, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fman_get_revision(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_find_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fman_unregister_intr(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_hash_table(ptr noundef %hash) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not = icmp eq ptr %hash, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %entry
  %lsts = getelementptr inbounds %struct.eth_hash_t, ptr %hash, i32 0, i32 1
  %0 = ptrtoint ptr %lsts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lsts, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %for.cond.preheader

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.cond.preheader:                               ; preds = %if.then
  %2 = ptrtoint ptr %hash to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hash, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp38.not = icmp eq i16 %3, 0
  br i1 %cmp38.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %lsts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lsts, align 4
  %arrayidx = getelementptr %struct.list_head, ptr %5, i32 %i.039
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not.i = icmp eq ptr %7, %arrayidx
  br i1 %cmp.i.not.i, label %for.body.for.inc_crit_edge, label %if.then.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i:                                        ; preds = %for.body
  %tobool1.not.i = icmp eq ptr %7, null
  %add.ptr.i = getelementptr i8, ptr %7, i32 -8
  %spec.select.i = select i1 %tobool1.not.i, ptr null, ptr %add.ptr.i
  %node.i = getelementptr inbounds %struct.eth_hash_entry, ptr %spec.select.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.dequeue_addr_from_hash_entry.exit_crit_edge

if.then.i.dequeue_addr_from_hash_entry.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dequeue_addr_from_hash_entry.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.eth_hash_entry, ptr %spec.select.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %dequeue_addr_from_hash_entry.exit

dequeue_addr_from_hash_entry.exit:                ; preds = %if.end.i.i.i, %if.then.i.dequeue_addr_from_hash_entry.exit_crit_edge
  %14 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %node.i, ptr %node.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.eth_hash_entry, ptr %spec.select.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %node.i, ptr %prev.i3.i.i, align 4
  %tobool5.not35 = icmp eq ptr %spec.select.i, null
  br i1 %tobool5.not35, label %dequeue_addr_from_hash_entry.exit.for.inc_crit_edge, label %dequeue_addr_from_hash_entry.exit.while.body_crit_edge

dequeue_addr_from_hash_entry.exit.while.body_crit_edge: ; preds = %dequeue_addr_from_hash_entry.exit
  br label %while.body

dequeue_addr_from_hash_entry.exit.for.inc_crit_edge: ; preds = %dequeue_addr_from_hash_entry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

while.body:                                       ; preds = %dequeue_addr_from_hash_entry.exit34.while.body_crit_edge, %dequeue_addr_from_hash_entry.exit.while.body_crit_edge
  %hash_entry.036 = phi ptr [ %add.ptr.i23, %dequeue_addr_from_hash_entry.exit34.while.body_crit_edge ], [ %add.ptr.i, %dequeue_addr_from_hash_entry.exit.while.body_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %hash_entry.036) #8
  %16 = ptrtoint ptr %lsts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lsts, align 4
  %arrayidx7 = getelementptr %struct.list_head, ptr %17, i32 %i.039
  %18 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx7, align 4
  %cmp.i.not.i21 = icmp eq ptr %19, %arrayidx7
  br i1 %cmp.i.not.i21, label %while.body.for.inc_crit_edge, label %if.then.i27

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i27:                                      ; preds = %while.body
  %tobool1.not.i22 = icmp eq ptr %19, null
  %add.ptr.i23 = getelementptr i8, ptr %19, i32 -8
  %spec.select.i24 = select i1 %tobool1.not.i22, ptr null, ptr %add.ptr.i23
  %node.i25 = getelementptr inbounds %struct.eth_hash_entry, ptr %spec.select.i24, i32 0, i32 1
  %call.i.i.i26 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i25) #8
  br i1 %call.i.i.i26, label %if.end.i.i.i30, label %if.then.i27.dequeue_addr_from_hash_entry.exit34_crit_edge

if.then.i27.dequeue_addr_from_hash_entry.exit34_crit_edge: ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %dequeue_addr_from_hash_entry.exit34

if.end.i.i.i30:                                   ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i28 = getelementptr inbounds %struct.eth_hash_entry, ptr %spec.select.i24, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i28, align 4
  %22 = ptrtoint ptr %node.i25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %node.i25, align 4
  %prev1.i.i.i.i29 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i29, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %dequeue_addr_from_hash_entry.exit34

dequeue_addr_from_hash_entry.exit34:              ; preds = %if.end.i.i.i30, %if.then.i27.dequeue_addr_from_hash_entry.exit34_crit_edge
  %26 = ptrtoint ptr %node.i25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %node.i25, ptr %node.i25, align 4
  %prev.i3.i.i31 = getelementptr inbounds %struct.eth_hash_entry, ptr %spec.select.i24, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i3.i.i31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %node.i25, ptr %prev.i3.i.i31, align 4
  %tobool5.not = icmp eq ptr %spec.select.i24, null
  br i1 %tobool5.not, label %dequeue_addr_from_hash_entry.exit34.for.inc_crit_edge, label %dequeue_addr_from_hash_entry.exit34.while.body_crit_edge

dequeue_addr_from_hash_entry.exit34.while.body_crit_edge: ; preds = %dequeue_addr_from_hash_entry.exit34
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

dequeue_addr_from_hash_entry.exit34.for.inc_crit_edge: ; preds = %dequeue_addr_from_hash_entry.exit34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %dequeue_addr_from_hash_entry.exit34.for.inc_crit_edge, %while.body.for.inc_crit_edge, %dequeue_addr_from_hash_entry.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.039, 1
  %28 = ptrtoint ptr %hash to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %hash, align 4
  %conv = zext i16 %29 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %30 = ptrtoint ptr %lsts to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lsts, align 4
  tail call void @kfree(ptr noundef %31) #8
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then.if.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %hash) #8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/fman/fman_memac.c", i32 924, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @memac_add_hash_mac_address._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @memac_add_hash_mac_address._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/freescale/fman/fman_memac.c", i32 1019, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @memac_set_exception._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @memac_set_exception._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/freescale/fman/fman_memac.c", i32 1053, i32 4}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @memac_init._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @memac_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/freescale/fman/fman_memac.c", i32 1114, i32 3}
!18 = !{ptr @memac_init._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @memac_init._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/freescale/fman/fman_memac.c", i32 1121, i32 3}
!22 = !{ptr @memac_init._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @memac_init._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @memac_init._entry.13, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/freescale/fman/fman_memac.c", i32 1128, i32 3}
!26 = !{ptr @memac_init._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/freescale/fman/fman_memac.c", i32 1201, i32 4}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @memac_config._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @memac_config._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/freescale/fman/fman_memac.c", i32 1208, i32 4}
!34 = !{ptr @memac_config._entry.17, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @memac_config._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/freescale/fman/fman_memac.c", i32 604, i32 3}
!38 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @check_init_parameters._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @check_init_parameters._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/freescale/fman/fman_memac.c", i32 608, i32 3}
!43 = !{ptr @check_init_parameters._entry.22, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @check_init_parameters._entry_ptr.24, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 742941}
!55 = !{i64 2156551598}
!56 = !{i64 2156551865}
!57 = !{i64 742523}
!58 = !{i64 2156552236}
!59 = !{i64 2156552503}
!60 = !{i64 2156552874}
!61 = !{i64 2156553141}
!62 = !{i64 2156553498}
!63 = !{i64 2156553825}
!64 = !{i64 2156554209}
!65 = !{i64 2156554746}
!66 = !{i64 2156555114}
!67 = !{i64 2156555370}
!68 = !{i64 2156555762}
!69 = !{i64 2156556041}
!70 = !{i64 2156556433}
!71 = !{i64 2156556712}
!72 = !{i64 2156557083}
!73 = !{i64 2156557350}
!74 = !{i64 2156539151}
!75 = !{i64 2156539464}
!76 = !{i64 2156559818}
!77 = !{i64 2156560169}
!78 = !{i64 2156560520}
!79 = !{i8 0, i8 2}
!80 = !{i64 2156562845}
!81 = !{i64 2156541951}
!82 = !{i64 2156542187}
!83 = !{i64 2156540487}
!84 = !{i64 2156540743}
!85 = !{i64 2156541647}
!86 = !{i64 2156542547}
!87 = !{i64 2156542867}
!88 = !{i64 2156543215}
!89 = !{i64 2156543543}
!90 = !{i64 2156543899}
!91 = !{i64 2156544272}
!92 = !{i64 2156544576}
!93 = !{i64 2156566729}
!94 = !{i64 2156566994}
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !{i64 2156549403}
!97 = !{i64 2156549693}
!98 = !{i64 2156550103}
!99 = !{i64 2156550490}
!100 = !{i64 2156550780}
!101 = !{i64 2156551190}
