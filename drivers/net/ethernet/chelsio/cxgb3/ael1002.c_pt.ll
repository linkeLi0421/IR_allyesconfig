; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb3/ael1002.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb3/ael1002.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cphy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.reg_val = type { i16, i16, i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cphy = type { i8, i16, i32, ptr, ptr, i32, ptr, %struct.mdio_if_info, [1628 x i16] }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.mdio_ops = type { ptr, ptr, i32 }
%struct.adapter = type { %struct.t3cdev, %struct.list_head, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.adapter_params, i32, [3 x i32], i32, [9 x %struct.anon.120], [40 x i8], %struct.sge, %struct.mc7, %struct.mc7, %struct.mc7, %struct.mc5, [2 x ptr], i32, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, ptr, %struct.mutex, %struct.spinlock, %struct.spinlock, ptr, [56 x i8] }
%struct.t3cdev = type { [16 x i8], i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.adapter_params = type { %struct.sge_params, %struct.mc5_params, %struct.tp_params, %struct.vpd_params, %struct.pci_params, ptr, [16 x i16], [32 x i16], [32 x i16], i32, i32, i32, i32, i32, i32 }
%struct.sge_params = type { i32, [8 x %struct.qset_params] }
%struct.qset_params = type { i32, i32, i32, i32, i32, [3 x i32], i32, i32 }
%struct.mc5_params = type { i32, i32, i32, i32 }
%struct.tp_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vpd_params = type { i32, i32, i32, i32, i32, [17 x i8], [6 x i8], [2 x i8], [2 x i16] }
%struct.pci_params = type { i32, i16, i8, i8 }
%struct.anon.120 = type { i16, [22 x i8] }
%struct.sge = type { [8 x %struct.sge_qset], %struct.spinlock, [84 x i8] }
%struct.sge_qset = type { ptr, %struct.napi_struct, %struct.sge_rspq, [2 x %struct.sge_fl], [3 x %struct.sge_txq], i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.timer_list, [5 x i32], [40 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.sge_rspq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.sk_buff_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.40, i32, %struct.spinlock }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, %struct.fl_pg_chunk, i32, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.fl_pg_chunk = type { ptr, ptr, i32, ptr, i32 }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.spinlock, i32, i32, %struct.sk_buff_head, %struct.work_struct, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mc7 = type { ptr, i32, i32, i32, ptr, %struct.mc7_stats }
%struct.mc7_stats = type { i32, i32, i32, i32 }
%struct.mc5 = type { ptr, i32, i8, i8, i8, %struct.mc5_stats }
%struct.mc5_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.119, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.119 = type { ptr }

@ael1002_ops = internal constant { %struct.cphy_ops, [44 x i8] } { %struct.cphy_ops { ptr @ael1002_reset, ptr @ael1002_intr_noop, ptr @ael1002_intr_noop, ptr @ael1002_intr_noop, ptr @ael1002_intr_noop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @get_link_status_r, ptr @ael1002_power_down, i32 26 }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"10GBASE-R\00", [22 x i8] zeroinitializer }, align 32
@ael1006_ops = internal constant { %struct.cphy_ops, [44 x i8] } { %struct.cphy_ops { ptr @ael1006_reset, ptr @t3_phy_lasi_intr_enable, ptr @t3_phy_lasi_intr_disable, ptr @t3_phy_lasi_intr_clear, ptr @t3_phy_lasi_intr_handler, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @get_link_status_r, ptr @ael1002_power_down, i32 26 }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"10GBASE-SR\00", [21 x i8] zeroinitializer }, align 32
@ael2005_ops = internal constant { %struct.cphy_ops, [44 x i8] } { %struct.cphy_ops { ptr @ael2005_reset, ptr @ael2005_intr_enable, ptr @ael2005_intr_disable, ptr @ael2005_intr_clear, ptr @ael2005_intr_handler, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @get_link_status_r, ptr @ael1002_power_down, i32 26 }, [44 x i8] zeroinitializer }, align 32
@ael2020_ops = internal constant { %struct.cphy_ops, [44 x i8] } { %struct.cphy_ops { ptr @ael2020_reset, ptr @ael2020_intr_enable, ptr @ael2020_intr_disable, ptr @ael2020_intr_clear, ptr @ael2020_intr_handler, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @get_link_status_r, ptr @ael1002_power_down, i32 26 }, [44 x i8] zeroinitializer }, align 32
@ael2020_reset_regs = internal constant { [6 x %struct.reg_val], [48 x i8] } { [6 x %struct.reg_val] [%struct.reg_val { i16 1, i16 -16381, i16 -1, i16 12545 }, %struct.reg_val { i16 1, i16 -12992, i16 -1, i16 1 }, %struct.reg_val { i16 1, i16 -254, i16 -1, i16 35 }, %struct.reg_val { i16 1, i16 -253, i16 -1, i16 0 }, %struct.reg_val { i16 1, i16 -252, i16 -1, i16 0 }, %struct.reg_val zeroinitializer], [48 x i8] zeroinitializer }, align 32
@qt2045_ops = internal constant { %struct.cphy_ops, [44 x i8] } { %struct.cphy_ops { ptr @ael1006_reset, ptr @t3_phy_lasi_intr_enable, ptr @t3_phy_lasi_intr_disable, ptr @t3_phy_lasi_intr_clear, ptr @t3_phy_lasi_intr_handler, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @get_link_status_x, ptr @ael1002_power_down, i32 26 }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"10GBASE-CX4\00", [20 x i8] zeroinitializer }, align 32
@xaui_direct_ops = internal constant { %struct.cphy_ops, [44 x i8] } { %struct.cphy_ops { ptr @xaui_direct_reset, ptr @ael1002_intr_noop, ptr @ael1002_intr_noop, ptr @ael1002_intr_noop, ptr @ael1002_intr_noop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xaui_direct_get_link_status, ptr @xaui_direct_power_down, i32 0 }, [44 x i8] zeroinitializer }, align 32
@ael2005_reset.regs0 = internal constant { [8 x %struct.reg_val], [32 x i8] } { [8 x %struct.reg_val] [%struct.reg_val { i16 1, i16 -16383, i16 0, i16 32 }, %struct.reg_val { i16 1, i16 -16361, i16 0, i16 32 }, %struct.reg_val { i16 1, i16 -16365, i16 -1, i16 -3263 }, %struct.reg_val { i16 1, i16 -15856, i16 -1, i16 -32768 }, %struct.reg_val { i16 1, i16 -15856, i16 -1, i16 -32512 }, %struct.reg_val { i16 1, i16 -15856, i16 -1, i16 -32768 }, %struct.reg_val { i16 1, i16 -15856, i16 -1, i16 0 }, %struct.reg_val zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ael2005_reset.regs1 = internal constant { [3 x %struct.reg_val], [40 x i8] } { [3 x %struct.reg_val] [%struct.reg_val { i16 1, i16 -13824, i16 -1, i16 128 }, %struct.reg_val { i16 1, i16 -13806, i16 -1, i16 0 }, %struct.reg_val zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ael_i2c_rd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 137, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"PHY %u i2c read of dev.addr %#x.%#x timed out\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ael_i2c_rd\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/chelsio/cxgb3/ael1002.c\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ael_i2c_rd._entry_ptr = internal global ptr @ael_i2c_rd._entry, section ".printk_index", align 4
@ael2005_setup_twinax_edc.preemphasis = internal constant { [3 x %struct.reg_val], [40 x i8] } { [3 x %struct.reg_val] [%struct.reg_val { i16 1, i16 -16364, i16 -1, i16 -490 }, %struct.reg_val { i16 1, i16 -16363, i16 -1, i16 -24576 }, %struct.reg_val zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ael2005_setup_sr_edc.regs = internal constant { [4 x %struct.reg_val], [32 x i8] } { [4 x %struct.reg_val] [%struct.reg_val { i16 1, i16 -16381, i16 -1, i16 385 }, %struct.reg_val { i16 1, i16 -16368, i16 -1, i16 17546 }, %struct.reg_val { i16 1, i16 -16310, i16 -1, i16 20992 }, %struct.reg_val zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ael2020_setup_twinax_edc.uCclock40MHz = internal constant { [3 x %struct.reg_val], [40 x i8] } { [3 x %struct.reg_val] [%struct.reg_val { i16 1, i16 -216, i16 -1, i16 16385 }, %struct.reg_val { i16 1, i16 -214, i16 -1, i16 2 }, %struct.reg_val zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ael2020_setup_twinax_edc.uCactivate = internal constant { [3 x %struct.reg_val], [40 x i8] } { [3 x %struct.reg_val] [%struct.reg_val { i16 1, i16 -12160, i16 -1, i16 256 }, %struct.reg_val { i16 1, i16 -12142, i16 -1, i16 0 }, %struct.reg_val zeroinitializer], [40 x i8] zeroinitializer }, align 32
@ael2020_setup_sr_edc.regs = internal constant { [5 x %struct.reg_val], [56 x i8] } { [5 x %struct.reg_val] [%struct.reg_val { i16 1, i16 -13311, i16 -1, i16 18570 }, %struct.reg_val { i16 1, i16 -13541, i16 -1, i16 512 }, %struct.reg_val { i16 1, i16 -13540, i16 -1, i16 240 }, %struct.reg_val { i16 1, i16 -13306, i16 -1, i16 224 }, %struct.reg_val zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ael2020_intr_enable.regs = internal constant { [4 x %struct.reg_val], [32 x i8] } { [4 x %struct.reg_val] [%struct.reg_val { i16 1, i16 -16110, i16 -1, i16 4 }, %struct.reg_val { i16 1, i16 -16120, i16 -1, i16 2048 }, %struct.reg_val { i16 1, i16 -16120, i16 -1, i16 32 }, %struct.reg_val zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ael2020_intr_disable.regs = internal constant { [3 x %struct.reg_val], [40 x i8] } { [3 x %struct.reg_val] [%struct.reg_val { i16 1, i16 -16120, i16 -1, i16 2816 }, %struct.reg_val { i16 1, i16 -16120, i16 -1, i16 16 }, %struct.reg_val zeroinitializer], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 5]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 32, i64 64]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 5]
@___asan_gen_.10 = private unnamed_addr constant [12 x i8] c"ael1002_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 201, i32 30 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 217, i32 6 }
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"ael1006_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 227, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 243, i32 6 }
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"ael2005_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 498, i32 30 }
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"ael2020_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 804, i32 30 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"ael2020_reset_regs\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 704, i32 29 }
@___asan_gen_.31 = private unnamed_addr constant [11 x i8] c"qt2045_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 854, i32 30 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 872, i32 5 }
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"xaui_direct_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 919, i32 30 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"regs0\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 396, i32 30 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"regs1\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 406, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 136, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [12 x i8] c"preemphasis\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 331, i32 30 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 295, i32 30 }
@___asan_gen_.70 = private unnamed_addr constant [13 x i8] c"uCclock40MHz\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 554, i32 30 }
@___asan_gen_.73 = private unnamed_addr constant [11 x i8] c"uCactivate\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 567, i32 30 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 525, i32 30 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 627, i32 30 }
@___asan_gen_.82 = private unnamed_addr constant [5 x i8] c"regs\00", align 1
@___asan_gen_.83 = private constant [48 x i8] c"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 667, i32 30 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @ael_i2c_rd._entry, ptr @ael_i2c_rd._entry_ptr, ptr @ael1002_ops, ptr @.str, ptr @ael1006_ops, ptr @.str.1, ptr @ael2005_ops, ptr @ael2020_ops, ptr @ael2020_reset_regs, ptr @qt2045_ops, ptr @.str.2, ptr @xaui_direct_ops, ptr @ael2005_reset.regs0, ptr @ael2005_reset.regs1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ael2005_setup_twinax_edc.preemphasis, ptr @ael2005_setup_sr_edc.regs, ptr @ael2020_setup_twinax_edc.uCclock40MHz, ptr @ael2020_setup_twinax_edc.uCactivate, ptr @ael2020_setup_sr_edc.regs, ptr @ael2020_intr_enable.regs, ptr @ael2020_intr_disable.regs], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ael1002_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ael1006_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ael2005_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ael2020_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ael2020_reset_regs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qt2045_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xaui_direct_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ael2005_reset.regs0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ael2005_reset.regs1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ael_i2c_rd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ael2005_setup_twinax_edc.preemphasis to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ael2005_setup_sr_edc.regs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ael2020_setup_twinax_edc.uCclock40MHz to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ael2020_setup_twinax_edc.uCactivate to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ael2020_setup_sr_edc.regs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ael2020_intr_enable.regs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ael2020_intr_disable.regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_ael1002_phy_prep(ptr nocapture noundef %phy, ptr noundef %adapter, i32 noundef %phy_addr, ptr noundef readonly %mdio_ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %caps1.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 2
  %0 = ptrtoint ptr %caps1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5376, ptr %caps1.i, align 4
  %adapter2.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 3
  %1 = ptrtoint ptr %adapter2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %adapter, ptr %adapter2.i, align 4
  %desc3.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 4
  %2 = ptrtoint ptr %desc3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str, ptr %desc3.i, align 4
  %ops.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 6
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ael1002_ops, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %mdio_ops, null
  br i1 %tobool.not.i, label %entry.cphy_init.exit_crit_edge, label %if.then.i

entry.cphy_init.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cphy_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %phy_addr, ptr %mdio.i, align 4
  %mmds5.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %mmds5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 26, ptr %mmds5.i, align 4
  %mode_support.i = getelementptr inbounds %struct.mdio_ops, ptr %mdio_ops, i32 0, i32 2
  %6 = ptrtoint ptr %mode_support.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode_support.i, align 4
  %mode_support7.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %mode_support7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mode_support7.i, align 4
  %9 = ptrtoint ptr %mdio_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdio_ops, align 4
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %11 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %mdio_read.i, align 4
  %write.i = getelementptr inbounds %struct.mdio_ops, ptr %mdio_ops, i32 0, i32 1
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %14 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %mdio_write.i, align 4
  br label %cphy_init.exit

cphy_init.exit:                                   ; preds = %if.then.i, %entry.cphy_init.exit_crit_edge
  %mdio.i2 = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %15 = ptrtoint ptr %mdio.i2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mdio.i2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp eq i32 %16, 0
  %cond.i = select i1 %cmp.i, i32 128, i32 4
  tail call void @msleep(i32 noundef 100) #6
  %17 = ptrtoint ptr %adapter2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter2.i, align 4
  tail call void @t3_set_reg_field(ptr noundef %18, i32 noundef 208, i32 noundef 0, i32 noundef %cond.i) #6
  tail call void @msleep(i32 noundef 30) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_ael1006_phy_prep(ptr nocapture noundef %phy, ptr noundef %adapter, i32 noundef %phy_addr, ptr noundef readonly %mdio_ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %caps1.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 2
  %0 = ptrtoint ptr %caps1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5376, ptr %caps1.i, align 4
  %adapter2.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 3
  %1 = ptrtoint ptr %adapter2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %adapter, ptr %adapter2.i, align 4
  %desc3.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 4
  %2 = ptrtoint ptr %desc3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.1, ptr %desc3.i, align 4
  %ops.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 6
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ael1006_ops, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %mdio_ops, null
  br i1 %tobool.not.i, label %entry.cphy_init.exit_crit_edge, label %if.then.i

entry.cphy_init.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cphy_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %phy_addr, ptr %mdio.i, align 4
  %mmds5.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %mmds5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 26, ptr %mmds5.i, align 4
  %mode_support.i = getelementptr inbounds %struct.mdio_ops, ptr %mdio_ops, i32 0, i32 2
  %6 = ptrtoint ptr %mode_support.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode_support.i, align 4
  %mode_support7.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %mode_support7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mode_support7.i, align 4
  %9 = ptrtoint ptr %mdio_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdio_ops, align 4
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %11 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %mdio_read.i, align 4
  %write.i = getelementptr inbounds %struct.mdio_ops, ptr %mdio_ops, i32 0, i32 1
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %14 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %mdio_write.i, align 4
  br label %cphy_init.exit

cphy_init.exit:                                   ; preds = %if.then.i, %entry.cphy_init.exit_crit_edge
  %mdio.i2 = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %15 = ptrtoint ptr %mdio.i2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mdio.i2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp eq i32 %16, 0
  %cond.i = select i1 %cmp.i, i32 128, i32 4
  tail call void @msleep(i32 noundef 100) #6
  %17 = ptrtoint ptr %adapter2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter2.i, align 4
  tail call void @t3_set_reg_field(ptr noundef %18, i32 noundef 208, i32 noundef 0, i32 noundef %cond.i) #6
  tail call void @msleep(i32 noundef 30) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_ael2005_phy_prep(ptr noundef %phy, ptr noundef %adapter, i32 noundef %phy_addr, ptr noundef readonly %mdio_ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %caps1.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 2
  %0 = ptrtoint ptr %caps1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16782592, ptr %caps1.i, align 4
  %adapter2.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 3
  %1 = ptrtoint ptr %adapter2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %adapter, ptr %adapter2.i, align 4
  %desc3.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 4
  %2 = ptrtoint ptr %desc3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str, ptr %desc3.i, align 4
  %ops.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 6
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ael2005_ops, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %mdio_ops, null
  br i1 %tobool.not.i, label %entry.cphy_init.exit_crit_edge, label %if.then.i

entry.cphy_init.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cphy_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %phy_addr, ptr %mdio.i, align 4
  %mmds5.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %mmds5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 26, ptr %mmds5.i, align 4
  %mode_support.i = getelementptr inbounds %struct.mdio_ops, ptr %mdio_ops, i32 0, i32 2
  %6 = ptrtoint ptr %mode_support.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode_support.i, align 4
  %mode_support7.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %mode_support7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mode_support7.i, align 4
  %9 = ptrtoint ptr %mdio_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdio_ops, align 4
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %11 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %mdio_read.i, align 4
  %write.i = getelementptr inbounds %struct.mdio_ops, ptr %mdio_ops, i32 0, i32 1
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %14 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %mdio_write.i, align 4
  br label %cphy_init.exit

cphy_init.exit:                                   ; preds = %if.then.i, %entry.cphy_init.exit_crit_edge
  tail call void @msleep(i32 noundef 125) #6
  %call = tail call i32 @t3_mdio_change_bits(ptr noundef %phy, i32 noundef 1, i32 noundef 49175, i32 noundef 0, i32 noundef 32) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_mdio_change_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_ael2020_phy_prep(ptr noundef %phy, ptr noundef %adapter, i32 noundef %phy_addr, ptr noundef readonly %mdio_ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %caps1.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 2
  %0 = ptrtoint ptr %caps1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16782592, ptr %caps1.i, align 4
  %adapter2.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 3
  %1 = ptrtoint ptr %adapter2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %adapter, ptr %adapter2.i, align 4
  %desc3.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 4
  %2 = ptrtoint ptr %desc3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str, ptr %desc3.i, align 4
  %ops.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 6
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ael2020_ops, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %mdio_ops, null
  br i1 %tobool.not.i, label %entry.cphy_init.exit_crit_edge, label %if.then.i

entry.cphy_init.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cphy_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %phy_addr, ptr %mdio.i, align 4
  %mmds5.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %mmds5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 26, ptr %mmds5.i, align 4
  %mode_support.i = getelementptr inbounds %struct.mdio_ops, ptr %mdio_ops, i32 0, i32 2
  %6 = ptrtoint ptr %mode_support.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode_support.i, align 4
  %mode_support7.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %mode_support7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mode_support7.i, align 4
  %9 = ptrtoint ptr %mdio_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdio_ops, align 4
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %11 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %mdio_read.i, align 4
  %write.i = getelementptr inbounds %struct.mdio_ops, ptr %mdio_ops, i32 0, i32 1
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %14 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %mdio_write.i, align 4
  br label %cphy_init.exit

cphy_init.exit:                                   ; preds = %if.then.i, %entry.cphy_init.exit_crit_edge
  tail call void @msleep(i32 noundef 125) #6
  %mdio.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_write.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %dev.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %15 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdio_write.i.i, align 4
  %17 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i, align 4
  %19 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mdio.i.i, align 4
  %call.i.i = tail call i32 %16(ptr noundef %18, i32 noundef %20, i32 noundef 1, i16 noundef zeroext -16381, i16 noundef zeroext 12545) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.then.i2.1, label %cphy_init.exit.set_phy_regs.exit_crit_edge

cphy_init.exit.set_phy_regs.exit_crit_edge:       ; preds = %cphy_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_phy_regs.exit

if.then.i2.1:                                     ; preds = %cphy_init.exit
  %21 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdio_write.i.i, align 4
  %23 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i, align 4
  %25 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mdio.i.i, align 4
  %call.i.i.1 = tail call i32 %22(ptr noundef %24, i32 noundef %26, i32 noundef 1, i16 noundef zeroext -12992, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool1.not.i.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool1.not.i.1, label %if.then.i2.2, label %if.then.i2.1.set_phy_regs.exit_crit_edge

if.then.i2.1.set_phy_regs.exit_crit_edge:         ; preds = %if.then.i2.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_phy_regs.exit

if.then.i2.2:                                     ; preds = %if.then.i2.1
  %27 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mdio_write.i.i, align 4
  %29 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i, align 4
  %31 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mdio.i.i, align 4
  %call.i.i.2 = tail call i32 %28(ptr noundef %30, i32 noundef %32, i32 noundef 1, i16 noundef zeroext -254, i16 noundef zeroext 35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %tobool1.not.i.2 = icmp eq i32 %call.i.i.2, 0
  br i1 %tobool1.not.i.2, label %if.then.i2.3, label %if.then.i2.2.set_phy_regs.exit_crit_edge

if.then.i2.2.set_phy_regs.exit_crit_edge:         ; preds = %if.then.i2.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_phy_regs.exit

if.then.i2.3:                                     ; preds = %if.then.i2.2
  %33 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mdio_write.i.i, align 4
  %35 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i.i, align 4
  %37 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mdio.i.i, align 4
  %call.i.i.3 = tail call i32 %34(ptr noundef %36, i32 noundef %38, i32 noundef 1, i16 noundef zeroext -253, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3)
  %tobool1.not.i.3 = icmp eq i32 %call.i.i.3, 0
  br i1 %tobool1.not.i.3, label %if.then.i2.4, label %if.then.i2.3.set_phy_regs.exit_crit_edge

if.then.i2.3.set_phy_regs.exit_crit_edge:         ; preds = %if.then.i2.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_phy_regs.exit

if.then.i2.4:                                     ; preds = %if.then.i2.3
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mdio_write.i.i, align 4
  %41 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i.i, align 4
  %43 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mdio.i.i, align 4
  %call.i.i.4 = tail call i32 %40(ptr noundef %42, i32 noundef %44, i32 noundef 1, i16 noundef zeroext -252, i16 noundef zeroext 0) #6
  br label %set_phy_regs.exit

set_phy_regs.exit:                                ; preds = %if.then.i2.4, %if.then.i2.3.set_phy_regs.exit_crit_edge, %if.then.i2.2.set_phy_regs.exit_crit_edge, %if.then.i2.1.set_phy_regs.exit_crit_edge, %cphy_init.exit.set_phy_regs.exit_crit_edge
  %err.1.i.lcssa = phi i32 [ %call.i.i, %cphy_init.exit.set_phy_regs.exit_crit_edge ], [ %call.i.i.1, %if.then.i2.1.set_phy_regs.exit_crit_edge ], [ %call.i.i.2, %if.then.i2.2.set_phy_regs.exit_crit_edge ], [ %call.i.i.3, %if.then.i2.3.set_phy_regs.exit_crit_edge ], [ %call.i.i.4, %if.then.i2.4 ]
  ret i32 %err.1.i.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_phy_regs(ptr noundef %phy, ptr nocapture noundef readonly %rv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rv to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rv, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not29.not = icmp eq i16 %1, 0
  br i1 %tobool.not29.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv32.in = phi i16 [ %1, %for.body.lr.ph ], [ %19, %for.inc.for.body_crit_edge ]
  %rv.addr.030 = phi ptr [ %rv, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %conv32 = zext i16 %conv32.in to i32
  %clear_bits = getelementptr inbounds %struct.reg_val, ptr %rv.addr.030, i32 0, i32 2
  %2 = ptrtoint ptr %clear_bits to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %clear_bits, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp = icmp eq i16 %3, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %reg_addr = getelementptr inbounds %struct.reg_val, ptr %rv.addr.030, i32 0, i32 1
  %4 = ptrtoint ptr %reg_addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %reg_addr, align 2
  %set_bits = getelementptr inbounds %struct.reg_val, ptr %rv.addr.030, i32 0, i32 3
  %6 = ptrtoint ptr %set_bits to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %set_bits, align 2
  %8 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdio_write.i, align 4
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %9(ptr noundef %11, i32 noundef %13, i32 noundef %conv32, i16 noundef zeroext %5, i16 noundef zeroext %7) #6
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv2 = zext i16 %3 to i32
  %reg_addr10 = getelementptr inbounds %struct.reg_val, ptr %rv.addr.030, i32 0, i32 1
  %14 = ptrtoint ptr %reg_addr10 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %reg_addr10, align 2
  %conv11 = zext i16 %15 to i32
  %set_bits14 = getelementptr inbounds %struct.reg_val, ptr %rv.addr.030, i32 0, i32 3
  %16 = ptrtoint ptr %set_bits14 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %set_bits14, align 2
  %conv15 = zext i16 %17 to i32
  %call16 = tail call i32 @t3_mdio_change_bits(ptr noundef %phy, i32 noundef %conv32, i32 noundef %conv11, i32 noundef %conv2, i32 noundef %conv15) #6
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %err.1 = phi i32 [ %call.i, %if.then ], [ %call16, %if.else ]
  %incdec.ptr = getelementptr %struct.reg_val, ptr %rv.addr.030, i32 1
  %18 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %incdec.ptr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not = icmp ne i16 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool1.not = icmp eq i32 %err.1, 0
  %or.cond = select i1 %tobool.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %err.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %err.1, %for.inc.for.end_crit_edge ]
  ret i32 %err.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_qt2045_phy_prep(ptr nocapture noundef %phy, ptr noundef %adapter, i32 noundef %phy_addr, ptr noundef readonly %mdio_ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %caps1.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 2
  %0 = ptrtoint ptr %caps1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4480, ptr %caps1.i, align 4
  %adapter2.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 3
  %1 = ptrtoint ptr %adapter2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %adapter, ptr %adapter2.i, align 4
  %desc3.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 4
  %2 = ptrtoint ptr %desc3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.2, ptr %desc3.i, align 4
  %ops.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 6
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @qt2045_ops, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %mdio_ops, null
  br i1 %tobool.not.i, label %entry.cphy_init.exit_crit_edge, label %if.then.i

entry.cphy_init.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cphy_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %phy_addr, ptr %mdio.i, align 4
  %mmds5.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %mmds5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 26, ptr %mmds5.i, align 4
  %mode_support.i = getelementptr inbounds %struct.mdio_ops, ptr %mdio_ops, i32 0, i32 2
  %6 = ptrtoint ptr %mode_support.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode_support.i, align 4
  %mode_support7.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %mode_support7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mode_support7.i, align 4
  %9 = ptrtoint ptr %mdio_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdio_ops, align 4
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %11 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %mdio_read.i, align 4
  %write.i = getelementptr inbounds %struct.mdio_ops, ptr %mdio_ops, i32 0, i32 1
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %14 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %mdio_write.i, align 4
  br label %cphy_init.exit

cphy_init.exit:                                   ; preds = %if.then.i, %entry.cphy_init.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy_addr)
  %tobool.not = icmp eq i32 %phy_addr, 0
  br i1 %tobool.not, label %land.lhs.true, label %cphy_init.exit.if.end_crit_edge

cphy_init.exit.if.end_crit_edge:                  ; preds = %cphy_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %cphy_init.exit
  %mdio.i6 = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_read.i7 = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %15 = ptrtoint ptr %mdio_read.i7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdio_read.i7, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %mdio.i6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mdio.i6, align 4
  %call.i = tail call i32 %16(ptr noundef %18, i32 noundef %20, i32 noundef 1, i16 noundef zeroext 1) #6
  %21 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool1.not = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %21)
  %cmp = icmp eq i32 %21, 65535
  %or.cond = select i1 %tobool1.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %mdio.i6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %mdio.i6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %cphy_init.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @t3_xaui_direct_phy_prep(ptr nocapture noundef writeonly %phy, ptr noundef %adapter, i32 noundef %phy_addr, ptr noundef readonly %mdio_ops) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %caps1.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 2
  %0 = ptrtoint ptr %caps1.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4480, ptr %caps1.i, align 4
  %adapter2.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 3
  %1 = ptrtoint ptr %adapter2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %adapter, ptr %adapter2.i, align 4
  %desc3.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 4
  %2 = ptrtoint ptr %desc3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.2, ptr %desc3.i, align 4
  %ops.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 6
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @xaui_direct_ops, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %mdio_ops, null
  br i1 %tobool.not.i, label %entry.cphy_init.exit_crit_edge, label %if.then.i

entry.cphy_init.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cphy_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %phy_addr, ptr %mdio.i, align 4
  %mmds5.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %mmds5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %mmds5.i, align 4
  %mode_support.i = getelementptr inbounds %struct.mdio_ops, ptr %mdio_ops, i32 0, i32 2
  %6 = ptrtoint ptr %mode_support.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode_support.i, align 4
  %mode_support7.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %mode_support7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %mode_support7.i, align 4
  %9 = ptrtoint ptr %mdio_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdio_ops, align 4
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %11 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %mdio_read.i, align 4
  %write.i = getelementptr inbounds %struct.mdio_ops, ptr %mdio_ops, i32 0, i32 1
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %14 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %mdio_write.i, align 4
  br label %cphy_init.exit

cphy_init.exit:                                   ; preds = %if.then.i, %entry.cphy_init.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ael1002_reset(ptr noundef %phy, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_write.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %4 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i.i, align 4
  %call.i.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext 9, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %ael1002_power_down.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ael1002_power_down.exit:                          ; preds = %entry
  %6 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mdio.i.i, align 4
  %call5.i = tail call i32 @mdio_set_flag(ptr noundef %mdio.i.i, i32 noundef %7, i32 noundef 1, i16 noundef zeroext 0, i32 noundef 2048, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %ael1002_power_down.exit.cleanup_crit_edge

ael1002_power_down.exit.cleanup_crit_edge:        ; preds = %ael1002_power_down.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %ael1002_power_down.exit
  %8 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdio_write.i.i, align 4
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 4
  %12 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mdio.i.i, align 4
  %call.i = tail call i32 %9(ptr noundef %11, i32 noundef %13, i32 noundef 1, i16 noundef zeroext -16382, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdio_write.i.i, align 4
  %16 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i, align 4
  %18 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mdio.i.i, align 4
  %call.i23 = tail call i32 %15(ptr noundef %17, i32 noundef %19, i32 noundef 1, i16 noundef zeroext -16367, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool5.not = icmp eq i32 %call.i23, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %20 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdio_write.i.i, align 4
  %22 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i, align 4
  %24 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mdio.i.i, align 4
  %call.i27 = tail call i32 %21(ptr noundef %23, i32 noundef %25, i32 noundef 1, i16 noundef zeroext -16366, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool8.not = icmp eq i32 %call.i27, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %26 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdio_write.i.i, align 4
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  %30 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mdio.i.i, align 4
  %call.i31 = tail call i32 %27(ptr noundef %29, i32 noundef %31, i32 noundef 1, i16 noundef zeroext -16363, i16 noundef zeroext 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool11.not = icmp eq i32 %call.i31, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 @t3_mdio_change_bits(ptr noundef %phy, i32 noundef 1, i32 noundef 49175, i32 noundef 0, i32 noundef 32) #6
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false12, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %ael1002_power_down.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5.i, %ael1002_power_down.exit.cleanup_crit_edge ], [ %call.i, %lor.lhs.false.cleanup_crit_edge ], [ %call.i23, %lor.lhs.false3.cleanup_crit_edge ], [ %call.i27, %lor.lhs.false6.cleanup_crit_edge ], [ %call.i31, %lor.lhs.false9.cleanup_crit_edge ], [ %call13, %lor.lhs.false12 ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ael1002_intr_noop(ptr nocapture noundef readnone %phy) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_link_status_r(ptr nocapture noundef readonly %phy, ptr noundef writeonly %link_ok, ptr noundef writeonly %speed, ptr noundef writeonly %duplex, ptr nocapture noundef readnone %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %link_ok, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then:                                          ; preds = %entry
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext 10) #6
  %6 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 -1) #6
  %7 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool1.not = icmp sgt i32 %call.i, -1
  br i1 %tobool1.not, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %if.then
  %8 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdio_read.i, align 4
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mdio.i, align 4
  %call.i34 = tail call i32 %9(ptr noundef %11, i32 noundef %13, i32 noundef 3, i16 noundef zeroext 32) #6
  %14 = tail call i32 @llvm.smax.i32(i32 %call.i34, i32 -1) #6
  %15 = tail call i32 @llvm.smin.i32(i32 %call.i34, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i34)
  %tobool4.not = icmp sgt i32 %call.i34, -1
  br i1 %tobool4.not, label %if.end7, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end7:                                          ; preds = %if.end
  %16 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdio_read.i, align 4
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %20 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mdio.i, align 4
  %call.i38 = tail call i32 %17(ptr noundef %19, i32 noundef %21, i32 noundef 4, i16 noundef zeroext 24) #6
  %22 = tail call i32 @llvm.smin.i32(i32 %call.i38, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i38)
  %tobool8.not = icmp sgt i32 %call.i38, -1
  br i1 %tobool8.not, label %cleanup.thread, label %if.end7.return_crit_edge

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

cleanup.thread:                                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i32 %call.i38, 12
  %and = and i32 %6, 1
  %and11 = and i32 %and, %14
  %and12 = and i32 %and11, %shr
  %23 = ptrtoint ptr %link_ok to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and12, ptr %link_ok, align 4
  br label %if.end16

if.end16:                                         ; preds = %cleanup.thread, %entry.if.end16_crit_edge
  %tobool17.not = icmp eq ptr %speed, null
  br i1 %tobool17.not, label %if.end16.if.end19_crit_edge, label %if.then18

if.end16.if.end19_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 10000, ptr %speed, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end16.if.end19_crit_edge
  %tobool20.not = icmp eq ptr %duplex, null
  br i1 %tobool20.not, label %if.end19.return_crit_edge, label %if.then21

if.end19.return_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %duplex, align 4
  br label %return

return:                                           ; preds = %if.then21, %if.end19.return_crit_edge, %if.end7.return_crit_edge, %if.end.return_crit_edge, %if.then.return_crit_edge
  %retval.1 = phi i32 [ 0, %if.then21 ], [ 0, %if.end19.return_crit_edge ], [ %22, %if.end7.return_crit_edge ], [ %15, %if.end.return_crit_edge ], [ %7, %if.then.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ael1002_power_down(ptr noundef %phy, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool = icmp ne i32 %enable, 0
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %conv3.i = zext i1 %tobool to i16
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext 9, i16 noundef zeroext %conv3.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mdio.i, align 4
  %call5 = tail call i32 @mdio_set_flag(ptr noundef %mdio.i, i32 noundef %7, i32 noundef 1, i16 noundef zeroext 0, i32 noundef 2048, i1 noundef zeroext %tobool) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call.i, %entry.if.end_crit_edge ], [ %call5, %if.then ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_set_flag(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_set_reg_field(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ael1006_reset(ptr noundef %phy, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @t3_phy_reset(ptr noundef %phy, i32 noundef 1, i32 noundef %wait) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_phy_lasi_intr_enable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_phy_lasi_intr_disable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_phy_lasi_intr_clear(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_phy_lasi_intr_handler(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_phy_reset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ael2005_reset(ptr noundef %phy, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -28670) #6
  %6 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 -1) #6
  %7 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @t3_phy_reset(ptr noundef %phy, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @msleep(i32 noundef 125) #6
  %priv = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 1
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %priv, align 2
  %mdio_write.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end4
  %conv32.in.i = phi i16 [ 1, %if.end4 ], [ %26, %for.inc.i.for.body.i_crit_edge ]
  %rv.addr.030.i = phi ptr [ @ael2005_reset.regs0, %if.end4 ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %conv32.i = zext i16 %conv32.in.i to i32
  %clear_bits.i = getelementptr inbounds %struct.reg_val, ptr %rv.addr.030.i, i32 0, i32 2
  %9 = ptrtoint ptr %clear_bits.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %clear_bits.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %10)
  %cmp.i = icmp eq i16 %10, -1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %reg_addr.i = getelementptr inbounds %struct.reg_val, ptr %rv.addr.030.i, i32 0, i32 1
  %11 = ptrtoint ptr %reg_addr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %reg_addr.i, align 2
  %set_bits.i = getelementptr inbounds %struct.reg_val, ptr %rv.addr.030.i, i32 0, i32 3
  %13 = ptrtoint ptr %set_bits.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %set_bits.i, align 2
  %15 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdio_write.i.i, align 4
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mdio.i, align 4
  %call.i.i = tail call i32 %16(ptr noundef %18, i32 noundef %20, i32 noundef %conv32.i, i16 noundef zeroext %12, i16 noundef zeroext %14) #6
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv2.i = zext i16 %10 to i32
  %reg_addr10.i = getelementptr inbounds %struct.reg_val, ptr %rv.addr.030.i, i32 0, i32 1
  %21 = ptrtoint ptr %reg_addr10.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %reg_addr10.i, align 2
  %conv11.i = zext i16 %22 to i32
  %set_bits14.i = getelementptr inbounds %struct.reg_val, ptr %rv.addr.030.i, i32 0, i32 3
  %23 = ptrtoint ptr %set_bits14.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %set_bits14.i, align 2
  %conv15.i = zext i16 %24 to i32
  %call16.i = tail call i32 @t3_mdio_change_bits(ptr noundef %phy, i32 noundef %conv32.i, i32 noundef %conv11.i, i32 noundef %conv2.i, i32 noundef %conv15.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i
  %err.1.i = phi i32 [ %call.i.i, %if.then.i ], [ %call16.i, %if.else.i ]
  %incdec.ptr.i = getelementptr %struct.reg_val, ptr %rv.addr.030.i, i32 1
  %25 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %incdec.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not.i = icmp ne i16 %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool1.not.i = icmp eq i32 %err.1.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool1.not.i, i1 false
  br i1 %or.cond.i, label %for.inc.i.for.body.i_crit_edge, label %set_phy_regs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

set_phy_regs.exit:                                ; preds = %for.inc.i
  br i1 %tobool1.not.i, label %if.end8, label %set_phy_regs.exit.cleanup_crit_edge

set_phy_regs.exit.cleanup_crit_edge:              ; preds = %set_phy_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %set_phy_regs.exit
  tail call void @msleep(i32 noundef 50) #6
  %27 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mdio_read.i, align 4
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  %31 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mdio.i, align 4
  %call.i.i59 = tail call i32 %28(ptr noundef %30, i32 noundef %32, i32 noundef 1, i16 noundef zeroext -15852) #6
  %33 = tail call i32 @llvm.smin.i32(i32 %call.i.i59, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i59)
  %tobool.not.i60 = icmp sgt i32 %call.i.i59, -1
  br i1 %tobool.not.i60, label %if.end.i, label %if.end8.ael2005_get_module_type.exit_crit_edge

if.end8.ael2005_get_module_type.exit_crit_edge:   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %ael2005_get_module_type.exit

if.end.i:                                         ; preds = %if.end8
  %and.i = and i32 %call.i.i59, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i61 = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i61, label %if.end3.i, label %if.end11.thread

if.end11.thread:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %phy to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %phy, align 4
  br label %if.else

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call fastcc i32 @ael2xxx_get_module_type(ptr noundef %phy, i32 noundef 0) #6
  br label %ael2005_get_module_type.exit

ael2005_get_module_type.exit:                     ; preds = %if.end3.i, %if.end8.ael2005_get_module_type.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end3.i ], [ %33, %if.end8.ael2005_get_module_type.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %ael2005_get_module_type.exit.cleanup_crit_edge, label %if.end11

ael2005_get_module_type.exit.cleanup_crit_edge:   ; preds = %ael2005_get_module_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %ael2005_get_module_type.exit
  %conv = trunc i32 %retval.0.i to i8
  %35 = ptrtoint ptr %phy to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv, ptr %phy, align 4
  %36 = and i32 %retval.0.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %switch = icmp eq i32 %36, 4
  br i1 %switch, label %if.then16, label %if.end11.if.else_crit_edge

if.end11.if.else_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call fastcc i32 @ael2005_setup_twinax_edc(ptr noundef %phy, i32 noundef %retval.0.i)
  br label %if.end19

if.else:                                          ; preds = %if.end11.if.else_crit_edge, %if.end11.thread
  %call18 = tail call fastcc i32 @ael2005_setup_sr_edc(ptr noundef %phy)
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then16
  %err.0 = phi i32 [ %call17, %if.then16 ], [ %call18, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool20.not = icmp eq i32 %err.0, 0
  br i1 %tobool20.not, label %if.end22, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  %call23 = tail call fastcc i32 @set_phy_regs(ptr noundef %phy, ptr noundef nonnull @ael2005_reset.regs1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.end26.cleanup_crit_edge, label %if.then28

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = tail call i32 @ael2005_intr_enable(ptr noundef %phy)
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end26.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %ael2005_get_module_type.exit.cleanup_crit_edge, %set_phy_regs.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %err.1.i, %set_phy_regs.exit.cleanup_crit_edge ], [ %retval.0.i, %ael2005_get_module_type.exit.cleanup_crit_edge ], [ %err.0, %if.end19.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ %call29, %if.then28 ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ael2005_intr_enable(ptr noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -15852, i16 noundef zeroext 512) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @t3_phy_lasi_intr_enable(ptr noundef %phy) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call1, %cond.false ], [ %call.i, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ael2005_intr_disable(ptr noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -15852, i16 noundef zeroext 256) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @t3_phy_lasi_intr_disable(ptr noundef %phy) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call1, %cond.false ], [ %call.i, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ael2005_intr_clear(ptr noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -15852, i16 noundef zeroext 3328) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @t3_phy_lasi_intr_clear(ptr noundef %phy) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call1, %cond.false ], [ %call.i, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ael2005_intr_handler(ptr noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -15851) #6
  %6 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end30_crit_edge, label %if.then2

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then2:                                         ; preds = %if.end
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %7 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdio_write.i, align 4
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mdio.i, align 4
  %call.i70 = tail call i32 %8(ptr noundef %10, i32 noundef %12, i32 noundef 1, i16 noundef zeroext -15852, i16 noundef zeroext 3328) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool4.not = icmp eq i32 %call.i70, 0
  br i1 %tobool4.not, label %if.end6, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  %13 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdio_read.i, align 4
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %17 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mdio.i, align 4
  %call.i.i = tail call i32 %14(ptr noundef %16, i32 noundef %18, i32 noundef 1, i16 noundef zeroext -15852) #6
  %19 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.ael2005_get_module_type.exit_crit_edge

if.end6.ael2005_get_module_type.exit_crit_edge:   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %ael2005_get_module_type.exit

if.end.i:                                         ; preds = %if.end6
  %and.i = and i32 %call.i.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end9.thread

if.end9.thread:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %phy to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %phy, align 4
  br label %if.then12

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call fastcc i32 @ael2xxx_get_module_type(ptr noundef %phy, i32 noundef 300) #6
  br label %ael2005_get_module_type.exit

ael2005_get_module_type.exit:                     ; preds = %if.end3.i, %if.end6.ael2005_get_module_type.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end3.i ], [ %19, %if.end6.ael2005_get_module_type.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %ael2005_get_module_type.exit.cleanup_crit_edge, label %if.end9

ael2005_get_module_type.exit.cleanup_crit_edge:   ; preds = %ael2005_get_module_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %ael2005_get_module_type.exit
  %conv = trunc i32 %retval.0.i to i8
  %21 = ptrtoint ptr %phy to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %phy, align 4
  %22 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i, label %if.else19 [
    i32 0, label %if.end9.if.then12_crit_edge
    i32 4, label %if.end9.if.end21_crit_edge
    i32 5, label %if.end9.if.end21_crit_edge76
  ]

if.end9.if.end21_crit_edge76:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end9.if.then12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.then12:                                        ; preds = %if.end9.if.then12_crit_edge, %if.end9.thread
  %priv = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 1
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %priv, align 2
  %conv13 = sext i16 %24 to i32
  br label %if.end21

if.else19:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then12, %if.end9.if.end21_crit_edge, %if.end9.if.end21_crit_edge76
  %edc_needed.0 = phi i32 [ %conv13, %if.then12 ], [ 1, %if.else19 ], [ 2, %if.end9.if.end21_crit_edge ], [ 2, %if.end9.if.end21_crit_edge76 ]
  %priv22 = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 1
  %25 = ptrtoint ptr %priv22 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %priv22, align 2
  %conv23 = sext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %edc_needed.0, i32 %conv23)
  %cmp24.not = icmp eq i32 %edc_needed.0, %conv23
  br i1 %cmp24.not, label %if.end21.if.end30_crit_edge, label %if.then26

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 @ael2005_reset(ptr noundef %phy, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  %spec.select = select i1 %tobool28.not, i32 4, i32 %call27
  br label %cleanup

if.end30:                                         ; preds = %if.end21.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %cause.0 = phi i32 [ 0, %if.end.if.end30_crit_edge ], [ 4, %if.end21.if.end30_crit_edge ]
  %call31 = tail call i32 @t3_phy_lasi_intr_handler(ptr noundef %phy) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end30.cleanup_crit_edge, label %if.end35

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %call31, %cause.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool36.not = icmp eq i32 %or, 0
  %spec.select67 = select i1 %tobool36.not, i32 1, i32 %or
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end30.cleanup_crit_edge, %if.then26, %ael2005_get_module_type.exit.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then26 ], [ %spec.select67, %if.end35 ], [ %6, %entry.cleanup_crit_edge ], [ %call.i70, %if.then2.cleanup_crit_edge ], [ %retval.0.i, %ael2005_get_module_type.exit.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ael2005_setup_twinax_edc(ptr noundef %phy, i32 noundef %modtype) unnamed_addr #0 align 64 {
for.inc.i:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_write.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %dev.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i.i, align 4
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %4 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i.i, align 4
  %call.i.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -16310, i16 noundef zeroext 23040) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %modtype)
  %cmp = icmp eq i32 %modtype, 5
  br i1 %cmp, label %if.then.i56, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then.i56:                                      ; preds = %land.lhs.true
  %6 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i.i, align 4
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  %10 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdio.i.i, align 4
  %call.i.i55 = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef 1, i16 noundef zeroext -16364, i16 noundef zeroext -490) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i55)
  %tobool1.not.i67 = icmp eq i32 %call.i.i55, 0
  br i1 %tobool1.not.i67, label %if.then.i56.1, label %if.then.i56.if.end_crit_edge

if.then.i56.if.end_crit_edge:                     ; preds = %if.then.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i56.1:                                    ; preds = %if.then.i56
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdio_write.i.i, align 4
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  %16 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mdio.i.i, align 4
  %call.i.i55.1 = tail call i32 %13(ptr noundef %15, i32 noundef %17, i32 noundef 1, i16 noundef zeroext -16363, i16 noundef zeroext -24576) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i55.1)
  %tobool1.not.i67.1 = icmp eq i32 %call.i.i55.1, 0
  br label %if.end

if.end:                                           ; preds = %if.then.i56.1, %if.then.i56.if.end_crit_edge
  %err.1.i64.lcssa = phi i32 [ %call.i.i55, %if.then.i56.if.end_crit_edge ], [ %call.i.i55.1, %if.then.i56.1 ]
  %tobool1.not.i67.lcssa = phi i1 [ %tobool1.not.i67, %if.then.i56.if.end_crit_edge ], [ %tobool1.not.i67.1, %if.then.i56.1 ]
  br i1 %tobool1.not.i67.lcssa, label %if.end.if.end4_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %land.lhs.true.if.end4_crit_edge
  tail call void @msleep(i32 noundef 50) #6
  %priv = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 1
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %priv, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %19)
  %cmp5.not = icmp eq i16 %19, 2
  br i1 %cmp5.not, label %if.end4.for.body.preheader_crit_edge, label %if.end9

if.end4.for.body.preheader_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

if.end9:                                          ; preds = %if.end4
  %call8 = tail call i32 @t3_get_edc_fw(ptr noundef %phy, i32 noundef 1, i32 noundef 1464) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool10.not = icmp eq i32 %call8, 0
  br i1 %tobool10.not, label %if.end9.for.body.preheader_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.for.body.preheader_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end9.for.body.preheader_crit_edge, %if.end4.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.076 = phi i32 [ %add21, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.cphy, ptr %phy, i32 0, i32 8, i32 %i.076
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx, align 2
  %add = or i32 %i.076, 1
  %arrayidx18 = getelementptr %struct.cphy, ptr %phy, i32 0, i32 8, i32 %add
  %22 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx18, align 2
  %24 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdio_write.i.i, align 4
  %26 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i, align 4
  %28 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mdio.i.i, align 4
  %call.i = tail call i32 %25(ptr noundef %27, i32 noundef %29, i32 noundef 1, i16 noundef zeroext %21, i16 noundef zeroext %23) #6
  %add21 = add nuw nsw i32 %i.076, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 730, i32 %i.076)
  %cmp13 = icmp ult i32 %i.076, 730
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  %or.cond = select i1 %cmp13, i1 %tobool15.not, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %tobool15.not, label %if.then23, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 2, ptr %priv, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %for.end.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1.i64.lcssa, %if.end.cleanup_crit_edge ], [ %call8, %if.end9.cleanup_crit_edge ], [ 0, %if.then23 ], [ %call.i, %for.end.cleanup_crit_edge ], [ %call.i.i, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ael2005_setup_sr_edc(ptr noundef %phy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_write.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %dev.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i.i, align 4
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %4 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i.i, align 4
  %call.i.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -16381, i16 noundef zeroext 385) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.then.i.1, label %entry.set_phy_regs.exit_crit_edge

entry.set_phy_regs.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_phy_regs.exit

if.then.i.1:                                      ; preds = %entry
  %6 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i.i, align 4
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  %10 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdio.i.i, align 4
  %call.i.i.1 = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef 1, i16 noundef zeroext -16368, i16 noundef zeroext 17546) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool1.not.i.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool1.not.i.1, label %if.then.i.2, label %if.then.i.1.set_phy_regs.exit_crit_edge

if.then.i.1.set_phy_regs.exit_crit_edge:          ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_phy_regs.exit

if.then.i.2:                                      ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdio_write.i.i, align 4
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  %16 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mdio.i.i, align 4
  %call.i.i.2 = tail call i32 %13(ptr noundef %15, i32 noundef %17, i32 noundef 1, i16 noundef zeroext -16310, i16 noundef zeroext 20992) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %tobool1.not.i.2 = icmp eq i32 %call.i.i.2, 0
  br label %set_phy_regs.exit

set_phy_regs.exit:                                ; preds = %if.then.i.2, %if.then.i.1.set_phy_regs.exit_crit_edge, %entry.set_phy_regs.exit_crit_edge
  %err.1.i.lcssa = phi i32 [ %call.i.i, %entry.set_phy_regs.exit_crit_edge ], [ %call.i.i.1, %if.then.i.1.set_phy_regs.exit_crit_edge ], [ %call.i.i.2, %if.then.i.2 ]
  %tobool1.not.i.lcssa = phi i1 [ %tobool1.not.i, %entry.set_phy_regs.exit_crit_edge ], [ %tobool1.not.i.1, %if.then.i.1.set_phy_regs.exit_crit_edge ], [ %tobool1.not.i.2, %if.then.i.2 ]
  br i1 %tobool1.not.i.lcssa, label %if.end, label %set_phy_regs.exit.cleanup_crit_edge

set_phy_regs.exit.cleanup_crit_edge:              ; preds = %set_phy_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %set_phy_regs.exit
  tail call void @msleep(i32 noundef 50) #6
  %priv = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 1
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %priv, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %19)
  %cmp.not = icmp eq i16 %19, 1
  br i1 %cmp.not, label %if.end.for.body.preheader_crit_edge, label %if.end4

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

if.end4:                                          ; preds = %if.end
  %call3 = tail call i32 @t3_get_edc_fw(ptr noundef %phy, i32 noundef 0, i32 noundef 1084) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool5.not = icmp eq i32 %call3, 0
  br i1 %tobool5.not, label %if.end4.for.body.preheader_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.for.body.preheader_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end4.for.body.preheader_crit_edge, %if.end.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.037 = phi i32 [ %add16, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.cphy, ptr %phy, i32 0, i32 8, i32 %i.037
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx, align 2
  %add = or i32 %i.037, 1
  %arrayidx13 = getelementptr %struct.cphy, ptr %phy, i32 0, i32 8, i32 %add
  %22 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx13, align 2
  %24 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdio_write.i.i, align 4
  %26 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i, align 4
  %28 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mdio.i.i, align 4
  %call.i = tail call i32 %25(ptr noundef %27, i32 noundef %29, i32 noundef 1, i16 noundef zeroext %21, i16 noundef zeroext %23) #6
  %add16 = add nuw nsw i32 %i.037, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 540, i32 %i.037)
  %cmp8 = icmp ult i32 %i.037, 540
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  %or.cond = select i1 %cmp8, i1 %tobool10.not, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %tobool10.not, label %if.then18, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %priv, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %for.end.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %set_phy_regs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1.i.lcssa, %set_phy_regs.exit.cleanup_crit_edge ], [ %call3, %if.end4.cleanup_crit_edge ], [ 0, %if.then18 ], [ %call.i, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ael2xxx_get_module_type(ptr nocapture noundef readonly %phy, i32 noundef %delay_ms) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay_ms)
  %tobool.not = icmp eq i32 %delay_ms, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef %delay_ms) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call fastcc i32 @ael_i2c_rd(ptr noundef %phy, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %call, label %if.end11 [
    i32 16, label %if.end2.cleanup_crit_edge
    i32 32, label %if.then7
    i32 64, label %if.then10
  ]

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end2
  %call12 = tail call fastcc i32 @ael_i2c_rd(ptr noundef %phy, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call12)
  %cmp16.not = icmp eq i32 %call12, 4
  br i1 %cmp16.not, label %if.end18, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end15
  %call19 = tail call fastcc i32 @ael_i2c_rd(ptr noundef %phy, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %and = and i32 %call19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %if.then24

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then24:                                        ; preds = %if.end22
  %call25 = tail call fastcc i32 @ael_i2c_rd(ptr noundef %phy, i32 noundef 18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then24.cleanup_crit_edge, label %if.end28

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call25)
  %cmp29 = icmp ugt i32 %call25, 10
  %cond = select i1 %cmp29, i32 5, i32 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then24.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then10, %if.then7, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then7 ], [ 3, %if.then10 ], [ %cond, %if.end28 ], [ %call, %if.end.cleanup_crit_edge ], [ 1, %if.end2.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ %call25, %if.then24.cleanup_crit_edge ], [ 6, %if.end22.cleanup_crit_edge ], [ 6, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ael_i2c_rd(ptr nocapture noundef readonly %phy, i32 noundef %word_addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %6 = trunc i32 %word_addr to i16
  %conv3.i = or i16 %6, -24320
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -15606, i16 noundef zeroext %conv3.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  br label %for.body

for.cond:                                         ; preds = %if.end5
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 200
  br i1 %exitcond.not, label %do.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %i.010 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.for.body_crit_edge ]
  tail call void @msleep(i32 noundef 1) #6
  %7 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdio_read.i, align 4
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mdio.i, align 4
  %call.i3 = tail call i32 %8(ptr noundef %10, i32 noundef %12, i32 noundef 1, i16 noundef zeroext -15604) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i3)
  %tobool3.not = icmp sgt i32 %call.i3, -1
  br i1 %tobool3.not, label %if.end5, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %for.body
  %and = and i32 %call.i3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp6 = icmp eq i32 %and, 1
  br i1 %cmp6, label %if.then7, label %for.cond

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdio_read.i, align 4
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %17 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mdio.i, align 4
  %call.i7 = tail call i32 %14(ptr noundef %16, i32 noundef %18, i32 noundef 1, i16 noundef zeroext -15605) #6
  %19 = tail call i32 @llvm.smin.i32(i32 %call.i7, i32 0) #6
  %shr = lshr i32 %call.i7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %tobool9.not11 = icmp slt i32 %call.i7, 0
  %spec.select = select i1 %tobool9.not11, i32 %19, i32 %shr
  br label %cleanup

do.end:                                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %adapter = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 3
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 4
  %pdev = getelementptr inbounds %struct.adapter, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mdio.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %25, i32 noundef 160, i32 noundef %word_addr) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then7, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ %call.i, %entry.cleanup_crit_edge ], [ %spec.select, %if.then7 ], [ %call.i3, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_get_edc_fw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ael2020_reset(ptr noundef %phy, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -28670) #6
  %6 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 -1) #6
  %7 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @t3_phy_reset(ptr noundef %phy, i32 noundef 1, i32 noundef 125) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @msleep(i32 noundef 100) #6
  %priv = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 1
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %priv, align 2
  %mdio_write.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %9 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdio_write.i.i, align 4
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %13 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mdio.i, align 4
  %call.i.i = tail call i32 %10(ptr noundef %12, i32 noundef %14, i32 noundef 1, i16 noundef zeroext -16381, i16 noundef zeroext 12545) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.then.i.1, label %if.end4.set_phy_regs.exit_crit_edge

if.end4.set_phy_regs.exit_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_phy_regs.exit

if.then.i.1:                                      ; preds = %if.end4
  %15 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdio_write.i.i, align 4
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mdio.i, align 4
  %call.i.i.1 = tail call i32 %16(ptr noundef %18, i32 noundef %20, i32 noundef 1, i16 noundef zeroext -12992, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool1.not.i.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool1.not.i.1, label %if.then.i.2, label %if.then.i.1.set_phy_regs.exit_crit_edge

if.then.i.1.set_phy_regs.exit_crit_edge:          ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_phy_regs.exit

if.then.i.2:                                      ; preds = %if.then.i.1
  %21 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdio_write.i.i, align 4
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %25 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mdio.i, align 4
  %call.i.i.2 = tail call i32 %22(ptr noundef %24, i32 noundef %26, i32 noundef 1, i16 noundef zeroext -254, i16 noundef zeroext 35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %tobool1.not.i.2 = icmp eq i32 %call.i.i.2, 0
  br i1 %tobool1.not.i.2, label %if.then.i.3, label %if.then.i.2.set_phy_regs.exit_crit_edge

if.then.i.2.set_phy_regs.exit_crit_edge:          ; preds = %if.then.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_phy_regs.exit

if.then.i.3:                                      ; preds = %if.then.i.2
  %27 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mdio_write.i.i, align 4
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  %31 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mdio.i, align 4
  %call.i.i.3 = tail call i32 %28(ptr noundef %30, i32 noundef %32, i32 noundef 1, i16 noundef zeroext -253, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3)
  %tobool1.not.i.3 = icmp eq i32 %call.i.i.3, 0
  br i1 %tobool1.not.i.3, label %if.then.i.4, label %if.then.i.3.set_phy_regs.exit_crit_edge

if.then.i.3.set_phy_regs.exit_crit_edge:          ; preds = %if.then.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_phy_regs.exit

if.then.i.4:                                      ; preds = %if.then.i.3
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mdio_write.i.i, align 4
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  %37 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mdio.i, align 4
  %call.i.i.4 = tail call i32 %34(ptr noundef %36, i32 noundef %38, i32 noundef 1, i16 noundef zeroext -252, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.4)
  %tobool1.not.i.4 = icmp eq i32 %call.i.i.4, 0
  br label %set_phy_regs.exit

set_phy_regs.exit:                                ; preds = %if.then.i.4, %if.then.i.3.set_phy_regs.exit_crit_edge, %if.then.i.2.set_phy_regs.exit_crit_edge, %if.then.i.1.set_phy_regs.exit_crit_edge, %if.end4.set_phy_regs.exit_crit_edge
  %err.1.i.lcssa = phi i32 [ %call.i.i, %if.end4.set_phy_regs.exit_crit_edge ], [ %call.i.i.1, %if.then.i.1.set_phy_regs.exit_crit_edge ], [ %call.i.i.2, %if.then.i.2.set_phy_regs.exit_crit_edge ], [ %call.i.i.3, %if.then.i.3.set_phy_regs.exit_crit_edge ], [ %call.i.i.4, %if.then.i.4 ]
  %tobool1.not.i.lcssa = phi i1 [ %tobool1.not.i, %if.end4.set_phy_regs.exit_crit_edge ], [ %tobool1.not.i.1, %if.then.i.1.set_phy_regs.exit_crit_edge ], [ %tobool1.not.i.2, %if.then.i.2.set_phy_regs.exit_crit_edge ], [ %tobool1.not.i.3, %if.then.i.3.set_phy_regs.exit_crit_edge ], [ %tobool1.not.i.4, %if.then.i.4 ]
  br i1 %tobool1.not.i.lcssa, label %if.end8, label %set_phy_regs.exit.cleanup_crit_edge

set_phy_regs.exit.cleanup_crit_edge:              ; preds = %set_phy_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %set_phy_regs.exit
  %39 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mdio_read.i, align 4
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  %43 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mdio.i, align 4
  %call.i.i52 = tail call i32 %40(ptr noundef %42, i32 noundef %44, i32 noundef 1, i16 noundef zeroext -16116) #6
  %45 = tail call i32 @llvm.smin.i32(i32 %call.i.i52, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i52)
  %tobool.not.i53 = icmp sgt i32 %call.i.i52, -1
  br i1 %tobool.not.i53, label %if.end.i, label %if.end8.ael2020_get_module_type.exit_crit_edge

if.end8.ael2020_get_module_type.exit_crit_edge:   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %ael2020_get_module_type.exit

if.end.i:                                         ; preds = %if.end8
  %and.i = and i32 %call.i.i52, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i54 = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i54, label %if.end3.i, label %if.end11.thread

if.end11.thread:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %phy to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %phy, align 4
  br label %if.else

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call fastcc i32 @ael2xxx_get_module_type(ptr noundef %phy, i32 noundef 0) #6
  br label %ael2020_get_module_type.exit

ael2020_get_module_type.exit:                     ; preds = %if.end3.i, %if.end8.ael2020_get_module_type.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end3.i ], [ %45, %if.end8.ael2020_get_module_type.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %ael2020_get_module_type.exit.cleanup_crit_edge, label %if.end11

ael2020_get_module_type.exit.cleanup_crit_edge:   ; preds = %ael2020_get_module_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %ael2020_get_module_type.exit
  %conv = trunc i32 %retval.0.i to i8
  %47 = ptrtoint ptr %phy to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv, ptr %phy, align 4
  %48 = and i32 %retval.0.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %switch = icmp eq i32 %48, 4
  br i1 %switch, label %if.then16, label %if.end11.if.else_crit_edge

if.end11.if.else_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call fastcc i32 @ael2020_setup_twinax_edc(ptr noundef %phy)
  br label %if.end19

if.else:                                          ; preds = %if.end11.if.else_crit_edge, %if.end11.thread
  %call18 = tail call fastcc i32 @ael2020_setup_sr_edc(ptr noundef %phy)
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then16
  %err.0 = phi i32 [ %call17, %if.then16 ], [ %call18, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool20.not = icmp eq i32 %err.0, 0
  br i1 %tobool20.not, label %if.end22, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %if.then24

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = tail call i32 @ael2005_intr_enable(ptr noundef %phy)
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end22.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %ael2020_get_module_type.exit.cleanup_crit_edge, %set_phy_regs.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %err.1.i.lcssa, %set_phy_regs.exit.cleanup_crit_edge ], [ %retval.0.i, %ael2020_get_module_type.exit.cleanup_crit_edge ], [ %err.0, %if.end19.cleanup_crit_edge ], [ %call25, %if.then24 ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ael2020_intr_enable(ptr noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_write.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %dev.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i.i, align 4
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %4 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i.i, align 4
  %call.i.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -16110, i16 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.then.i.1, label %entry.set_phy_regs.exit_crit_edge

entry.set_phy_regs.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_phy_regs.exit

if.then.i.1:                                      ; preds = %entry
  %6 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i.i, align 4
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  %10 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdio.i.i, align 4
  %call.i.i.1 = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef 1, i16 noundef zeroext -16120, i16 noundef zeroext 2048) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool1.not.i.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool1.not.i.1, label %if.then.i.2, label %if.then.i.1.set_phy_regs.exit_crit_edge

if.then.i.1.set_phy_regs.exit_crit_edge:          ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_phy_regs.exit

if.then.i.2:                                      ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdio_write.i.i, align 4
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  %16 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mdio.i.i, align 4
  %call.i.i.2 = tail call i32 %13(ptr noundef %15, i32 noundef %17, i32 noundef 1, i16 noundef zeroext -16120, i16 noundef zeroext 32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %tobool1.not.i.2 = icmp eq i32 %call.i.i.2, 0
  br label %set_phy_regs.exit

set_phy_regs.exit:                                ; preds = %if.then.i.2, %if.then.i.1.set_phy_regs.exit_crit_edge, %entry.set_phy_regs.exit_crit_edge
  %err.1.i.lcssa = phi i32 [ %call.i.i, %entry.set_phy_regs.exit_crit_edge ], [ %call.i.i.1, %if.then.i.1.set_phy_regs.exit_crit_edge ], [ %call.i.i.2, %if.then.i.2 ]
  %tobool1.not.i.lcssa = phi i1 [ %tobool1.not.i, %entry.set_phy_regs.exit_crit_edge ], [ %tobool1.not.i.1, %if.then.i.1.set_phy_regs.exit_crit_edge ], [ %tobool1.not.i.2, %if.then.i.2 ]
  br i1 %tobool1.not.i.lcssa, label %if.end, label %set_phy_regs.exit.cleanup_crit_edge

set_phy_regs.exit.cleanup_crit_edge:              ; preds = %set_phy_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %set_phy_regs.exit
  %mdio_read.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %18 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdio_read.i.i, align 4
  %20 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i, align 4
  %22 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mdio.i.i, align 4
  %call.i.i25 = tail call i32 %19(ptr noundef %21, i32 noundef %23, i32 noundef 1, i16 noundef zeroext 10) #6
  %24 = tail call i32 @llvm.smax.i32(i32 %call.i.i25, i32 -1) #6
  %25 = tail call i32 @llvm.smin.i32(i32 %call.i.i25, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i25)
  %tobool1.not.i26 = icmp sgt i32 %call.i.i25, -1
  br i1 %tobool1.not.i26, label %if.end.i, label %if.end.get_link_status_r.exit_crit_edge

if.end.get_link_status_r.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_link_status_r.exit

if.end.i:                                         ; preds = %if.end
  %26 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdio_read.i.i, align 4
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  %30 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mdio.i.i, align 4
  %call.i34.i = tail call i32 %27(ptr noundef %29, i32 noundef %31, i32 noundef 3, i16 noundef zeroext 32) #6
  %32 = tail call i32 @llvm.smax.i32(i32 %call.i34.i, i32 -1) #6
  %33 = tail call i32 @llvm.smin.i32(i32 %call.i34.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i34.i)
  %tobool4.not.i = icmp sgt i32 %call.i34.i, -1
  br i1 %tobool4.not.i, label %if.end7.i, label %if.end.i.get_link_status_r.exit_crit_edge

if.end.i.get_link_status_r.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_link_status_r.exit

if.end7.i:                                        ; preds = %if.end.i
  %34 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mdio_read.i.i, align 4
  %36 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i.i, align 4
  %38 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mdio.i.i, align 4
  %call.i38.i = tail call i32 %35(ptr noundef %37, i32 noundef %39, i32 noundef 4, i16 noundef zeroext 24) #6
  %40 = tail call i32 @llvm.smin.i32(i32 %call.i38.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i38.i)
  %tobool8.not.i = icmp sgt i32 %call.i38.i, -1
  br i1 %tobool8.not.i, label %if.end4, label %if.end7.i.get_link_status_r.exit_crit_edge

if.end7.i.get_link_status_r.exit_crit_edge:       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_link_status_r.exit

get_link_status_r.exit:                           ; preds = %if.end7.i.get_link_status_r.exit_crit_edge, %if.end.i.get_link_status_r.exit_crit_edge, %if.end.get_link_status_r.exit_crit_edge
  %retval.1.i = phi i32 [ %40, %if.end7.i.get_link_status_r.exit_crit_edge ], [ %33, %if.end.i.get_link_status_r.exit_crit_edge ], [ %25, %if.end.get_link_status_r.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %tobool2.not = icmp eq i32 %retval.1.i, 0
  br i1 %tobool2.not, label %get_link_status_r.exit.if.end8_crit_edge, label %get_link_status_r.exit.cleanup_crit_edge

get_link_status_r.exit.cleanup_crit_edge:         ; preds = %get_link_status_r.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

get_link_status_r.exit.if.end8_crit_edge:         ; preds = %get_link_status_r.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end4:                                          ; preds = %if.end7.i
  %shr.i = lshr i32 %call.i38.i, 12
  %and.i = and i32 %24, 1
  %and11.i = and i32 %and.i, %32
  %and12.i = and i32 %and11.i, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool5.not = icmp eq i32 %and12.i, 0
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %adapter = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 3
  %41 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %adapter, align 4
  %port.i.i = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 21
  %43 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %port.i.i, align 4
  %phy1.i = getelementptr i8, ptr %44, i32 2316
  %cmp.i28 = icmp ne ptr %phy1.i, %phy
  %cond.i = zext i1 %cmp.i28 to i32
  tail call void @t3_link_changed(ptr noundef %42, i32 noundef %cond.i) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge, %get_link_status_r.exit.if.end8_crit_edge
  %call9 = tail call i32 @t3_phy_lasi_intr_enable(ptr noundef %phy) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %get_link_status_r.exit.cleanup_crit_edge, %set_phy_regs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1.i.lcssa, %set_phy_regs.exit.cleanup_crit_edge ], [ %retval.1.i, %get_link_status_r.exit.cleanup_crit_edge ], [ %call9, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ael2020_intr_disable(ptr noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_write.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %dev.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i.i, align 4
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %4 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i.i, align 4
  %call.i.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -16120, i16 noundef zeroext 2816) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.then.i.1, label %entry.set_phy_regs.exit_crit_edge

entry.set_phy_regs.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_phy_regs.exit

if.then.i.1:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i.i, align 4
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  %10 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdio.i.i, align 4
  %call.i.i.1 = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef 1, i16 noundef zeroext -16120, i16 noundef zeroext 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool1.not.i.1 = icmp eq i32 %call.i.i.1, 0
  br label %set_phy_regs.exit

set_phy_regs.exit:                                ; preds = %if.then.i.1, %entry.set_phy_regs.exit_crit_edge
  %err.1.i.lcssa = phi i32 [ %call.i.i, %entry.set_phy_regs.exit_crit_edge ], [ %call.i.i.1, %if.then.i.1 ]
  %tobool1.not.i.lcssa = phi i1 [ %tobool1.not.i, %entry.set_phy_regs.exit_crit_edge ], [ %tobool1.not.i.1, %if.then.i.1 ]
  br i1 %tobool1.not.i.lcssa, label %if.end, label %set_phy_regs.exit.cleanup_crit_edge

set_phy_regs.exit.cleanup_crit_edge:              ; preds = %set_phy_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %set_phy_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @t3_phy_lasi_intr_disable(ptr noundef %phy) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %set_phy_regs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %err.1.i.lcssa, %set_phy_regs.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ael2020_intr_clear(ptr noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -16125) #6
  %6 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @t3_phy_lasi_intr_clear(ptr noundef %phy) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call1, %cond.false ], [ %6, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ael2020_intr_handler(ptr noundef %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -16125) #6
  %6 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end26_crit_edge, label %if.then2

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then2:                                         ; preds = %if.end
  %7 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdio_read.i, align 4
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mdio.i, align 4
  %call.i.i = tail call i32 %8(ptr noundef %10, i32 noundef %12, i32 noundef 1, i16 noundef zeroext -16116) #6
  %13 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.then2.ael2020_get_module_type.exit_crit_edge

if.then2.ael2020_get_module_type.exit_crit_edge:  ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %ael2020_get_module_type.exit

if.end.i:                                         ; preds = %if.then2
  %and.i = and i32 %call.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end5.thread

if.end5.thread:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %phy, align 4
  br label %if.then8

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call fastcc i32 @ael2xxx_get_module_type(ptr noundef %phy, i32 noundef 300) #6
  br label %ael2020_get_module_type.exit

ael2020_get_module_type.exit:                     ; preds = %if.end3.i, %if.then2.ael2020_get_module_type.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end3.i ], [ %13, %if.then2.ael2020_get_module_type.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %ael2020_get_module_type.exit.cleanup_crit_edge, label %if.end5

ael2020_get_module_type.exit.cleanup_crit_edge:   ; preds = %ael2020_get_module_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %ael2020_get_module_type.exit
  %conv = trunc i32 %retval.0.i to i8
  %15 = ptrtoint ptr %phy to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %phy, align 4
  %16 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %retval.0.i, label %if.else15 [
    i32 0, label %if.end5.if.then8_crit_edge
    i32 4, label %if.end5.if.end17_crit_edge
    i32 5, label %if.end5.if.end17_crit_edge66
  ]

if.end5.if.end17_crit_edge66:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end5.if.end17_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.then8:                                         ; preds = %if.end5.if.then8_crit_edge, %if.end5.thread
  %priv = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 1
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %priv, align 2
  %conv9 = sext i16 %18 to i32
  br label %if.end17

if.else15:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then8, %if.end5.if.end17_crit_edge, %if.end5.if.end17_crit_edge66
  %edc_needed.0 = phi i32 [ %conv9, %if.then8 ], [ 1, %if.else15 ], [ 2, %if.end5.if.end17_crit_edge ], [ 2, %if.end5.if.end17_crit_edge66 ]
  %priv18 = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 1
  %19 = ptrtoint ptr %priv18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %priv18, align 2
  %conv19 = sext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %edc_needed.0, i32 %conv19)
  %cmp20.not = icmp eq i32 %edc_needed.0, %conv19
  br i1 %cmp20.not, label %if.end17.if.end26_crit_edge, label %if.then22

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = tail call i32 @ael2020_reset(ptr noundef %phy, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  %spec.select = select i1 %tobool24.not, i32 4, i32 %call23
  br label %cleanup

if.end26:                                         ; preds = %if.end17.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %cause.0 = phi i32 [ 0, %if.end.if.end26_crit_edge ], [ 4, %if.end17.if.end26_crit_edge ]
  %call27 = tail call i32 @t3_phy_lasi_intr_handler(ptr noundef %phy) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %call27, %cause.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool32.not = icmp eq i32 %or, 0
  %spec.select60 = select i1 %tobool32.not, i32 1, i32 %or
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end26.cleanup_crit_edge, %if.then22, %ael2020_get_module_type.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then22 ], [ %spec.select60, %if.end31 ], [ %6, %entry.cleanup_crit_edge ], [ %retval.0.i, %ael2020_get_module_type.exit.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ael2020_setup_twinax_edc(ptr noundef %phy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_write.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %dev.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i.i, align 4
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %4 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i.i, align 4
  %call.i.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -216, i16 noundef zeroext 16385) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.then.i.1, label %entry.set_phy_regs.exit_crit_edge

entry.set_phy_regs.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_phy_regs.exit

if.then.i.1:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i.i, align 4
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  %10 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdio.i.i, align 4
  %call.i.i.1 = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef 1, i16 noundef zeroext -214, i16 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool1.not.i.1 = icmp eq i32 %call.i.i.1, 0
  br label %set_phy_regs.exit

set_phy_regs.exit:                                ; preds = %if.then.i.1, %entry.set_phy_regs.exit_crit_edge
  %err.1.i.lcssa = phi i32 [ %call.i.i, %entry.set_phy_regs.exit_crit_edge ], [ %call.i.i.1, %if.then.i.1 ]
  %tobool1.not.i.lcssa = phi i1 [ %tobool1.not.i, %entry.set_phy_regs.exit_crit_edge ], [ %tobool1.not.i.1, %if.then.i.1 ]
  tail call void @msleep(i32 noundef 500) #6
  br i1 %tobool1.not.i.lcssa, label %for.inc.i26, label %set_phy_regs.exit.cleanup_crit_edge

set_phy_regs.exit.cleanup_crit_edge:              ; preds = %set_phy_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.i26:                                      ; preds = %set_phy_regs.exit
  %12 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdio_write.i.i, align 4
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  %16 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mdio.i.i, align 4
  %call.i.i12 = tail call i32 %13(ptr noundef %15, i32 noundef %17, i32 noundef 1, i16 noundef zeroext -12288, i16 noundef zeroext 20992) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12)
  %tobool1.not.i24 = icmp eq i32 %call.i.i12, 0
  tail call void @msleep(i32 noundef 500) #6
  br i1 %tobool1.not.i24, label %if.end4, label %for.inc.i26.cleanup_crit_edge

for.inc.i26.cleanup_crit_edge:                    ; preds = %for.inc.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %for.inc.i26
  %priv = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 1
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %priv, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %19)
  %cmp.not = icmp eq i16 %19, 2
  br i1 %cmp.not, label %if.end4.for.body.preheader_crit_edge, label %if.end8

if.end4.for.body.preheader_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

if.end8:                                          ; preds = %if.end4
  %call7 = tail call i32 @t3_get_edc_fw(ptr noundef %phy, i32 noundef 2, i32 noundef 1628) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool9.not = icmp eq i32 %call7, 0
  br i1 %tobool9.not, label %if.end8.for.body.preheader_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.for.body.preheader_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end8.for.body.preheader_crit_edge, %if.end4.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.055 = phi i32 [ %add20, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.cphy, ptr %phy, i32 0, i32 8, i32 %i.055
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx, align 2
  %add = or i32 %i.055, 1
  %arrayidx17 = getelementptr %struct.cphy, ptr %phy, i32 0, i32 8, i32 %add
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx17, align 2
  %24 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdio_write.i.i, align 4
  %26 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i, align 4
  %28 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mdio.i.i, align 4
  %call.i = tail call i32 %25(ptr noundef %27, i32 noundef %29, i32 noundef 1, i16 noundef zeroext %21, i16 noundef zeroext %23) #6
  %add20 = add nuw nsw i32 %i.055, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 812, i32 %i.055)
  %cmp12 = icmp ult i32 %i.055, 812
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  %or.cond = select i1 %cmp12, i1 %tobool14.not, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %if.then.i40

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.then.i40:                                      ; preds = %for.body
  %30 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdio_write.i.i, align 4
  %32 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i.i, align 4
  %34 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mdio.i.i, align 4
  %call.i.i39 = tail call i32 %31(ptr noundef %33, i32 noundef %35, i32 noundef 1, i16 noundef zeroext -12160, i16 noundef zeroext 256) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39)
  %tobool1.not.i51 = icmp eq i32 %call.i.i39, 0
  br i1 %tobool1.not.i51, label %if.then.i40.1, label %if.then.i40.set_phy_regs.exit54_crit_edge

if.then.i40.set_phy_regs.exit54_crit_edge:        ; preds = %if.then.i40
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_phy_regs.exit54

if.then.i40.1:                                    ; preds = %if.then.i40
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mdio_write.i.i, align 4
  %38 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i.i, align 4
  %40 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mdio.i.i, align 4
  %call.i.i39.1 = tail call i32 %37(ptr noundef %39, i32 noundef %41, i32 noundef 1, i16 noundef zeroext -12142, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39.1)
  %tobool1.not.i51.1 = icmp eq i32 %call.i.i39.1, 0
  br label %set_phy_regs.exit54

set_phy_regs.exit54:                              ; preds = %if.then.i40.1, %if.then.i40.set_phy_regs.exit54_crit_edge
  %err.1.i48.lcssa = phi i32 [ %call.i.i39, %if.then.i40.set_phy_regs.exit54_crit_edge ], [ %call.i.i39.1, %if.then.i40.1 ]
  %tobool1.not.i51.lcssa = phi i1 [ %tobool1.not.i51, %if.then.i40.set_phy_regs.exit54_crit_edge ], [ %tobool1.not.i51.1, %if.then.i40.1 ]
  br i1 %tobool1.not.i51.lcssa, label %if.then23, label %set_phy_regs.exit54.cleanup_crit_edge

set_phy_regs.exit54.cleanup_crit_edge:            ; preds = %set_phy_regs.exit54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then23:                                        ; preds = %set_phy_regs.exit54
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %priv to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 2, ptr %priv, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %set_phy_regs.exit54.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %for.inc.i26.cleanup_crit_edge, %set_phy_regs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1.i.lcssa, %set_phy_regs.exit.cleanup_crit_edge ], [ %call.i.i12, %for.inc.i26.cleanup_crit_edge ], [ %call7, %if.end8.cleanup_crit_edge ], [ 0, %if.then23 ], [ %err.1.i48.lcssa, %set_phy_regs.exit54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ael2020_setup_sr_edc(ptr noundef %phy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_write.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 5
  %dev.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i.i, align 4
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %4 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i.i, align 4
  %call.i.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -13311, i16 noundef zeroext 18570) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i, label %if.then.i.1, label %entry.set_phy_regs.exit_crit_edge

entry.set_phy_regs.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_phy_regs.exit

if.then.i.1:                                      ; preds = %entry
  %6 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i.i, align 4
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  %10 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdio.i.i, align 4
  %call.i.i.1 = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef 1, i16 noundef zeroext -13541, i16 noundef zeroext 512) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool1.not.i.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool1.not.i.1, label %if.then.i.2, label %if.then.i.1.set_phy_regs.exit_crit_edge

if.then.i.1.set_phy_regs.exit_crit_edge:          ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_phy_regs.exit

if.then.i.2:                                      ; preds = %if.then.i.1
  %12 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdio_write.i.i, align 4
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  %16 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mdio.i.i, align 4
  %call.i.i.2 = tail call i32 %13(ptr noundef %15, i32 noundef %17, i32 noundef 1, i16 noundef zeroext -13540, i16 noundef zeroext 240) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %tobool1.not.i.2 = icmp eq i32 %call.i.i.2, 0
  br i1 %tobool1.not.i.2, label %if.then.i.3, label %if.then.i.2.set_phy_regs.exit_crit_edge

if.then.i.2.set_phy_regs.exit_crit_edge:          ; preds = %if.then.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_phy_regs.exit

if.then.i.3:                                      ; preds = %if.then.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdio_write.i.i, align 4
  %20 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i.i, align 4
  %22 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mdio.i.i, align 4
  %call.i.i.3 = tail call i32 %19(ptr noundef %21, i32 noundef %23, i32 noundef 1, i16 noundef zeroext -13306, i16 noundef zeroext 224) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3)
  %tobool1.not.i.3 = icmp eq i32 %call.i.i.3, 0
  br label %set_phy_regs.exit

set_phy_regs.exit:                                ; preds = %if.then.i.3, %if.then.i.2.set_phy_regs.exit_crit_edge, %if.then.i.1.set_phy_regs.exit_crit_edge, %entry.set_phy_regs.exit_crit_edge
  %err.1.i.lcssa = phi i32 [ %call.i.i, %entry.set_phy_regs.exit_crit_edge ], [ %call.i.i.1, %if.then.i.1.set_phy_regs.exit_crit_edge ], [ %call.i.i.2, %if.then.i.2.set_phy_regs.exit_crit_edge ], [ %call.i.i.3, %if.then.i.3 ]
  %tobool1.not.i.lcssa = phi i1 [ %tobool1.not.i, %entry.set_phy_regs.exit_crit_edge ], [ %tobool1.not.i.1, %if.then.i.1.set_phy_regs.exit_crit_edge ], [ %tobool1.not.i.2, %if.then.i.2.set_phy_regs.exit_crit_edge ], [ %tobool1.not.i.3, %if.then.i.3 ]
  tail call void @msleep(i32 noundef 50) #6
  br i1 %tobool1.not.i.lcssa, label %if.end, label %set_phy_regs.exit.cleanup_crit_edge

set_phy_regs.exit.cleanup_crit_edge:              ; preds = %set_phy_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %set_phy_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %priv = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 1
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %priv, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %set_phy_regs.exit.cleanup_crit_edge
  ret i32 %err.1.i.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_link_changed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_link_status_x(ptr nocapture noundef readonly %phy, ptr noundef writeonly %link_ok, ptr noundef writeonly %speed, ptr noundef writeonly %duplex, ptr nocapture noundef readnone %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %link_ok, null
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then:                                          ; preds = %entry
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext 10) #6
  %6 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 -1) #6
  %7 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool1.not = icmp sgt i32 %call.i, -1
  br i1 %tobool1.not, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %if.then
  %8 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdio_read.i, align 4
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mdio.i, align 4
  %call.i35 = tail call i32 %9(ptr noundef %11, i32 noundef %13, i32 noundef 3, i16 noundef zeroext 24) #6
  %14 = tail call i32 @llvm.smax.i32(i32 %call.i35, i32 -1) #6
  %15 = tail call i32 @llvm.smin.i32(i32 %call.i35, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i35)
  %tobool4.not = icmp sgt i32 %call.i35, -1
  br i1 %tobool4.not, label %if.end7, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end7:                                          ; preds = %if.end
  %16 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdio_read.i, align 4
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %20 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mdio.i, align 4
  %call.i39 = tail call i32 %17(ptr noundef %19, i32 noundef %21, i32 noundef 4, i16 noundef zeroext 24) #6
  %22 = tail call i32 @llvm.smin.i32(i32 %call.i39, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i39)
  %tobool8.not = icmp sgt i32 %call.i39, -1
  br i1 %tobool8.not, label %cleanup.thread, label %if.end7.return_crit_edge

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

cleanup.thread:                                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i32 %14, 12
  %shr11 = lshr i32 %call.i39, 12
  %and = and i32 %6, 1
  %and12 = and i32 %and, %shr
  %and13 = and i32 %and12, %shr11
  %23 = ptrtoint ptr %link_ok to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and13, ptr %link_ok, align 4
  br label %if.end17

if.end17:                                         ; preds = %cleanup.thread, %entry.if.end17_crit_edge
  %tobool18.not = icmp eq ptr %speed, null
  br i1 %tobool18.not, label %if.end17.if.end20_crit_edge, label %if.then19

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 10000, ptr %speed, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17.if.end20_crit_edge
  %tobool21.not = icmp eq ptr %duplex, null
  br i1 %tobool21.not, label %if.end20.return_crit_edge, label %if.then22

if.end20.return_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %duplex, align 4
  br label %return

return:                                           ; preds = %if.then22, %if.end20.return_crit_edge, %if.end7.return_crit_edge, %if.end.return_crit_edge, %if.then.return_crit_edge
  %retval.1 = phi i32 [ 0, %if.then22 ], [ 0, %if.end20.return_crit_edge ], [ %22, %if.end7.return_crit_edge ], [ %15, %if.end.return_crit_edge ], [ %7, %if.then.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xaui_direct_reset(ptr nocapture noundef readnone %phy, i32 noundef %wait) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xaui_direct_get_link_status(ptr nocapture noundef readonly %phy, ptr noundef writeonly %link_ok, ptr noundef writeonly %speed, ptr noundef writeonly %duplex, ptr nocapture noundef readnone %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %link_ok, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mdio = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 7
  %0 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mdio, align 4
  %adapter = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 4
  %mul = shl i32 %1, 9
  %add = add i32 %mul, 2288
  %regs.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 4
  %add4 = add i32 %mul, 2292
  %regs.i33 = getelementptr inbounds %struct.adapter, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %regs.i33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i33, align 4
  %add.ptr.i34 = getelementptr i8, ptr %10, i32 %add4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %12 = or i32 %11, %6
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 4
  %add8 = add i32 %mul, 2296
  %regs.i35 = getelementptr inbounds %struct.adapter, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %regs.i35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i35, align 4
  %add.ptr.i36 = getelementptr i8, ptr %16, i32 %add8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %18 = or i32 %12, %17
  %19 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter, align 4
  %add13 = add i32 %mul, 2300
  %regs.i37 = getelementptr inbounds %struct.adapter, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %regs.i37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i37, align 4
  %add.ptr.i38 = getelementptr i8, ptr %22, i32 %add13
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %24 = or i32 %18, %23
  %25 = lshr i32 %24, 24
  %and = and i32 %25, 1
  %26 = xor i32 %and, 1
  %27 = ptrtoint ptr %link_ok to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %link_ok, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool17.not = icmp eq ptr %speed, null
  br i1 %tobool17.not, label %if.end.if.end19_crit_edge, label %if.then18

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 10000, ptr %speed, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end.if.end19_crit_edge
  %tobool20.not = icmp eq ptr %duplex, null
  br i1 %tobool20.not, label %if.end19.if.end22_crit_edge, label %if.then21

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %duplex, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end19.if.end22_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xaui_direct_power_down(ptr nocapture noundef readnone %phy, i32 noundef %enable) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c", i32 217, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c", i32 243, i32 6}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c", i32 872, i32 5}
!6 = !{ptr @ael1002_ops, !7, !"ael1002_ops", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c", i32 201, i32 30}
!8 = !{ptr @ael1006_ops, !9, !"ael1006_ops", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c", i32 227, i32 30}
!10 = !{ptr @ael2005_ops, !11, !"ael2005_ops", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c", i32 498, i32 30}
!12 = !{ptr @ael2005_reset.regs0, !13, !"regs0", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c", i32 396, i32 30}
!14 = !{ptr @ael2005_reset.regs1, !15, !"regs1", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c", i32 406, i32 30}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c", i32 136, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ael_i2c_rd._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ael_i2c_rd._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"regs", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c", i32 327, i32 30}
!26 = !{ptr @ael2005_setup_twinax_edc.preemphasis, !27, !"preemphasis", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c", i32 331, i32 30}
!28 = !{ptr @ael2005_setup_sr_edc.regs, !29, !"regs", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c", i32 295, i32 30}
!30 = !{ptr @ael2020_ops, !31, !"ael2020_ops", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c", i32 804, i32 30}
!32 = !{ptr @ael2020_setup_twinax_edc.uCclock40MHz, !33, !"uCclock40MHz", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c", i32 554, i32 30}
!34 = distinct !{null, !35, !"uCclockActivate", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c", i32 561, i32 30}
!36 = !{ptr @ael2020_setup_twinax_edc.uCactivate, !37, !"uCactivate", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c", i32 567, i32 30}
!38 = !{ptr @ael2020_setup_sr_edc.regs, !39, !"regs", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c", i32 525, i32 30}
!40 = !{ptr @ael2020_intr_enable.regs, !41, !"regs", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c", i32 627, i32 30}
!42 = !{ptr @ael2020_intr_disable.regs, !43, !"regs", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c", i32 667, i32 30}
!44 = !{ptr @ael2020_reset_regs, !45, !"ael2020_reset_regs", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c", i32 704, i32 29}
!46 = !{ptr @qt2045_ops, !47, !"qt2045_ops", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c", i32 854, i32 30}
!48 = !{ptr @xaui_direct_ops, !49, !"xaui_direct_ops", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/chelsio/cxgb3/ael1002.c", i32 919, i32 30}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 6577122}
!60 = !{i64 2156831912}
