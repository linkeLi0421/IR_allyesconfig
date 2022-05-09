; ModuleID = '/llk/IR_all_yes/drivers/net/pcs/pcs-lynx.c_pt.bc'
source_filename = "../drivers/net/pcs/pcs-lynx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+lynx_get_mdio_device\22, \22a\22\09"
module asm "\09.weak\09__crc_lynx_get_mdio_device\09\09\09\09"
module asm "\09.long\09__crc_lynx_get_mdio_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lynx_get_mdio_device:\09\09\09\09\09"
module asm "\09.asciz \09\22lynx_get_mdio_device\22\09\09\09\09\09"
module asm "__kstrtabns_lynx_get_mdio_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lynx_pcs_create\22, \22a\22\09"
module asm "\09.weak\09__crc_lynx_pcs_create\09\09\09\09"
module asm "\09.long\09__crc_lynx_pcs_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lynx_pcs_create:\09\09\09\09\09"
module asm "\09.asciz \09\22lynx_pcs_create\22\09\09\09\09\09"
module asm "__kstrtabns_lynx_pcs_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lynx_pcs_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_lynx_pcs_destroy\09\09\09\09"
module asm "\09.long\09__crc_lynx_pcs_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lynx_pcs_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22lynx_pcs_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_lynx_pcs_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.phylink_pcs_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lynx_pcs = type { %struct.phylink_pcs, ptr }
%struct.phylink_pcs = type { ptr, i8 }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }

@__kstrtab_lynx_get_mdio_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_lynx_get_mdio_device = external dso_local constant [0 x i8], align 1
@__ksymtab_lynx_get_mdio_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lynx_get_mdio_device to i32), ptr @__kstrtab_lynx_get_mdio_device, ptr @__kstrtabns_lynx_get_mdio_device }, section "___ksymtab+lynx_get_mdio_device", align 4
@lynx_pcs_phylink_ops = internal constant { %struct.phylink_pcs_ops, [44 x i8] } { %struct.phylink_pcs_ops { ptr null, ptr @lynx_pcs_get_state, ptr @lynx_pcs_config, ptr @lynx_pcs_an_restart, ptr @lynx_pcs_link_up }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_lynx_pcs_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_lynx_pcs_create = external dso_local constant [0 x i8], align 1
@__ksymtab_lynx_pcs_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lynx_pcs_create to i32), ptr @__kstrtab_lynx_pcs_create, ptr @__kstrtabns_lynx_pcs_create }, section "___ksymtab+lynx_pcs_create", align 4
@__kstrtab_lynx_pcs_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_lynx_pcs_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_lynx_pcs_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lynx_pcs_destroy to i32), ptr @__kstrtab_lynx_pcs_destroy, ptr @__kstrtabns_lynx_pcs_destroy }, section "___ksymtab+lynx_pcs_destroy", align 4
@__UNIQUE_ID_file282 = internal constant [39 x i8] c"pcs_lynx.file=drivers/net/pcs/pcs-lynx\00", section ".modinfo", align 1
@__UNIQUE_ID_license283 = internal constant [30 x i8] c"pcs_lynx.license=Dual BSD/GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lynx_pcs_get_state.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcs_lynx\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lynx_pcs_get_state\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/net/pcs/pcs-lynx.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"mode=%s/%s/%s link=%u an_enabled=%u an_complete=%u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mii\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gmii\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbi\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rev-mii\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rmii\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rev-rmii\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rgmii-id\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-rxid\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rgmii-txid\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtbi\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"smii\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmii\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xlgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"moca\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qsgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgmii\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1000base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"2500base-x\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5gbase-r\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxaui\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xaui\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"25gbase-r\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usxgmii\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10gbase-kr\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"100base-x\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@lynx_pcs_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 214, ptr @.str.37, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"AN not supported on 3.125GHz SerDes lane\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lynx_pcs_config\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lynx_pcs_config._entry_ptr = internal global ptr @lynx_pcs_config._entry, section ".printk_index", align 4
@lynx_pcs_config_usxgmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 187, ptr @.str.37, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"USXGMII only supports in-band AN for now\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lynx_pcs_config_usxgmii\00", [40 x i8] zeroinitializer }, align 32
@lynx_pcs_config_usxgmii._entry_ptr = internal global ptr @lynx_pcs_config_usxgmii._entry, section ".printk_index", align 4
@lynx_pcs_link_up_sgmii._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 267, ptr @.str.37, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid PCS speed %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lynx_pcs_link_up_sgmii\00", [41 x i8] zeroinitializer }, align 32
@lynx_pcs_link_up_sgmii._entry_ptr = internal global ptr @lynx_pcs_link_up_sgmii._entry, section ".printk_index", align 4
@lynx_pcs_link_up_2500basex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 302, ptr @.str.37, ptr @.str.38 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AN not supported for 2500BaseX\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"lynx_pcs_link_up_2500basex\00", [37 x i8] zeroinitializer }, align 32
@lynx_pcs_link_up_2500basex._entry_ptr = internal global ptr @lynx_pcs_link_up_2500basex._entry, section ".printk_index", align 4
@switch.table.lynx_pcs_get_state = internal constant { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.33, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 4, i64 18, i64 21, i64 22, i64 26, i64 28]
@__sancov_gen_cov_switch_values.45 = internal global [8 x i64] [i64 6, i64 32, i64 4, i64 18, i64 21, i64 22, i64 26, i64 28]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 18, i64 22]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 100, i64 1000, i64 4294967295]
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"lynx_pcs_phylink_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 339, i32 37 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 119, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 211, i32 10 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 213, i32 10 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 215, i32 10 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 217, i32 10 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 219, i32 10 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 221, i32 10 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 223, i32 10 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 225, i32 10 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 227, i32 10 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 229, i32 10 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 231, i32 10 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 233, i32 10 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 235, i32 10 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 237, i32 10 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 239, i32 10 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 241, i32 10 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 243, i32 10 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 245, i32 10 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 247, i32 10 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 249, i32 10 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 251, i32 10 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 253, i32 10 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 255, i32 10 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 257, i32 10 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 259, i32 10 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 261, i32 10 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 263, i32 10 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 265, i32 10 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 267, i32 10 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 269, i32 10 }
@___asan_gen_.154 = private unnamed_addr constant [23 x i8] c"../include/linux/phy.h\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 271, i32 10 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 213, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 187, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 267, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.196 = private constant [30 x i8] c"../drivers/net/pcs/pcs-lynx.c\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.196, i32 302, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [32 x i8] c"switch.table.lynx_pcs_get_state\00", align 1
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_file282, ptr @__UNIQUE_ID_license283, ptr @__ksymtab_lynx_get_mdio_device, ptr @__ksymtab_lynx_pcs_create, ptr @__ksymtab_lynx_pcs_destroy, ptr @lynx_pcs_config._entry, ptr @lynx_pcs_config._entry_ptr, ptr @lynx_pcs_config_usxgmii._entry, ptr @lynx_pcs_config_usxgmii._entry_ptr, ptr @lynx_pcs_link_up_2500basex._entry, ptr @lynx_pcs_link_up_2500basex._entry_ptr, ptr @lynx_pcs_link_up_sgmii._entry, ptr @lynx_pcs_link_up_sgmii._entry_ptr, ptr @lynx_pcs_phylink_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @switch.table.lynx_pcs_get_state], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynx_pcs_phylink_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynx_pcs_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynx_pcs_config_usxgmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynx_pcs_link_up_sgmii._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lynx_pcs_link_up_2500basex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lynx_pcs_get_state to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @lynx_get_mdio_device(ptr nocapture noundef readonly %pcs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio = getelementptr inbounds %struct.lynx_pcs, ptr %pcs, i32 0, i32 1
  %0 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @lynx_pcs_create(ptr noundef %mdio) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mdio1 = getelementptr inbounds %struct.lynx_pcs, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %mdio1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mdio, ptr %mdio1, align 8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @lynx_pcs_phylink_ops, ptr %call7.i.i, align 8
  %poll = getelementptr inbounds %struct.phylink_pcs, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %poll to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %poll, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lynx_pcs_destroy(ptr noundef %pcs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %pcs) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lynx_pcs_get_state(ptr nocapture noundef readonly %pcs, ptr noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interface, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.do.body_crit_edge [
    i32 21, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge49
    i32 18, label %entry.sw.bb_crit_edge50
    i32 22, label %sw.bb1
    i32 28, label %sw.bb3
    i32 26, label %sw.bb5
  ]

entry.sw.bb_crit_edge50:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge49:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge49, %entry.sw.bb_crit_edge50
  %mdio = getelementptr inbounds %struct.lynx_pcs, ptr %pcs, i32 0, i32 1
  %3 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdio, align 4
  tail call void @phylink_mii_c22_pcs_get_state(ptr noundef %4, ptr noundef %state) #5
  br label %do.body

sw.bb1:                                           ; preds = %entry
  %mdio2 = getelementptr inbounds %struct.lynx_pcs, ptr %pcs, i32 0, i32 1
  %5 = ptrtoint ptr %mdio2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdio2, align 4
  %bus1.i = getelementptr inbounds %struct.mdio_device, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus1.i, align 8
  %addr2.i = getelementptr inbounds %struct.mdio_device, ptr %6, i32 0, i32 6
  %9 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr2.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %8, i32 noundef %10, i32 noundef 1) #5
  %call3.i = tail call i32 @mdiobus_read(ptr noundef %8, i32 noundef %10, i32 noundef 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp4.i
  %link.i = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 6
  br i1 %or.cond.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %link.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %link.i, align 4
  br label %do.body

if.end.i:                                         ; preds = %sw.bb1
  %12 = trunc i32 %call.i to i8
  %13 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load7.i = load i8, ptr %link.i, align 4
  %14 = shl i8 %12, 5
  %bf.shl.i = and i8 %14, -128
  %bf.clear8.i = and i8 %bf.load7.i, 95
  %15 = and i8 %12, 32
  %bf.set9.i = or i8 %bf.shl.i, %15
  %bf.set20.i = or i8 %bf.set9.i, %bf.clear8.i
  store i8 %bf.set20.i, ptr %link.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool24.not.i = icmp sgt i8 %14, -1
  br i1 %tobool24.not.i, label %if.end.i.do.body_crit_edge, label %if.end26.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end26.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %speed.i = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 3
  %16 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2500, ptr %speed.i, align 4
  %pause.i = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 5
  %17 = ptrtoint ptr %pause.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pause.i, align 4
  %or.i = or i32 %18, 3
  store i32 %or.i, ptr %pause.i, align 4
  %duplex.i = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 4
  %19 = ptrtoint ptr %duplex.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %duplex.i, align 4
  br label %do.body

sw.bb3:                                           ; preds = %entry
  %mdio4 = getelementptr inbounds %struct.lynx_pcs, ptr %pcs, i32 0, i32 1
  %20 = ptrtoint ptr %mdio4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdio4, align 4
  %bus1.i36 = getelementptr inbounds %struct.mdio_device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %bus1.i36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus1.i36, align 8
  %addr2.i37 = getelementptr inbounds %struct.mdio_device, ptr %21, i32 0, i32 6
  %24 = ptrtoint ptr %addr2.i37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr2.i37, align 8
  %call1.i.i = tail call i32 @mdiobus_read(ptr noundef %23, i32 noundef %25, i32 noundef 1075773441) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i38 = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i38, label %sw.bb3.do.body_crit_edge, label %if.end.i45

sw.bb3.do.body_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end.i45:                                       ; preds = %sw.bb3
  %link.i39 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 6
  %26 = trunc i32 %call1.i.i to i8
  %27 = ptrtoint ptr %link.i39 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i40 = load i8, ptr %link.i39, align 4
  %28 = shl i8 %26, 5
  %bf.shl.i41 = and i8 %28, -128
  %bf.clear.i42 = and i8 %bf.load.i40, 95
  %29 = and i8 %26, 32
  %bf.set.i = or i8 %bf.shl.i41, %29
  %bf.set14.i = or i8 %bf.set.i, %bf.clear.i42
  store i8 %bf.set14.i, ptr %link.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %tobool18.not.i = icmp sgt i8 %28, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool24.not.i43 = icmp eq i8 %29, 0
  %or.cond.i44 = or i1 %tobool18.not.i, %tobool24.not.i43
  br i1 %or.cond.i44, label %if.end.i45.do.body_crit_edge, label %if.end26.i46

if.end.i45.do.body_crit_edge:                     ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end26.i46:                                     ; preds = %if.end.i45
  %call1.i44.i = tail call i32 @mdiobus_read(ptr noundef %23, i32 noundef %25, i32 noundef 1075773445) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44.i)
  %cmp28.i = icmp slt i32 %call1.i44.i, 0
  br i1 %cmp28.i, label %if.end26.i46.do.body_crit_edge, label %if.end30.i

if.end26.i46.do.body_crit_edge:                   ; preds = %if.end26.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end30.i:                                       ; preds = %if.end26.i46
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = trunc i32 %call1.i44.i to i16
  tail call void @phylink_decode_usxgmii_word(ptr noundef %state, i16 noundef zeroext %conv.i) #5
  br label %do.body

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mdio6 = getelementptr inbounds %struct.lynx_pcs, ptr %pcs, i32 0, i32 1
  %30 = ptrtoint ptr %mdio6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdio6, align 4
  tail call void @phylink_mii_c45_pcs_get_state(ptr noundef %31, ptr noundef %state) #5
  br label %do.body

do.body:                                          ; preds = %sw.bb5, %if.end30.i, %if.end26.i46.do.body_crit_edge, %if.end.i45.do.body_crit_edge, %sw.bb3.do.body_crit_edge, %if.end26.i, %if.end.i.do.body_crit_edge, %if.then.i, %sw.bb, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lynx_pcs_get_state.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lynx_pcs_get_state, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !110

if.then:                                          ; preds = %do.body
  %mdio10 = getelementptr inbounds %struct.lynx_pcs, ptr %pcs, i32 0, i32 1
  %32 = ptrtoint ptr %mdio10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdio10, align 4
  %34 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %35)
  %36 = icmp ult i32 %35, 30
  br i1 %36, label %switch.lookup, label %if.then.phy_modes.exit_crit_edge

if.then.phy_modes.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_modes.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [30 x ptr], ptr @switch.table.lynx_pcs_get_state, i32 0, i32 %35
  %37 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %37)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %phy_modes.exit

phy_modes.exit:                                   ; preds = %switch.lookup, %if.then.phy_modes.exit_crit_edge
  %retval.0.i47 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.34, %if.then.phy_modes.exit_crit_edge ]
  %speed = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 3
  %38 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %speed, align 4
  %call13 = tail call ptr @phy_speed_to_str(i32 noundef %39) #5
  %duplex = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 4
  %40 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %duplex, align 4
  %call14 = tail call ptr @phy_duplex_to_str(i32 noundef %41) #5
  %link = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 6
  %42 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load = load i8, ptr %link, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %bf.lshr16 = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr16, 1
  %bf.cast17 = zext i8 %bf.clear to i32
  %bf.lshr19 = lshr i8 %bf.load, 5
  %bf.clear20 = and i8 %bf.lshr19, 1
  %bf.cast21 = zext i8 %bf.clear20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lynx_pcs_get_state.__UNIQUE_ID_ddebug281, ptr noundef %33, ptr noundef nonnull @.str.3, ptr noundef nonnull %retval.0.i47, ptr noundef %call13, ptr noundef %call14, i32 noundef %bf.cast, i32 noundef %bf.cast17, i32 noundef %bf.cast21) #5
  br label %do.end

do.end:                                           ; preds = %phy_modes.exit, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lynx_pcs_config(ptr nocapture noundef readonly %pcs, i32 noundef %mode, i32 noundef %ifmode, ptr noundef %advertising, i1 noundef zeroext %permit) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %ifmode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %ifmode, label %entry.cleanup_crit_edge [
    i32 21, label %sw.bb
    i32 4, label %entry.sw.bb1_crit_edge
    i32 18, label %entry.sw.bb1_crit_edge30
    i32 22, label %sw.bb4
    i32 28, label %sw.bb7
    i32 26, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.bb1_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mdio = getelementptr inbounds %struct.lynx_pcs, ptr %pcs, i32 0, i32 1
  %1 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdio, align 4
  %bus1.i = getelementptr inbounds %struct.mdio_device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus1.i, align 8
  %addr2.i = getelementptr inbounds %struct.mdio_device, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr2.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %4, i32 noundef %6, i32 noundef 18, i16 noundef zeroext 4816) #5
  %call4.i = tail call i32 @mdiobus_write(ptr noundef %4, i32 noundef %6, i32 noundef 19, i16 noundef zeroext 19) #5
  %call5.i = tail call i32 @mdiobus_modify(ptr noundef %4, i32 noundef %6, i32 noundef 20, i16 noundef zeroext 3, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %call6.i = tail call i32 @phylink_mii_c22_pcs_config(ptr noundef %2, i32 noundef %mode, i32 noundef 21, ptr noundef %advertising) #5
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge30
  %mdio2 = getelementptr inbounds %struct.lynx_pcs, ptr %pcs, i32 0, i32 1
  %7 = ptrtoint ptr %mdio2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdio2, align 4
  %bus1.i18 = getelementptr inbounds %struct.mdio_device, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %bus1.i18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus1.i18, align 8
  %addr2.i19 = getelementptr inbounds %struct.mdio_device, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %addr2.i19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr2.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.i = icmp eq i32 %mode, 2
  br i1 %cmp.i, label %if.then.i, label %sw.bb1.if.end.i23_crit_edge

sw.bb1.if.end.i23_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i23

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %call.i20 = tail call i32 @mdiobus_write(ptr noundef %10, i32 noundef %12, i32 noundef 18, i16 noundef zeroext 3392) #5
  %call6.i21 = tail call i32 @mdiobus_write(ptr noundef %10, i32 noundef %12, i32 noundef 19, i16 noundef zeroext 3) #5
  br label %if.end.i23

if.end.i23:                                       ; preds = %if.then.i, %sw.bb1.if.end.i23_crit_edge
  %if_mode.0.i = phi i16 [ 3, %if.then.i ], [ 1, %sw.bb1.if.end.i23_crit_edge ]
  %call7.i = tail call i32 @mdiobus_modify(ptr noundef %10, i32 noundef %12, i32 noundef 20, i16 noundef zeroext 3, i16 noundef zeroext %if_mode.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i22 = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i22, label %if.end9.i, label %if.end.i23.cleanup_crit_edge

if.end.i23.cleanup_crit_edge:                     ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i = tail call i32 @phylink_mii_c22_pcs_config(ptr noundef %8, i32 noundef %mode, i32 noundef 4, ptr noundef %advertising) #5
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.i25 = icmp eq i32 %mode, 2
  br i1 %cmp.i25, label %do.end, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  %mdio6 = getelementptr inbounds %struct.lynx_pcs, ptr %pcs, i32 0, i32 1
  %13 = ptrtoint ptr %mdio6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdio6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.35) #9
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %mdio8 = getelementptr inbounds %struct.lynx_pcs, ptr %pcs, i32 0, i32 1
  %15 = ptrtoint ptr %mdio8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdio8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.i.i = icmp eq i32 %mode, 2
  br i1 %cmp.i.i, label %if.end.i28, label %do.end.i

do.end.i:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.39) #9
  br label %cleanup

if.end.i28:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  %addr2.i26 = getelementptr inbounds %struct.mdio_device, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %addr2.i26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %addr2.i26, align 8
  %bus1.i27 = getelementptr inbounds %struct.mdio_device, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %bus1.i27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus1.i27, align 8
  %call1.i.i = tail call i32 @mdiobus_write(ptr noundef %20, i32 noundef %18, i32 noundef 1075773444, i16 noundef zeroext -10751) #5
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.i28, %do.end.i, %do.end, %if.end9.i, %if.end.i23.cleanup_crit_edge, %if.end.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -95, %do.end ], [ -95, %entry.cleanup_crit_edge ], [ %call6.i, %if.end.i ], [ %call5.i, %sw.bb.cleanup_crit_edge ], [ %call10.i, %if.end9.i ], [ %call7.i, %if.end.i23.cleanup_crit_edge ], [ %call1.i.i, %if.end.i28 ], [ -95, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lynx_pcs_an_restart(ptr nocapture noundef readonly %pcs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio = getelementptr inbounds %struct.lynx_pcs, ptr %pcs, i32 0, i32 1
  %0 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio, align 4
  tail call void @phylink_mii_c22_pcs_an_restart(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lynx_pcs_link_up(ptr nocapture noundef readonly %pcs, i32 noundef %mode, i32 noundef %interface, i32 noundef %speed, i32 noundef %duplex) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %interface to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %interface, label %entry.sw.epilog_crit_edge [
    i32 4, label %entry.sw.bb_crit_edge
    i32 18, label %entry.sw.bb_crit_edge15
    i32 22, label %sw.bb1
  ]

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge15
  %mdio = getelementptr inbounds %struct.lynx_pcs, ptr %pcs, i32 0, i32 1
  %1 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdio, align 4
  %bus1.i = getelementptr inbounds %struct.mdio_device, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %bus1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus1.i, align 8
  %addr2.i = getelementptr inbounds %struct.mdio_device, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.i = icmp eq i32 %mode, 2
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %duplex)
  %cmp3.i = icmp eq i32 %duplex, 0
  %spec.select.i = select i1 %cmp3.i, i16 16, i16 0
  %7 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %speed, label %do.end.i [
    i32 1000, label %if.end.i.sw.epilog.i_crit_edge
    i32 100, label %sw.bb7.i
    i32 10, label %sw.bb8.i
    i32 -1, label %if.end.i.sw.epilog_crit_edge
  ]

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.41, i32 noundef %speed) #9
  br label %sw.epilog

sw.epilog.i:                                      ; preds = %sw.bb8.i, %sw.bb7.i, %if.end.i.sw.epilog.i_crit_edge
  %sgmii_speed.0.i = phi i16 [ 0, %sw.bb8.i ], [ 4, %sw.bb7.i ], [ 8, %if.end.i.sw.epilog.i_crit_edge ]
  %or12.i = or i16 %sgmii_speed.0.i, %spec.select.i
  %call.i = tail call i32 @mdiobus_modify(ptr noundef %4, i32 noundef %6, i32 noundef 20, i16 noundef zeroext 28, i16 noundef zeroext %or12.i) #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %mdio2 = getelementptr inbounds %struct.lynx_pcs, ptr %pcs, i32 0, i32 1
  %8 = ptrtoint ptr %mdio2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdio2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp.i7 = icmp eq i32 %mode, 2
  br i1 %cmp.i7, label %do.end.i8, label %if.end.i14

do.end.i8:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.43) #9
  br label %sw.epilog

if.end.i14:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %addr2.i9 = getelementptr inbounds %struct.mdio_device, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %addr2.i9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr2.i9, align 8
  %bus1.i10 = getelementptr inbounds %struct.mdio_device, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %bus1.i10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus1.i10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %duplex)
  %cmp3.i11 = icmp eq i32 %duplex, 0
  %spec.select.i12 = select i1 %cmp3.i11, i16 24, i16 8
  %call.i13 = tail call i32 @mdiobus_modify(ptr noundef %13, i32 noundef %11, i32 noundef 20, i16 noundef zeroext 28, i16 noundef zeroext %spec.select.i12) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i14, %do.end.i8, %sw.epilog.i, %do.end.i, %if.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_mii_c22_pcs_get_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_mii_c45_pcs_get_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_speed_to_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_duplex_to_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_decode_usxgmii_word(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_modify(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_mii_c22_pcs_config(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_mii_c22_pcs_an_restart(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__ksymtab_lynx_get_mdio_device, !1, !"__ksymtab_lynx_get_mdio_device", i1 false, i1 false}
!1 = !{!"../drivers/net/pcs/pcs-lynx.c", i32 46, i32 1}
!2 = !{ptr @__ksymtab_lynx_pcs_create, !3, !"__ksymtab_lynx_pcs_create", i1 false, i1 false}
!3 = !{!"../drivers/net/pcs/pcs-lynx.c", i32 360, i32 1}
!4 = !{ptr @__ksymtab_lynx_pcs_destroy, !5, !"__ksymtab_lynx_pcs_destroy", i1 false, i1 false}
!5 = !{!"../drivers/net/pcs/pcs-lynx.c", i32 368, i32 1}
!6 = !{ptr @__UNIQUE_ID_file282, !7, !"__UNIQUE_ID_file282", i1 false, i1 false}
!7 = !{!"../drivers/net/pcs/pcs-lynx.c", i32 370, i32 1}
!8 = !{ptr @__UNIQUE_ID_license283, !7, !"__UNIQUE_ID_license283", i1 false, i1 false}
!9 = !{ptr @lynx_pcs_phylink_ops, !10, !"lynx_pcs_phylink_ops", i1 false, i1 false}
!10 = !{!"../drivers/net/pcs/pcs-lynx.c", i32 339, i32 37}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/pcs/pcs-lynx.c", i32 119, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @lynx_pcs_get_state.__UNIQUE_ID_ddebug281, !12, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/phy.h", i32 211, i32 10}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/phy.h", i32 213, i32 10}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/phy.h", i32 215, i32 10}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/phy.h", i32 217, i32 10}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/phy.h", i32 219, i32 10}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/phy.h", i32 221, i32 10}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/phy.h", i32 223, i32 10}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/phy.h", i32 225, i32 10}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/phy.h", i32 227, i32 10}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/phy.h", i32 229, i32 10}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/phy.h", i32 231, i32 10}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/phy.h", i32 233, i32 10}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/phy.h", i32 235, i32 10}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/phy.h", i32 237, i32 10}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/phy.h", i32 239, i32 10}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/phy.h", i32 241, i32 10}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/phy.h", i32 243, i32 10}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/phy.h", i32 245, i32 10}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/phy.h", i32 247, i32 10}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/phy.h", i32 249, i32 10}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/linux/phy.h", i32 251, i32 10}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/phy.h", i32 253, i32 10}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/phy.h", i32 255, i32 10}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/phy.h", i32 257, i32 10}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/phy.h", i32 259, i32 10}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/phy.h", i32 261, i32 10}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/phy.h", i32 263, i32 10}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/phy.h", i32 265, i32 10}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../include/linux/phy.h", i32 267, i32 10}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/phy.h", i32 269, i32 10}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/phy.h", i32 271, i32 10}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/pcs/pcs-lynx.c", i32 213, i32 4}
!81 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @lynx_pcs_config._entry, !80, !"_entry", i1 false, i1 false}
!85 = !{ptr @lynx_pcs_config._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/pcs/pcs-lynx.c", i32 187, i32 3}
!88 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @lynx_pcs_config_usxgmii._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @lynx_pcs_config_usxgmii._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/pcs/pcs-lynx.c", i32 267, i32 3}
!93 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @lynx_pcs_link_up_sgmii._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @lynx_pcs_link_up_sgmii._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/pcs/pcs-lynx.c", i32 302, i32 3}
!98 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @lynx_pcs_link_up_2500basex._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @lynx_pcs_link_up_2500basex._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{i64 2148802713, i64 2148802718, i64 2148802731, i64 2148802775, i64 2148802809, i64 2148802830}
