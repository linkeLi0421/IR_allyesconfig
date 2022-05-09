; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/fman/fman_dtsec.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/fman/fman_dtsec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fman_mac = type { ptr, i64, i32, i16, ptr, ptr, ptr, i8, ptr, ptr, i8, i32, i8, i8, ptr, ptr, %struct.fman_rev_info, i8, ptr }
%struct.fman_rev_info = type { i8, i8 }
%struct.dtsec_cfg = type { i16, i16, i8, i16, i8, i8, i32, i32, i16, i16, i32, i32, i32, i32 }
%struct.dtsec_regs = type { i32, i32, i32, i32, [1 x i32], i32, i32, i32, i32, i32, i32, [5 x i32], i32, [3 x i32], i32, [11 x i32], [8 x i32], [8 x i32], [16 x i32], i32, i32, i32, i32, i32, [10 x i32], i32, i32, i32, [15 x %struct.anon], [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [848 x i32] }
%struct.anon = type { i32, i32 }
%struct.eth_hash_entry = type { i64, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.eth_hash_t = type { i16, ptr }
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
%struct.fman_mac_params = type { ptr, [6 x i8], i8, i32, i16, ptr, ptr, ptr, ptr, i8, ptr }

@dtsec_set_tx_pause_frames._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014fsl_dpaa_mac: pause-time: %d illegal.Should be > 320\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dtsec_set_tx_pause_frames\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/freescale/fman/fman_dtsec.c\00", [47 x i8] zeroinitializer }, align 32
@dtsec_set_tx_pause_frames._entry_ptr = internal global ptr @dtsec_set_tx_pause_frames._entry, section ".printk_index", align 4
@dtsec_add_hash_mac_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 1070, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013fsl_dpaa_mac: Could not compute hash bucket\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dtsec_add_hash_mac_address\00", [37 x i8] zeroinitializer }, align 32
@dtsec_add_hash_mac_address._entry_ptr = internal global ptr @dtsec_add_hash_mac_address._entry, section ".printk_index", align 4
@dtsec_del_hash_mac_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.5, ptr @.str.2, i32 1181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dtsec_del_hash_mac_address\00", [37 x i8] zeroinitializer }, align 32
@dtsec_del_hash_mac_address._entry_ptr = internal global ptr @dtsec_del_hash_mac_address._entry, section ".printk_index", align 4
@dtsec_set_exception._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013fsl_dpaa_mac: Undefined exception\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dtsec_set_exception\00", [44 x i8] zeroinitializer }, align 32
@dtsec_set_exception._entry_ptr = internal global ptr @dtsec_set_exception._entry, section ".printk_index", align 4
@dtsec_set_exception._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 1359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013fsl_dpaa_mac: Exception valid for 1588 only\0A\00", [49 x i8] zeroinitializer }, align 32
@dtsec_set_exception._entry_ptr.10 = internal global ptr @dtsec_set_exception._entry.8, section ".printk_index", align 4
@dtsec_set_exception._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 1377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dtsec_set_exception._entry_ptr.12 = internal global ptr @dtsec_set_exception._entry.11, section ".printk_index", align 4
@dtsec_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013fsl_dpaa_mac: DTSEC version doesn't support this i/f mode\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dtsec_init\00", [21 x i8] zeroinitializer }, align 32
@dtsec_init._entry_ptr = internal global ptr @dtsec_init._entry, section ".printk_index", align 4
@dtsec_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 1446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013fsl_dpaa_mac: Setting max frame length failed\0A\00", [47 x i8] zeroinitializer }, align 32
@dtsec_init._entry_ptr.17 = internal global ptr @dtsec_init._entry.15, section ".printk_index", align 4
@dtsec_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 1455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013fsl_dpaa_mac: MC hash table is failed\0A\00", [55 x i8] zeroinitializer }, align 32
@dtsec_init._entry_ptr.20 = internal global ptr @dtsec_init._entry.18, section ".printk_index", align 4
@dtsec_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.2, i32 1462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013fsl_dpaa_mac: UC hash table is failed\0A\00", [55 x i8] zeroinitializer }, align 32
@dtsec_init._entry_ptr.23 = internal global ptr @dtsec_init._entry.21, section ".printk_index", align 4
@dtsec_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 1541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013fsl_dpaa_mac: TBI PHY node is not available\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dtsec_config\00", [19 x i8] zeroinitializer }, align 32
@dtsec_config._entry_ptr = internal global ptr @dtsec_config._entry, section ".printk_index", align 4
@dtsec_config._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 1547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013fsl_dpaa_mac: of_phy_find_device (TBI PHY) failed\0A\00", [43 x i8] zeroinitializer }, align 32
@dtsec_config._entry_ptr.28 = internal global ptr @dtsec_config._entry.26, section ".printk_index", align 4
@graceful_stop.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 -32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl_dpaa_mac\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"graceful_stop\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"GTS not supported due to DTSEC_A004 Errata.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"fsl_dpaa_mac: GTS not supported due to DTSEC_A004 Errata.\0A\00", [37 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_init_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013fsl_dpaa_mac: 1G MAC driver supports 1G or lower speeds\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"check_init_parameters\00", [42 x i8] zeroinitializer }, align 32
@check_init_parameters._entry_ptr = internal global ptr @check_init_parameters._entry, section ".printk_index", align 4
@check_init_parameters._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013fsl_dpaa_mac: packetAlignmentPadding can't be > than %d\0A\00", [37 x i8] zeroinitializer }, align 32
@check_init_parameters._entry_ptr.37 = internal global ptr @check_init_parameters._entry.35, section ".printk_index", align 4
@check_init_parameters._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013fsl_dpaa_mac: Inter packet gap can't be greater than %d\0A\00", [37 x i8] zeroinitializer }, align 32
@check_init_parameters._entry_ptr.40 = internal global ptr @check_init_parameters._entry.38, section ".printk_index", align 4
@check_init_parameters._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.2, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013fsl_dpaa_mac: maxRetransmission can't be greater than %d\0A\00", [36 x i8] zeroinitializer }, align 32
@check_init_parameters._entry_ptr.43 = internal global ptr @check_init_parameters._entry.41, section ".printk_index", align 4
@check_init_parameters._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.34, ptr @.str.2, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013fsl_dpaa_mac: collisionWindow can't be greater than %d\0A\00", [38 x i8] zeroinitializer }, align 32
@check_init_parameters._entry_ptr.46 = internal global ptr @check_init_parameters._entry.44, section ".printk_index", align 4
@check_init_parameters._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.34, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013fsl_dpaa_mac: uninitialized exception_cb\0A\00", [52 x i8] zeroinitializer }, align 32
@check_init_parameters._entry_ptr.49 = internal global ptr @check_init_parameters._entry.47, section ".printk_index", align 4
@check_init_parameters._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.34, ptr @.str.2, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013fsl_dpaa_mac: uninitialized event_cb\0A\00", [56 x i8] zeroinitializer }, align 32
@check_init_parameters._entry_ptr.52 = internal global ptr @check_init_parameters._entry.50, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dtsec_isr.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 -63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dtsec_isr\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Rx lockup due to Tx lockup\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"fsl_dpaa_mac: Rx lockup due to Tx lockup\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 32, i64 33]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 975, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1070, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1181, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1348, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1359, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1377, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1412, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1446, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1455, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1462, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1541, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1547, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 898, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 555, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 560, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 570, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 576, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 582, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 590, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 594, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private constant [52 x i8] c"../drivers/net/ethernet/freescale/fman/fman_dtsec.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 775, i32 6 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @check_init_parameters._entry, ptr @check_init_parameters._entry.35, ptr @check_init_parameters._entry.38, ptr @check_init_parameters._entry.41, ptr @check_init_parameters._entry.44, ptr @check_init_parameters._entry.47, ptr @check_init_parameters._entry.50, ptr @check_init_parameters._entry_ptr, ptr @check_init_parameters._entry_ptr.37, ptr @check_init_parameters._entry_ptr.40, ptr @check_init_parameters._entry_ptr.43, ptr @check_init_parameters._entry_ptr.46, ptr @check_init_parameters._entry_ptr.49, ptr @check_init_parameters._entry_ptr.52, ptr @dtsec_add_hash_mac_address._entry, ptr @dtsec_add_hash_mac_address._entry_ptr, ptr @dtsec_config._entry, ptr @dtsec_config._entry.26, ptr @dtsec_config._entry_ptr, ptr @dtsec_config._entry_ptr.28, ptr @dtsec_del_hash_mac_address._entry, ptr @dtsec_del_hash_mac_address._entry_ptr, ptr @dtsec_init._entry, ptr @dtsec_init._entry.15, ptr @dtsec_init._entry.18, ptr @dtsec_init._entry.21, ptr @dtsec_init._entry_ptr, ptr @dtsec_init._entry_ptr.17, ptr @dtsec_init._entry_ptr.20, ptr @dtsec_init._entry_ptr.23, ptr @dtsec_set_exception._entry, ptr @dtsec_set_exception._entry.11, ptr @dtsec_set_exception._entry.8, ptr @dtsec_set_exception._entry_ptr, ptr @dtsec_set_exception._entry_ptr.10, ptr @dtsec_set_exception._entry_ptr.12, ptr @dtsec_set_tx_pause_frames._entry, ptr @dtsec_set_tx_pause_frames._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtsec_set_tx_pause_frames._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtsec_add_hash_mac_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtsec_del_hash_mac_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtsec_set_exception._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtsec_set_exception._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtsec_set_exception._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtsec_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtsec_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtsec_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtsec_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtsec_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtsec_config._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_init_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_init_parameters._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_init_parameters._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_init_parameters._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_init_parameters._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_init_parameters._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_init_parameters._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dtsec_cfg_max_frame_len(ptr nocapture noundef readonly %dtsec, i16 noundef zeroext %new_val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtsec_drv_param = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 14
  %0 = ptrtoint ptr %dtsec_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtsec_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %maximum_frame = getelementptr inbounds %struct.dtsec_cfg, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %maximum_frame to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %new_val, ptr %maximum_frame, align 2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dtsec_cfg_pad_and_crc(ptr nocapture noundef readonly %dtsec, i1 noundef zeroext %new_val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtsec_drv_param = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 14
  %0 = ptrtoint ptr %dtsec_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtsec_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %frombool = zext i1 %new_val to i8
  %tx_pad_crc = getelementptr inbounds %struct.dtsec_cfg, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tx_pad_crc to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %tx_pad_crc, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtsec_enable(ptr nocapture noundef readonly %dtsec, i32 noundef %mode) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtsec_drv_param = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 14
  %0 = ptrtoint ptr %dtsec_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtsec_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtsec, align 8
  %maccfg1 = getelementptr inbounds %struct.dtsec_regs, ptr %3, i32 0, i32 19
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %maccfg1) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  %and = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %5 = shl nuw nsw i32 %and, 2
  %and6 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %6 = lshr exact i32 %and6, 1
  %7 = or i32 %6, %5
  %8 = or i32 %7, %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maccfg1, i32 %8) #8, !srcloc !105
  %9 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dtsec, align 8
  br i1 %tobool7.not, label %if.end.if.end.i_crit_edge, label %do.body.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @arm_heavy_mb() #8
  %tctrl.i = getelementptr inbounds %struct.dtsec_regs, ptr %10, i32 0, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tctrl.i) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %and2.i = and i32 %11, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tctrl.i, i32 %and2.i) #8, !srcloc !105
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %if.end.if.end.i_crit_edge
  br i1 %tobool.not, label %if.end.i.cleanup_crit_edge, label %do.body7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %rctrl.i = getelementptr inbounds %struct.dtsec_regs, ptr %10, i32 0, i32 14
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl.i) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %and13.i = and i32 %12, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rctrl.i, i32 %and13.i) #8, !srcloc !105
  br label %cleanup

cleanup:                                          ; preds = %do.body7.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %do.body7.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtsec_disable(ptr nocapture noundef readonly %dtsec, i32 noundef %mode) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtsec_drv_param = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 14
  %0 = ptrtoint ptr %dtsec_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtsec_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtsec, align 8
  tail call fastcc void @graceful_stop(ptr noundef %dtsec, i32 noundef %mode)
  %maccfg1 = getelementptr inbounds %struct.dtsec_regs, ptr %3, i32 0, i32 19
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %maccfg1) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  %and = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and5 = and i32 %4, -5
  %spec.select = select i1 %tobool.not, i32 %4, i32 %and5
  %and7 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %and10 = and i32 %spec.select, -2
  %tmp.1 = select i1 %tobool8.not, i32 %spec.select, i32 %and10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maccfg1, i32 %tmp.1) #8, !srcloc !105
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @graceful_stop(ptr nocapture noundef readonly %dtsec, i32 noundef %mode) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtsec, align 8
  %and = and i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  %rctrl = getelementptr inbounds %struct.dtsec_regs, ptr %1, i32 0, i32 14
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  %or = or i32 %2, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rctrl, i32 %or) #8, !srcloc !105
  %fm_rev_info = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 16
  %3 = ptrtoint ptr %fm_rev_info to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fm_rev_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp = icmp eq i8 %4, 2
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  br label %if.end6

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 50, i32 noundef 2) #8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5, %entry.if.end6_crit_edge
  %and7 = and i32 %mode, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end36_crit_edge, label %if.then9

if.end6.if.end36_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then9:                                         ; preds = %if.end6
  %fm_rev_info10 = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 16
  %5 = ptrtoint ptr %fm_rev_info10 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fm_rev_info10, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp13 = icmp eq i8 %6, 2
  br i1 %cmp13, label %do.body16, label %if.else26

do.body16:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @graceful_stop.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@graceful_stop, %if.then22)) #8
          to label %if.end36 [label %if.then22], !srcloc !114

if.then22:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @graceful_stop.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.32) #8
  br label %if.end36

if.else26:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %tctrl = getelementptr inbounds %struct.dtsec_regs, ptr %1, i32 0, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tctrl) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  %or30 = or i32 %7, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tctrl, i32 %or30) #8, !srcloc !105
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 50, i32 noundef 2) #8
  br label %if.end36

if.end36:                                         ; preds = %if.else26, %if.then22, %do.body16, %if.end6.if.end36_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtsec_set_tx_pause_frames(ptr nocapture noundef readonly %dtsec, i8 noundef zeroext %priority, i16 noundef zeroext %pause_time, i16 noundef zeroext %thresh_time) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtsec, align 8
  %dtsec_drv_param = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 14
  %2 = ptrtoint ptr %dtsec_drv_param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtsec_drv_param, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rctrl = getelementptr inbounds %struct.dtsec_regs, ptr %1, i32 0, i32 14
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %and = lshr i32 %4, 5
  %and.lobit = and i32 %and, 1
  %5 = xor i32 %and.lobit, 1
  %tctrl = getelementptr inbounds %struct.dtsec_regs, ptr %1, i32 0, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tctrl) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  %and8 = lshr i32 %6, 4
  %7 = and i32 %and8, 2
  %8 = or i32 %7, %5
  %9 = xor i32 %8, 2
  tail call fastcc void @graceful_stop(ptr noundef %dtsec, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %pause_time)
  %tobool.not = icmp eq i16 %pause_time, 0
  br i1 %tobool.not, label %do.body44, label %if.then13

if.then13:                                        ; preds = %if.end
  %fm_rev_info = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 16
  %10 = ptrtoint ptr %fm_rev_info to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fm_rev_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp14 = icmp eq i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 321, i16 %pause_time)
  %cmp17 = icmp ult i16 %pause_time, 321
  %or.cond = and i1 %cmp17, %cmp14
  br i1 %or.cond, label %do.end, label %if.end23

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %conv16 = zext i16 %pause_time to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv16) #11
  br label %cleanup

if.end23:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %ptv25 = getelementptr inbounds %struct.dtsec_regs, ptr %1, i32 0, i32 6
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ptv25) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %and28 = and i32 %12, -65536
  %conv29 = zext i16 %pause_time to i32
  %or31 = or i32 %and28, %conv29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ptv25, i32 %or31) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %maccfg1 = getelementptr inbounds %struct.dtsec_regs, ptr %1, i32 0, i32 19
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %maccfg1) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %or42 = or i32 %13, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maccfg1, i32 %or42) #8, !srcloc !105
  br label %if.end53

do.body44:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  tail call void @arm_heavy_mb() #8
  %maccfg148 = getelementptr inbounds %struct.dtsec_regs, ptr %1, i32 0, i32 19
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %maccfg148) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  %and51 = and i32 %14, -17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maccfg148, i32 %and51) #8, !srcloc !105
  br label %if.end53

if.end53:                                         ; preds = %do.body44, %if.end23
  %15 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dtsec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i75.not = icmp eq i32 %7, 0
  br i1 %tobool.not.i75.not, label %do.body.i, label %if.end53.if.end.i_crit_edge

if.end53.if.end.i_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.body.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @arm_heavy_mb() #8
  %tctrl.i = getelementptr inbounds %struct.dtsec_regs, ptr %16, i32 0, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tctrl.i) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %and2.i = and i32 %17, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tctrl.i, i32 %and2.i) #8, !srcloc !105
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %if.end53.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not.i = icmp eq i32 %5, 0
  br i1 %tobool5.not.i, label %if.end.i.cleanup_crit_edge, label %do.body7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %rctrl.i = getelementptr inbounds %struct.dtsec_regs, ptr %16, i32 0, i32 14
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl.i) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %and13.i = and i32 %18, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rctrl.i, i32 %and13.i) #8, !srcloc !105
  br label %cleanup

cleanup:                                          ; preds = %do.body7.i, %if.end.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %do.body7.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtsec_accept_rx_pause_frames(ptr nocapture noundef readonly %dtsec, i1 noundef zeroext %en) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtsec_drv_param = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 14
  %0 = ptrtoint ptr %dtsec_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtsec_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtsec, align 8
  %rctrl = getelementptr inbounds %struct.dtsec_regs, ptr %3, i32 0, i32 14
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  %and = lshr i32 %4, 5
  %and.lobit = and i32 %and, 1
  %5 = xor i32 %and.lobit, 1
  %tctrl = getelementptr inbounds %struct.dtsec_regs, ptr %3, i32 0, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tctrl) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  %and9 = lshr i32 %6, 4
  %7 = and i32 %and9, 2
  %8 = or i32 %7, %5
  %9 = xor i32 %8, 2
  tail call fastcc void @graceful_stop(ptr noundef %dtsec, i32 noundef %9)
  %maccfg1 = getelementptr inbounds %struct.dtsec_regs, ptr %3, i32 0, i32 19
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %maccfg1) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  %and19 = and i32 %10, -33
  %masksel = select i1 %en, i32 32, i32 0
  %tmp.0 = or i32 %and19, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maccfg1, i32 %tmp.0) #8, !srcloc !105
  %11 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dtsec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i35.not = icmp eq i32 %7, 0
  br i1 %tobool.not.i35.not, label %do.body.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @arm_heavy_mb() #8
  %tctrl.i = getelementptr inbounds %struct.dtsec_regs, ptr %12, i32 0, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tctrl.i) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %and2.i = and i32 %13, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tctrl.i, i32 %and2.i) #8, !srcloc !105
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %if.end.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not.i = icmp eq i32 %5, 0
  br i1 %tobool5.not.i, label %if.end.i.cleanup_crit_edge, label %do.body7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %rctrl.i = getelementptr inbounds %struct.dtsec_regs, ptr %12, i32 0, i32 14
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl.i) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %and13.i = and i32 %14, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rctrl.i, i32 %and13.i) #8, !srcloc !105
  br label %cleanup

cleanup:                                          ; preds = %do.body7.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %do.body7.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtsec_modify_mac_address(ptr nocapture noundef %dtsec, ptr nocapture noundef readonly %enet_addr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtsec_drv_param = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 14
  %0 = ptrtoint ptr %dtsec_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtsec_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtsec, align 8
  %rctrl = getelementptr inbounds %struct.dtsec_regs, ptr %3, i32 0, i32 14
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  %and = lshr i32 %4, 5
  %and.lobit = and i32 %and, 1
  %5 = xor i32 %and.lobit, 1
  %tctrl = getelementptr inbounds %struct.dtsec_regs, ptr %3, i32 0, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tctrl) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %and8 = lshr i32 %6, 4
  %7 = and i32 %and8, 2
  %8 = or i32 %7, %5
  %9 = xor i32 %8, 2
  tail call fastcc void @graceful_stop(ptr noundef %dtsec, i32 noundef %9)
  %10 = ptrtoint ptr %enet_addr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enet_addr, align 1
  %conv = zext i8 %11 to i64
  %shl = shl nuw nsw i64 %conv, 40
  %arrayidx13 = getelementptr [6 x i8], ptr %enet_addr, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %13 to i64
  %shl15 = shl nuw nsw i64 %conv14, 32
  %or16 = or i64 %shl15, %shl
  %arrayidx17 = getelementptr [6 x i8], ptr %enet_addr, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %15 to i64
  %shl19 = shl nuw nsw i64 %conv18, 24
  %or20 = or i64 %or16, %shl19
  %arrayidx21 = getelementptr [6 x i8], ptr %enet_addr, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %17 to i64
  %shl23 = shl nuw nsw i64 %conv22, 16
  %or24 = or i64 %or20, %shl23
  %arrayidx25 = getelementptr [6 x i8], ptr %enet_addr, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %19 to i64
  %shl27 = shl nuw nsw i64 %conv26, 8
  %or28 = or i64 %or24, %shl27
  %arrayidx29 = getelementptr [6 x i8], ptr %enet_addr, i32 0, i32 5
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %21 to i64
  %or31 = or i64 %or28, %conv30
  %addr = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 1
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %or31, ptr %addr, align 8
  %23 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dtsec, align 8
  %25 = load i8, ptr %arrayidx29, align 1
  %conv.i = zext i8 %25 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %26 = load i8, ptr %arrayidx25, align 1
  %conv2.i = zext i8 %26 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %27 = load i8, ptr %arrayidx21, align 1
  %conv5.i = zext i8 %27 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %28 = load i8, ptr %arrayidx17, align 1
  %conv9.i = zext i8 %28 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %macstnaddr1.i = getelementptr inbounds %struct.dtsec_regs, ptr %24, i32 0, i32 26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macstnaddr1.i, i32 %or10.i) #8, !srcloc !105
  %29 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx13, align 1
  %conv12.i = zext i8 %30 to i32
  %shl13.i = shl nuw i32 %conv12.i, 24
  %31 = ptrtoint ptr %enet_addr to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %enet_addr, align 1
  %conv15.i = zext i8 %32 to i32
  %shl16.i = shl nuw nsw i32 %conv15.i, 16
  %or17.i = or i32 %shl16.i, %shl13.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  tail call void @arm_heavy_mb() #8
  %macstnaddr2.i = getelementptr inbounds %struct.dtsec_regs, ptr %24, i32 0, i32 27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macstnaddr2.i, i32 %or17.i) #8, !srcloc !105
  %33 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dtsec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i49.not = icmp eq i32 %7, 0
  br i1 %tobool.not.i49.not, label %do.body.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @arm_heavy_mb() #8
  %tctrl.i = getelementptr inbounds %struct.dtsec_regs, ptr %34, i32 0, i32 12
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tctrl.i) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %and2.i = and i32 %35, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tctrl.i, i32 %and2.i) #8, !srcloc !105
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %if.end.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not.i = icmp eq i32 %5, 0
  br i1 %tobool5.not.i, label %if.end.i.cleanup_crit_edge, label %do.body7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %rctrl.i = getelementptr inbounds %struct.dtsec_regs, ptr %34, i32 0, i32 14
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl.i) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %and13.i = and i32 %36, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rctrl.i, i32 %and13.i) #8, !srcloc !105
  br label %cleanup

cleanup:                                          ; preds = %do.body7.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %do.body7.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtsec_add_hash_mac_address(ptr nocapture noundef readonly %dtsec, ptr noundef %eth_addr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtsec_drv_param = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 14
  %0 = ptrtoint ptr %dtsec_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtsec_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtsec, align 8
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
  %rctrl = getelementptr inbounds %struct.dtsec_regs, ptr %3, i32 0, i32 14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %and = and i32 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %17 = and i64 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool23.not = icmp eq i64 %17, 0
  %tobool23.not.not = xor i1 %tobool23.not, true
  %brmerge = select i1 %tobool.not, i1 true, i1 %tobool23.not.not
  br i1 %brmerge, label %cond.end, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %cleanup

cond.end:                                         ; preds = %if.end
  %call34 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %eth_addr, i32 noundef 6) #12
  %18 = lshr i32 %call34, 8
  %conv4.i.i = and i32 %18, 255
  %arrayidx.i10.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i
  %19 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i10.i.i, align 1
  %conv6.i.i = zext i8 %20 to i32
  %21 = shl nuw nsw i32 %conv6.i.i, 16
  %22 = and i32 %call34, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %24 to i32
  %25 = shl nuw i32 %conv2.i.i, 24
  %or.i13.i = or i32 %21, %25
  %shr63 = lshr i32 %or.i13.i, 23
  %add = or i32 %conv2.i.i, 256
  %spec.select = select i1 %tobool23.not, i32 %conv2.i.i, i32 %add
  %bucket.0 = select i1 %tobool.not, i32 %spec.select, i32 %shr63
  %26 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dtsec, align 8
  %28 = lshr i32 %bucket.0, 5
  %and1.i = and i32 %bucket.0, 31
  %shr2.i = lshr i32 -2147483648, %and1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %bucket.0)
  %cmp.i = icmp ugt i32 %bucket.0, 255
  %sub.i = add nsw i32 %28, -8
  %arrayidx.i = getelementptr %struct.dtsec_regs, ptr %27, i32 0, i32 17, i32 %sub.i
  %arrayidx3.i = getelementptr %struct.dtsec_regs, ptr %27, i32 0, i32 16, i32 %28
  %reg.0.i = select i1 %cmp.i, ptr %arrayidx.i, ptr %arrayidx3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg.0.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %or.i129 = or i32 %shr2.i, %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0.i, i32 %or.i129) #8, !srcloc !105
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 2592, i32 noundef 16) #13
  %tobool73.not = icmp eq ptr %call7.i, null
  br i1 %tobool73.not, label %cond.end.cleanup_crit_edge, label %if.end75

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end75:                                         ; preds = %cond.end
  %31 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %or19, ptr %call7.i, align 8
  %node = getelementptr inbounds %struct.eth_hash_entry, ptr %call7.i, i32 0, i32 1
  %32 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %node, ptr %node, align 8
  %prev.i = getelementptr inbounds %struct.eth_hash_entry, ptr %call7.i, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %node, ptr %prev.i, align 4
  br i1 %tobool23.not, label %if.else82, label %if.then79

if.then79:                                        ; preds = %if.end75
  %multicast_addr_hash = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 8
  %34 = ptrtoint ptr %multicast_addr_hash to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %multicast_addr_hash, align 8
  %lsts = getelementptr inbounds %struct.eth_hash_t, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %lsts to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lsts, align 4
  %arrayidx81 = getelementptr %struct.list_head, ptr %37, i32 %bucket.0
  %prev.i130 = getelementptr %struct.list_head, ptr %37, i32 %bucket.0, i32 1
  %38 = ptrtoint ptr %prev.i130 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i130, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %39, ptr noundef %arrayidx81) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then79.cleanup_crit_edge

if.then79.cleanup_crit_edge:                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %prev.i130 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %node, ptr %prev.i130, align 4
  %41 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx81, ptr %node, align 8
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %node, ptr %39, align 4
  br label %cleanup

if.else82:                                        ; preds = %if.end75
  %unicast_addr_hash = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 9
  %44 = ptrtoint ptr %unicast_addr_hash to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %unicast_addr_hash, align 4
  %lsts84 = getelementptr inbounds %struct.eth_hash_t, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %lsts84 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lsts84, align 4
  %arrayidx85 = getelementptr %struct.list_head, ptr %47, i32 %bucket.0
  %prev.i131 = getelementptr %struct.list_head, ptr %47, i32 %bucket.0, i32 1
  %48 = ptrtoint ptr %prev.i131 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i131, align 4
  %call.i.i132 = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %49, ptr noundef %arrayidx85) #8
  br i1 %call.i.i132, label %if.end.i.i134, label %if.else82.cleanup_crit_edge

if.else82.cleanup_crit_edge:                      ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i134:                                    ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %prev.i131 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %node, ptr %prev.i131, align 4
  %51 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx85, ptr %node, align 8
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %node, ptr %49, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i134, %if.else82.cleanup_crit_edge, %if.end.i.i, %if.then79.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %cond.end.cleanup_crit_edge ], [ 0, %if.then79.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ 0, %if.else82.cleanup_crit_edge ], [ 0, %if.end.i.i134 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtsec_set_allmulti(ptr nocapture noundef readonly %dtsec, i1 noundef zeroext %enable) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtsec_drv_param = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 14
  %0 = ptrtoint ptr %dtsec_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtsec_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtsec, align 8
  %rctrl = getelementptr inbounds %struct.dtsec_regs, ptr %3, i32 0, i32 14
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %and = and i32 %4, -9
  %masksel = select i1 %enable, i32 8, i32 0
  %tmp.0 = or i32 %and, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rctrl, i32 %tmp.0) #8, !srcloc !105
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtsec_set_tstamp(ptr nocapture noundef readonly %dtsec, i1 noundef zeroext %enable) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtsec_drv_param = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 14
  %0 = ptrtoint ptr %dtsec_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtsec_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtsec, align 8
  %rctrl2 = getelementptr inbounds %struct.dtsec_regs, ptr %3, i32 0, i32 14
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl2) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %tctrl5 = getelementptr inbounds %struct.dtsec_regs, ptr %3, i32 0, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tctrl5) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %and = and i32 %4, -65
  %and10 = and i32 %5, -65
  %masksel = select i1 %enable, i32 64, i32 0
  %tctrl.0 = or i32 %and10, %masksel
  %rctrl.0 = or i32 %and, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rctrl2, i32 %rctrl.0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tctrl5, i32 %tctrl.0) #8, !srcloc !105
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtsec_del_hash_mac_address(ptr nocapture noundef readonly %dtsec, ptr noundef %eth_addr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtsec_drv_param = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 14
  %0 = ptrtoint ptr %dtsec_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtsec_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtsec, align 8
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
  %rctrl = getelementptr inbounds %struct.dtsec_regs, ptr %3, i32 0, i32 14
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  %and = and i32 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %17 = and i64 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool23.not = icmp eq i64 %17, 0
  %tobool23.not.not = xor i1 %tobool23.not, true
  %brmerge = select i1 %tobool.not, i1 true, i1 %tobool23.not.not
  br i1 %brmerge, label %cond.end, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %cleanup

cond.end:                                         ; preds = %if.end
  %call34 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %eth_addr, i32 noundef 6) #12
  %18 = lshr i32 %call34, 8
  %conv4.i.i = and i32 %18, 255
  %arrayidx.i10.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i
  %19 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i10.i.i, align 1
  %conv6.i.i = zext i8 %20 to i32
  %21 = shl nuw nsw i32 %conv6.i.i, 16
  %22 = and i32 %call34, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %24 to i32
  %25 = shl nuw i32 %conv2.i.i, 24
  %or.i13.i = or i32 %21, %25
  %shr63 = lshr i32 %or.i13.i, 23
  %add = or i32 %conv2.i.i, 256
  %spec.select = select i1 %tobool23.not, i32 %conv2.i.i, i32 %add
  %bucket.0 = select i1 %tobool.not, i32 %spec.select, i32 %shr63
  br i1 %tobool23.not, label %if.else102, label %if.then73

if.then73:                                        ; preds = %cond.end
  %multicast_addr_hash = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 8
  %26 = ptrtoint ptr %multicast_addr_hash to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %multicast_addr_hash, align 8
  %lsts = getelementptr inbounds %struct.eth_hash_t, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %lsts to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lsts, align 4
  %arrayidx74 = getelementptr %struct.list_head, ptr %29, i32 %bucket.0
  %30 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %30)
  %pos.0265 = load ptr, ptr %arrayidx74, align 4
  %cmp.i.not266 = icmp eq ptr %pos.0265, %arrayidx74
  br i1 %cmp.i.not266, label %if.then73.for.end_crit_edge, label %if.then73.for.body_crit_edge

if.then73.for.body_crit_edge:                     ; preds = %if.then73
  br label %for.body

if.then73.for.end_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then73.for.body_crit_edge
  %pos.0267 = phi ptr [ %pos.0, %for.inc.for.body_crit_edge ], [ %pos.0265, %if.then73.for.body_crit_edge ]
  %tobool81.not = icmp eq ptr %pos.0267, null
  %add.ptr = getelementptr i8, ptr %pos.0267, i32 -8
  %spec.select238 = select i1 %tobool81.not, ptr null, ptr %add.ptr
  %tobool87.not = icmp eq ptr %spec.select238, null
  br i1 %tobool87.not, label %for.body.for.inc_crit_edge, label %land.lhs.true88

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true88:                                  ; preds = %for.body
  %31 = ptrtoint ptr %spec.select238 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %spec.select238, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %or19)
  %cmp = icmp eq i64 %32, %or19
  br i1 %cmp, label %if.then91, label %land.lhs.true88.for.inc_crit_edge

land.lhs.true88.for.inc_crit_edge:                ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then91:                                        ; preds = %land.lhs.true88
  %node = getelementptr inbounds %struct.eth_hash_entry, ptr %spec.select238, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then91.list_del_init.exit_crit_edge

if.then91.list_del_init.exit_crit_edge:           ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.eth_hash_entry, ptr %spec.select238, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then91.list_del_init.exit_crit_edge
  %39 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %node, ptr %node, align 4
  %prev.i3.i = getelementptr inbounds %struct.eth_hash_entry, ptr %spec.select238, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %node, ptr %prev.i3.i, align 4
  tail call void @kfree(ptr noundef nonnull %spec.select238) #8
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true88.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %41 = ptrtoint ptr %pos.0267 to i32
  call void @__asan_load4_noabort(i32 %41)
  %pos.0 = load ptr, ptr %pos.0267, align 4
  %cmp.i.not = icmp eq ptr %pos.0, %arrayidx74
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_del_init.exit, %if.then73.for.end_crit_edge
  %hash_entry.1 = phi ptr [ %add.ptr, %list_del_init.exit ], [ null, %if.then73.for.end_crit_edge ], [ %spec.select238, %for.inc.for.end_crit_edge ]
  %42 = ptrtoint ptr %multicast_addr_hash to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %multicast_addr_hash, align 8
  %lsts95 = getelementptr inbounds %struct.eth_hash_t, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %lsts95 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lsts95, align 4
  %arrayidx96 = getelementptr %struct.list_head, ptr %45, i32 %bucket.0
  %46 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %arrayidx96, align 4
  %cmp.i240.not = icmp eq ptr %47, %arrayidx96
  br i1 %cmp.i240.not, label %if.then99, label %for.end.if.end143_crit_edge

for.end.if.end143_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

if.then99:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dtsec, align 8
  %50 = lshr i32 %bucket.0, 5
  %and1.i = and i32 %bucket.0, 31
  %shr2.i = lshr i32 -2147483648, %and1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %bucket.0)
  %cmp.i242 = icmp ugt i32 %bucket.0, 255
  %sub.i = add nsw i32 %50, -8
  %arrayidx.i = getelementptr %struct.dtsec_regs, ptr %49, i32 0, i32 17, i32 %sub.i
  %arrayidx3.i = getelementptr %struct.dtsec_regs, ptr %49, i32 0, i32 16, i32 %50
  %reg.0.i = select i1 %cmp.i242, ptr %arrayidx.i, ptr %arrayidx3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg.0.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %neg.i = xor i32 %shr2.i, -1
  %and12.i = and i32 %51, %neg.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0.i, i32 %and12.i) #8, !srcloc !105
  br label %if.end143

if.else102:                                       ; preds = %cond.end
  %unicast_addr_hash = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 9
  %52 = ptrtoint ptr %unicast_addr_hash to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %unicast_addr_hash, align 4
  %lsts103 = getelementptr inbounds %struct.eth_hash_t, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %lsts103 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lsts103, align 4
  %arrayidx104 = getelementptr %struct.list_head, ptr %55, i32 %bucket.0
  %56 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %56)
  %pos.1268 = load ptr, ptr %arrayidx104, align 4
  %cmp.i243.not269 = icmp eq ptr %pos.1268, %arrayidx104
  br i1 %cmp.i243.not269, label %if.else102.for.end134_crit_edge, label %if.else102.for.body113_crit_edge

if.else102.for.body113_crit_edge:                 ; preds = %if.else102
  br label %for.body113

if.else102.for.end134_crit_edge:                  ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end134

for.body113:                                      ; preds = %for.inc132.for.body113_crit_edge, %if.else102.for.body113_crit_edge
  %pos.1270 = phi ptr [ %pos.1, %for.inc132.for.body113_crit_edge ], [ %pos.1268, %if.else102.for.body113_crit_edge ]
  %tobool116.not = icmp eq ptr %pos.1270, null
  %add.ptr120 = getelementptr i8, ptr %pos.1270, i32 -8
  %spec.select239 = select i1 %tobool116.not, ptr null, ptr %add.ptr120
  %tobool124.not = icmp eq ptr %spec.select239, null
  br i1 %tobool124.not, label %for.body113.for.inc132_crit_edge, label %land.lhs.true125

for.body113.for.inc132_crit_edge:                 ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc132

land.lhs.true125:                                 ; preds = %for.body113
  %57 = ptrtoint ptr %spec.select239 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %spec.select239, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %58, i64 %or19)
  %cmp127 = icmp eq i64 %58, %or19
  br i1 %cmp127, label %if.then129, label %land.lhs.true125.for.inc132_crit_edge

land.lhs.true125.for.inc132_crit_edge:            ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc132

if.then129:                                       ; preds = %land.lhs.true125
  %node130 = getelementptr inbounds %struct.eth_hash_entry, ptr %spec.select239, i32 0, i32 1
  %call.i.i245 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node130) #8
  br i1 %call.i.i245, label %if.end.i.i248, label %if.then129.list_del_init.exit250_crit_edge

if.then129.list_del_init.exit250_crit_edge:       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit250

if.end.i.i248:                                    ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i246 = getelementptr inbounds %struct.eth_hash_entry, ptr %spec.select239, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %prev.i.i246 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i246, align 4
  %61 = ptrtoint ptr %node130 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %node130, align 4
  %prev1.i.i.i247 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i247 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i247, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del_init.exit250

list_del_init.exit250:                            ; preds = %if.end.i.i248, %if.then129.list_del_init.exit250_crit_edge
  %65 = ptrtoint ptr %node130 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %node130, ptr %node130, align 4
  %prev.i3.i249 = getelementptr inbounds %struct.eth_hash_entry, ptr %spec.select239, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %prev.i3.i249 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %node130, ptr %prev.i3.i249, align 4
  tail call void @kfree(ptr noundef nonnull %spec.select239) #8
  br label %for.end134

for.inc132:                                       ; preds = %land.lhs.true125.for.inc132_crit_edge, %for.body113.for.inc132_crit_edge
  %67 = ptrtoint ptr %pos.1270 to i32
  call void @__asan_load4_noabort(i32 %67)
  %pos.1 = load ptr, ptr %pos.1270, align 4
  %cmp.i243.not = icmp eq ptr %pos.1, %arrayidx104
  br i1 %cmp.i243.not, label %for.inc132.for.end134_crit_edge, label %for.inc132.for.body113_crit_edge

for.inc132.for.body113_crit_edge:                 ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body113

for.inc132.for.end134_crit_edge:                  ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end134

for.end134:                                       ; preds = %for.inc132.for.end134_crit_edge, %list_del_init.exit250, %if.else102.for.end134_crit_edge
  %hash_entry.3 = phi ptr [ %add.ptr120, %list_del_init.exit250 ], [ null, %if.else102.for.end134_crit_edge ], [ %spec.select239, %for.inc132.for.end134_crit_edge ]
  %68 = ptrtoint ptr %unicast_addr_hash to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %unicast_addr_hash, align 4
  %lsts136 = getelementptr inbounds %struct.eth_hash_t, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %lsts136 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lsts136, align 4
  %arrayidx137 = getelementptr %struct.list_head, ptr %71, i32 %bucket.0
  %72 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %arrayidx137, align 4
  %cmp.i251.not = icmp eq ptr %73, %arrayidx137
  br i1 %cmp.i251.not, label %if.then140, label %for.end134.if.end143_crit_edge

for.end134.if.end143_crit_edge:                   ; preds = %for.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

if.then140:                                       ; preds = %for.end134
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dtsec, align 8
  %76 = lshr i32 %bucket.0, 5
  %and1.i254 = and i32 %bucket.0, 31
  %shr2.i255 = lshr i32 -2147483648, %and1.i254
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %bucket.0)
  %cmp.i256 = icmp ugt i32 %bucket.0, 255
  %sub.i257 = add nsw i32 %76, -8
  %arrayidx.i258 = getelementptr %struct.dtsec_regs, ptr %75, i32 0, i32 17, i32 %sub.i257
  %arrayidx3.i259 = getelementptr %struct.dtsec_regs, ptr %75, i32 0, i32 16, i32 %76
  %reg.0.i260 = select i1 %cmp.i256, ptr %arrayidx.i258, ptr %arrayidx3.i259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg.0.i260) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %neg.i261 = xor i32 %shr2.i255, -1
  %and12.i262 = and i32 %77, %neg.i261
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0.i260, i32 %and12.i262) #8, !srcloc !105
  br label %if.end143

if.end143:                                        ; preds = %if.then140, %for.end134.if.end143_crit_edge, %if.then99, %for.end.if.end143_crit_edge
  %hash_entry.4 = phi ptr [ %hash_entry.1, %if.then99 ], [ %hash_entry.1, %for.end.if.end143_crit_edge ], [ %hash_entry.3, %if.then140 ], [ %hash_entry.3, %for.end134.if.end143_crit_edge ]
  %tobool144.not = icmp eq ptr %hash_entry.4, null
  br i1 %tobool144.not, label %do.end158, label %if.end143.cleanup_crit_edge, !prof !141

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end158:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1227, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end158, %if.end143.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end158 ], [ 0, %if.end143.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtsec_set_promiscuous(ptr nocapture noundef readonly %dtsec, i1 noundef zeroext %new_val) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtsec_drv_param = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 14
  %0 = ptrtoint ptr %dtsec_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtsec_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtsec, align 8
  %rctrl = getelementptr inbounds %struct.dtsec_regs, ptr %3, i32 0, i32 14
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %and = and i32 %4, -2
  %masksel = zext i1 %new_val to i32
  %tmp.0 = or i32 %and, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rctrl, i32 %tmp.0) #8, !srcloc !105
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %and15 = and i32 %5, -9
  %masksel32 = select i1 %new_val, i32 8, i32 0
  %tmp.1 = or i32 %and15, %masksel32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rctrl, i32 %tmp.1) #8, !srcloc !105
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtsec_adjust_link(ptr nocapture noundef readonly %dtsec, i16 noundef zeroext %speed) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtsec_drv_param = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 14
  %0 = ptrtoint ptr %dtsec_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtsec_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtsec, align 8
  %rctrl = getelementptr inbounds %struct.dtsec_regs, ptr %3, i32 0, i32 14
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  %and = lshr i32 %4, 5
  %and.lobit = and i32 %and, 1
  %5 = xor i32 %and.lobit, 1
  %tctrl = getelementptr inbounds %struct.dtsec_regs, ptr %3, i32 0, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tctrl) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %and9 = lshr i32 %6, 4
  %7 = and i32 %and9, 2
  %8 = or i32 %7, %5
  %9 = xor i32 %8, 2
  tail call fastcc void @graceful_stop(ptr noundef %dtsec, i32 noundef %9)
  %maccfg2 = getelementptr inbounds %struct.dtsec_regs, ptr %3, i32 0, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %maccfg2) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %or17 = and i32 %10, -770
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %speed)
  %cmp19 = icmp ult i16 %speed, 1000
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %speed)
  %cmp24 = icmp eq i16 %speed, 1000
  %spec.select68.v = select i1 %cmp24, i32 513, i32 1
  %tmp.0.v = select i1 %cmp19, i32 257, i32 %spec.select68.v
  %tmp.0 = or i32 %or17, %tmp.0.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maccfg2, i32 %tmp.0) #8, !srcloc !105
  %ecntrl = getelementptr inbounds %struct.dtsec_regs, ptr %3, i32 0, i32 5
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ecntrl) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %speed)
  %cmp35 = icmp eq i16 %speed, 100
  %and40 = and i32 %11, -9
  %masksel = select i1 %cmp35, i32 8, i32 0
  %tmp.1 = or i32 %and40, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ecntrl, i32 %tmp.1) #8, !srcloc !105
  %12 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dtsec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i69.not = icmp eq i32 %7, 0
  br i1 %tobool.not.i69.not, label %do.body.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @arm_heavy_mb() #8
  %tctrl.i = getelementptr inbounds %struct.dtsec_regs, ptr %13, i32 0, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tctrl.i) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  %and2.i = and i32 %14, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tctrl.i, i32 %and2.i) #8, !srcloc !105
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %if.end.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not.i = icmp eq i32 %5, 0
  br i1 %tobool5.not.i, label %if.end.i.cleanup_crit_edge, label %do.body7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %rctrl.i = getelementptr inbounds %struct.dtsec_regs, ptr %13, i32 0, i32 14
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl.i) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  %and13.i = and i32 %15, -33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rctrl.i, i32 %and13.i) #8, !srcloc !105
  br label %cleanup

cleanup:                                          ; preds = %do.body7.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %do.body7.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtsec_restart_autoneg(ptr nocapture noundef readonly %dtsec) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtsec_drv_param = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 14
  %0 = ptrtoint ptr %dtsec_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtsec_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tbiphy = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 18
  %2 = ptrtoint ptr %tbiphy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tbiphy, align 8
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 0) #8
  %8 = trunc i32 %call.i to i16
  %9 = and i16 %8, -13121
  %conv5 = or i16 %9, 4928
  %10 = ptrtoint ptr %tbiphy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tbiphy, align 8
  %bus.i12 = getelementptr inbounds %struct.mdio_device, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %bus.i12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i12, align 8
  %addr.i13 = getelementptr inbounds %struct.mdio_device, ptr %11, i32 0, i32 6
  %14 = ptrtoint ptr %addr.i13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i13, align 8
  %call.i14 = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 0, i16 noundef zeroext %conv5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtsec_get_version(ptr nocapture noundef readonly %dtsec, ptr nocapture noundef writeonly %mac_version) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtsec_drv_param = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 14
  %0 = ptrtoint ptr %dtsec_drv_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtsec_drv_param, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtsec, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  %5 = ptrtoint ptr %mac_version to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %mac_version, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtsec_set_exception(ptr nocapture noundef %dtsec, i32 noundef %exception, i1 noundef zeroext %enable) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtsec, align 8
  %dtsec_drv_param = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 14
  %2 = ptrtoint ptr %dtsec_drv_param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtsec_drv_param, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %exception to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %exception, label %do.end [
    i32 32, label %if.else33
    i32 17, label %if.end.if.then4_crit_edge
    i32 18, label %sw.bb1.i
    i32 19, label %sw.bb2.i
    i32 20, label %sw.bb3.i
    i32 21, label %sw.bb4.i
    i32 22, label %sw.bb5.i
    i32 23, label %sw.bb6.i
    i32 24, label %sw.bb7.i
    i32 25, label %sw.bb8.i
    i32 26, label %sw.bb9.i
    i32 27, label %sw.bb10.i
    i32 28, label %sw.bb11.i
    i32 29, label %sw.bb12.i
    i32 30, label %sw.bb13.i
    i32 33, label %sw.bb14.i
  ]

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

sw.bb4.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

sw.bb7.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

sw.bb8.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

sw.bb9.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

sw.bb10.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

sw.bb11.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

sw.bb12.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

sw.bb13.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

sw.bb14.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4:                                         ; preds = %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end.if.then4_crit_edge
  %bit_mask.0.i.ph = phi i32 [ 1073741824, %sw.bb1.i ], [ 33554432, %sw.bb2.i ], [ 16777216, %sw.bb3.i ], [ 8388608, %sw.bb4.i ], [ 4194304, %sw.bb5.i ], [ 262144, %sw.bb6.i ], [ 131072, %sw.bb7.i ], [ 65536, %sw.bb8.i ], [ 2048, %sw.bb9.i ], [ 1024, %sw.bb10.i ], [ 512, %sw.bb11.i ], [ 256, %sw.bb12.i ], [ 2, %sw.bb13.i ], [ 67108864, %sw.bb14.i ], [ -2147483648, %if.end.if.then4_crit_edge ]
  br i1 %enable, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %exceptions = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 11
  %5 = ptrtoint ptr %exceptions to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %exceptions, align 4
  %or = or i32 %6, %bit_mask.0.i.ph
  store i32 %or, ptr %exceptions, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %imask = getelementptr inbounds %struct.dtsec_regs, ptr %1, i32 0, i32 3
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %imask) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %or19 = or i32 %7, %bit_mask.0.i.ph
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imask, i32 %or19) #8, !srcloc !105
  br label %cleanup

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %bit_mask.0.i.ph, -1
  %exceptions7 = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 11
  %8 = ptrtoint ptr %exceptions7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %exceptions7, align 4
  %and = and i32 %9, %neg
  store i32 %and, ptr %exceptions7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  %imask26 = getelementptr inbounds %struct.dtsec_regs, ptr %1, i32 0, i32 3
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %imask26) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %and30 = and i32 %10, %neg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imask26, i32 %and30) #8, !srcloc !105
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.else33:                                        ; preds = %if.end
  %ptp_tsu_enabled = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 12
  %11 = ptrtoint ptr %ptp_tsu_enabled to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ptp_tsu_enabled, align 8, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool34.not = icmp eq i8 %12, 0
  br i1 %tobool34.not, label %do.end38, label %sw.bb

do.end38:                                         ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #10
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %cleanup

sw.bb:                                            ; preds = %if.else33
  %en_tsu_err_exception = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 13
  br i1 %enable, label %if.then43, label %if.else52

if.then43:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %en_tsu_err_exception to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %en_tsu_err_exception, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  %tmr_pemask = getelementptr inbounds %struct.dtsec_regs, ptr %1, i32 0, i32 10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tmr_pemask) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  %or50 = or i32 %14, 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tmr_pemask, i32 %or50) #8, !srcloc !105
  br label %cleanup

if.else52:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %en_tsu_err_exception to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %en_tsu_err_exception, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void @arm_heavy_mb() #8
  %tmr_pemask58 = getelementptr inbounds %struct.dtsec_regs, ptr %1, i32 0, i32 10
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tmr_pemask58) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  %and61 = and i32 %16, -65537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tmr_pemask58, i32 %and61) #8, !srcloc !105
  br label %cleanup

cleanup:                                          ; preds = %if.else52, %if.then43, %do.end38, %do.end, %if.else, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end38 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else52 ], [ 0, %if.then43 ], [ 0, %if.then6 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtsec_init(ptr noundef %dtsec) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dtsec, align 8
  %dtsec_drv_param2 = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 14
  %2 = ptrtoint ptr %dtsec_drv_param2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dtsec_drv_param2, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_speed.i = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 3
  %4 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %max_speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 9999, i16 %5)
  %cmp.i = icmp ugt i16 %5, 9999
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %rx_prepend.i = getelementptr inbounds %struct.dtsec_cfg, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %rx_prepend.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_prepend.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %7)
  %cmp2.i = icmp ugt i32 %7, 31
  br i1 %cmp2.i, label %do.end6.i, label %if.end9.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef 31) #11
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  %non_back_to_back_ipg1.i = getelementptr inbounds %struct.dtsec_cfg, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %non_back_to_back_ipg1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %non_back_to_back_ipg1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %9)
  %cmp11.i = icmp ugt i32 %9, 127
  br i1 %cmp11.i, label %if.end9.i.do.end22.i_crit_edge, label %lor.lhs.false.i

if.end9.i.do.end22.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

lor.lhs.false.i:                                  ; preds = %if.end9.i
  %non_back_to_back_ipg2.i = getelementptr inbounds %struct.dtsec_cfg, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %non_back_to_back_ipg2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %non_back_to_back_ipg2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %11)
  %cmp14.i = icmp ugt i32 %11, 127
  br i1 %cmp14.i, label %lor.lhs.false.i.do.end22.i_crit_edge, label %lor.lhs.false16.i

lor.lhs.false.i.do.end22.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

lor.lhs.false16.i:                                ; preds = %lor.lhs.false.i
  %back_to_back_ipg.i = getelementptr inbounds %struct.dtsec_cfg, ptr %3, i32 0, i32 13
  %12 = ptrtoint ptr %back_to_back_ipg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %back_to_back_ipg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %13)
  %cmp18.i = icmp ugt i32 %13, 127
  br i1 %cmp18.i, label %lor.lhs.false16.i.do.end22.i_crit_edge, label %if.end25.i

lor.lhs.false16.i.do.end22.i_crit_edge:           ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

do.end22.i:                                       ; preds = %lor.lhs.false16.i.do.end22.i_crit_edge, %lor.lhs.false.i.do.end22.i_crit_edge, %if.end9.i.do.end22.i_crit_edge
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef 127) #11
  br label %cleanup

if.end25.i:                                       ; preds = %lor.lhs.false16.i
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %15)
  %cmp28.i = icmp ugt i16 %15, 15
  br i1 %cmp28.i, label %do.end32.i, label %if.end35.i

do.end32.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef 15) #11
  br label %cleanup

if.end35.i:                                       ; preds = %if.end25.i
  %halfdup_coll_window.i = getelementptr inbounds %struct.dtsec_cfg, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %halfdup_coll_window.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %halfdup_coll_window.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %17)
  %cmp38.i = icmp ugt i16 %17, 1023
  br i1 %cmp38.i, label %do.end42.i, label %if.end45.i

do.end42.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef 1023) #11
  br label %cleanup

if.end45.i:                                       ; preds = %if.end35.i
  %exception_cb.i = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 5
  %18 = ptrtoint ptr %exception_cb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %exception_cb.i, align 4
  %tobool.not.i113 = icmp eq ptr %19, null
  br i1 %tobool.not.i113, label %do.end48.i, label %if.end51.i

do.end48.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  %call50.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #11
  br label %cleanup

if.end51.i:                                       ; preds = %if.end45.i
  %event_cb.i = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 6
  %20 = ptrtoint ptr %event_cb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %event_cb.i, align 8
  %tobool52.not.i = icmp eq ptr %21, null
  br i1 %tobool52.not.i, label %do.end55.i, label %if.end5

do.end55.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  %call57.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end51.i
  %22 = ptrtoint ptr %dtsec_drv_param2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dtsec_drv_param2, align 4
  %24 = ptrtoint ptr %dtsec to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dtsec, align 8
  %phy_if = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 2
  %26 = ptrtoint ptr %phy_if to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %phy_if, align 8
  %28 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %max_speed.i, align 4
  %addr = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 1
  %30 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %addr, align 8
  %exceptions = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 11
  %32 = ptrtoint ptr %exceptions to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %exceptions, align 4
  %tbiphy = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 18
  %34 = ptrtoint ptr %tbiphy to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tbiphy, align 8
  %addr8 = getelementptr inbounds %struct.mdio_device, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %addr8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr8, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
  tail call void @arm_heavy_mb() #8
  %maccfg1.i = getelementptr inbounds %struct.dtsec_regs, ptr %25, i32 0, i32 19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maccfg1.i, i32 -2147483648) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maccfg1.i, i32 0) #8, !srcloc !105
  %tsec_id2.i = getelementptr inbounds %struct.dtsec_regs, ptr %25, i32 0, i32 1
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tsec_id2.i) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %39 = add i32 %27, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %39)
  %40 = icmp ult i32 %39, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %27)
  %cmp12.i = icmp ne i32 %27, 7
  %or.cond294.not.i = and i1 %cmp12.i, %40
  %and.i = and i32 %38, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i114 = icmp eq i32 %and.i, 0
  %or.cond295.i = select i1 %or.cond294.not.i, i1 true, i1 %tobool.not.i114
  br i1 %or.cond295.i, label %if.end14.i, label %if.end5.if.then11_crit_edge

if.end5.if.then11_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.end14.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp15.i = icmp eq i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp17.i = icmp eq i32 %27, 2
  %or.cond296.i = or i1 %cmp15.i, %cmp17.i
  %or.cond296.not.i = xor i1 %or.cond296.i, true
  %or.cond297.i = select i1 %or.cond296.not.i, i1 true, i1 %tobool.not.i114
  br i1 %or.cond297.i, label %if.end23.i, label %if.end14.i.if.then11_crit_edge

if.end14.i.if.then11_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11

if.end23.i:                                       ; preds = %if.end14.i
  %41 = add i32 %27, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %switch.selectcmp.i = icmp ult i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %27)
  %cmp32.i = icmp eq i32 %27, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp36.i = icmp eq i32 %27, 3
  %or.cond300.i = or i1 %cmp36.i, %switch.selectcmp.i
  %tmp.0.i = select i1 %or.cond300.i, i32 64, i32 0
  %or41.i = or i32 %tmp.0.i, 34
  %tmp.1.i = select i1 %cmp15.i, i32 %or41.i, i32 %tmp.0.i
  %or45.i = or i32 %tmp.1.i, 35
  %tmp.2.i = select i1 %cmp32.i, i32 %or45.i, i32 %tmp.1.i
  %or49.i = or i32 %tmp.2.i, 16
  %tmp.3.i = select i1 %switch.selectcmp.i, i32 %or49.i, i32 %tmp.2.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %29)
  %cmp51.i = icmp eq i16 %29, 100
  %or54.i = or i32 %tmp.3.i, 8
  %tmp.4.i = select i1 %cmp51.i, i32 %or54.i, i32 %tmp.3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !165
  tail call void @arm_heavy_mb() #8
  %ecntrl.i = getelementptr inbounds %struct.dtsec_regs, ptr %25, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ecntrl.i, i32 %tmp.4.i) #8, !srcloc !105
  %tx_pause_time.i = getelementptr inbounds %struct.dtsec_cfg, ptr %23, i32 0, i32 3
  %42 = ptrtoint ptr %tx_pause_time.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %tx_pause_time.i, align 2
  %conv62.i = zext i16 %43 to i32
  %tx_pause_time_extd.i = getelementptr inbounds %struct.dtsec_cfg, ptr %23, i32 0, i32 8
  %44 = ptrtoint ptr %tx_pause_time_extd.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %tx_pause_time_extd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool65.not.i = icmp eq i16 %45, 0
  %conv68.i = zext i16 %45 to i32
  %shl.i = shl nuw i32 %conv68.i, 16
  %or69.i = select i1 %tobool65.not.i, i32 0, i32 %shl.i
  %tmp.6.i = or i32 %or69.i, %conv62.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %ptv.i = getelementptr inbounds %struct.dtsec_regs, ptr %25, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ptv.i, i32 %tmp.6.i) #8, !srcloc !105
  %rx_prepend.i115 = getelementptr inbounds %struct.dtsec_cfg, ptr %23, i32 0, i32 7
  %46 = ptrtoint ptr %rx_prepend.i115 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_prepend.i115, align 4
  %shl74.i = shl i32 %47, 16
  %and75.i = and i32 %shl74.i, 2031616
  %or77.i = or i32 %and75.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  tail call void @arm_heavy_mb() #8
  %rctrl.i = getelementptr inbounds %struct.dtsec_regs, ptr %25, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rctrl.i, i32 %or77.i) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  tail call void @arm_heavy_mb() #8
  %conv84.i = and i32 %37, 255
  %tbipa.i = getelementptr inbounds %struct.dtsec_regs, ptr %25, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tbipa.i, i32 %conv84.i) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %tmr_ctrl.i = getelementptr inbounds %struct.dtsec_regs, ptr %25, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tmr_ctrl.i, i32 0) #8, !srcloc !105
  %ptp_tsu_en.i = getelementptr inbounds %struct.dtsec_cfg, ptr %23, i32 0, i32 4
  %48 = ptrtoint ptr %ptp_tsu_en.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ptp_tsu_en.i, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool88.not.i = icmp eq i8 %49, 0
  br i1 %tobool88.not.i, label %if.end23.i.if.end101.i_crit_edge, label %if.then89.i

if.end23.i.if.end101.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101.i

if.then89.i:                                      ; preds = %if.end23.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !170
  tail call void @arm_heavy_mb() #8
  %tmr_pevent.i = getelementptr inbounds %struct.dtsec_regs, ptr %25, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tmr_pevent.i, i32 65536) #8, !srcloc !105
  %ptp_exception_en.i = getelementptr inbounds %struct.dtsec_cfg, ptr %23, i32 0, i32 5
  %50 = ptrtoint ptr %ptp_exception_en.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ptp_exception_en.i, align 1, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool94.not.i = icmp eq i8 %51, 0
  br i1 %tobool94.not.i, label %if.then89.i.if.end101.i_crit_edge, label %if.then95.i

if.then89.i.if.end101.i_crit_edge:                ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101.i

if.then95.i:                                      ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  tail call void @arm_heavy_mb() #8
  %tmr_pemask.i = getelementptr inbounds %struct.dtsec_regs, ptr %25, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tmr_pemask.i, i32 65536) #8, !srcloc !105
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.then95.i, %if.then89.i.if.end101.i_crit_edge, %if.end23.i.if.end101.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maccfg1.i, i32 48) #8, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %29)
  %cmp109.i = icmp ult i16 %29, 1000
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %29)
  %cmp114.i = icmp eq i16 %29, 1000
  %spec.select.i = select i1 %cmp114.i, i32 512, i32 0
  %tmp.7.i = select i1 %cmp109.i, i32 256, i32 %spec.select.i
  %preamble_len.i = getelementptr inbounds %struct.dtsec_cfg, ptr %23, i32 0, i32 6
  %52 = ptrtoint ptr %preamble_len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %preamble_len.i, align 4
  %shl120.i = shl i32 %53, 12
  %and121.i = and i32 %shl120.i, 61440
  %or122.i = or i32 %and121.i, %tmp.7.i
  %tx_pad_crc.i = getelementptr inbounds %struct.dtsec_cfg, ptr %23, i32 0, i32 2
  %54 = ptrtoint ptr %tx_pad_crc.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %tx_pad_crc.i, align 4, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool123.not.i = icmp eq i8 %55, 0
  %or125.i = or i32 %or122.i, 4
  %spec.select301.i = select i1 %tobool123.not.i, i32 %or122.i, i32 %or125.i
  %or127.i = or i32 %spec.select301.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  tail call void @arm_heavy_mb() #8
  %maccfg2.i = getelementptr inbounds %struct.dtsec_regs, ptr %25, i32 0, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maccfg2.i, i32 %or127.i) #8, !srcloc !105
  %non_back_to_back_ipg1.i116 = getelementptr inbounds %struct.dtsec_cfg, ptr %23, i32 0, i32 10
  %56 = ptrtoint ptr %non_back_to_back_ipg1.i116 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %non_back_to_back_ipg1.i116, align 4
  %shl131.i = shl i32 %57, 24
  %and132.i = and i32 %shl131.i, 2130706432
  %non_back_to_back_ipg2.i117 = getelementptr inbounds %struct.dtsec_cfg, ptr %23, i32 0, i32 11
  %58 = ptrtoint ptr %non_back_to_back_ipg2.i117 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %non_back_to_back_ipg2.i117, align 4
  %shl133.i = shl i32 %59, 16
  %and134.i = and i32 %shl133.i, 8323072
  %or135.i = or i32 %and134.i, %and132.i
  %min_ifg_enforcement.i = getelementptr inbounds %struct.dtsec_cfg, ptr %23, i32 0, i32 12
  %60 = ptrtoint ptr %min_ifg_enforcement.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %min_ifg_enforcement.i, align 4
  %shl136.i = shl i32 %61, 8
  %and137.i = and i32 %shl136.i, 65280
  %or138.i = or i32 %or135.i, %and137.i
  %back_to_back_ipg.i118 = getelementptr inbounds %struct.dtsec_cfg, ptr %23, i32 0, i32 13
  %62 = ptrtoint ptr %back_to_back_ipg.i118 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %back_to_back_ipg.i118, align 4
  %and139.i = and i32 %63, 127
  %or140.i = or i32 %or138.i, %and139.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %ipgifg.i = getelementptr inbounds %struct.dtsec_regs, ptr %25, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ipgifg.i, i32 %or140.i) #8, !srcloc !105
  %64 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %23, align 4
  %conv145.i = zext i16 %65 to i32
  %shl146.i = shl nuw nsw i32 %conv145.i, 12
  %and147.i = and i32 %shl146.i, 61440
  %halfdup_coll_window.i119 = getelementptr inbounds %struct.dtsec_cfg, ptr %23, i32 0, i32 1
  %66 = ptrtoint ptr %halfdup_coll_window.i119 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %halfdup_coll_window.i119, align 2
  %68 = and i16 %67, 1023
  %and150.i = zext i16 %68 to i32
  %or148.i = or i32 %and147.i, %and150.i
  %or151.i = or i32 %or148.i, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  tail call void @arm_heavy_mb() #8
  %hafdup.i = getelementptr inbounds %struct.dtsec_regs, ptr %25, i32 0, i32 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %hafdup.i, i32 %or151.i) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %maximum_frame.i = getelementptr inbounds %struct.dtsec_cfg, ptr %23, i32 0, i32 9
  %69 = ptrtoint ptr %maximum_frame.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %maximum_frame.i, align 2
  %conv158.i = zext i16 %70 to i32
  %maxfrm.i = getelementptr inbounds %struct.dtsec_regs, ptr %25, i32 0, i32 23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %maxfrm.i, i32 %conv158.i) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !177
  tail call void @arm_heavy_mb() #8
  %cam1.i = getelementptr inbounds %struct.dtsec_regs, ptr %25, i32 0, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cam1.i, i32 -1) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  %cam2.i = getelementptr inbounds %struct.dtsec_regs, ptr %25, i32 0, i32 77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cam2.i, i32 -1) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  tail call void @arm_heavy_mb() #8
  %imask.i = getelementptr inbounds %struct.dtsec_regs, ptr %25, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imask.i, i32 %33) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  %ievent.i = getelementptr inbounds %struct.dtsec_regs, ptr %25, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ievent.i, i32 -1) #8, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool171.not.i = icmp eq i64 %31, 0
  br i1 %tobool171.not.i, label %if.end101.i.if.end13_crit_edge, label %for.body.preheader.i

if.end101.i.if.end13_crit_edge:                   ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

for.body.preheader.i:                             ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  %trunc.i = trunc i64 %31 to i32
  %or10.i.i = tail call i32 @llvm.bswap.i32(i32 %trunc.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %macstnaddr1.i.i = getelementptr inbounds %struct.dtsec_regs, ptr %25, i32 0, i32 26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macstnaddr1.i.i, i32 %or10.i.i) #8, !srcloc !105
  %sh.diff.i = lshr i64 %31, 8
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %conv12.i.i = and i32 %tr.sh.diff.i, -16777216
  %sh.diff305.i = lshr i64 %31, 24
  %tr.sh.diff306.i = trunc i64 %sh.diff305.i to i32
  %shl16.i.i = and i32 %tr.sh.diff306.i, 16711680
  %or17.i.i = or i32 %shl16.i.i, %conv12.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  tail call void @arm_heavy_mb() #8
  %macstnaddr2.i.i = getelementptr inbounds %struct.dtsec_regs, ptr %25, i32 0, i32 27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %macstnaddr2.i.i, i32 %or17.i.i) #8, !srcloc !105
  br label %if.end13

if.then11:                                        ; preds = %if.end14.i.if.then11_crit_edge, %if.end5.if.then11_crit_edge
  tail call fastcc void @free_init_resources(ptr noundef %dtsec)
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end13:                                         ; preds = %for.body.preheader.i, %if.end101.i.if.end13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %arrayidx188.i = getelementptr %struct.dtsec_regs, ptr %25, i32 0, i32 16, i32 0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx188.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @arm_heavy_mb() #8
  %arrayidx192.i = getelementptr %struct.dtsec_regs, ptr %25, i32 0, i32 17, i32 0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx192.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %arrayidx188.1.i = getelementptr %struct.dtsec_regs, ptr %25, i32 0, i32 16, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx188.1.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @arm_heavy_mb() #8
  %arrayidx192.1.i = getelementptr %struct.dtsec_regs, ptr %25, i32 0, i32 17, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx192.1.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %arrayidx188.2.i = getelementptr %struct.dtsec_regs, ptr %25, i32 0, i32 16, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx188.2.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @arm_heavy_mb() #8
  %arrayidx192.2.i = getelementptr %struct.dtsec_regs, ptr %25, i32 0, i32 17, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx192.2.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %arrayidx188.3.i = getelementptr %struct.dtsec_regs, ptr %25, i32 0, i32 16, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx188.3.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @arm_heavy_mb() #8
  %arrayidx192.3.i = getelementptr %struct.dtsec_regs, ptr %25, i32 0, i32 17, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx192.3.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %arrayidx188.4.i = getelementptr %struct.dtsec_regs, ptr %25, i32 0, i32 16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx188.4.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @arm_heavy_mb() #8
  %arrayidx192.4.i = getelementptr %struct.dtsec_regs, ptr %25, i32 0, i32 17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx192.4.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %arrayidx188.5.i = getelementptr %struct.dtsec_regs, ptr %25, i32 0, i32 16, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx188.5.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @arm_heavy_mb() #8
  %arrayidx192.5.i = getelementptr %struct.dtsec_regs, ptr %25, i32 0, i32 17, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx192.5.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %arrayidx188.6.i = getelementptr %struct.dtsec_regs, ptr %25, i32 0, i32 16, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx188.6.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @arm_heavy_mb() #8
  %arrayidx192.6.i = getelementptr %struct.dtsec_regs, ptr %25, i32 0, i32 17, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx192.6.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %arrayidx188.7.i = getelementptr %struct.dtsec_regs, ptr %25, i32 0, i32 16, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx188.7.i, i32 0) #8, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  tail call void @arm_heavy_mb() #8
  %arrayidx192.7.i = getelementptr %struct.dtsec_regs, ptr %25, i32 0, i32 17, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx192.7.i, i32 0) #8, !srcloc !105
  %71 = ptrtoint ptr %phy_if to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %phy_if, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %72)
  %cmp = icmp eq i32 %72, 4
  br i1 %cmp, label %if.then16, label %if.end13.if.end30_crit_edge

if.end13.if.end30_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %tbiphy to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tbiphy, align 8
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %74, i32 0, i32 6
  %77 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %addr.i, align 8
  %call.i121 = tail call i32 @mdiobus_write(ptr noundef %76, i32 noundef %78, i32 noundef 17, i16 noundef zeroext -32736) #8
  %79 = ptrtoint ptr %tbiphy to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tbiphy, align 8
  %bus.i122 = getelementptr inbounds %struct.mdio_device, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %bus.i122 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bus.i122, align 8
  %addr.i123 = getelementptr inbounds %struct.mdio_device, ptr %80, i32 0, i32 6
  %83 = ptrtoint ptr %addr.i123 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %addr.i123, align 8
  %call.i124 = tail call i32 @mdiobus_write(ptr noundef %82, i32 noundef %84, i32 noundef 17, i16 noundef zeroext 32) #8
  %85 = ptrtoint ptr %tbiphy to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tbiphy, align 8
  %bus.i125 = getelementptr inbounds %struct.mdio_device, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %bus.i125 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bus.i125, align 8
  %addr.i126 = getelementptr inbounds %struct.mdio_device, ptr %86, i32 0, i32 6
  %89 = ptrtoint ptr %addr.i126 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %addr.i126, align 8
  %call.i127 = tail call i32 @mdiobus_write(ptr noundef %88, i32 noundef %90, i32 noundef 0, i16 noundef zeroext -28352) #8
  %basex_if = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 17
  %91 = ptrtoint ptr %basex_if to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %basex_if, align 2, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool23.not = icmp eq i8 %92, 0
  %. = select i1 %tobool23.not, i16 16385, i16 416
  %93 = ptrtoint ptr %tbiphy to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %tbiphy, align 8
  %bus.i128 = getelementptr inbounds %struct.mdio_device, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %bus.i128 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bus.i128, align 8
  %addr.i129 = getelementptr inbounds %struct.mdio_device, ptr %94, i32 0, i32 6
  %97 = ptrtoint ptr %addr.i129 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %addr.i129, align 8
  %call.i130 = tail call i32 @mdiobus_write(ptr noundef %96, i32 noundef %98, i32 noundef 4, i16 noundef zeroext %.) #8
  %99 = ptrtoint ptr %tbiphy to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %tbiphy, align 8
  %bus.i131 = getelementptr inbounds %struct.mdio_device, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %bus.i131 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bus.i131, align 8
  %addr.i132 = getelementptr inbounds %struct.mdio_device, ptr %100, i32 0, i32 6
  %103 = ptrtoint ptr %addr.i132 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %addr.i132, align 8
  %call.i133 = tail call i32 @mdiobus_write(ptr noundef %102, i32 noundef %104, i32 noundef 0, i16 noundef zeroext 4928) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then16, %if.end13.if.end30_crit_edge
  %maxfrm = getelementptr inbounds %struct.dtsec_regs, ptr %1, i32 0, i32 23
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %maxfrm) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  %conv33 = trunc i32 %105 to i16
  %fm = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 15
  %106 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %fm, align 8
  %mac_id = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 10
  %108 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %mac_id, align 8
  %call34 = tail call i32 @fman_set_mac_max_frame(ptr noundef %107, i8 noundef zeroext %109, i16 noundef zeroext %conv33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end42, label %do.end39

do.end39:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  tail call fastcc void @free_init_resources(ptr noundef %dtsec)
  br label %cleanup

if.end42:                                         ; preds = %if.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %110 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %110, i32 noundef 3264, i32 noundef 8) #13
  %tobool.not.i134 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i134, label %if.end42.alloc_hash_table.exit.thread_crit_edge, label %if.end.i135

if.end42.alloc_hash_table.exit.thread_crit_edge:  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %alloc_hash_table.exit.thread

if.end.i135:                                      ; preds = %if.end42
  %111 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 512, ptr %call7.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %112 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %112, i32 noundef 3264, i32 noundef 4096) #13
  %lsts.i = getelementptr inbounds %struct.eth_hash_t, ptr %call7.i.i, i32 0, i32 1
  %113 = ptrtoint ptr %lsts.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call7.i.i.i, ptr %lsts.i, align 4
  %tobool5.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i135
  %114 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %cmp27.not.i = icmp eq i16 %115, 0
  br i1 %cmp27.not.i, label %for.cond.preheader.i.if.end52_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end52_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then6.i:                                       ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %alloc_hash_table.exit.thread

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.028.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %116 = ptrtoint ptr %lsts.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %lsts.i, align 4
  %arrayidx.i = getelementptr %struct.list_head, ptr %117, i32 %i.028.i
  %118 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %arrayidx.i, ptr %arrayidx.i, align 4
  %prev.i.i = getelementptr %struct.list_head, ptr %117, i32 %i.028.i, i32 1
  %119 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %arrayidx.i, ptr %prev.i.i, align 4
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %120 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %call7.i.i, align 8
  %conv9.i = zext i16 %121 to i32
  %cmp.i136 = icmp ult i32 %inc.i, %conv9.i
  br i1 %cmp.i136, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end52_crit_edge

for.body.i.if.end52_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

alloc_hash_table.exit.thread:                     ; preds = %if.then6.i, %if.end42.alloc_hash_table.exit.thread_crit_edge
  %multicast_addr_hash162 = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 8
  %122 = ptrtoint ptr %multicast_addr_hash162 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %multicast_addr_hash162, align 8
  tail call fastcc void @free_init_resources(ptr noundef %dtsec)
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #11
  br label %cleanup

if.end52:                                         ; preds = %for.body.i.if.end52_crit_edge, %for.cond.preheader.i.if.end52_crit_edge
  %multicast_addr_hash = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 8
  %123 = ptrtoint ptr %multicast_addr_hash to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call7.i.i, ptr %multicast_addr_hash, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %124 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i138 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %124, i32 noundef 3264, i32 noundef 8) #13
  %tobool.not.i139 = icmp eq ptr %call7.i.i138, null
  br i1 %tobool.not.i139, label %if.end52.alloc_hash_table.exit155.thread_crit_edge, label %if.end.i140

if.end52.alloc_hash_table.exit155.thread_crit_edge: ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %alloc_hash_table.exit155.thread

if.end.i140:                                      ; preds = %if.end52
  %125 = ptrtoint ptr %call7.i.i138 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 256, ptr %call7.i.i138, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %126 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i141 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %126, i32 noundef 3264, i32 noundef 2048) #13
  %lsts.i142 = getelementptr inbounds %struct.eth_hash_t, ptr %call7.i.i138, i32 0, i32 1
  %127 = ptrtoint ptr %lsts.i142 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call7.i.i.i141, ptr %lsts.i142, align 4
  %tobool5.not.i143 = icmp eq ptr %call7.i.i.i141, null
  br i1 %tobool5.not.i143, label %if.then6.i146, label %for.cond.preheader.i145

for.cond.preheader.i145:                          ; preds = %if.end.i140
  %128 = ptrtoint ptr %call7.i.i138 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %call7.i.i138, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %cmp27.not.i144 = icmp eq i16 %129, 0
  br i1 %cmp27.not.i144, label %for.cond.preheader.i145.if.end62_crit_edge, label %for.cond.preheader.i145.for.body.i153_crit_edge

for.cond.preheader.i145.for.body.i153_crit_edge:  ; preds = %for.cond.preheader.i145
  br label %for.body.i153

for.cond.preheader.i145.if.end62_crit_edge:       ; preds = %for.cond.preheader.i145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then6.i146:                                    ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i138) #8
  br label %alloc_hash_table.exit155.thread

for.body.i153:                                    ; preds = %for.body.i153.for.body.i153_crit_edge, %for.cond.preheader.i145.for.body.i153_crit_edge
  %i.028.i147 = phi i32 [ %inc.i150, %for.body.i153.for.body.i153_crit_edge ], [ 0, %for.cond.preheader.i145.for.body.i153_crit_edge ]
  %130 = ptrtoint ptr %lsts.i142 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %lsts.i142, align 4
  %arrayidx.i148 = getelementptr %struct.list_head, ptr %131, i32 %i.028.i147
  %132 = ptrtoint ptr %arrayidx.i148 to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %arrayidx.i148, ptr %arrayidx.i148, align 4
  %prev.i.i149 = getelementptr %struct.list_head, ptr %131, i32 %i.028.i147, i32 1
  %133 = ptrtoint ptr %prev.i.i149 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %arrayidx.i148, ptr %prev.i.i149, align 4
  %inc.i150 = add nuw nsw i32 %i.028.i147, 1
  %134 = ptrtoint ptr %call7.i.i138 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %call7.i.i138, align 8
  %conv9.i151 = zext i16 %135 to i32
  %cmp.i152 = icmp ult i32 %inc.i150, %conv9.i151
  br i1 %cmp.i152, label %for.body.i153.for.body.i153_crit_edge, label %for.body.i153.if.end62_crit_edge

for.body.i153.if.end62_crit_edge:                 ; preds = %for.body.i153
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

for.body.i153.for.body.i153_crit_edge:            ; preds = %for.body.i153
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i153

alloc_hash_table.exit155.thread:                  ; preds = %if.then6.i146, %if.end52.alloc_hash_table.exit155.thread_crit_edge
  %unicast_addr_hash169 = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 9
  %136 = ptrtoint ptr %unicast_addr_hash169 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %unicast_addr_hash169, align 4
  tail call fastcc void @free_init_resources(ptr noundef %dtsec)
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  br label %cleanup

if.end62:                                         ; preds = %for.body.i153.if.end62_crit_edge, %for.cond.preheader.i145.if.end62_crit_edge
  %unicast_addr_hash = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 9
  %137 = ptrtoint ptr %unicast_addr_hash to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call7.i.i138, ptr %unicast_addr_hash, align 4
  %138 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %fm, align 8
  %140 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %mac_id, align 8
  tail call void @fman_register_intr(ptr noundef %139, i32 noundef 0, i8 noundef zeroext %141, i32 noundef 0, ptr noundef nonnull @dtsec_isr, ptr noundef %dtsec) #8
  %142 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %fm, align 8
  %144 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %mac_id, align 8
  tail call void @fman_register_intr(ptr noundef %143, i32 noundef 0, i8 noundef zeroext %145, i32 noundef 1, ptr noundef nonnull @dtsec_1588_isr, ptr noundef %dtsec) #8
  tail call void @kfree(ptr noundef %23) #8
  %146 = ptrtoint ptr %dtsec_drv_param2 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %dtsec_drv_param2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %alloc_hash_table.exit155.thread, %alloc_hash_table.exit.thread, %do.end39, %if.then11, %do.end55.i, %do.end48.i, %do.end42.i, %do.end32.i, %do.end22.i, %do.end6.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then11 ], [ -22, %do.end39 ], [ 0, %if.end62 ], [ -12, %alloc_hash_table.exit155.thread ], [ -12, %alloc_hash_table.exit.thread ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end6.i ], [ -22, %do.end22.i ], [ -22, %do.end32.i ], [ -22, %do.end42.i ], [ -22, %do.end55.i ], [ -22, %do.end48.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_init_resources(ptr nocapture noundef %dtsec) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fm = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 15
  %0 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fm, align 8
  %mac_id = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 10
  %2 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac_id, align 8
  tail call void @fman_unregister_intr(ptr noundef %1, i32 noundef 0, i8 noundef zeroext %3, i32 noundef 0) #8
  %4 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fm, align 8
  %6 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mac_id, align 8
  tail call void @fman_unregister_intr(ptr noundef %5, i32 noundef 0, i8 noundef zeroext %7, i32 noundef 1) #8
  %multicast_addr_hash = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 8
  %8 = ptrtoint ptr %multicast_addr_hash to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %multicast_addr_hash, align 8
  tail call fastcc void @free_hash_table(ptr noundef %9)
  %10 = ptrtoint ptr %multicast_addr_hash to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %multicast_addr_hash, align 8
  %unicast_addr_hash = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 9
  %11 = ptrtoint ptr %unicast_addr_hash to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %unicast_addr_hash, align 4
  tail call fastcc void @free_hash_table(ptr noundef %12)
  %13 = ptrtoint ptr %unicast_addr_hash to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %unicast_addr_hash, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fman_set_mac_max_frame(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fman_register_intr(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dtsec_isr(ptr noundef readonly %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 8
  %ievent = getelementptr inbounds %struct.dtsec_regs, ptr %1, i32 0, i32 2
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ievent) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !184
  %and = and i32 %2, -1537
  %imask = getelementptr inbounds %struct.dtsec_regs, ptr %1, i32 0, i32 3
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %imask) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !185
  %and5 = and i32 %and, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !186
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ievent, i32 %and5) #8, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and5)
  %tobool.not = icmp sgt i32 %and5, -1
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
  tail call void %5(ptr noundef %7, i32 noundef 17) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and8 = and i32 %and5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end13_crit_edge, label %if.then10

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb11 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 5
  %8 = ptrtoint ptr %exception_cb11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %exception_cb11, align 4
  %dev_id12 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %10 = ptrtoint ptr %dev_id12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_id12, align 8
  tail call void %9(ptr noundef %11, i32 noundef 18) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end.if.end13_crit_edge
  %and14 = and i32 %and5, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb17 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 5
  %12 = ptrtoint ptr %exception_cb17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %exception_cb17, align 4
  %dev_id18 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %14 = ptrtoint ptr %dev_id18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id18, align 8
  tail call void %13(ptr noundef %15, i32 noundef 19) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge
  %and20 = and i32 %and5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.if.end25_crit_edge, label %if.then22

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb23 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 5
  %16 = ptrtoint ptr %exception_cb23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %exception_cb23, align 4
  %dev_id24 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %18 = ptrtoint ptr %dev_id24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_id24, align 8
  tail call void %17(ptr noundef %19, i32 noundef 20) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end19.if.end25_crit_edge
  %and26 = and i32 %and5, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end31_crit_edge, label %if.then28

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb29 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 5
  %20 = ptrtoint ptr %exception_cb29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %exception_cb29, align 4
  %dev_id30 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %22 = ptrtoint ptr %dev_id30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_id30, align 8
  tail call void %21(ptr noundef %23, i32 noundef 21) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end25.if.end31_crit_edge
  %and32 = and i32 %and5, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end37_crit_edge, label %if.then34

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb35 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 5
  %24 = ptrtoint ptr %exception_cb35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %exception_cb35, align 4
  %dev_id36 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %26 = ptrtoint ptr %dev_id36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_id36, align 8
  tail call void %25(ptr noundef %27, i32 noundef 22) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end31.if.end37_crit_edge
  %and38 = and i32 %and5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end43_crit_edge, label %if.then40

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb41 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 5
  %28 = ptrtoint ptr %exception_cb41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %exception_cb41, align 4
  %dev_id42 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %30 = ptrtoint ptr %dev_id42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_id42, align 8
  tail call void %29(ptr noundef %31, i32 noundef 23) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end37.if.end43_crit_edge
  %and44 = and i32 %and5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end49_crit_edge, label %if.then46

if.end43.if.end49_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb47 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 5
  %32 = ptrtoint ptr %exception_cb47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %exception_cb47, align 4
  %dev_id48 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %34 = ptrtoint ptr %dev_id48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_id48, align 8
  tail call void %33(ptr noundef %35, i32 noundef 24) #8
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end43.if.end49_crit_edge
  %and50 = and i32 %and5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end49.if.end143_crit_edge, label %if.then52

if.end49.if.end143_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

if.then52:                                        ; preds = %if.end49
  %fm_rev_info = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 16
  %36 = ptrtoint ptr %fm_rev_info to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %fm_rev_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %37)
  %cmp = icmp eq i8 %37, 2
  br i1 %cmp, label %if.then54, label %if.then52.if.end140_crit_edge

if.then52.if.end140_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140

if.then54:                                        ; preds = %if.then52
  %tpkt = getelementptr inbounds %struct.dtsec_regs, ptr %1, i32 0, i32 55
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tpkt) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !187
  %arrayidx = getelementptr %struct.dtsec_regs, ptr %1, i32 0, i32 78, i32 27
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  %and61 = and i32 %39, 8323072
  %and62 = and i32 %39, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %and61, i32 %and62)
  %cmp63.not = icmp eq i32 %and61, %and62
  br i1 %cmp63.not, label %if.then54.if.end82_crit_edge, label %if.then65

if.then54.if.end82_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then65:                                        ; preds = %if.then54
  %dtsec_drv_param.i = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 14
  %40 = ptrtoint ptr %dtsec_drv_param.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dtsec_drv_param.i, align 4
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %if.then65.dtsec_get_max_frame_length.exit.thread_crit_edge, label %dtsec_get_max_frame_length.exit

if.then65.dtsec_get_max_frame_length.exit.thread_crit_edge: ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %dtsec_get_max_frame_length.exit.thread

dtsec_get_max_frame_length.exit:                  ; preds = %if.then65
  %42 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %handle, align 8
  %maxfrm.i = getelementptr inbounds %struct.dtsec_regs, ptr %43, i32 0, i32 23
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %maxfrm.i) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  %conv.i = trunc i32 %44 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %conv.i)
  %45 = icmp ult i16 %conv.i, 63
  %conv67 = shl i32 %44, 4
  %mul = and i32 %conv67, 1048560
  %div = udiv i32 %mul, 1000
  br i1 %45, label %dtsec_get_max_frame_length.exit.dtsec_get_max_frame_length.exit.thread_crit_edge, label %dtsec_get_max_frame_length.exit._crit_edge

dtsec_get_max_frame_length.exit._crit_edge:       ; preds = %dtsec_get_max_frame_length.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %46

dtsec_get_max_frame_length.exit.dtsec_get_max_frame_length.exit.thread_crit_edge: ; preds = %dtsec_get_max_frame_length.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dtsec_get_max_frame_length.exit.thread

dtsec_get_max_frame_length.exit.thread:           ; preds = %dtsec_get_max_frame_length.exit.dtsec_get_max_frame_length.exit.thread_crit_edge, %if.then65.dtsec_get_max_frame_length.exit.thread_crit_edge
  %div310 = phi i32 [ %div, %dtsec_get_max_frame_length.exit.dtsec_get_max_frame_length.exit.thread_crit_edge ], [ 0, %if.then65.dtsec_get_max_frame_length.exit.thread_crit_edge ]
  br label %46

46:                                               ; preds = %dtsec_get_max_frame_length.exit.thread, %dtsec_get_max_frame_length.exit._crit_edge
  %47 = phi i32 [ %div310, %dtsec_get_max_frame_length.exit.thread ], [ 1, %dtsec_get_max_frame_length.exit._crit_edge ]
  %48 = ptrtoint ptr %dtsec_drv_param.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dtsec_drv_param.i, align 4
  %tobool.not.i.i300 = icmp eq ptr %49, null
  br i1 %tobool.not.i.i300, label %.dtsec_get_max_frame_length.exit305.thread_crit_edge, label %dtsec_get_max_frame_length.exit305

.dtsec_get_max_frame_length.exit305.thread_crit_edge: ; preds = %46
  call void @__sanitizer_cov_trace_pc() #10
  br label %dtsec_get_max_frame_length.exit305.thread

dtsec_get_max_frame_length.exit305:               ; preds = %46
  %50 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %handle, align 8
  %maxfrm.i301 = getelementptr inbounds %struct.dtsec_regs, ptr %51, i32 0, i32 23
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %maxfrm.i301) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  %conv.i302 = trunc i32 %52 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %conv.i302)
  %53 = icmp ult i16 %conv.i302, 63
  br i1 %53, label %dtsec_get_max_frame_length.exit305.dtsec_get_max_frame_length.exit305.thread_crit_edge, label %dtsec_get_max_frame_length.exit305._crit_edge

dtsec_get_max_frame_length.exit305._crit_edge:    ; preds = %dtsec_get_max_frame_length.exit305
  call void @__sanitizer_cov_trace_pc() #10
  br label %54

dtsec_get_max_frame_length.exit305.dtsec_get_max_frame_length.exit305.thread_crit_edge: ; preds = %dtsec_get_max_frame_length.exit305
  call void @__sanitizer_cov_trace_pc() #10
  br label %dtsec_get_max_frame_length.exit305.thread

dtsec_get_max_frame_length.exit305.thread:        ; preds = %dtsec_get_max_frame_length.exit305.dtsec_get_max_frame_length.exit305.thread_crit_edge, %.dtsec_get_max_frame_length.exit305.thread_crit_edge
  br label %54

54:                                               ; preds = %dtsec_get_max_frame_length.exit305.thread, %dtsec_get_max_frame_length.exit305._crit_edge
  %55 = phi i32 [ 1, %dtsec_get_max_frame_length.exit305.thread ], [ 2, %dtsec_get_max_frame_length.exit305._crit_edge ]
  tail call void @usleep_range_state(i32 noundef %47, i32 noundef %55, i32 noundef 2) #8
  br label %if.end82

if.end82:                                         ; preds = %54, %if.then54.if.end82_crit_edge
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tpkt) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !190
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %56)
  %cmp92 = icmp eq i32 %38, %56
  %and95 = and i32 %57, 8323072
  call void @__sanitizer_cov_trace_cmp4(i32 %and61, i32 %and95)
  %cmp96 = icmp eq i32 %and61, %and95
  %or.cond = select i1 %cmp92, i1 %cmp96, i1 false
  br i1 %or.cond, label %do.body99, label %if.end82.if.end140_crit_edge

if.end82.if.end140_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140

do.body99:                                        ; preds = %if.end82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  tail call void @arm_heavy_mb() #8
  %rctrl = getelementptr inbounds %struct.dtsec_regs, ptr %1, i32 0, i32 14
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rctrl) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  %or = or i32 %58, 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rctrl, i32 %or) #8, !srcloc !105
  br label %for.body

for.body:                                         ; preds = %if.end115.for.body_crit_edge, %do.body99
  %i.0313 = phi i32 [ 0, %do.body99 ], [ %inc, %if.end115.for.body_crit_edge ]
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ievent) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  %and112 = and i32 %59, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.end115, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end115:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748) #8
  %inc = add nuw nsw i32 %i.0313, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end115.for.end_crit_edge, label %if.end115.for.body_crit_edge

if.end115.for.body_crit_edge:                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end115.for.end_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end115.for.end_crit_edge, %for.body.for.end_crit_edge
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ievent) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  %and120 = and i32 %61, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %do.body127, label %do.body123

do.body123:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ievent, i32 256) #8, !srcloc !105
  br label %if.end137

do.body127:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dtsec_isr.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dtsec_isr, %if.then133)) #8
          to label %if.end137 [label %if.then133], !srcloc !114

if.then133:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dtsec_isr.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.55) #8
  br label %if.end137

if.end137:                                        ; preds = %if.then133, %do.body127, %do.body123
  %fm = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 15
  %62 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fm, align 8
  %mac_id = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 10
  %64 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %mac_id, align 8
  %call138 = tail call i32 @fman_reset_mac(ptr noundef %63, i8 noundef zeroext %65) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748) #8
  br label %if.end140

if.end140:                                        ; preds = %if.end137, %if.end82.if.end140_crit_edge, %if.then52.if.end140_crit_edge
  %exception_cb141 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 5
  %67 = ptrtoint ptr %exception_cb141 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %exception_cb141, align 4
  %dev_id142 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %69 = ptrtoint ptr %dev_id142 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_id142, align 8
  tail call void %68(ptr noundef %70, i32 noundef 25) #8
  br label %if.end143

if.end143:                                        ; preds = %if.end140, %if.end49.if.end143_crit_edge
  %and144 = and i32 %and5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.end143.if.end149_crit_edge, label %if.then146

if.end143.if.end149_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

if.then146:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb147 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 5
  %71 = ptrtoint ptr %exception_cb147 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %exception_cb147, align 4
  %dev_id148 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %73 = ptrtoint ptr %dev_id148 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_id148, align 8
  tail call void %72(ptr noundef %74, i32 noundef 26) #8
  br label %if.end149

if.end149:                                        ; preds = %if.then146, %if.end143.if.end149_crit_edge
  %and150 = and i32 %and5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.end149.if.end155_crit_edge, label %if.then152

if.end149.if.end155_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end155

if.then152:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb153 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 5
  %75 = ptrtoint ptr %exception_cb153 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %exception_cb153, align 4
  %dev_id154 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %77 = ptrtoint ptr %dev_id154 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_id154, align 8
  tail call void %76(ptr noundef %78, i32 noundef 29) #8
  br label %if.end155

if.end155:                                        ; preds = %if.then152, %if.end149.if.end155_crit_edge
  %and156 = and i32 %and5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %if.end155.if.end161_crit_edge, label %if.then158

if.end155.if.end161_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.then158:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb159 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 5
  %79 = ptrtoint ptr %exception_cb159 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %exception_cb159, align 4
  %dev_id160 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %81 = ptrtoint ptr %dev_id160 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev_id160, align 8
  tail call void %80(ptr noundef %82, i32 noundef 30) #8
  br label %if.end161

if.end161:                                        ; preds = %if.then158, %if.end155.if.end161_crit_edge
  %and162 = and i32 %and5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.end161.if.end167_crit_edge, label %if.then164

if.end161.if.end167_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

if.then164:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  %exception_cb165 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 5
  %83 = ptrtoint ptr %exception_cb165 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %exception_cb165, align 4
  %dev_id166 = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %85 = ptrtoint ptr %dev_id166 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev_id166, align 8
  tail call void %84(ptr noundef %86, i32 noundef 31) #8
  br label %if.end167

if.end167:                                        ; preds = %if.then164, %if.end161.if.end167_crit_edge
  %and168 = and i32 %and5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %if.end167.if.end191_crit_edge, label %do.end185, !prof !197

if.end167.if.end191_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end191

do.end185:                                        ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 804, i32 noundef 9, ptr noundef null) #8
  br label %if.end191

if.end191:                                        ; preds = %do.end185, %if.end167.if.end191_crit_edge
  %and200 = and i32 %and5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  br i1 %tobool201.not, label %if.end191.if.end223_crit_edge, label %do.end217, !prof !197

if.end191.if.end223_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end223

do.end217:                                        ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 805, i32 noundef 9, ptr noundef null) #8
  br label %if.end223

if.end223:                                        ; preds = %do.end217, %if.end191.if.end223_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dtsec_1588_isr(ptr nocapture noundef readonly %handle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_tsu_enabled = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 12
  %0 = ptrtoint ptr %ptp_tsu_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ptp_tsu_enabled, align 8, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end35_crit_edge, label %if.then

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 8
  %tmr_pevent = getelementptr inbounds %struct.dtsec_regs, ptr %3, i32 0, i32 9
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tmr_pevent) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  %tmr_pemask = getelementptr inbounds %struct.dtsec_regs, ptr %3, i32 0, i32 10
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %tmr_pemask) #8, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  %and = and i32 %5, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then.if.end35_crit_edge, label %do.body

if.then.if.end35_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

do.body:                                          ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !200
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tmr_pevent, i32 %and) #8, !srcloc !105
  %and8 = and i32 %and, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body.if.end_crit_edge, label %do.end21, !prof !197

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end21:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 820, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end21, %do.body.if.end_crit_edge
  %exception_cb = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 5
  %6 = ptrtoint ptr %exception_cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %exception_cb, align 4
  %dev_id = getelementptr inbounds %struct.fman_mac, ptr %handle, i32 0, i32 4
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 8
  tail call void %7(ptr noundef %9, i32 noundef 32) #8
  br label %if.end35

if.end35:                                         ; preds = %if.end, %if.then.if.end35_crit_edge, %entry.if.end35_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dtsec_free(ptr noundef %dtsec) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fm.i = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 15
  %0 = ptrtoint ptr %fm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fm.i, align 8
  %mac_id.i = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 10
  %2 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mac_id.i, align 8
  tail call void @fman_unregister_intr(ptr noundef %1, i32 noundef 0, i8 noundef zeroext %3, i32 noundef 0) #8
  %4 = ptrtoint ptr %fm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fm.i, align 8
  %6 = ptrtoint ptr %mac_id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mac_id.i, align 8
  tail call void @fman_unregister_intr(ptr noundef %5, i32 noundef 0, i8 noundef zeroext %7, i32 noundef 1) #8
  %multicast_addr_hash.i = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 8
  %8 = ptrtoint ptr %multicast_addr_hash.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %multicast_addr_hash.i, align 8
  tail call fastcc void @free_hash_table(ptr noundef %9) #8
  %10 = ptrtoint ptr %multicast_addr_hash.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %multicast_addr_hash.i, align 8
  %unicast_addr_hash.i = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 9
  %11 = ptrtoint ptr %unicast_addr_hash.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %unicast_addr_hash.i, align 4
  tail call fastcc void @free_hash_table(ptr noundef %12) #8
  %13 = ptrtoint ptr %unicast_addr_hash.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %unicast_addr_hash.i, align 4
  %dtsec_drv_param = getelementptr inbounds %struct.fman_mac, ptr %dtsec, i32 0, i32 14
  %14 = ptrtoint ptr %dtsec_drv_param to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dtsec_drv_param, align 4
  tail call void @kfree(ptr noundef %15) #8
  %16 = ptrtoint ptr %dtsec_drv_param to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %dtsec_drv_param, align 4
  tail call void @kfree(ptr noundef %dtsec) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dtsec_config(ptr nocapture noundef readonly %params) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 80) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i107 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 40) #13
  %tobool3.not = icmp eq ptr %call7.i.i107, null
  br i1 %tobool3.not, label %if.end.err_dtsec_crit_edge, label %if.end5

if.end.err_dtsec_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_dtsec

if.end5:                                          ; preds = %if.end
  %dtsec_drv_param6 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 14
  %4 = ptrtoint ptr %dtsec_drv_param6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i107, ptr %dtsec_drv_param6, align 4
  %5 = ptrtoint ptr %call7.i.i107 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 15, ptr %call7.i.i107, align 8
  %halfdup_coll_window.i = getelementptr inbounds %struct.dtsec_cfg, ptr %call7.i.i107, i32 0, i32 1
  %6 = ptrtoint ptr %halfdup_coll_window.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 55, ptr %halfdup_coll_window.i, align 2
  %tx_pad_crc.i = getelementptr inbounds %struct.dtsec_cfg, ptr %call7.i.i107, i32 0, i32 2
  %7 = ptrtoint ptr %tx_pad_crc.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %tx_pad_crc.i, align 4
  %tx_pause_time.i = getelementptr inbounds %struct.dtsec_cfg, ptr %call7.i.i107, i32 0, i32 3
  %8 = ptrtoint ptr %tx_pause_time.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -4096, ptr %tx_pause_time.i, align 2
  %rx_prepend.i = getelementptr inbounds %struct.dtsec_cfg, ptr %call7.i.i107, i32 0, i32 7
  %9 = ptrtoint ptr %rx_prepend.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rx_prepend.i, align 8
  %ptp_tsu_en.i = getelementptr inbounds %struct.dtsec_cfg, ptr %call7.i.i107, i32 0, i32 4
  %10 = ptrtoint ptr %ptp_tsu_en.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %ptp_tsu_en.i, align 8
  %ptp_exception_en.i = getelementptr inbounds %struct.dtsec_cfg, ptr %call7.i.i107, i32 0, i32 5
  %11 = ptrtoint ptr %ptp_exception_en.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %ptp_exception_en.i, align 1
  %preamble_len.i = getelementptr inbounds %struct.dtsec_cfg, ptr %call7.i.i107, i32 0, i32 6
  %12 = ptrtoint ptr %preamble_len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 7, ptr %preamble_len.i, align 4
  %tx_pause_time_extd.i = getelementptr inbounds %struct.dtsec_cfg, ptr %call7.i.i107, i32 0, i32 8
  %13 = ptrtoint ptr %tx_pause_time_extd.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %tx_pause_time_extd.i, align 4
  %non_back_to_back_ipg1.i = getelementptr inbounds %struct.dtsec_cfg, ptr %call7.i.i107, i32 0, i32 10
  %14 = ptrtoint ptr %non_back_to_back_ipg1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 64, ptr %non_back_to_back_ipg1.i, align 8
  %non_back_to_back_ipg2.i = getelementptr inbounds %struct.dtsec_cfg, ptr %call7.i.i107, i32 0, i32 11
  %15 = ptrtoint ptr %non_back_to_back_ipg2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 96, ptr %non_back_to_back_ipg2.i, align 4
  %min_ifg_enforcement.i = getelementptr inbounds %struct.dtsec_cfg, ptr %call7.i.i107, i32 0, i32 12
  %16 = ptrtoint ptr %min_ifg_enforcement.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 80, ptr %min_ifg_enforcement.i, align 8
  %back_to_back_ipg.i = getelementptr inbounds %struct.dtsec_cfg, ptr %call7.i.i107, i32 0, i32 13
  %17 = ptrtoint ptr %back_to_back_ipg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 96, ptr %back_to_back_ipg.i, align 4
  %maximum_frame.i = getelementptr inbounds %struct.dtsec_cfg, ptr %call7.i.i107, i32 0, i32 9
  %18 = ptrtoint ptr %maximum_frame.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1536, ptr %maximum_frame.i, align 2
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %1, ptr %call7.i.i, align 8
  %addr = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 1
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %addr, align 4
  %conv = zext i8 %21 to i64
  %shl = shl nuw nsw i64 %conv, 40
  %arrayidx8 = getelementptr %struct.fman_mac_params, ptr %params, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %23 to i64
  %shl10 = shl nuw nsw i64 %conv9, 32
  %or = or i64 %shl10, %shl
  %arrayidx12 = getelementptr %struct.fman_mac_params, ptr %params, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx12, align 2
  %conv13 = zext i8 %25 to i64
  %shl14 = shl nuw nsw i64 %conv13, 24
  %or15 = or i64 %or, %shl14
  %arrayidx17 = getelementptr %struct.fman_mac_params, ptr %params, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %27 to i64
  %shl19 = shl nuw nsw i64 %conv18, 16
  %or20 = or i64 %or15, %shl19
  %arrayidx22 = getelementptr %struct.fman_mac_params, ptr %params, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx22, align 4
  %conv23 = zext i8 %29 to i64
  %shl24 = shl nuw nsw i64 %conv23, 8
  %or25 = or i64 %or20, %shl24
  %arrayidx27 = getelementptr %struct.fman_mac_params, ptr %params, i32 0, i32 1, i32 5
  %30 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %31 to i64
  %or29 = or i64 %or25, %conv28
  %addr30 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %addr30 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %or29, ptr %addr30, align 8
  %max_speed = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 4
  %33 = ptrtoint ptr %max_speed to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %max_speed, align 4
  %max_speed31 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %max_speed31 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %max_speed31, align 4
  %phy_if = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 3
  %36 = ptrtoint ptr %phy_if to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phy_if, align 4
  %phy_if32 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %phy_if32 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %phy_if32, align 8
  %mac_id = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 2
  %39 = ptrtoint ptr %mac_id to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mac_id, align 2
  %mac_id33 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 10
  %41 = ptrtoint ptr %mac_id33 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %mac_id33, align 8
  %exceptions = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 11
  %42 = ptrtoint ptr %exceptions to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1043871741, ptr %exceptions, align 4
  %exception_cb = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 8
  %43 = ptrtoint ptr %exception_cb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %exception_cb, align 4
  %exception_cb34 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 5
  %45 = ptrtoint ptr %exception_cb34 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %exception_cb34, align 4
  %event_cb = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 7
  %46 = ptrtoint ptr %event_cb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %event_cb, align 4
  %event_cb35 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 6
  %48 = ptrtoint ptr %event_cb35 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %event_cb35, align 8
  %dev_id = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 6
  %49 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_id, align 4
  %dev_id36 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 4
  %51 = ptrtoint ptr %dev_id36 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %dev_id36, align 8
  %ptp_tsu_enabled = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 12
  %52 = ptrtoint ptr %ptp_tsu_enabled to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %ptp_tsu_enabled, align 8
  %en_tsu_err_exception = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 13
  %53 = ptrtoint ptr %en_tsu_err_exception to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %en_tsu_err_exception, align 1
  %fm = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 5
  %54 = ptrtoint ptr %fm to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fm, align 4
  %fm42 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 15
  %56 = ptrtoint ptr %fm42 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %fm42, align 8
  %basex_if = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 9
  %57 = ptrtoint ptr %basex_if to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %basex_if, align 4, !range !157
  %basex_if44 = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 17
  %59 = ptrtoint ptr %basex_if44 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %basex_if44, align 2
  %internal_phy_node = getelementptr inbounds %struct.fman_mac_params, ptr %params, i32 0, i32 10
  %60 = ptrtoint ptr %internal_phy_node to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %internal_phy_node, align 4
  %tobool46.not = icmp eq ptr %61, null
  br i1 %tobool46.not, label %if.end5.err_dtsec_drv_param_crit_edge, label %if.end49

if.end5.err_dtsec_drv_param_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_dtsec_drv_param

if.end49:                                         ; preds = %if.end5
  %call51 = tail call ptr @of_phy_find_device(ptr noundef nonnull %61) #8
  %tbiphy = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 18
  %62 = ptrtoint ptr %tbiphy to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call51, ptr %tbiphy, align 8
  %tobool53.not = icmp eq ptr %call51, null
  br i1 %tobool53.not, label %if.end49.err_dtsec_drv_param_crit_edge, label %if.end60

if.end49.err_dtsec_drv_param_crit_edge:           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_dtsec_drv_param

if.end60:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @put_device(ptr noundef nonnull %call51) #8
  %63 = ptrtoint ptr %fm42 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fm42, align 8
  %fm_rev_info = getelementptr inbounds %struct.fman_mac, ptr %call7.i.i, i32 0, i32 16
  tail call void @fman_get_revision(ptr noundef %64, ptr noundef %fm_rev_info) #8
  br label %cleanup

err_dtsec_drv_param:                              ; preds = %if.end49.err_dtsec_drv_param_crit_edge, %if.end5.err_dtsec_drv_param_crit_edge
  %.str.27.sink = phi ptr [ @.str.24, %if.end5.err_dtsec_drv_param_crit_edge ], [ @.str.27, %if.end49.err_dtsec_drv_param_crit_edge ]
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.27.sink) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i107) #8
  br label %err_dtsec

err_dtsec:                                        ; preds = %err_dtsec_drv_param, %if.end.err_dtsec_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_dtsec, %if.end60, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end60 ], [ null, %err_dtsec ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_find_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fman_get_revision(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fman_unregister_intr(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fman_reset_mac(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/fman/fman_dtsec.c", i32 975, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dtsec_set_tx_pause_frames._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dtsec_set_tx_pause_frames._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/freescale/fman/fman_dtsec.c", i32 1070, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dtsec_add_hash_mac_address._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @dtsec_add_hash_mac_address._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/freescale/fman/fman_dtsec.c", i32 1181, i32 3}
!13 = !{ptr @dtsec_del_hash_mac_address._entry, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @dtsec_del_hash_mac_address._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/freescale/fman/fman_dtsec.c", i32 1348, i32 4}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dtsec_set_exception._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @dtsec_set_exception._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/freescale/fman/fman_dtsec.c", i32 1359, i32 4}
!22 = !{ptr @dtsec_set_exception._entry.8, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @dtsec_set_exception._entry_ptr.10, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @dtsec_set_exception._entry.11, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/freescale/fman/fman_dtsec.c", i32 1377, i32 4}
!26 = !{ptr @dtsec_set_exception._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/freescale/fman/fman_dtsec.c", i32 1412, i32 3}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @dtsec_init._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @dtsec_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/freescale/fman/fman_dtsec.c", i32 1446, i32 3}
!34 = !{ptr @dtsec_init._entry.15, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @dtsec_init._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/freescale/fman/fman_dtsec.c", i32 1455, i32 3}
!38 = !{ptr @dtsec_init._entry.18, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @dtsec_init._entry_ptr.20, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/freescale/fman/fman_dtsec.c", i32 1462, i32 3}
!42 = !{ptr @dtsec_init._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @dtsec_init._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/freescale/fman/fman_dtsec.c", i32 1541, i32 3}
!46 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @dtsec_config._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @dtsec_config._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/freescale/fman/fman_dtsec.c", i32 1547, i32 3}
!51 = !{ptr @dtsec_config._entry.26, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @dtsec_config._entry_ptr.28, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/freescale/fman/fman_dtsec.c", i32 898, i32 4}
!55 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @graceful_stop.__UNIQUE_ID_ddebug290, !54, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!58 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/freescale/fman/fman_dtsec.c", i32 555, i32 3}
!61 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @check_init_parameters._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @check_init_parameters._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/freescale/fman/fman_dtsec.c", i32 560, i32 3}
!66 = !{ptr @check_init_parameters._entry.35, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @check_init_parameters._entry_ptr.37, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/freescale/fman/fman_dtsec.c", i32 570, i32 3}
!70 = !{ptr @check_init_parameters._entry.38, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @check_init_parameters._entry_ptr.40, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/freescale/fman/fman_dtsec.c", i32 576, i32 3}
!74 = !{ptr @check_init_parameters._entry.41, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @check_init_parameters._entry_ptr.43, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.45, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/freescale/fman/fman_dtsec.c", i32 582, i32 3}
!78 = !{ptr @check_init_parameters._entry.44, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @check_init_parameters._entry_ptr.46, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.48, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/freescale/fman/fman_dtsec.c", i32 590, i32 3}
!82 = !{ptr @check_init_parameters._entry.47, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @check_init_parameters._entry_ptr.49, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.51, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/freescale/fman/fman_dtsec.c", i32 594, i32 3}
!86 = !{ptr @check_init_parameters._entry.50, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @check_init_parameters._entry_ptr.52, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.53, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/freescale/fman/fman_dtsec.c", i32 775, i32 6}
!90 = !{ptr @.str.54, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @dtsec_isr.__UNIQUE_ID_ddebug289, !89, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!92 = !{ptr @.str.55, !89, !"<string literal>", i1 false, i1 false}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i64 754483}
!103 = !{i64 2155623205}
!104 = !{i64 2155623465}
!105 = !{i64 754065}
!106 = !{i64 2155617982}
!107 = !{i64 2155618215}
!108 = !{i64 2155618983}
!109 = !{i64 2155619216}
!110 = !{i64 2155623822}
!111 = !{i64 2155624082}
!112 = !{i64 2155619535}
!113 = !{i64 2155619782}
!114 = !{i64 2148221222, i64 2148221227, i64 2148221240, i64 2148221284, i64 2148221318, i64 2148221339}
!115 = !{i64 2155622601}
!116 = !{i64 2155622848}
!117 = !{i64 2155624491}
!118 = !{i64 2155624792}
!119 = !{i64 2155626947}
!120 = !{i64 2155627203}
!121 = !{i64 2155628004}
!122 = !{i64 2155628239}
!123 = !{i64 2155629005}
!124 = !{i64 2155629240}
!125 = !{i64 2155629558}
!126 = !{i64 2155629859}
!127 = !{i64 2155630164}
!128 = !{i64 2155630424}
!129 = !{i64 2155630777}
!130 = !{i64 2155631078}
!131 = !{i64 2155580961}
!132 = !{i64 2155581263}
!133 = !{i64 2155631976}
!134 = !{i64 2155634779}
!135 = !{i64 2155635037}
!136 = !{i64 2155635390}
!137 = !{i64 2155635680}
!138 = !{i64 2155635962}
!139 = !{i64 2155636262}
!140 = !{i64 2155636923}
!141 = !{!"branch_weights", i32 1, i32 2000}
!142 = !{i64 2155643397}
!143 = !{i64 2155643655}
!144 = !{i64 2155644005}
!145 = !{i64 2155644263}
!146 = !{i64 2155644616}
!147 = !{i64 2155644917}
!148 = !{i64 2155645222}
!149 = !{i64 2155645525}
!150 = !{i64 2155645877}
!151 = !{i64 2155646140}
!152 = !{i64 2155646552}
!153 = !{i64 2155648945}
!154 = !{i64 2155649178}
!155 = !{i64 2155649920}
!156 = !{i64 2155650153}
!157 = !{i8 0, i8 2}
!158 = !{i64 2155652678}
!159 = !{i64 2155652916}
!160 = !{i64 2155653703}
!161 = !{i64 2155653941}
!162 = !{i64 2155581579}
!163 = !{i64 2155581882}
!164 = !{i64 2155582236}
!165 = !{i64 2155582593}
!166 = !{i64 2155582890}
!167 = !{i64 2155583211}
!168 = !{i64 2155583512}
!169 = !{i64 2155583814}
!170 = !{i64 2155584124}
!171 = !{i64 2155584436}
!172 = !{i64 2155584756}
!173 = !{i64 2155585122}
!174 = !{i64 2155585471}
!175 = !{i64 2155585804}
!176 = !{i64 2155586116}
!177 = !{i64 2155586433}
!178 = !{i64 2155586742}
!179 = !{i64 2155587056}
!180 = !{i64 2155587371}
!181 = !{i64 2155587822}
!182 = !{i64 2155588117}
!183 = !{i64 2155659567}
!184 = !{i64 2155603733}
!185 = !{i64 2155604045}
!186 = !{i64 2155604284}
!187 = !{i64 2155604733}
!188 = !{i64 2155605045}
!189 = !{i64 2155603441}
!190 = !{i64 2155609024}
!191 = !{i64 2155609336}
!192 = !{i64 2155610069}
!193 = !{i64 2155610302}
!194 = !{i64 2155610617}
!195 = !{i64 2155611456}
!196 = !{i64 2155611722}
!197 = !{!"branch_weights", i32 2000, i32 1}
!198 = !{i64 2155616067}
!199 = !{i64 2155616367}
!200 = !{i64 2155616610}
