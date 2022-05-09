; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/mv88e6xxx/devlink.c_pt.bc'
source_filename = "../drivers/net/dsa/mv88e6xxx/devlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.devlink_param = type { i32, ptr, i8, i32, i32, ptr, ptr, ptr }
%struct.devlink_port_region_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.devlink_region_ops = type { ptr, ptr, ptr, ptr }
%struct.mv88e6xxx_region_priv = type { i32 }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mv88e6xxx_chip = type { ptr, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, %struct.mutex, i32, %struct.work_struct, %struct.timer_list, %struct.mutex, ptr, i32, %struct.list_head, %struct.idr, %struct.mv88e6xxx_irq, %struct.mv88e6xxx_irq, i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], ptr, %struct.kthread_delayed_work, [2 x i8], %struct.cyclecounter, %struct.timecounter, %struct.delayed_work, ptr, %struct.ptp_clock_info, %struct.delayed_work, [16 x %struct.ptp_pin_desc], i16, i16, i16, i32, i32, [12 x %struct.mv88e6xxx_port_hwtstamp], [12 x %struct.mv88e6xxx_port], [5 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mv88e6xxx_info = type { i32, i16, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, ptr, i8 }
%struct.mv88e6xxx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.devlink_resource_size_params = type { i64, i64, i64, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.135 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.135 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.mv88e6xxx_atu_entry = type { i8, i8, i16, [6 x i8] }
%struct.mv88e6xxx_devlink_atu_entry = type { i16, i16, i16, i16, i16, i16 }
%struct.mv88e6xxx_vtu_entry = type { i16, i16, i8, i8, [12 x i8], [12 x i8] }
%struct.mv88e6xxx_devlink_vtu_entry = type { i16, i16, i16, i16, [3 x i16], i16 }

@mv88e6xxx_devlink_params = internal constant { [1 x %struct.devlink_param], [32 x i8] } { [1 x %struct.devlink_param] [%struct.devlink_param { i32 17, ptr @.str.7, i8 0, i32 0, i32 1, ptr @dsa_devlink_param_get, ptr @dsa_devlink_param_set, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ATU\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ATU_bin_0\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ATU_bin_1\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ATU_bin_2\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ATU_bin_3\00", [22 x i8] zeroinitializer }, align 32
@mv88e6xxx_region_port_ops = internal constant { %struct.devlink_port_region_ops, [16 x i8] } { %struct.devlink_port_region_ops { ptr @.str.19, ptr @kfree, ptr @mv88e6xxx_region_port_snapshot, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mv88e6xxx\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"asic.id\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ATU_hash\00", [23 x i8] zeroinitializer }, align 32
@mv88e6xxx_devlink_atu_bin_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 112, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to set ATU stats kind/bin\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mv88e6xxx_devlink_atu_bin_get\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/dsa/mv88e6xxx/devlink.c\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv88e6xxx_devlink_atu_bin_get._entry_ptr = internal global ptr @mv88e6xxx_devlink_atu_bin_get._entry, section ".printk_index", align 4
@mv88e6xxx_devlink_atu_bin_get._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 118, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to perform ATU get next\0A\00", [32 x i8] zeroinitializer }, align 32
@mv88e6xxx_devlink_atu_bin_get._entry_ptr.15 = internal global ptr @mv88e6xxx_devlink_atu_bin_get._entry.13, section ".printk_index", align 4
@mv88e6xxx_devlink_atu_bin_get._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.10, i32 124, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get ATU stats\0A\00", [39 x i8] zeroinitializer }, align 32
@mv88e6xxx_devlink_atu_bin_get._entry_ptr.18 = internal global ptr @mv88e6xxx_devlink_atu_bin_get._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mv88e6xxx_region_global1_ops = internal global { %struct.devlink_region_ops, [16 x i8] } { %struct.devlink_region_ops { ptr @.str.20, ptr @kfree, ptr @mv88e6xxx_region_global_snapshot, ptr @mv88e6xxx_region_global1_priv }, [16 x i8] zeroinitializer }, align 32
@mv88e6xxx_region_global2_ops = internal global { %struct.devlink_region_ops, [16 x i8] } { %struct.devlink_region_ops { ptr @.str.21, ptr @kfree, ptr @mv88e6xxx_region_global_snapshot, ptr @mv88e6xxx_region_global2_priv }, [16 x i8] zeroinitializer }, align 32
@mv88e6xxx_region_atu_ops = internal global { %struct.devlink_region_ops, [16 x i8] } { %struct.devlink_region_ops { ptr @.str.22, ptr @kfree, ptr @mv88e6xxx_region_atu_snapshot, ptr null }, [16 x i8] zeroinitializer }, align 32
@mv88e6xxx_region_vtu_ops = internal global { %struct.devlink_region_ops, [16 x i8] } { %struct.devlink_region_ops { ptr @.str.23, ptr @kfree, ptr @mv88e6xxx_region_vtu_snapshot, ptr null }, [16 x i8] zeroinitializer }, align 32
@mv88e6xxx_region_pvt_ops = internal global { %struct.devlink_region_ops, [16 x i8] } { %struct.devlink_region_ops { ptr @.str.24, ptr @kfree, ptr @mv88e6xxx_region_pvt_snapshot, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"global1\00", [24 x i8] zeroinitializer }, align 32
@mv88e6xxx_region_global1_priv = internal global { %struct.mv88e6xxx_region_priv, [28 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"global2\00", [24 x i8] zeroinitializer }, align 32
@mv88e6xxx_region_global2_priv = internal global { %struct.mv88e6xxx_region_priv, [28 x i8] } { %struct.mv88e6xxx_region_priv { i32 1 }, [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"atu\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vtu\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pvt\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.25 = private unnamed_addr constant [25 x i8] c"mv88e6xxx_devlink_params\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 75, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 187, i32 42 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 200, i32 42 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 208, i32 42 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 216, i32 42 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 224, i32 42 }
@___asan_gen_.43 = private unnamed_addr constant [26 x i8] c"mv88e6xxx_region_port_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 614, i32 45 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 732, i32 42 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 737, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 76, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 112, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 118, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 124, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 615, i32 10 }
@___asan_gen_.88 = private unnamed_addr constant [29 x i8] c"mv88e6xxx_region_global1_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 578, i32 34 }
@___asan_gen_.91 = private unnamed_addr constant [29 x i8] c"mv88e6xxx_region_global2_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 589, i32 34 }
@___asan_gen_.94 = private unnamed_addr constant [25 x i8] c"mv88e6xxx_region_atu_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 596, i32 34 }
@___asan_gen_.97 = private unnamed_addr constant [25 x i8] c"mv88e6xxx_region_vtu_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 602, i32 34 }
@___asan_gen_.100 = private unnamed_addr constant [25 x i8] c"mv88e6xxx_region_pvt_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 608, i32 34 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 579, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant [30 x i8] c"mv88e6xxx_region_global1_priv\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 574, i32 37 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 590, i32 10 }
@___asan_gen_.112 = private unnamed_addr constant [30 x i8] c"mv88e6xxx_region_global2_priv\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 585, i32 37 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 597, i32 10 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 603, i32 10 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [39 x i8] c"../drivers/net/dsa/mv88e6xxx/devlink.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 609, i32 10 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @mv88e6xxx_devlink_atu_bin_get._entry, ptr @mv88e6xxx_devlink_atu_bin_get._entry.13, ptr @mv88e6xxx_devlink_atu_bin_get._entry.16, ptr @mv88e6xxx_devlink_atu_bin_get._entry_ptr, ptr @mv88e6xxx_devlink_atu_bin_get._entry_ptr.15, ptr @mv88e6xxx_devlink_atu_bin_get._entry_ptr.18, ptr @mv88e6xxx_devlink_params, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mv88e6xxx_region_port_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @mv88e6xxx_region_global1_ops, ptr @mv88e6xxx_region_global2_ops, ptr @mv88e6xxx_region_atu_ops, ptr @mv88e6xxx_region_vtu_ops, ptr @mv88e6xxx_region_pvt_ops, ptr @.str.20, ptr @mv88e6xxx_region_global1_priv, ptr @.str.21, ptr @mv88e6xxx_region_global2_priv, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_devlink_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_region_port_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_devlink_atu_bin_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_devlink_atu_bin_get._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_devlink_atu_bin_get._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_region_global1_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_region_global2_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_region_atu_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_region_vtu_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_region_pvt_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_region_global1_priv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_region_global2_priv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_devlink_param_get(ptr nocapture noundef readonly %ds, i32 noundef %id, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %reg_lock.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %id)
  %cond = icmp eq i32 %id, 17
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %atu_get_hash.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %5, i32 0, i32 58
  %6 = ptrtoint ptr %atu_get_hash.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %atu_get_hash.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %7(ptr noundef %1, ptr noundef %ctx) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ %call.i, %if.then.i ], [ -95, %sw.bb.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_devlink_param_set(ptr nocapture noundef readonly %ds, i32 noundef %id, ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %reg_lock.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %id)
  %cond = icmp eq i32 %id, 17
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %atu_set_hash.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %5, i32 0, i32 59
  %6 = ptrtoint ptr %atu_set_hash.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %atu_set_hash.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctx, align 4
  %call.i = tail call i32 %7(ptr noundef %1, i8 noundef zeroext %9) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ %call.i, %if.then.i ], [ -95, %sw.bb.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_setup_devlink_params(ptr noundef %ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dsa_devlink_params_register(ptr noundef %ds, ptr noundef nonnull @mv88e6xxx_devlink_params, i32 noundef 1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_devlink_params_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mv88e6xxx_teardown_devlink_params(ptr noundef %ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dsa_devlink_params_unregister(ptr noundef %ds, ptr noundef nonnull @mv88e6xxx_devlink_params, i32 noundef 1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_devlink_params_unregister(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_setup_devlink_resources(ptr noundef %ds) local_unnamed_addr #0 align 64 {
entry:
  %size_params = alloca %struct.devlink_resource_size_params, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %size_params) #7
  %0 = getelementptr inbounds i8, ptr %size_params, i32 24
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %num_macs.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %num_macs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_macs.i, align 4
  %conv = zext i32 %7 to i64
  %8 = ptrtoint ptr %size_params to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %size_params, align 8
  %size_max2.i = getelementptr inbounds %struct.devlink_resource_size_params, ptr %size_params, i32 0, i32 1
  %9 = ptrtoint ptr %size_max2.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %size_max2.i, align 8
  %size_granularity3.i = getelementptr inbounds %struct.devlink_resource_size_params, ptr %size_params, i32 0, i32 2
  %10 = ptrtoint ptr %size_granularity3.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 1, ptr %size_granularity3.i, align 8
  %unit4.i = getelementptr inbounds %struct.devlink_resource_size_params, ptr %size_params, i32 0, i32 3
  %11 = ptrtoint ptr %unit4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %unit4.i, align 8
  %12 = load ptr, ptr %3, align 8
  %num_macs.i77 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %num_macs.i77 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_macs.i77, align 4
  %conv4 = zext i32 %14 to i64
  %call5 = call i32 @dsa_devlink_resource_register(ptr noundef %ds, ptr noundef nonnull @.str, i64 noundef %conv4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %size_params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  %num_macs.i78 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %num_macs.i78 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_macs.i78, align 4
  %div70 = lshr i32 %18, 2
  %conv7 = zext i32 %div70 to i64
  %19 = ptrtoint ptr %size_params to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv7, ptr %size_params, align 8
  %20 = ptrtoint ptr %size_max2.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv7, ptr %size_max2.i, align 8
  %21 = ptrtoint ptr %size_granularity3.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 1, ptr %size_granularity3.i, align 8
  %22 = ptrtoint ptr %unit4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %unit4.i, align 8
  %23 = load ptr, ptr %3, align 8
  %num_macs.i83 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %num_macs.i83 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_macs.i83, align 4
  %div1272 = lshr i32 %25, 2
  %conv13 = zext i32 %div1272 to i64
  %call14 = call i32 @dsa_devlink_resource_register(ptr noundef %ds, ptr noundef nonnull @.str.1, i64 noundef %conv13, i64 noundef 1, i64 noundef 0, ptr noundef nonnull %size_params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end17:                                         ; preds = %if.end
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 8
  %num_macs.i84 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %num_macs.i84 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_macs.i84, align 4
  %div1973 = lshr i32 %29, 2
  %conv20 = zext i32 %div1973 to i64
  %call21 = call i32 @dsa_devlink_resource_register(ptr noundef %ds, ptr noundef nonnull @.str.2, i64 noundef %conv20, i64 noundef 2, i64 noundef 0, ptr noundef nonnull %size_params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end24:                                         ; preds = %if.end17
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 8
  %num_macs.i85 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %num_macs.i85 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_macs.i85, align 4
  %div2674 = lshr i32 %33, 2
  %conv27 = zext i32 %div2674 to i64
  %call28 = call i32 @dsa_devlink_resource_register(ptr noundef %ds, ptr noundef nonnull @.str.3, i64 noundef %conv27, i64 noundef 3, i64 noundef 0, ptr noundef nonnull %size_params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end31:                                         ; preds = %if.end24
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 8
  %num_macs.i86 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %num_macs.i86 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_macs.i86, align 4
  %div3375 = lshr i32 %37, 2
  %conv34 = zext i32 %div3375 to i64
  %call35 = call i32 @dsa_devlink_resource_register(ptr noundef %ds, ptr noundef nonnull @.str.4, i64 noundef %conv34, i64 noundef 4, i64 noundef 0, ptr noundef nonnull %size_params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end31.out_crit_edge

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  call void @dsa_devlink_resource_occ_get_register(ptr noundef %ds, i64 noundef 0, ptr noundef nonnull @mv88e6xxx_devlink_atu_get, ptr noundef %3) #7
  call void @dsa_devlink_resource_occ_get_register(ptr noundef %ds, i64 noundef 1, ptr noundef nonnull @mv88e6xxx_devlink_atu_bin_0_get, ptr noundef %3) #7
  call void @dsa_devlink_resource_occ_get_register(ptr noundef %ds, i64 noundef 2, ptr noundef nonnull @mv88e6xxx_devlink_atu_bin_1_get, ptr noundef %3) #7
  call void @dsa_devlink_resource_occ_get_register(ptr noundef %ds, i64 noundef 3, ptr noundef nonnull @mv88e6xxx_devlink_atu_bin_2_get, ptr noundef %3) #7
  call void @dsa_devlink_resource_occ_get_register(ptr noundef %ds, i64 noundef 4, ptr noundef nonnull @mv88e6xxx_devlink_atu_bin_3_get, ptr noundef %3) #7
  br label %cleanup

out:                                              ; preds = %if.end31.out_crit_edge, %if.end24.out_crit_edge, %if.end17.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call5, %entry.out_crit_edge ], [ %call14, %if.end.out_crit_edge ], [ %call21, %if.end17.out_crit_edge ], [ %call28, %if.end24.out_crit_edge ], [ %call35, %if.end31.out_crit_edge ]
  call void @dsa_devlink_resources_unregister(ptr noundef %ds) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end38
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %if.end38 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %size_params) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_devlink_resource_register(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_devlink_resource_occ_get_register(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mv88e6xxx_devlink_atu_get(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i64 @mv88e6xxx_devlink_atu_bin_get(ptr noundef %priv, i16 noundef zeroext 0) #7
  %call.i9 = tail call fastcc i64 @mv88e6xxx_devlink_atu_bin_get(ptr noundef %priv, i16 noundef zeroext 16384) #7
  %add = add i64 %call.i9, %call.i
  %call.i10 = tail call fastcc i64 @mv88e6xxx_devlink_atu_bin_get(ptr noundef %priv, i16 noundef zeroext -32768) #7
  %add3 = add i64 %add, %call.i10
  %call.i11 = tail call fastcc i64 @mv88e6xxx_devlink_atu_bin_get(ptr noundef %priv, i16 noundef zeroext -16384) #7
  %add5 = add i64 %add3, %call.i11
  ret i64 %add5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mv88e6xxx_devlink_atu_bin_0_get(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i64 @mv88e6xxx_devlink_atu_bin_get(ptr noundef %priv, i16 noundef zeroext 0)
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mv88e6xxx_devlink_atu_bin_1_get(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i64 @mv88e6xxx_devlink_atu_bin_get(ptr noundef %priv, i16 noundef zeroext 16384)
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mv88e6xxx_devlink_atu_bin_2_get(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i64 @mv88e6xxx_devlink_atu_bin_get(ptr noundef %priv, i16 noundef zeroext -32768)
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mv88e6xxx_devlink_atu_bin_3_get(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i64 @mv88e6xxx_devlink_atu_bin_get(ptr noundef %priv, i16 noundef zeroext -16384)
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_devlink_resources_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mv88e6xxx_teardown_devlink_regions_global(ptr nocapture noundef readonly %ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %arrayidx = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 47, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @dsa_devlink_region_destroy(ptr noundef %3) #7
  %arrayidx.1 = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 47, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  tail call void @dsa_devlink_region_destroy(ptr noundef %5) #7
  %arrayidx.2 = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 47, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  tail call void @dsa_devlink_region_destroy(ptr noundef %7) #7
  %arrayidx.3 = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 47, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.3, align 4
  tail call void @dsa_devlink_region_destroy(ptr noundef %9) #7
  %arrayidx.4 = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 47, i32 4
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.4, align 4
  tail call void @dsa_devlink_region_destroy(ptr noundef %11) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_devlink_region_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mv88e6xxx_teardown_devlink_regions_port(ptr nocapture noundef readonly %ds, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %region = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 46, i32 %port, i32 15
  %2 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %region, align 4
  tail call void @dsa_devlink_region_destroy(ptr noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_setup_devlink_regions_port(ptr noundef %ds, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call ptr @dsa_devlink_port_region_create(ptr noundef %ds, i32 noundef %port, ptr noundef nonnull @mv88e6xxx_region_port_ops, i32 noundef 1, i64 noundef 64) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %region3 = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 46, i32 %port, i32 15
  %3 = ptrtoint ptr %region3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %region3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_devlink_port_region_create(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_setup_devlink_regions_global(ptr noundef %ds) local_unnamed_addr #0 align 64 {
sw.epilog:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call11 = tail call ptr @dsa_devlink_region_create(ptr noundef %ds, ptr noundef nonnull @mv88e6xxx_region_global1_ops, i32 noundef 1, i64 noundef 64) #7
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.epilog.for.end24_crit_edge, label %sw.epilog.1

sw.epilog.for.end24_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end24

sw.epilog.1:                                      ; preds = %sw.epilog
  %arrayidx15 = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 47, i32 0
  %2 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call11, ptr %arrayidx15, align 4
  %call11.1 = tail call ptr @dsa_devlink_region_create(ptr noundef %ds, ptr noundef nonnull @mv88e6xxx_region_global2_ops, i32 noundef 1, i64 noundef 64) #7
  %cmp.i.1 = icmp ugt ptr %call11.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %sw.epilog.1.for.body19_crit_edge, label %sw.epilog.2

sw.epilog.1.for.body19_crit_edge:                 ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body19

sw.epilog.2:                                      ; preds = %sw.epilog.1
  %arrayidx15.1 = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 47, i32 1
  %3 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11.1, ptr %arrayidx15.1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %num_databases.i.2 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %num_databases.i.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_databases.i.2, align 4
  %mul.2 = mul i32 %7, 12
  %conv.2 = zext i32 %mul.2 to i64
  %call11.2 = tail call ptr @dsa_devlink_region_create(ptr noundef %ds, ptr noundef nonnull @mv88e6xxx_region_atu_ops, i32 noundef 1, i64 noundef %conv.2) #7
  %cmp.i.2 = icmp ugt ptr %call11.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %sw.epilog.2.for.body19_crit_edge, label %sw.epilog.3

sw.epilog.2.for.body19_crit_edge:                 ; preds = %sw.epilog.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body19

sw.epilog.3:                                      ; preds = %sw.epilog.2
  %arrayidx15.2 = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 47, i32 2
  %8 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call11.2, ptr %arrayidx15.2, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %max_vid.i.3 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %max_vid.i.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_vid.i.3, align 4
  %add.3 = shl i32 %12, 4
  %mul9.3 = add i32 %add.3, 16
  %conv10.3 = zext i32 %mul9.3 to i64
  %call11.3 = tail call ptr @dsa_devlink_region_create(ptr noundef %ds, ptr noundef nonnull @mv88e6xxx_region_vtu_ops, i32 noundef 1, i64 noundef %conv10.3) #7
  %cmp.i.3 = icmp ugt ptr %call11.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3, label %sw.epilog.3.for.body19_crit_edge, label %land.lhs.true.4

sw.epilog.3.for.body19_crit_edge:                 ; preds = %sw.epilog.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body19

land.lhs.true.4:                                  ; preds = %sw.epilog.3
  %arrayidx15.3 = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 47, i32 3
  %13 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call11.3, ptr %arrayidx15.3, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %pvt.i.4 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %15, i32 0, i32 16
  %16 = ptrtoint ptr %pvt.i.4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pvt.i.4, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.i.not.4 = icmp eq i8 %17, 0
  br i1 %tobool.i.not.4, label %land.lhs.true.4.cleanup_crit_edge, label %sw.epilog.4

land.lhs.true.4.cleanup_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog.4:                                      ; preds = %land.lhs.true.4
  %call11.4 = tail call ptr @dsa_devlink_region_create(ptr noundef %ds, ptr noundef nonnull @mv88e6xxx_region_pvt_ops, i32 noundef 1, i64 noundef 1024) #7
  %cmp.i.4 = icmp ugt ptr %call11.4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4, label %sw.epilog.4.for.body19_crit_edge, label %for.inc.4

sw.epilog.4.for.body19_crit_edge:                 ; preds = %sw.epilog.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body19

for.inc.4:                                        ; preds = %sw.epilog.4
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx15.4 = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 47, i32 4
  %18 = ptrtoint ptr %arrayidx15.4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call11.4, ptr %arrayidx15.4, align 4
  br label %cleanup

for.body19:                                       ; preds = %sw.epilog.4.for.body19_crit_edge, %sw.epilog.3.for.body19_crit_edge, %sw.epilog.2.for.body19_crit_edge, %sw.epilog.1.for.body19_crit_edge
  %exitcond55.not.1 = phi i1 [ false, %sw.epilog.4.for.body19_crit_edge ], [ false, %sw.epilog.3.for.body19_crit_edge ], [ true, %sw.epilog.2.for.body19_crit_edge ], [ false, %sw.epilog.1.for.body19_crit_edge ]
  %exitcond55.not.2 = phi i1 [ false, %sw.epilog.4.for.body19_crit_edge ], [ true, %sw.epilog.3.for.body19_crit_edge ], [ false, %sw.epilog.2.for.body19_crit_edge ], [ false, %sw.epilog.1.for.body19_crit_edge ]
  %call11.lcssa.ph = phi ptr [ %call11.4, %sw.epilog.4.for.body19_crit_edge ], [ %call11.3, %sw.epilog.3.for.body19_crit_edge ], [ %call11.2, %sw.epilog.2.for.body19_crit_edge ], [ %call11.1, %sw.epilog.1.for.body19_crit_edge ]
  %arrayidx21 = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 47, i32 0
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx21, align 4
  tail call void @dsa_devlink_region_destroy(ptr noundef %20) #7
  br i1 %cmp.i.1, label %for.body19.for.end24_crit_edge, label %for.body19.1

for.body19.for.end24_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end24

for.body19.1:                                     ; preds = %for.body19
  %arrayidx21.1 = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 47, i32 1
  %21 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx21.1, align 4
  tail call void @dsa_devlink_region_destroy(ptr noundef %22) #7
  br i1 %exitcond55.not.1, label %for.body19.1.for.end24_crit_edge, label %for.body19.2

for.body19.1.for.end24_crit_edge:                 ; preds = %for.body19.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end24

for.body19.2:                                     ; preds = %for.body19.1
  %arrayidx21.2 = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 47, i32 2
  %23 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx21.2, align 4
  tail call void @dsa_devlink_region_destroy(ptr noundef %24) #7
  br i1 %exitcond55.not.2, label %for.body19.2.for.end24_crit_edge, label %for.body19.3

for.body19.2.for.end24_crit_edge:                 ; preds = %for.body19.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end24

for.body19.3:                                     ; preds = %for.body19.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx21.3 = getelementptr %struct.mv88e6xxx_chip, ptr %1, i32 0, i32 47, i32 3
  %25 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx21.3, align 4
  tail call void @dsa_devlink_region_destroy(ptr noundef %26) #7
  br label %for.end24

for.end24:                                        ; preds = %for.body19.3, %for.body19.2.for.end24_crit_edge, %for.body19.1.for.end24_crit_edge, %for.body19.for.end24_crit_edge, %sw.epilog.for.end24_crit_edge
  %call11.lcssa65 = phi ptr [ %call11, %sw.epilog.for.end24_crit_edge ], [ %call11.lcssa.ph, %for.body19.3 ], [ %call11.lcssa.ph, %for.body19.2.for.end24_crit_edge ], [ %call11.lcssa.ph, %for.body19.1.for.end24_crit_edge ], [ %call11.lcssa.ph, %for.body19.for.end24_crit_edge ]
  %27 = ptrtoint ptr %call11.lcssa65 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.end24, %for.inc.4, %land.lhs.true.4.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %for.end24 ], [ 0, %for.inc.4 ], [ 0, %land.lhs.true.4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_devlink_region_create(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_devlink_info_get(ptr nocapture noundef readonly %ds, ptr noundef %req, ptr nocapture noundef readnone %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call i32 @devlink_info_driver_name_put(ptr noundef %req, ptr noundef nonnull @.str.5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.mv88e6xxx_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call1 = tail call i32 @devlink_info_version_fixed_put(ptr noundef %req, ptr noundef nonnull @.str.6, ptr noundef %5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_driver_name_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_version_fixed_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_devlink_param_get(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_devlink_param_set(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @mv88e6xxx_devlink_atu_bin_get(ptr noundef %chip, i16 noundef zeroext %bin) unnamed_addr #0 align 64 {
entry:
  %occupancy = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %occupancy) #7
  %0 = ptrtoint ptr %occupancy to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %occupancy, align 2
  %reg_lock.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #7
  %call = tail call i32 @mv88e6xxx_g2_atu_stats_set(ptr noundef %chip, i16 noundef zeroext 0, i16 noundef zeroext %bin) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #10
  br label %unlock

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mv88e6xxx_g1_atu_get_next(ptr noundef %chip, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev7 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %3 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.14) #10
  br label %unlock

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @mv88e6xxx_g2_atu_stats_get(ptr noundef %chip, ptr noundef nonnull %occupancy) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %dev15 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %5 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.17) #10
  br label %unlock

if.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %occupancy to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %occupancy, align 2
  %9 = and i16 %8, 4095
  store i16 %9, ptr %occupancy, align 2
  br label %unlock

unlock:                                           ; preds = %if.end16, %do.end14, %do.end6, %do.end
  call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  %10 = ptrtoint ptr %occupancy to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %occupancy, align 2
  %conv18 = zext i16 %11 to i64
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %occupancy) #7
  ret i64 %conv18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_g2_atu_stats_set(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_g1_atu_get_next(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_g2_atu_stats_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6xxx_region_port_snapshot(ptr nocapture noundef readonly %devlink_port, ptr nocapture noundef readnone %ops, ptr nocapture noundef readnone %extack, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %devlink.i = getelementptr inbounds %struct.devlink_port, ptr %devlink_port, i32 0, i32 3
  %0 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devlink.i, align 4
  %call.i = tail call ptr @devlink_priv(ptr noundef %1) #7
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %index.i = getelementptr inbounds %struct.devlink_port, ptr %devlink_port, i32 0, i32 4
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i, align 4
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 64) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_lock.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %7, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #7
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end
  %i.024 = phi i32 [ 0, %if.end ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %call7.i.i, i32 %i.024
  %call3 = tail call i32 @mv88e6xxx_port_read(ptr noundef %7, i32 noundef %5, i32 noundef %i.024, ptr noundef %arrayidx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.cond, label %if.then5

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %out

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %data, align 4
  br label %out

out:                                              ; preds = %for.end, %if.then5
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_port_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6xxx_region_global_snapshot(ptr noundef %dl, ptr nocapture noundef readonly %ops, ptr nocapture noundef readnone %extack, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.devlink_region_ops, ptr %ops, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call.i = tail call ptr @devlink_priv(ptr noundef %dl) #7
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 64) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_lock.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %5, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #7
  br label %for.body

for.cond:                                         ; preds = %sw.epilog
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end
  %i.033 = phi i32 [ 0, %if.end ], [ %inc, %for.cond.for.body_crit_edge ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %for.body.if.then8_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

for.body.if.then8_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i16, ptr %call7.i.i, i32 %i.033
  %call3 = tail call i32 @mv88e6xxx_g1_read(ptr noundef %5, i32 noundef %i.033, ptr noundef %arrayidx) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5 = getelementptr i16, ptr %call7.i.i, i32 %i.033
  %call6 = tail call i32 @mv88e6xxx_g2_read(ptr noundef %5, i32 noundef %i.033, ptr noundef %arrayidx5) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %err.1 = phi i32 [ %call6, %sw.bb4 ], [ %call3, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool7.not = icmp eq i32 %err.1, 0
  br i1 %tobool7.not, label %for.cond, label %sw.epilog.if.then8_crit_edge

sw.epilog.if.then8_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

if.then8:                                         ; preds = %sw.epilog.if.then8_crit_edge, %for.body.if.then8_crit_edge
  %err.131 = phi i32 [ %err.1, %sw.epilog.if.then8_crit_edge ], [ -95, %for.body.if.then8_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %out

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %data, align 4
  br label %out

out:                                              ; preds = %for.end, %if.then8
  %err.2 = phi i32 [ %err.131, %if.then8 ], [ 0, %for.end ]
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_g1_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_g2_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6xxx_region_atu_snapshot(ptr noundef %dl, ptr nocapture noundef readnone %ops, ptr nocapture noundef readnone %extack, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %atu_op.i = alloca i16, align 2
  %atu_data.i = alloca i16, align 2
  %atu_01.i = alloca i16, align 2
  %atu_23.i = alloca i16, align 2
  %atu_45.i = alloca i16, align 2
  %addr.i = alloca %struct.mv88e6xxx_atu_entry, align 4
  %fid_bitmap = alloca [128 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_priv(ptr noundef %dl) #7
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %fid_bitmap) #7
  %2 = call ptr @memset(ptr %fid_bitmap, i32 255, i32 512)
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %num_databases.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %num_databases.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_databases.i, align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 12) #7
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %entry.cleanup_crit_edge, label %if.end7.i, !prof !74

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #12
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %if.end

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end7.i
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 8
  %num_databases.i36 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %num_databases.i36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_databases.i36, align 4
  %mul = mul i32 %15, 12
  %16 = call ptr @memset(ptr %call8.i, i32 0, i32 %mul)
  %reg_lock.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %4, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #7
  %call4 = call i32 @mv88e6xxx_fid_map(ptr noundef %4, ptr noundef nonnull %fid_bitmap) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %while.cond.preheader, label %if.then6

while.cond.preheader:                             ; preds = %if.end
  %call958 = call i32 @_find_next_bit_be(ptr noundef nonnull %fid_bitmap, i32 noundef 4096, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call958)
  %cmp59 = icmp eq i32 %call958, 4096
  br i1 %cmp59, label %while.cond.preheader.while.end_crit_edge, label %if.end11.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end11.lr.ph:                                   ; preds = %while.cond.preheader
  %17 = getelementptr inbounds %struct.mv88e6xxx_atu_entry, ptr %addr.i, i32 0, i32 3
  %18 = getelementptr inbounds %struct.mv88e6xxx_atu_entry, ptr %addr.i, i32 0, i32 3, i32 2
  %19 = getelementptr inbounds %struct.mv88e6xxx_atu_entry, ptr %addr.i, i32 0, i32 3, i32 4
  br label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call8.i) #7
  br label %out

if.end11:                                         ; preds = %mv88e6xxx_region_atu_snapshot_fid.exit.if.end11_crit_edge, %if.end11.lr.ph
  %call961 = phi i32 [ %call958, %if.end11.lr.ph ], [ %call9, %mv88e6xxx_region_atu_snapshot_fid.exit.if.end11_crit_edge ]
  %count.060 = phi i32 [ 0, %if.end11.lr.ph ], [ %count.2, %mv88e6xxx_region_atu_snapshot_fid.exit.if.end11_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %atu_op.i) #7
  %20 = ptrtoint ptr %atu_op.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %atu_op.i, align 2, !annotation !75
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %atu_data.i) #7
  %21 = ptrtoint ptr %atu_data.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %atu_data.i, align 2, !annotation !75
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %atu_01.i) #7
  %22 = ptrtoint ptr %atu_01.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %atu_01.i, align 2, !annotation !75
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %atu_23.i) #7
  %23 = ptrtoint ptr %atu_23.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %atu_23.i, align 2, !annotation !75
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %atu_45.i) #7
  %24 = ptrtoint ptr %atu_45.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %atu_45.i, align 2, !annotation !75
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %addr.i) #7
  %25 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16777215, ptr %addr.i, align 4
  %26 = call ptr @memset(ptr %17, i32 255, i32 6)
  %conv.i = trunc i32 %call961 to i16
  br label %do.body.i

do.body.i:                                        ; preds = %if.end24.i.do.body.i_crit_edge, %if.end11
  %count.1 = phi i32 [ %count.060, %if.end11 ], [ %inc.i, %if.end24.i.do.body.i_crit_edge ]
  %call.i37 = call i32 @mv88e6xxx_g1_atu_getnext(ptr noundef %4, i16 noundef zeroext %conv.i, ptr noundef nonnull %addr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool.not.i = icmp eq i32 %call.i37, 0
  br i1 %tobool.not.i, label %if.end.i38, label %do.body.i.if.then14_crit_edge

do.body.i.if.then14_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.end.i38:                                       ; preds = %do.body.i
  %27 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool2.not.i = icmp eq i8 %28, 0
  br i1 %tobool2.not.i, label %if.end.i38.mv88e6xxx_region_atu_snapshot_fid.exit_crit_edge, label %if.end4.i

if.end.i38.mv88e6xxx_region_atu_snapshot_fid.exit_crit_edge: ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %mv88e6xxx_region_atu_snapshot_fid.exit

if.end4.i:                                        ; preds = %if.end.i38
  %call5.i = call i32 @mv88e6xxx_g1_read(ptr noundef %4, i32 noundef 11, ptr noundef nonnull %atu_op.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.if.then14_crit_edge

if.end4.i.if.then14_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = call i32 @mv88e6xxx_g1_read(ptr noundef %4, i32 noundef 12, ptr noundef nonnull %atu_data.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.if.then14_crit_edge

if.end8.i.if.then14_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.end12.i:                                       ; preds = %if.end8.i
  %call13.i = call i32 @mv88e6xxx_g1_read(ptr noundef %4, i32 noundef 13, ptr noundef nonnull %atu_01.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.if.then14_crit_edge

if.end12.i.if.then14_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.end16.i:                                       ; preds = %if.end12.i
  %call17.i = call i32 @mv88e6xxx_g1_read(ptr noundef %4, i32 noundef 14, ptr noundef nonnull %atu_23.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end16.i.if.then14_crit_edge

if.end16.i.if.then14_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.end20.i:                                       ; preds = %if.end16.i
  %call21.i = call i32 @mv88e6xxx_g1_read(ptr noundef %4, i32 noundef 15, ptr noundef nonnull %atu_45.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end20.i.if.then14_crit_edge

if.end20.i.if.then14_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.end24.i:                                       ; preds = %if.end20.i
  %arrayidx.i = getelementptr %struct.mv88e6xxx_devlink_atu_entry, ptr %call8.i, i32 %count.1
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %atu_op.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %atu_op.i, align 2
  %atu_op28.i = getelementptr %struct.mv88e6xxx_devlink_atu_entry, ptr %call8.i, i32 %count.1, i32 1
  %32 = ptrtoint ptr %atu_op28.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %atu_op28.i, align 2
  %33 = ptrtoint ptr %atu_data.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %atu_data.i, align 2
  %atu_data30.i = getelementptr %struct.mv88e6xxx_devlink_atu_entry, ptr %call8.i, i32 %count.1, i32 2
  %35 = ptrtoint ptr %atu_data30.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %atu_data30.i, align 4
  %36 = ptrtoint ptr %atu_01.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %atu_01.i, align 2
  %atu_0132.i = getelementptr %struct.mv88e6xxx_devlink_atu_entry, ptr %call8.i, i32 %count.1, i32 3
  %38 = ptrtoint ptr %atu_0132.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %atu_0132.i, align 2
  %39 = ptrtoint ptr %atu_23.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %atu_23.i, align 2
  %atu_2334.i = getelementptr %struct.mv88e6xxx_devlink_atu_entry, ptr %call8.i, i32 %count.1, i32 4
  %41 = ptrtoint ptr %atu_2334.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %atu_2334.i, align 4
  %42 = ptrtoint ptr %atu_45.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %atu_45.i, align 2
  %atu_4536.i = getelementptr %struct.mv88e6xxx_devlink_atu_entry, ptr %call8.i, i32 %count.1, i32 5
  %44 = ptrtoint ptr %atu_4536.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %atu_4536.i, align 2
  %inc.i = add i32 %count.1, 1
  %45 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %17, align 4
  %47 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %18, align 2
  %and9.i.i = and i16 %48, %46
  %49 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %19, align 4
  %and510.i.i = and i16 %and9.i.i, %50
  %cmp.i.i39 = icmp eq i16 %and510.i.i, -1
  br i1 %cmp.i.i39, label %if.end24.i.mv88e6xxx_region_atu_snapshot_fid.exit_crit_edge, label %if.end24.i.do.body.i_crit_edge

if.end24.i.do.body.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end24.i.mv88e6xxx_region_atu_snapshot_fid.exit_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mv88e6xxx_region_atu_snapshot_fid.exit

mv88e6xxx_region_atu_snapshot_fid.exit:           ; preds = %if.end24.i.mv88e6xxx_region_atu_snapshot_fid.exit_crit_edge, %if.end.i38.mv88e6xxx_region_atu_snapshot_fid.exit_crit_edge
  %count.2 = phi i32 [ %count.1, %if.end.i38.mv88e6xxx_region_atu_snapshot_fid.exit_crit_edge ], [ %inc.i, %if.end24.i.mv88e6xxx_region_atu_snapshot_fid.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %addr.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %atu_45.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %atu_23.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %atu_01.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %atu_data.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %atu_op.i) #7
  %add = add i32 %call961, 1
  %call9 = call i32 @_find_next_bit_be(ptr noundef nonnull %fid_bitmap, i32 noundef 4096, i32 noundef %add) #7
  %cmp = icmp eq i32 %call9, 4096
  br i1 %cmp, label %mv88e6xxx_region_atu_snapshot_fid.exit.while.end_crit_edge, label %mv88e6xxx_region_atu_snapshot_fid.exit.if.end11_crit_edge

mv88e6xxx_region_atu_snapshot_fid.exit.if.end11_crit_edge: ; preds = %mv88e6xxx_region_atu_snapshot_fid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

mv88e6xxx_region_atu_snapshot_fid.exit.while.end_crit_edge: ; preds = %mv88e6xxx_region_atu_snapshot_fid.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.then14:                                        ; preds = %if.end20.i.if.then14_crit_edge, %if.end16.i.if.then14_crit_edge, %if.end12.i.if.then14_crit_edge, %if.end8.i.if.then14_crit_edge, %if.end4.i.if.then14_crit_edge, %do.body.i.if.then14_crit_edge
  %retval.0.i40.ph = phi i32 [ %call21.i, %if.end20.i.if.then14_crit_edge ], [ %call17.i, %if.end16.i.if.then14_crit_edge ], [ %call13.i, %if.end12.i.if.then14_crit_edge ], [ %call9.i, %if.end8.i.if.then14_crit_edge ], [ %call5.i, %if.end4.i.if.then14_crit_edge ], [ %call.i37, %do.body.i.if.then14_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %addr.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %atu_45.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %atu_23.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %atu_01.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %atu_data.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %atu_op.i) #7
  call void @kfree(ptr noundef nonnull %call8.i) #7
  br label %out

while.end:                                        ; preds = %mv88e6xxx_region_atu_snapshot_fid.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %51 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call8.i, ptr %data, align 4
  br label %out

out:                                              ; preds = %while.end, %if.then14, %if.then6
  %err.1 = phi i32 [ %call4, %if.then6 ], [ 0, %while.end ], [ %retval.0.i40.ph, %if.then14 ]
  call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %fid_bitmap) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_fid_map(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_g1_atu_getnext(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6xxx_region_vtu_snapshot(ptr noundef %dl, ptr nocapture noundef readnone %ops, ptr nocapture noundef readnone %extack, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %vlan = alloca %struct.mv88e6xxx_vtu_entry, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_priv(ptr noundef %dl) #7
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %vlan) #7
  %4 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, ptr %vlan, i32 0, i32 3
  %5 = call ptr @memset(ptr %vlan, i32 255, i32 30)
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %max_vid.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %max_vid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_vid.i, align 4
  %add = add i32 %9, 1
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 16) #7
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !74

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %12 = extractvalue { i32, i1 } %10, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 8
  %max_vid.i104 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %max_vid.i104 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_vid.i104, align 4
  %conv = trunc i32 %16 to i16
  %17 = ptrtoint ptr %vlan to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %vlan, align 2
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %4, align 1
  %reg_lock.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #7
  br label %do.body

do.body:                                          ; preds = %if.end59.do.body_crit_edge, %if.end
  %entry1.0 = phi ptr [ %call8.i.i, %if.end ], [ %incdec.ptr, %if.end59.do.body_crit_edge ]
  %call5 = call i32 @mv88e6xxx_g1_vtu_getnext(ptr noundef %3, ptr noundef nonnull %vlan) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.body.if.then65_crit_edge

do.body.if.then65_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65

if.end8:                                          ; preds = %do.body
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %4, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool10.not = icmp eq i8 %20, 0
  br i1 %tobool10.not, label %if.end8.if.end66_crit_edge, label %cond.false

if.end8.if.end66_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

cond.false:                                       ; preds = %if.end8
  %call14 = call i32 @mv88e6xxx_g1_read(ptr noundef %3, i32 noundef 2, ptr noundef %entry1.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %cond.end19, label %cond.false.if.then65_crit_edge

cond.false.if.then65_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65

cond.end19:                                       ; preds = %cond.false
  %sid = getelementptr inbounds %struct.mv88e6xxx_devlink_vtu_entry, ptr %entry1.0, i32 0, i32 1
  %call18 = call i32 @mv88e6xxx_g1_read(ptr noundef %3, i32 noundef 3, ptr noundef %sid) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool21.not = icmp eq i32 %call18, 0
  br i1 %tobool21.not, label %cond.end25, label %cond.end19.if.then65_crit_edge

cond.end19.if.then65_crit_edge:                   ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65

cond.end25:                                       ; preds = %cond.end19
  %op = getelementptr inbounds %struct.mv88e6xxx_devlink_vtu_entry, ptr %entry1.0, i32 0, i32 2
  %call24 = call i32 @mv88e6xxx_g1_read(ptr noundef %3, i32 noundef 5, ptr noundef %op) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool27.not = icmp eq i32 %call24, 0
  br i1 %tobool27.not, label %cond.end32, label %cond.end25.if.then65_crit_edge

cond.end25.if.then65_crit_edge:                   ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65

cond.end32:                                       ; preds = %cond.end25
  %vid30 = getelementptr inbounds %struct.mv88e6xxx_devlink_vtu_entry, ptr %entry1.0, i32 0, i32 3
  %call31 = call i32 @mv88e6xxx_g1_read(ptr noundef %3, i32 noundef 6, ptr noundef %vid30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool34.not = icmp eq i32 %call31, 0
  br i1 %tobool34.not, label %cond.end39, label %cond.end32.if.then65_crit_edge

cond.end32.if.then65_crit_edge:                   ; preds = %cond.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65

cond.end39:                                       ; preds = %cond.end32
  %data37 = getelementptr inbounds %struct.mv88e6xxx_devlink_vtu_entry, ptr %entry1.0, i32 0, i32 4
  %call38 = call i32 @mv88e6xxx_g1_read(ptr noundef %3, i32 noundef 7, ptr noundef %data37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool41.not = icmp eq i32 %call38, 0
  br i1 %tobool41.not, label %cond.end47, label %cond.end39.if.then65_crit_edge

cond.end39.if.then65_crit_edge:                   ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65

cond.end47:                                       ; preds = %cond.end39
  %arrayidx45 = getelementptr %struct.mv88e6xxx_devlink_vtu_entry, ptr %entry1.0, i32 0, i32 4, i32 1
  %call46 = call i32 @mv88e6xxx_g1_read(ptr noundef %3, i32 noundef 8, ptr noundef %arrayidx45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool49.not = icmp eq i32 %call46, 0
  br i1 %tobool49.not, label %cond.end55, label %cond.end47.if.then65_crit_edge

cond.end47.if.then65_crit_edge:                   ; preds = %cond.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65

cond.end55:                                       ; preds = %cond.end47
  %arrayidx53 = getelementptr %struct.mv88e6xxx_devlink_vtu_entry, ptr %entry1.0, i32 0, i32 4, i32 2
  %call54 = call i32 @mv88e6xxx_g1_read(ptr noundef %3, i32 noundef 9, ptr noundef %arrayidx53) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool57.not = icmp eq i32 %call54, 0
  br i1 %tobool57.not, label %if.end59, label %cond.end55.if.then65_crit_edge

cond.end55.if.then65_crit_edge:                   ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65

if.end59:                                         ; preds = %cond.end55
  %incdec.ptr = getelementptr %struct.mv88e6xxx_devlink_vtu_entry, ptr %entry1.0, i32 1
  %21 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vlan, align 2
  %conv61 = zext i16 %22 to i32
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 8
  %max_vid.i105 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %max_vid.i105 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_vid.i105, align 4
  %cmp = icmp ugt i32 %26, %conv61
  br i1 %cmp, label %if.end59.do.body_crit_edge, label %if.end59.if.end66_crit_edge

if.end59.if.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.end59.do.body_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then65:                                        ; preds = %cond.end55.if.then65_crit_edge, %cond.end47.if.then65_crit_edge, %cond.end39.if.then65_crit_edge, %cond.end32.if.then65_crit_edge, %cond.end25.if.then65_crit_edge, %cond.end19.if.then65_crit_edge, %cond.false.if.then65_crit_edge, %do.body.if.then65_crit_edge
  %err.0.ph = phi i32 [ %call54, %cond.end55.if.then65_crit_edge ], [ %call5, %do.body.if.then65_crit_edge ], [ %call46, %cond.end47.if.then65_crit_edge ], [ %call38, %cond.end39.if.then65_crit_edge ], [ %call31, %cond.end32.if.then65_crit_edge ], [ %call24, %cond.end25.if.then65_crit_edge ], [ %call18, %cond.end19.if.then65_crit_edge ], [ %call14, %cond.false.if.then65_crit_edge ]
  call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  call void @kfree(ptr noundef nonnull %call8.i.i) #7
  br label %cleanup

if.end66:                                         ; preds = %if.end59.if.end66_crit_edge, %if.end8.if.end66_crit_edge
  call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  %27 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call8.i.i, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then65, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0.ph, %if.then65 ], [ 0, %if.end66 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %vlan) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_g1_vtu_getnext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6xxx_region_pvt_snapshot(ptr noundef %dl, ptr nocapture noundef readnone %ops, ptr nocapture noundef readnone %extack, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_priv(ptr noundef %dl) #7
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1024) #11
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_lock.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #7
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.inc9.for.cond2.preheader_crit_edge, %if.end
  %cur.038 = phi ptr [ %call7.i.i.i, %if.end ], [ %cur.1.lcssa, %for.inc9.for.cond2.preheader_crit_edge ]
  %dev.036 = phi i32 [ 0, %if.end ], [ %inc10, %for.inc9.for.cond2.preheader_crit_edge ]
  %call5 = tail call i32 @mv88e6xxx_g2_pvt_read(ptr noundef %3, i32 noundef %dev.036, i32 noundef 0, ptr noundef %cur.038) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %for.cond2.preheader.for.inc9_crit_edge

for.cond2.preheader.for.inc9_crit_edge:           ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9

if.end8:                                          ; preds = %for.cond2.preheader
  %incdec.ptr = getelementptr i16, ptr %cur.038, i32 1
  %call5.1 = tail call i32 @mv88e6xxx_g2_pvt_read(ptr noundef %3, i32 noundef %dev.036, i32 noundef 1, ptr noundef %incdec.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1)
  %tobool6.not.1 = icmp eq i32 %call5.1, 0
  br i1 %tobool6.not.1, label %if.end8.1, label %if.end8.for.inc9_crit_edge

if.end8.for.inc9_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9

if.end8.1:                                        ; preds = %if.end8
  %incdec.ptr.1 = getelementptr i16, ptr %cur.038, i32 2
  %call5.2 = tail call i32 @mv88e6xxx_g2_pvt_read(ptr noundef %3, i32 noundef %dev.036, i32 noundef 2, ptr noundef %incdec.ptr.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2)
  %tobool6.not.2 = icmp eq i32 %call5.2, 0
  br i1 %tobool6.not.2, label %if.end8.2, label %if.end8.1.for.inc9_crit_edge

if.end8.1.for.inc9_crit_edge:                     ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9

if.end8.2:                                        ; preds = %if.end8.1
  %incdec.ptr.2 = getelementptr i16, ptr %cur.038, i32 3
  %call5.3 = tail call i32 @mv88e6xxx_g2_pvt_read(ptr noundef %3, i32 noundef %dev.036, i32 noundef 3, ptr noundef %incdec.ptr.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.3)
  %tobool6.not.3 = icmp eq i32 %call5.3, 0
  br i1 %tobool6.not.3, label %if.end8.3, label %if.end8.2.for.inc9_crit_edge

if.end8.2.for.inc9_crit_edge:                     ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9

if.end8.3:                                        ; preds = %if.end8.2
  %incdec.ptr.3 = getelementptr i16, ptr %cur.038, i32 4
  %call5.4 = tail call i32 @mv88e6xxx_g2_pvt_read(ptr noundef %3, i32 noundef %dev.036, i32 noundef 4, ptr noundef %incdec.ptr.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.4)
  %tobool6.not.4 = icmp eq i32 %call5.4, 0
  br i1 %tobool6.not.4, label %if.end8.4, label %if.end8.3.for.inc9_crit_edge

if.end8.3.for.inc9_crit_edge:                     ; preds = %if.end8.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9

if.end8.4:                                        ; preds = %if.end8.3
  %incdec.ptr.4 = getelementptr i16, ptr %cur.038, i32 5
  %call5.5 = tail call i32 @mv88e6xxx_g2_pvt_read(ptr noundef %3, i32 noundef %dev.036, i32 noundef 5, ptr noundef %incdec.ptr.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.5)
  %tobool6.not.5 = icmp eq i32 %call5.5, 0
  br i1 %tobool6.not.5, label %if.end8.5, label %if.end8.4.for.inc9_crit_edge

if.end8.4.for.inc9_crit_edge:                     ; preds = %if.end8.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9

if.end8.5:                                        ; preds = %if.end8.4
  %incdec.ptr.5 = getelementptr i16, ptr %cur.038, i32 6
  %call5.6 = tail call i32 @mv88e6xxx_g2_pvt_read(ptr noundef %3, i32 noundef %dev.036, i32 noundef 6, ptr noundef %incdec.ptr.5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.6)
  %tobool6.not.6 = icmp eq i32 %call5.6, 0
  br i1 %tobool6.not.6, label %if.end8.6, label %if.end8.5.for.inc9_crit_edge

if.end8.5.for.inc9_crit_edge:                     ; preds = %if.end8.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9

if.end8.6:                                        ; preds = %if.end8.5
  %incdec.ptr.6 = getelementptr i16, ptr %cur.038, i32 7
  %call5.7 = tail call i32 @mv88e6xxx_g2_pvt_read(ptr noundef %3, i32 noundef %dev.036, i32 noundef 7, ptr noundef %incdec.ptr.6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.7)
  %tobool6.not.7 = icmp eq i32 %call5.7, 0
  br i1 %tobool6.not.7, label %if.end8.7, label %if.end8.6.for.inc9_crit_edge

if.end8.6.for.inc9_crit_edge:                     ; preds = %if.end8.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9

if.end8.7:                                        ; preds = %if.end8.6
  %incdec.ptr.7 = getelementptr i16, ptr %cur.038, i32 8
  %call5.8 = tail call i32 @mv88e6xxx_g2_pvt_read(ptr noundef %3, i32 noundef %dev.036, i32 noundef 8, ptr noundef %incdec.ptr.7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.8)
  %tobool6.not.8 = icmp eq i32 %call5.8, 0
  br i1 %tobool6.not.8, label %if.end8.8, label %if.end8.7.for.inc9_crit_edge

if.end8.7.for.inc9_crit_edge:                     ; preds = %if.end8.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9

if.end8.8:                                        ; preds = %if.end8.7
  %incdec.ptr.8 = getelementptr i16, ptr %cur.038, i32 9
  %call5.9 = tail call i32 @mv88e6xxx_g2_pvt_read(ptr noundef %3, i32 noundef %dev.036, i32 noundef 9, ptr noundef %incdec.ptr.8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.9)
  %tobool6.not.9 = icmp eq i32 %call5.9, 0
  br i1 %tobool6.not.9, label %if.end8.9, label %if.end8.8.for.inc9_crit_edge

if.end8.8.for.inc9_crit_edge:                     ; preds = %if.end8.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9

if.end8.9:                                        ; preds = %if.end8.8
  %incdec.ptr.9 = getelementptr i16, ptr %cur.038, i32 10
  %call5.10 = tail call i32 @mv88e6xxx_g2_pvt_read(ptr noundef %3, i32 noundef %dev.036, i32 noundef 10, ptr noundef %incdec.ptr.9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.10)
  %tobool6.not.10 = icmp eq i32 %call5.10, 0
  br i1 %tobool6.not.10, label %if.end8.10, label %if.end8.9.for.inc9_crit_edge

if.end8.9.for.inc9_crit_edge:                     ; preds = %if.end8.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9

if.end8.10:                                       ; preds = %if.end8.9
  %incdec.ptr.10 = getelementptr i16, ptr %cur.038, i32 11
  %call5.11 = tail call i32 @mv88e6xxx_g2_pvt_read(ptr noundef %3, i32 noundef %dev.036, i32 noundef 11, ptr noundef %incdec.ptr.10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.11)
  %tobool6.not.11 = icmp eq i32 %call5.11, 0
  br i1 %tobool6.not.11, label %if.end8.11, label %if.end8.10.for.inc9_crit_edge

if.end8.10.for.inc9_crit_edge:                    ; preds = %if.end8.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9

if.end8.11:                                       ; preds = %if.end8.10
  %incdec.ptr.11 = getelementptr i16, ptr %cur.038, i32 12
  %call5.12 = tail call i32 @mv88e6xxx_g2_pvt_read(ptr noundef %3, i32 noundef %dev.036, i32 noundef 12, ptr noundef %incdec.ptr.11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.12)
  %tobool6.not.12 = icmp eq i32 %call5.12, 0
  br i1 %tobool6.not.12, label %if.end8.12, label %if.end8.11.for.inc9_crit_edge

if.end8.11.for.inc9_crit_edge:                    ; preds = %if.end8.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9

if.end8.12:                                       ; preds = %if.end8.11
  %incdec.ptr.12 = getelementptr i16, ptr %cur.038, i32 13
  %call5.13 = tail call i32 @mv88e6xxx_g2_pvt_read(ptr noundef %3, i32 noundef %dev.036, i32 noundef 13, ptr noundef %incdec.ptr.12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.13)
  %tobool6.not.13 = icmp eq i32 %call5.13, 0
  br i1 %tobool6.not.13, label %if.end8.13, label %if.end8.12.for.inc9_crit_edge

if.end8.12.for.inc9_crit_edge:                    ; preds = %if.end8.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9

if.end8.13:                                       ; preds = %if.end8.12
  %incdec.ptr.13 = getelementptr i16, ptr %cur.038, i32 14
  %call5.14 = tail call i32 @mv88e6xxx_g2_pvt_read(ptr noundef %3, i32 noundef %dev.036, i32 noundef 14, ptr noundef %incdec.ptr.13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.14)
  %tobool6.not.14 = icmp eq i32 %call5.14, 0
  br i1 %tobool6.not.14, label %if.end8.14, label %if.end8.13.for.inc9_crit_edge

if.end8.13.for.inc9_crit_edge:                    ; preds = %if.end8.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9

if.end8.14:                                       ; preds = %if.end8.13
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.14 = getelementptr i16, ptr %cur.038, i32 15
  %call5.15 = tail call i32 @mv88e6xxx_g2_pvt_read(ptr noundef %3, i32 noundef %dev.036, i32 noundef 15, ptr noundef %incdec.ptr.14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.15)
  %tobool6.not.15 = icmp eq i32 %call5.15, 0
  %incdec.ptr.15 = getelementptr i16, ptr %cur.038, i32 16
  %spec.select = select i1 %tobool6.not.15, ptr %incdec.ptr.15, ptr %incdec.ptr.14
  br label %for.inc9

for.inc9:                                         ; preds = %if.end8.14, %if.end8.13.for.inc9_crit_edge, %if.end8.12.for.inc9_crit_edge, %if.end8.11.for.inc9_crit_edge, %if.end8.10.for.inc9_crit_edge, %if.end8.9.for.inc9_crit_edge, %if.end8.8.for.inc9_crit_edge, %if.end8.7.for.inc9_crit_edge, %if.end8.6.for.inc9_crit_edge, %if.end8.5.for.inc9_crit_edge, %if.end8.4.for.inc9_crit_edge, %if.end8.3.for.inc9_crit_edge, %if.end8.2.for.inc9_crit_edge, %if.end8.1.for.inc9_crit_edge, %if.end8.for.inc9_crit_edge, %for.cond2.preheader.for.inc9_crit_edge
  %cur.1.lcssa = phi ptr [ %cur.038, %for.cond2.preheader.for.inc9_crit_edge ], [ %incdec.ptr, %if.end8.for.inc9_crit_edge ], [ %incdec.ptr.1, %if.end8.1.for.inc9_crit_edge ], [ %incdec.ptr.2, %if.end8.2.for.inc9_crit_edge ], [ %incdec.ptr.3, %if.end8.3.for.inc9_crit_edge ], [ %incdec.ptr.4, %if.end8.4.for.inc9_crit_edge ], [ %incdec.ptr.5, %if.end8.5.for.inc9_crit_edge ], [ %incdec.ptr.6, %if.end8.6.for.inc9_crit_edge ], [ %incdec.ptr.7, %if.end8.7.for.inc9_crit_edge ], [ %incdec.ptr.8, %if.end8.8.for.inc9_crit_edge ], [ %incdec.ptr.9, %if.end8.9.for.inc9_crit_edge ], [ %incdec.ptr.10, %if.end8.10.for.inc9_crit_edge ], [ %incdec.ptr.11, %if.end8.11.for.inc9_crit_edge ], [ %incdec.ptr.12, %if.end8.12.for.inc9_crit_edge ], [ %incdec.ptr.13, %if.end8.13.for.inc9_crit_edge ], [ %spec.select, %if.end8.14 ]
  %err.2 = phi i32 [ %call5, %for.cond2.preheader.for.inc9_crit_edge ], [ %call5.1, %if.end8.for.inc9_crit_edge ], [ %call5.2, %if.end8.1.for.inc9_crit_edge ], [ %call5.3, %if.end8.2.for.inc9_crit_edge ], [ %call5.4, %if.end8.3.for.inc9_crit_edge ], [ %call5.5, %if.end8.4.for.inc9_crit_edge ], [ %call5.6, %if.end8.5.for.inc9_crit_edge ], [ %call5.7, %if.end8.6.for.inc9_crit_edge ], [ %call5.8, %if.end8.7.for.inc9_crit_edge ], [ %call5.9, %if.end8.8.for.inc9_crit_edge ], [ %call5.10, %if.end8.9.for.inc9_crit_edge ], [ %call5.11, %if.end8.10.for.inc9_crit_edge ], [ %call5.12, %if.end8.11.for.inc9_crit_edge ], [ %call5.13, %if.end8.12.for.inc9_crit_edge ], [ %call5.14, %if.end8.13.for.inc9_crit_edge ], [ %call5.15, %if.end8.14 ]
  %inc10 = add nuw nsw i32 %dev.036, 1
  %exitcond.not = icmp eq i32 %inc10, 32
  br i1 %exitcond.not, label %for.end11, label %for.inc9.for.cond2.preheader_crit_edge

for.inc9.for.cond2.preheader_crit_edge:           ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond2.preheader

for.end11:                                        ; preds = %for.inc9
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool12.not = icmp eq i32 %err.2, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %for.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %cleanup

if.end14:                                         ; preds = %for.end11
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.i, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %if.then13 ], [ 0, %if.end14 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_g2_pvt_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 187, i32 42}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 200, i32 42}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 208, i32 42}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 216, i32 42}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 224, i32 42}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 732, i32 42}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 737, i32 12}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 76, i32 2}
!16 = !{ptr @mv88e6xxx_devlink_params, !17, !"mv88e6xxx_devlink_params", i1 false, i1 false}
!17 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 75, i32 35}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 112, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mv88e6xxx_devlink_atu_bin_get._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @mv88e6xxx_devlink_atu_bin_get._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 118, i32 3}
!28 = !{ptr @mv88e6xxx_devlink_atu_bin_get._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mv88e6xxx_devlink_atu_bin_get._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 124, i32 3}
!32 = !{ptr @mv88e6xxx_devlink_atu_bin_get._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mv88e6xxx_devlink_atu_bin_get._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 615, i32 10}
!36 = !{ptr @mv88e6xxx_region_port_ops, !37, !"mv88e6xxx_region_port_ops", i1 false, i1 false}
!37 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 614, i32 45}
!38 = distinct !{null, !39, !"mv88e6xxx_regions", i1 false, i1 false}
!39 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 627, i32 32}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 579, i32 10}
!42 = !{ptr @mv88e6xxx_region_global1_ops, !43, !"mv88e6xxx_region_global1_ops", i1 false, i1 false}
!43 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 578, i32 34}
!44 = !{ptr @mv88e6xxx_region_global1_priv, !45, !"mv88e6xxx_region_global1_priv", i1 false, i1 false}
!45 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 574, i32 37}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 590, i32 10}
!48 = !{ptr @mv88e6xxx_region_global2_ops, !49, !"mv88e6xxx_region_global2_ops", i1 false, i1 false}
!49 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 589, i32 34}
!50 = !{ptr @mv88e6xxx_region_global2_priv, !51, !"mv88e6xxx_region_global2_priv", i1 false, i1 false}
!51 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 585, i32 37}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 597, i32 10}
!54 = !{ptr @mv88e6xxx_region_atu_ops, !55, !"mv88e6xxx_region_atu_ops", i1 false, i1 false}
!55 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 596, i32 34}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 603, i32 10}
!58 = !{ptr @mv88e6xxx_region_vtu_ops, !59, !"mv88e6xxx_region_vtu_ops", i1 false, i1 false}
!59 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 602, i32 34}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 609, i32 10}
!62 = !{ptr @mv88e6xxx_region_pvt_ops, !63, !"mv88e6xxx_region_pvt_ops", i1 false, i1 false}
!63 = !{!"../drivers/net/dsa/mv88e6xxx/devlink.c", i32 608, i32 34}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i8 0, i8 2}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{!"auto-init"}
