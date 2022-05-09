; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qualcomm/emac/emac-sgmii.c_pt.bc'
source_filename = "../drivers/net/ethernet/qualcomm/emac/emac-sgmii.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sgmii_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.emac_adapter = type { ptr, ptr, ptr, ptr, ptr, %struct.emac_sgmii, %struct.emac_stats, %struct.emac_irq, [7 x ptr], %struct.emac_ring_header, %struct.emac_tx_queue, %struct.emac_rx_queue, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, %struct.work_struct, i16, %struct.mutex }
%struct.emac_sgmii = type { ptr, ptr, i32, %struct.atomic_t, ptr }
%struct.atomic_t = type { i32 }
%struct.emac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.spinlock }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.emac_irq = type { i32, i32 }
%struct.emac_ring_header = type { ptr, i32, i32, i32 }
%struct.emac_tx_queue = type { %struct.emac_tpd_ring, i32, i32, i16, i16, i16, i8, i8 }
%struct.emac_tpd_ring = type { ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.emac_rx_queue = type { ptr, %struct.emac_rrd_ring, %struct.emac_rfd_ring, %struct.napi_struct, ptr, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8 }
%struct.emac_rrd_ring = type { ptr, i32, i32, i32, i32, i32 }
%struct.emac_rfd_ring = type { ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@emac_sgmii_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 363, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot find internal phy node\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"emac_sgmii_config\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/qualcomm/emac/emac-sgmii.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@emac_sgmii_config._entry_ptr = internal global ptr @emac_sgmii_config._entry, section ".printk_index", align 4
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"internal-phy\00", [19 x i8] zeroinitializer }, align 32
@emac_sgmii_config._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 374, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"missing internal-phy property\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@emac_sgmii_config._entry_ptr.9 = internal global ptr @emac_sgmii_config._entry.6, section ".printk_index", align 4
@emac_sgmii_config._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 381, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid internal-phy property\0A\00", [33 x i8] zeroinitializer }, align 32
@emac_sgmii_config._entry_ptr.12 = internal global ptr @emac_sgmii_config._entry.10, section ".printk_index", align 4
@emac_sgmii_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,fsm9900-emac-sgmii\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsm9900_ops }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qdf2432-emac-sgmii\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qdf2432_ops }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@emac_sgmii_config._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 387, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unrecognized internal phy node\0A\00", [32 x i8] zeroinitializer }, align 32
@emac_sgmii_config._entry_ptr.15 = internal global ptr @emac_sgmii_config._entry.13, section ".printk_index", align 4
@fsm9900_ops = internal global { %struct.sgmii_ops, [44 x i8] } { %struct.sgmii_ops { ptr @emac_sgmii_init_fsm9900, ptr @emac_sgmii_common_open, ptr @emac_sgmii_common_close, ptr @emac_sgmii_common_link_change, ptr @emac_sgmii_common_reset }, [44 x i8] zeroinitializer }, align 32
@qdf2432_ops = internal global { %struct.sgmii_ops, [44 x i8] } { %struct.sgmii_ops { ptr @emac_sgmii_init_qdf2432, ptr @emac_sgmii_common_open, ptr @emac_sgmii_common_close, ptr @emac_sgmii_common_link_change, ptr @emac_sgmii_common_reset }, [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"emac-sgmii\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"could not register handler for internal PHY\0A\00", [51 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@emac_sgmii_irq_clear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s: failed to clear SGMII irq: status:0x%x bits:0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"emac_sgmii_irq_clear\00", [43 x i8] zeroinitializer }, align 32
@emac_sgmii_irq_clear._entry_ptr = internal global ptr @emac_sgmii_irq_clear._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"could not reinitialize internal PHY (error=%i)\0A\00", [48 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 363, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 372, i32 44 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 374, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 381, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant [20 x i8] c"emac_sgmii_dt_match\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 337, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 387, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant [12 x i8] c"fsm9900_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 268, i32 25 }
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"qdf2432_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 276, i32 25 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 225, i32 7 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 228, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 121, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [51 x i8] c"../drivers/net/ethernet/qualcomm/emac/emac-sgmii.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 208, i32 7 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @emac_sgmii_config._entry, ptr @emac_sgmii_config._entry.10, ptr @emac_sgmii_config._entry.13, ptr @emac_sgmii_config._entry.6, ptr @emac_sgmii_config._entry_ptr, ptr @emac_sgmii_config._entry_ptr.12, ptr @emac_sgmii_config._entry_ptr.15, ptr @emac_sgmii_config._entry_ptr.9, ptr @emac_sgmii_irq_clear._entry, ptr @emac_sgmii_irq_clear._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @emac_sgmii_dt_match, ptr @.str.14, ptr @fsm9900_ops, ptr @qdf2432_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_sgmii_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_sgmii_config._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_sgmii_config._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_sgmii_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_sgmii_config._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsm9900_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qdf2432_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emac_sgmii_irq_clear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @emac_sgmii_init(ptr noundef %adpt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sgmii_ops = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 5, i32 4
  %0 = ptrtoint ptr %sgmii_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgmii_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.return_crit_edge, label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef %adpt) #6
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @emac_sgmii_open(ptr noundef %adpt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sgmii_ops = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 5, i32 4
  %0 = ptrtoint ptr %sgmii_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgmii_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true:                                    ; preds = %entry
  %open = getelementptr inbounds %struct.sgmii_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %open, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.return_crit_edge, label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef %adpt) #6
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @emac_sgmii_close(ptr noundef %adpt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sgmii_ops = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 5, i32 4
  %0 = ptrtoint ptr %sgmii_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgmii_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true:                                    ; preds = %entry
  %close = getelementptr inbounds %struct.sgmii_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %close, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.return_crit_edge, label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %adpt) #6
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @emac_sgmii_link_change(ptr noundef %adpt, i1 noundef zeroext %link_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sgmii_ops = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 5, i32 4
  %0 = ptrtoint ptr %sgmii_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgmii_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true:                                    ; preds = %entry
  %link_change = getelementptr inbounds %struct.sgmii_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %link_change to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link_change, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.return_crit_edge, label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef %adpt, i1 noundef zeroext %link_state) #6
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @emac_sgmii_reset(ptr noundef %adpt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sgmii_ops = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 5, i32 4
  %0 = ptrtoint ptr %sgmii_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgmii_ops, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true:                                    ; preds = %entry
  %reset = getelementptr inbounds %struct.sgmii_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.return_crit_edge, label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %adpt) #6
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @emac_sgmii_config(ptr noundef %pdev, ptr noundef %adpt) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 5
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  br label %do.end13

of_parse_phandle.exit:                            ; preds = %entry
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %tobool9.not = icmp eq ptr %4, null
  br i1 %tobool9.not, label %of_parse_phandle.exit.do.end13_crit_edge, label %if.end15

of_parse_phandle.exit.do.end13_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

do.end13:                                         ; preds = %of_parse_phandle.exit.do.end13_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup75

if.end15:                                         ; preds = %of_parse_phandle.exit
  %call16 = call ptr @of_find_device_by_node(ptr noundef nonnull %4) #6
  call void @of_node_put(ptr noundef nonnull %4) #6
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %cleanup75

if.end23:                                         ; preds = %if.end15
  %dev24 = getelementptr inbounds %struct.platform_device, ptr %call16, i32 0, i32 3
  %call25 = call ptr @of_match_device(ptr noundef nonnull @emac_sgmii_dt_match, ptr noundef %dev24) #6
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %cleanup34, label %if.end38

cleanup34:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %error_put_device

if.end38:                                         ; preds = %if.end23
  %data = getelementptr inbounds %struct.of_device_id, ptr %call25, i32 0, i32 3
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %sgmii_ops33 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 5, i32 4
  %7 = ptrtoint ptr %sgmii_ops33 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %sgmii_ops33, align 4
  %call39 = call ptr @platform_get_resource(ptr noundef nonnull %call16, i32 noundef 512, i32 noundef 0) #6
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.end38.error_put_device_crit_edge, label %if.end42

if.end38.error_put_device_crit_edge:              ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_put_device

if.end42:                                         ; preds = %if.end38
  %8 = ptrtoint ptr %call39 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call39, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call39, i32 0, i32 1
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %9
  %add.i = add i32 %sub.i, %11
  %call44 = call ptr @ioremap(i32 noundef %9, i32 noundef %add.i) #6
  %12 = ptrtoint ptr %phy1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call44, ptr %phy1, align 4
  %tobool46.not = icmp eq ptr %call44, null
  br i1 %tobool46.not, label %if.end42.error_put_device_crit_edge, label %if.end48

if.end42.error_put_device_crit_edge:              ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_put_device

if.end48:                                         ; preds = %if.end42
  %call49 = call ptr @platform_get_resource(ptr noundef nonnull %call16, i32 noundef 512, i32 noundef 1) #6
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %if.end48.if.end59_crit_edge, label %if.then51

if.end48.if.end59_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then51:                                        ; preds = %if.end48
  %13 = ptrtoint ptr %call49 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call49, align 4
  %end.i115 = getelementptr inbounds %struct.resource, ptr %call49, i32 0, i32 1
  %15 = ptrtoint ptr %end.i115 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end.i115, align 4
  %sub.i116 = sub i32 1, %14
  %add.i117 = add i32 %sub.i116, %16
  %call54 = call ptr @ioremap(i32 noundef %14, i32 noundef %add.i117) #6
  %digital = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %digital to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call54, ptr %digital, align 4
  %tobool56.not = icmp eq ptr %call54, null
  br i1 %tobool56.not, label %if.then51.error_unmap_base_crit_edge, label %if.then51.if.end59_crit_edge

if.then51.if.end59_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then51.error_unmap_base_crit_edge:             ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_unmap_base

if.end59:                                         ; preds = %if.then51.if.end59_crit_edge, %if.end48.if.end59_crit_edge
  %18 = ptrtoint ptr %sgmii_ops33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sgmii_ops33, align 4
  %tobool.not.i118 = icmp eq ptr %19, null
  br i1 %tobool.not.i118, label %if.end59.if.end63_crit_edge, label %land.lhs.true.i

if.end59.if.end63_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

land.lhs.true.i:                                  ; preds = %if.end59
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool3.not.i = icmp eq ptr %21, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end63_crit_edge, label %emac_sgmii_init.exit

land.lhs.true.i.if.end63_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

emac_sgmii_init.exit:                             ; preds = %land.lhs.true.i
  %call.i119 = call i32 %21(ptr noundef %adpt) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool61.not = icmp eq i32 %call.i119, 0
  br i1 %tobool61.not, label %emac_sgmii_init.exit.if.end63_crit_edge, label %error

emac_sgmii_init.exit.if.end63_crit_edge:          ; preds = %emac_sgmii_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.end63:                                         ; preds = %emac_sgmii_init.exit.if.end63_crit_edge, %land.lhs.true.i.if.end63_crit_edge, %if.end59.if.end63_crit_edge
  %22 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy1, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 72
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  %25 = and i32 %24, -822083585
  %26 = or i32 %25, 16777216
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy1, align 4
  %add.ptr4.i = getelementptr i8, ptr %28, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %26) #6, !srcloc !52
  %call64 = call i32 @platform_get_irq(ptr noundef nonnull %call16, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp = icmp sgt i32 %call64, 0
  br i1 %cmp, label %if.then65, label %if.end63.if.end66_crit_edge

if.end63.if.end66_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 5, i32 2
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call64, ptr %irq, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end63.if.end66_crit_edge
  call void @put_device(ptr noundef %dev24) #6
  br label %cleanup75

error:                                            ; preds = %emac_sgmii_init.exit
  %digital68 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %digital68 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %digital68, align 4
  %tobool69.not = icmp eq ptr %31, null
  br i1 %tobool69.not, label %error.error_unmap_base_crit_edge, label %if.then70

error.error_unmap_base_crit_edge:                 ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_unmap_base

if.then70:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  call void @iounmap(ptr noundef nonnull %31) #6
  br label %error_unmap_base

error_unmap_base:                                 ; preds = %if.then70, %error.error_unmap_base_crit_edge, %if.then51.error_unmap_base_crit_edge
  %ret.1 = phi i32 [ %call.i119, %if.then70 ], [ %call.i119, %error.error_unmap_base_crit_edge ], [ -12, %if.then51.error_unmap_base_crit_edge ]
  %32 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy1, align 4
  call void @iounmap(ptr noundef %33) #6
  br label %error_put_device

error_put_device:                                 ; preds = %error_unmap_base, %if.end42.error_put_device_crit_edge, %if.end38.error_put_device_crit_edge, %cleanup34
  %ret.2 = phi i32 [ %ret.1, %error_unmap_base ], [ -19, %cleanup34 ], [ -22, %if.end38.error_put_device_crit_edge ], [ -12, %if.end42.error_put_device_crit_edge ]
  call void @put_device(ptr noundef %dev24) #6
  br label %cleanup75

cleanup75:                                        ; preds = %error_put_device, %if.end66, %do.end21, %do.end13
  %retval.2 = phi i32 [ %ret.2, %error_put_device ], [ 0, %if.end66 ], [ -19, %do.end21 ], [ -19, %do.end13 ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @emac_sgmii_init_fsm9900(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_sgmii_common_open(ptr noundef %adpt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 5
  %irq = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @emac_sgmii_irq_clear(ptr noundef %adpt, i8 noundef zeroext -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.body, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !52
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @emac_sgmii_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef %adpt) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adpt, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.17) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.body.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then6 ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emac_sgmii_common_close(ptr noundef %adpt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !52
  %irq = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 5, i32 2
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %3, ptr noundef %adpt) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_sgmii_common_link_change(ptr nocapture noundef readonly %adpt, i1 noundef zeroext %linkup) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 5
  br i1 %linkup, label %if.then, label %do.body3

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @emac_sgmii_irq_clear(ptr noundef %adpt, i8 noundef zeroext -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.body, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1073741824) #6, !srcloc !52
  br label %cleanup

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %add.ptr7 = getelementptr i8, ptr %3, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #6, !srcloc !52
  %irq = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %5) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body3, %do.body, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ 0, %do.body3 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emac_sgmii_common_reset(ptr noundef %adpt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 5
  %0 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %3 = or i32 %2, 16777216
  %4 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy1.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %3) #6, !srcloc !52
  tail call void @msleep(i32 noundef 50) #6
  %6 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy1.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %9 = and i32 %8, -16777217
  %10 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy1.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %9) #6, !srcloc !52
  tail call void @msleep(i32 noundef 50) #6
  %12 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy1.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %13, i32 72
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  %15 = and i32 %14, -822083585
  %16 = or i32 %15, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy1.i, align 4
  %add.ptr4.i7 = getelementptr i8, ptr %18, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i7, i32 %16) #6, !srcloc !52
  %sgmii_ops.i = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 5, i32 4
  %19 = ptrtoint ptr %sgmii_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sgmii_ops.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %land.lhs.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool3.not.i = icmp eq ptr %22, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end_crit_edge, label %emac_sgmii_init.exit

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

emac_sgmii_init.exit:                             ; preds = %land.lhs.true.i
  %call.i = tail call i32 %22(ptr noundef %adpt) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %emac_sgmii_init.exit.if.end_crit_edge, label %if.then

emac_sgmii_init.exit.if.end_crit_edge:            ; preds = %emac_sgmii_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %emac_sgmii_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adpt, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %24, ptr noundef nonnull @.str.20, i32 noundef %call.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %emac_sgmii_init.exit.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @emac_sgmii_irq_clear(ptr nocapture noundef readonly %adpt, i8 noundef zeroext %irq_bits) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr inbounds %struct.emac_adapter, ptr %adpt, i32 0, i32 5
  %conv = zext i8 %irq_bits to i32
  %0 = shl nuw i32 %conv, 24
  %1 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy1, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #6, !srcloc !52
  %3 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy1, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 16777216) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 10000
  %5 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy1, align 4
  %add.ptr681 = getelementptr i8, ptr %6, i32 184
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr681) #6, !srcloc !49
  %8 = lshr i32 %7, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %and82 = and i32 %8, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool.not83 = icmp eq i32 %and82, 0
  br i1 %tobool.not83, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then16, label %cond.false

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy1, align 4
  %add.ptr20 = getelementptr i8, ptr %10, i32 184
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #6, !srcloc !49
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #6
  %14 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy1, align 4
  %add.ptr6 = getelementptr i8, ptr %15, i32 184
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #6, !srcloc !49
  %17 = lshr i32 %16, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %and = and i32 %17, %conv
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.for.end_crit_edge, label %cond.false.land.lhs.true_crit_edge

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then16, %entry.for.end_crit_edge
  %status.0.in = phi i32 [ %12, %if.then16 ], [ %8, %entry.for.end_crit_edge ], [ %17, %cond.false.for.end_crit_edge ]
  %conv35 = and i32 %status.0.in, 255
  %and37 = and i32 %status.0.in, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end55, label %do.body41

do.body41:                                        ; preds = %for.end
  %call42 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.body41.cleanup_crit_edge, label %do.end47

do.body41.cleanup_crit_edge:                      ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end47:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %adpt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adpt, align 8
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %19, i32 noundef %conv35, i32 noundef %conv) #9
  br label %cleanup

if.end55:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy1, align 4
  %add.ptr57 = getelementptr i8, ptr %21, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 0) #6, !srcloc !52
  %22 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy1, align 4
  %add.ptr59 = getelementptr i8, ptr %23, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 0) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end47, %do.body41.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end55 ], [ -5, %do.end47 ], [ -5, %do.body41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emac_sgmii_interrupt(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr inbounds %struct.emac_adapter, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 184
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !49
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  %4 = trunc i32 %3 to i8
  %conv4 = and i8 %4, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv4)
  %tobool.not = icmp eq i8 %conv4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %2)
  %tobool7.not = icmp ult i32 %2, 1073741824
  %decode_error_count15 = getelementptr inbounds %struct.emac_adapter, ptr %data, i32 0, i32 5, i32 3
  %call.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef %decode_error_count15, i32 noundef 4) #6
  br i1 %tobool7.not, label %if.end.if.end16.sink.split_crit_edge, label %if.then8

if.end.if.end16.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.sink.split

if.then8:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %decode_error_count15, i32 1, i32 3, i32 1) #6
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %decode_error_count15, ptr %decode_error_count15, i32 1, ptr elementtype(i32) %decode_error_count15) #6, !srcloc !67
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 2
  br i1 %cmp, label %if.then11, label %if.then8.if.end16_crit_edge

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %work_thread = getelementptr inbounds %struct.emac_adapter, ptr %data, i32 0, i32 31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i36 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %work_thread) #6
  %call.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef %decode_error_count15, i32 noundef 4) #6
  br label %if.end16.sink.split

if.end16.sink.split:                              ; preds = %if.then11, %if.end.if.end16.sink.split_crit_edge
  %7 = ptrtoint ptr %decode_error_count15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %decode_error_count15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %if.then8.if.end16_crit_edge
  %call17 = tail call fastcc i32 @emac_sgmii_irq_clear(ptr noundef %data, i8 noundef zeroext %conv4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.then19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %work_thread20 = getelementptr inbounds %struct.emac_adapter, ptr %data, i32 0, i32 31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i37 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work_thread20) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @emac_sgmii_init_qdf2432(ptr noundef) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !27, !29, !31, !33, !34, !35, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-sgmii.c", i32 363, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @emac_sgmii_config._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @emac_sgmii_config._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-sgmii.c", i32 372, i32 44}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-sgmii.c", i32 374, i32 4}
!12 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @emac_sgmii_config._entry.6, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @emac_sgmii_config._entry_ptr.9, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-sgmii.c", i32 381, i32 4}
!17 = !{ptr @emac_sgmii_config._entry.10, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @emac_sgmii_config._entry_ptr.12, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-sgmii.c", i32 387, i32 4}
!21 = !{ptr @emac_sgmii_config._entry.13, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @emac_sgmii_config._entry_ptr.15, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @emac_sgmii_dt_match, !24, !"emac_sgmii_dt_match", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-sgmii.c", i32 337, i32 34}
!25 = !{ptr @fsm9900_ops, !26, !"fsm9900_ops", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-sgmii.c", i32 268, i32 25}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-sgmii.c", i32 225, i32 7}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-sgmii.c", i32 228, i32 8}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-sgmii.c", i32 121, i32 3}
!33 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @emac_sgmii_irq_clear._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @emac_sgmii_irq_clear._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-sgmii.c", i32 208, i32 7}
!38 = !{ptr @qdf2432_ops, !39, !"qdf2432_ops", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/qualcomm/emac/emac-sgmii.c", i32 276, i32 25}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 4207506}
!50 = !{i64 2156623530}
!51 = !{i64 2156623998}
!52 = !{i64 4207088}
!53 = !{i64 2156634231}
!54 = !{i64 2156634625}
!55 = !{i64 2156635309}
!56 = !{i64 2156635895}
!57 = !{i64 2156632036}
!58 = !{i64 2156632494}
!59 = !{i64 2156633383}
!60 = !{i64 2156633726}
!61 = !{i64 2156624857}
!62 = !{i64 2156626795}
!63 = !{i64 2156627285}
!64 = !{i64 2156630604}
!65 = !{i64 2156631101}
!66 = !{i64 2148329876}
!67 = !{i64 2148245185, i64 2148245217, i64 2148245246, i64 2148245280, i64 2148245311, i64 2148245334}
!68 = !{i64 2148330105}
