; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb3/xgmac.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb3/xgmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.addr_val_pair = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cmac = type { ptr, i32, i32, i32, i32, i64, i32, i32, i64, i32, i32, i64, %struct.mac_stats }
%struct.mac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.adapter_info = type { i8, i8, i8, i32, [2 x i8], i32, ptr, ptr }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.118, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.118 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@t3_mac_reset.mac_reset_avp = internal constant { [14 x %struct.addr_val_pair], [48 x i8] } { [14 x %struct.addr_val_pair] [%struct.addr_val_pair { i32 2048, i32 0 }, %struct.addr_val_pair { i32 2060, i32 0 }, %struct.addr_val_pair { i32 2064, i32 964 }, %struct.addr_val_pair { i32 2068, i32 0 }, %struct.addr_val_pair { i32 2072, i32 0 }, %struct.addr_val_pair { i32 2076, i32 0 }, %struct.addr_val_pair { i32 2084, i32 0 }, %struct.addr_val_pair { i32 2092, i32 0 }, %struct.addr_val_pair { i32 2100, i32 0 }, %struct.addr_val_pair { i32 2108, i32 0 }, %struct.addr_val_pair { i32 2116, i32 0 }, %struct.addr_val_pair { i32 2124, i32 0 }, %struct.addr_val_pair { i32 2132, i32 0 }, %struct.addr_val_pair { i32 2176, i32 4 }], [48 x i8] zeroinitializer }, align 32
@t3_mac_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 119, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"MAC %d XAUI SERDES CMU lock failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"t3_mac_reset\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/chelsio/cxgb3/xgmac.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@t3_mac_reset._entry_ptr = internal global ptr @t3_mac_reset._entry, section ".printk_index", align 4
@t3b2_mac_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 185, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MAC %d Rx fifo drain failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"t3b2_mac_reset\00", [17 x i8] zeroinitializer }, align 32
@t3b2_mac_reset._entry_ptr = internal global ptr @t3b2_mac_reset._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 100, i64 1000, i64 10000]
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"mac_reset_avp\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 81, i32 36 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 117, i32 5 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [46 x i8] c"../drivers/net/ethernet/chelsio/cxgb3/xgmac.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 184, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @t3_mac_reset._entry, ptr @t3_mac_reset._entry_ptr, ptr @t3b2_mac_reset._entry, ptr @t3b2_mac_reset._entry_ptr, ptr @t3_mac_reset.mac_reset_avp, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_mac_reset.mac_reset_avp to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3_mac_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t3b2_mac_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3b_pcs_reset(ptr nocapture noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 8
  %offset = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %add = add i32 %3, 2220
  tail call void @t3_set_reg_field(ptr noundef %1, i32 noundef %add, i32 noundef 2, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 4294960) #5
  %5 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mac, align 8
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset, align 4
  %add3 = add i32 %8, 2220
  tail call void @t3_set_reg_field(ptr noundef %6, i32 noundef %add3, i32 noundef 0, i32 noundef 2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_set_reg_field(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_mac_reset(ptr nocapture noundef %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 8
  %offset = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %add = add i32 %3, 2220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #5, !srcloc !27
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @t3_write_regs(ptr noundef %1, ptr noundef nonnull @t3_mac_reset.mac_reset_avp, i32 noundef 14, i32 noundef %3) #5
  %add2 = add i32 %3, 2180
  %info.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 5
  %9 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info.i, align 4
  %caps.i = getelementptr inbounds %struct.adapter_info, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %caps.i, align 4
  %and.i = lshr i32 %12, 7
  %13 = and i32 %and.i, 2
  %14 = xor i32 %13, 2
  tail call void @t3_set_reg_field(ptr noundef %1, i32 noundef %add2, i32 noundef 3, i32 noundef %14) #5
  %add4 = add i32 %3, 2184
  tail call void @t3_set_reg_field(ptr noundef %1, i32 noundef %add4, i32 noundef 0, i32 noundef 4194304) #5
  %15 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info.i, align 4
  %caps.i80 = getelementptr inbounds %struct.adapter_info, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %caps.i80 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %caps.i80, align 4
  %and.i81 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81)
  %tobool6.not = icmp eq i32 %and.i81, 0
  br i1 %tobool6.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then:                                          ; preds = %entry
  %rev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 13
  %19 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %add8 = add i32 %3, 2192
  tail call void @t3_set_reg_field(ptr noundef %1, i32 noundef %add8, i32 noundef 0, i32 noundef 24) #5
  %add9 = add i32 %3, 2448
  %call.i = tail call i32 @t3_wait_op_done_val(ptr noundef %1, i32 noundef %add9, i32 noundef -2147483648, i32 noundef 1, i32 noundef 5, i32 noundef 2, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset, align 4
  %div1.i = lshr i32 %24, 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %div1.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @t3_set_reg_field(ptr noundef %1, i32 noundef %add8, i32 noundef 0, i32 noundef 16777216) #5
  br label %if.end16

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mac, align 8
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset, align 4
  %add.i = add i32 %28, 2272
  %div1.i.i = lshr i32 %28, 9
  %arrayidx.i = getelementptr %struct.adapter, ptr %26, i32 0, i32 10, i32 3, i32 8, i32 %div1.i.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %30 to i32
  %or9.i = or i32 %conv.i, 16760832
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %31 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #5
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %26, i32 0, i32 2
  %32 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %31) #5, !srcloc !27
  %34 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %35, i32 %add.i
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 3221220) #5
  tail call void @t3_set_reg_field(ptr noundef %26, i32 noundef %add.i, i32 noundef 196608, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 3221220) #5
  tail call void @t3_set_reg_field(ptr noundef %26, i32 noundef %add.i, i32 noundef 16384, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 3221220) #5
  tail call void @t3_set_reg_field(ptr noundef %26, i32 noundef %add.i, i32 noundef 3145728, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 3221220) #5
  tail call void @t3_set_reg_field(ptr noundef %26, i32 noundef %add.i, i32 noundef 786432, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 3221220) #5
  tail call void @t3_set_reg_field(ptr noundef %26, i32 noundef %add.i, i32 noundef 32768, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 3221220) #5
  tail call void @t3_set_reg_field(ptr noundef %26, i32 noundef %add.i, i32 noundef 12582912, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 3221220) #5
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end, %entry.if.end16_crit_edge
  %add17 = add i32 %3, 2216
  tail call void @t3_set_reg_field(ptr noundef %1, i32 noundef %add17, i32 noundef 2147352576, i32 noundef 1342193664) #5
  %44 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %info.i, align 4
  %caps.i84 = getelementptr inbounds %struct.adapter_info, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %caps.i84 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %caps.i84, align 4
  %and.i85 = and i32 %47, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85)
  %tobool19.not = icmp eq i32 %and.i85, 0
  %and.i88 = and i32 %47, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88)
  %tobool23.not = icmp eq i32 %and.i88, 0
  %. = select i1 %tobool23.not, i32 29, i32 27
  %val.0 = select i1 %tobool19.not, i32 %., i32 19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %48 = shl nuw nsw i32 %val.0, 24
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %50, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %48) #5, !srcloc !27
  %51 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %52, i32 %add
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %and = and i32 %val.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.end16.if.end38_crit_edge, label %land.lhs.true

if.end16.if.end38_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end16
  %rev35 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 13
  %54 = ptrtoint ptr %rev35 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rev35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool36.not = icmp eq i32 %55, 0
  br i1 %tobool36.not, label %land.lhs.true.if.end38_crit_edge, label %if.then37

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 1) #5
  %56 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mac, align 8
  %58 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %offset, align 4
  %add.i94 = add i32 %59, 2220
  tail call void @t3_set_reg_field(ptr noundef %57, i32 noundef %add.i94, i32 noundef 2, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 4294960) #5
  %61 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mac, align 8
  %63 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %offset, align 4
  %add3.i = add i32 %64, 2220
  tail call void @t3_set_reg_field(ptr noundef %62, i32 noundef %add3.i, i32 noundef 0, i32 noundef 2) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %land.lhs.true.if.end38_crit_edge, %if.end16.if.end38_crit_edge
  %stats = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12
  %65 = call ptr @memset(ptr %stats, i32 0, i32 408)
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.end38 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @t3_write_regs(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_mac_set_address(ptr nocapture noundef readonly %mac, i32 noundef %idx, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nucast = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 2
  %0 = ptrtoint ptr %nucast to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nucast, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %idx)
  %cmp.not = icmp ugt i32 %1, %idx
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %offset.i = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %2 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset.i, align 4
  %mul.i = shl i32 %idx, 3
  %add.i = add i32 %3, %mul.i
  %arrayidx.i = getelementptr i8, ptr %addr, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr i8, ptr %addr, i32 2
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %7 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr i8, ptr %addr, i32 1
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %9 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr, align 1
  %conv9.i = zext i8 %11 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %arrayidx11.i = getelementptr i8, ptr %addr, i32 5
  %12 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %13 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 8
  %arrayidx14.i = getelementptr i8, ptr %addr, i32 4
  %14 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %15 to i32
  %or16.i = or i32 %shl13.i, %conv15.i
  %16 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mac, align 8
  %add17.i = add i32 %add.i, 2076
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %or10.i) #5
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %17, i32 0, i32 2
  %19 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %add17.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %18) #5, !srcloc !27
  %21 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mac, align 8
  %add19.i = add i32 %add.i, 2080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %23 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #5
  %regs.i28.i = getelementptr inbounds %struct.adapter, ptr %22, i32 0, i32 2
  %24 = ptrtoint ptr %regs.i28.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i28.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %25, i32 %add19.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %23) #5, !srcloc !27
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @t3_mac_set_num_ucast(ptr nocapture noundef writeonly %mac, i32 noundef %n) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %n)
  %cmp = icmp sgt i32 %n, 8
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %nucast = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 2
  %0 = ptrtoint ptr %nucast to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %n, ptr %nucast, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_mac_disable_exact_filters(ptr nocapture noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offset = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  %add = add i32 %1, 2076
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac, align 8
  %regs.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %7 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mac, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i11 = getelementptr inbounds %struct.adapter, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %regs.i11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i11, align 4
  %add.ptr.i12 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %6) #5, !srcloc !27
  %add2 = add i32 %1, 2084
  %11 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mac, align 8
  %regs.i.1 = getelementptr inbounds %struct.adapter, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %regs.i.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.1, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %14, i32 %add2
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %16 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mac, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i11.1 = getelementptr inbounds %struct.adapter, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %regs.i11.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i11.1, align 4
  %add.ptr.i12.1 = getelementptr i8, ptr %19, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.1, i32 %15) #5, !srcloc !27
  %add2.1 = add i32 %1, 2092
  %20 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac, align 8
  %regs.i.2 = getelementptr inbounds %struct.adapter, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %regs.i.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.2, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %23, i32 %add2.1
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %25 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mac, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i11.2 = getelementptr inbounds %struct.adapter, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %regs.i11.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i11.2, align 4
  %add.ptr.i12.2 = getelementptr i8, ptr %28, i32 %add2.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.2, i32 %24) #5, !srcloc !27
  %add2.2 = add i32 %1, 2100
  %29 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mac, align 8
  %regs.i.3 = getelementptr inbounds %struct.adapter, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %regs.i.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i.3, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %32, i32 %add2.2
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %34 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mac, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i11.3 = getelementptr inbounds %struct.adapter, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %regs.i11.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i11.3, align 4
  %add.ptr.i12.3 = getelementptr i8, ptr %37, i32 %add2.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.3, i32 %33) #5, !srcloc !27
  %add2.3 = add i32 %1, 2108
  %38 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mac, align 8
  %regs.i.4 = getelementptr inbounds %struct.adapter, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %regs.i.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i.4, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %41, i32 %add2.3
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %43 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mac, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i11.4 = getelementptr inbounds %struct.adapter, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %regs.i11.4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i11.4, align 4
  %add.ptr.i12.4 = getelementptr i8, ptr %46, i32 %add2.3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.4, i32 %42) #5, !srcloc !27
  %add2.4 = add i32 %1, 2116
  %47 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mac, align 8
  %regs.i.5 = getelementptr inbounds %struct.adapter, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %regs.i.5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i.5, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %50, i32 %add2.4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %52 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mac, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i11.5 = getelementptr inbounds %struct.adapter, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %regs.i11.5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i11.5, align 4
  %add.ptr.i12.5 = getelementptr i8, ptr %55, i32 %add2.4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.5, i32 %51) #5, !srcloc !27
  %add2.5 = add i32 %1, 2124
  %56 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mac, align 8
  %regs.i.6 = getelementptr inbounds %struct.adapter, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %regs.i.6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i.6, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %59, i32 %add2.5
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %61 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mac, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i11.6 = getelementptr inbounds %struct.adapter, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %regs.i11.6 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i11.6, align 4
  %add.ptr.i12.6 = getelementptr i8, ptr %64, i32 %add2.5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.6, i32 %60) #5, !srcloc !27
  %add2.6 = add i32 %1, 2132
  %65 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mac, align 8
  %regs.i.7 = getelementptr inbounds %struct.adapter, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %regs.i.7 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i.7, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %68, i32 %add2.6
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.7) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %70 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mac, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i11.7 = getelementptr inbounds %struct.adapter, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %regs.i11.7 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i11.7, align 4
  %add.ptr.i12.7 = getelementptr i8, ptr %73, i32 %add2.6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.7, i32 %69) #5, !srcloc !27
  %74 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mac, align 8
  %regs.i13 = getelementptr inbounds %struct.adapter, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %regs.i13 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i13, align 4
  %add.ptr.i14 = getelementptr i8, ptr %77, i32 2076
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t3_mac_enable_exact_filters(ptr nocapture noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offset = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  %add = add i32 %1, 2080
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac, align 8
  %regs.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %7 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mac, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i11 = getelementptr inbounds %struct.adapter, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %regs.i11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i11, align 4
  %add.ptr.i12 = getelementptr i8, ptr %10, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %6) #5, !srcloc !27
  %add2 = add i32 %1, 2088
  %11 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mac, align 8
  %regs.i.1 = getelementptr inbounds %struct.adapter, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %regs.i.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.1, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %14, i32 %add2
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %16 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mac, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i11.1 = getelementptr inbounds %struct.adapter, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %regs.i11.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i11.1, align 4
  %add.ptr.i12.1 = getelementptr i8, ptr %19, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.1, i32 %15) #5, !srcloc !27
  %add2.1 = add i32 %1, 2096
  %20 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac, align 8
  %regs.i.2 = getelementptr inbounds %struct.adapter, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %regs.i.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.2, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %23, i32 %add2.1
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %25 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mac, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i11.2 = getelementptr inbounds %struct.adapter, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %regs.i11.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i11.2, align 4
  %add.ptr.i12.2 = getelementptr i8, ptr %28, i32 %add2.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.2, i32 %24) #5, !srcloc !27
  %add2.2 = add i32 %1, 2104
  %29 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mac, align 8
  %regs.i.3 = getelementptr inbounds %struct.adapter, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %regs.i.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i.3, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %32, i32 %add2.2
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %34 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mac, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i11.3 = getelementptr inbounds %struct.adapter, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %regs.i11.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i11.3, align 4
  %add.ptr.i12.3 = getelementptr i8, ptr %37, i32 %add2.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.3, i32 %33) #5, !srcloc !27
  %add2.3 = add i32 %1, 2112
  %38 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mac, align 8
  %regs.i.4 = getelementptr inbounds %struct.adapter, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %regs.i.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i.4, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %41, i32 %add2.3
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %43 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mac, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i11.4 = getelementptr inbounds %struct.adapter, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %regs.i11.4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i11.4, align 4
  %add.ptr.i12.4 = getelementptr i8, ptr %46, i32 %add2.3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.4, i32 %42) #5, !srcloc !27
  %add2.4 = add i32 %1, 2120
  %47 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mac, align 8
  %regs.i.5 = getelementptr inbounds %struct.adapter, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %regs.i.5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i.5, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %50, i32 %add2.4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %52 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mac, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i11.5 = getelementptr inbounds %struct.adapter, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %regs.i11.5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i11.5, align 4
  %add.ptr.i12.5 = getelementptr i8, ptr %55, i32 %add2.4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.5, i32 %51) #5, !srcloc !27
  %add2.5 = add i32 %1, 2128
  %56 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mac, align 8
  %regs.i.6 = getelementptr inbounds %struct.adapter, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %regs.i.6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i.6, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %59, i32 %add2.5
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %61 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mac, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i11.6 = getelementptr inbounds %struct.adapter, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %regs.i11.6 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i11.6, align 4
  %add.ptr.i12.6 = getelementptr i8, ptr %64, i32 %add2.5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.6, i32 %60) #5, !srcloc !27
  %add2.6 = add i32 %1, 2136
  %65 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mac, align 8
  %regs.i.7 = getelementptr inbounds %struct.adapter, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %regs.i.7 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i.7, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %68, i32 %add2.6
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.7) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %70 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mac, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i11.7 = getelementptr inbounds %struct.adapter, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %regs.i11.7 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i11.7, align 4
  %add.ptr.i12.7 = getelementptr i8, ptr %73, i32 %add2.6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.7, i32 %69) #5, !srcloc !27
  %74 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mac, align 8
  %regs.i13 = getelementptr inbounds %struct.adapter, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %regs.i13 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i13, align 4
  %add.ptr.i14 = getelementptr i8, ptr %77, i32 2076
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_mac_set_rx_mode(ptr nocapture noundef readonly %mac, ptr noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 8
  %offset = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %add = add i32 %3, 2064
  %regs.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %7 = and i32 %6, -16777217
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 8
  %and1 = lshr i32 %10, 8
  %and1.lobit = and i32 %and1, 1
  %spec.select = or i32 %and1.lobit, %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #5
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i54 = getelementptr i8, ptr %13, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %11) #5, !srcloc !27
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  %and4 = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.else:                                          ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %16 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %16)
  %ha.062 = load ptr, ptr %mc, align 4
  %cmp.not63 = icmp eq ptr %ha.062, %mc
  br i1 %cmp.not63, label %if.else.if.end29_crit_edge, label %for.body.preheader

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

for.body.preheader:                               ; preds = %if.else
  %nucast = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 2
  %17 = ptrtoint ptr %nucast to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nucast, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %ha.067 = phi ptr [ %ha.0, %for.inc.for.body_crit_edge ], [ %ha.062, %for.body.preheader ]
  %hash_lo.066 = phi i32 [ %hash_lo.2, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %hash_hi.065 = phi i32 [ %hash_hi.2, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %exact_addr_idx.064 = phi i32 [ %exact_addr_idx.1, %for.inc.for.body_crit_edge ], [ %18, %for.body.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %exact_addr_idx.064)
  %cmp10 = icmp slt i32 %exact_addr_idx.064, 8
  br i1 %cmp10, label %if.then11, label %if.else12

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %inc = add nsw i32 %exact_addr_idx.064, 1
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.067, i32 0, i32 2
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 4
  %mul.i = shl i32 %exact_addr_idx.064, 3
  %add.i = add i32 %20, %mul.i
  %arrayidx.i = getelementptr %struct.netdev_hw_addr, ptr %ha.067, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %22 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx1.i = getelementptr %struct.netdev_hw_addr, ptr %ha.067, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %24 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 16
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr %struct.netdev_hw_addr, ptr %ha.067, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %26 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 8
  %or7.i = or i32 %or.i, %shl6.i
  %27 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %addr, align 1
  %conv9.i = zext i8 %28 to i32
  %or10.i = or i32 %or7.i, %conv9.i
  %arrayidx11.i = getelementptr %struct.netdev_hw_addr, ptr %ha.067, i32 0, i32 2, i32 5
  %29 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %30 to i32
  %shl13.i = shl nuw nsw i32 %conv12.i, 8
  %arrayidx14.i = getelementptr %struct.netdev_hw_addr, ptr %ha.067, i32 0, i32 2, i32 4
  %31 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %32 to i32
  %or16.i = or i32 %shl13.i, %conv15.i
  %33 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mac, align 8
  %add17.i = add i32 %add.i, 2076
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %35 = tail call i32 @llvm.bswap.i32(i32 %or10.i) #5
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %34, i32 0, i32 2
  %36 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 %add17.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %35) #5, !srcloc !27
  %38 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mac, align 8
  %add19.i = add i32 %add.i, 2080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %40 = tail call i32 @llvm.bswap.i32(i32 %or16.i) #5
  %regs.i28.i = getelementptr inbounds %struct.adapter, ptr %39, i32 0, i32 2
  %41 = ptrtoint ptr %regs.i28.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i28.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %42, i32 %add19.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %40) #5, !srcloc !27
  br label %for.inc

if.else12:                                        ; preds = %for.body
  %addr13 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.067, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else12
  %i.023.i = phi i32 [ 0, %if.else12 ], [ %spec.store.select.7.i, %for.body.i.for.body.i_crit_edge ]
  %octet.022.i = phi i32 [ 0, %if.else12 ], [ %inc9.i, %for.body.i.for.body.i_crit_edge ]
  %hash.021.i = phi i32 [ 0, %if.else12 ], [ %xor.7.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i55 = getelementptr i8, ptr %addr13, i32 %octet.022.i
  %43 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i55, align 1
  %conv.i56 = zext i8 %44 to i32
  %and.i = and i32 %conv.i56, 1
  %shl.i57 = shl nuw i32 %and.i, %i.023.i
  %xor.i = xor i32 %shl.i57, %hash.021.i
  %inc.i = add i32 %i.023.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc.i)
  %cmp5.i = icmp eq i32 %inc.i, 6
  %spec.store.select.i = select i1 %cmp5.i, i32 0, i32 %inc.i
  %45 = lshr i32 %conv.i56, 1
  %and.1.i = and i32 %45, 1
  %shl.1.i = shl nuw i32 %and.1.i, %spec.store.select.i
  %xor.1.i = xor i32 %xor.i, %shl.1.i
  %inc.1.i = add i32 %spec.store.select.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc.1.i)
  %cmp5.1.i = icmp eq i32 %inc.1.i, 6
  %spec.store.select.1.i = select i1 %cmp5.1.i, i32 0, i32 %inc.1.i
  %46 = lshr i32 %conv.i56, 2
  %and.2.i = and i32 %46, 1
  %shl.2.i = shl nuw i32 %and.2.i, %spec.store.select.1.i
  %xor.2.i = xor i32 %xor.1.i, %shl.2.i
  %inc.2.i = add i32 %spec.store.select.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc.2.i)
  %cmp5.2.i = icmp eq i32 %inc.2.i, 6
  %spec.store.select.2.i = select i1 %cmp5.2.i, i32 0, i32 %inc.2.i
  %47 = lshr i32 %conv.i56, 3
  %and.3.i = and i32 %47, 1
  %shl.3.i = shl nuw i32 %and.3.i, %spec.store.select.2.i
  %xor.3.i = xor i32 %xor.2.i, %shl.3.i
  %inc.3.i = add i32 %spec.store.select.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc.3.i)
  %cmp5.3.i = icmp eq i32 %inc.3.i, 6
  %spec.store.select.3.i = select i1 %cmp5.3.i, i32 0, i32 %inc.3.i
  %48 = lshr i32 %conv.i56, 4
  %and.4.i = and i32 %48, 1
  %shl.4.i = shl nuw i32 %and.4.i, %spec.store.select.3.i
  %xor.4.i = xor i32 %xor.3.i, %shl.4.i
  %inc.4.i = add i32 %spec.store.select.3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc.4.i)
  %cmp5.4.i = icmp eq i32 %inc.4.i, 6
  %spec.store.select.4.i = select i1 %cmp5.4.i, i32 0, i32 %inc.4.i
  %49 = lshr i32 %conv.i56, 5
  %and.5.i = and i32 %49, 1
  %shl.5.i = shl nuw i32 %and.5.i, %spec.store.select.4.i
  %xor.5.i = xor i32 %xor.4.i, %shl.5.i
  %inc.5.i = add i32 %spec.store.select.4.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc.5.i)
  %cmp5.5.i = icmp eq i32 %inc.5.i, 6
  %spec.store.select.5.i = select i1 %cmp5.5.i, i32 0, i32 %inc.5.i
  %50 = lshr i32 %conv.i56, 6
  %and.6.i = and i32 %50, 1
  %shl.6.i = shl nuw i32 %and.6.i, %spec.store.select.5.i
  %xor.6.i = xor i32 %xor.5.i, %shl.6.i
  %inc.6.i = add i32 %spec.store.select.5.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc.6.i)
  %cmp5.6.i = icmp eq i32 %inc.6.i, 6
  %spec.store.select.6.i = select i1 %cmp5.6.i, i32 0, i32 %inc.6.i
  %51 = lshr i32 %conv.i56, 7
  %shl.7.i = shl nuw i32 %51, %spec.store.select.6.i
  %xor.7.i = xor i32 %xor.6.i, %shl.7.i
  %inc.7.i = add i32 %spec.store.select.6.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %inc.7.i)
  %cmp5.7.i = icmp eq i32 %inc.7.i, 6
  %spec.store.select.7.i = select i1 %cmp5.7.i, i32 0, i32 %inc.7.i
  %inc9.i = add nuw nsw i32 %octet.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc9.i, 6
  br i1 %exitcond.not.i, label %hash_hw_addr.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

hash_hw_addr.exit:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %xor.7.i)
  %cmp16 = icmp slt i32 %xor.7.i, 32
  br i1 %cmp16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %hash_hw_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl nuw i32 1, %xor.7.i
  %or18 = or i32 %shl, %hash_lo.066
  br label %for.inc

if.else19:                                        ; preds = %hash_hw_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add nsw i32 %xor.7.i, -32
  %shl20 = shl nuw i32 1, %sub
  %or21 = or i32 %shl20, %hash_hi.065
  br label %for.inc

for.inc:                                          ; preds = %if.else19, %if.then17, %if.then11
  %exact_addr_idx.1 = phi i32 [ %inc, %if.then11 ], [ %exact_addr_idx.064, %if.else19 ], [ %exact_addr_idx.064, %if.then17 ]
  %hash_hi.2 = phi i32 [ %hash_hi.065, %if.then11 ], [ %or21, %if.else19 ], [ %hash_hi.065, %if.then17 ]
  %hash_lo.2 = phi i32 [ %hash_lo.066, %if.then11 ], [ %hash_lo.066, %if.else19 ], [ %or18, %if.then17 ]
  %52 = ptrtoint ptr %ha.067 to i32
  call void @__asan_load4_noabort(i32 %52)
  %ha.0 = load ptr, ptr %ha.067, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %for.inc.if.end29_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.end29_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.end29:                                         ; preds = %for.inc.if.end29_crit_edge, %if.else.if.end29_crit_edge, %entry.if.end29_crit_edge
  %hash_hi.3 = phi i32 [ -1, %entry.if.end29_crit_edge ], [ 0, %if.else.if.end29_crit_edge ], [ %hash_hi.2, %for.inc.if.end29_crit_edge ]
  %hash_lo.3 = phi i32 [ -1, %entry.if.end29_crit_edge ], [ 0, %if.else.if.end29_crit_edge ], [ %hash_lo.2, %for.inc.if.end29_crit_edge ]
  %add30 = add i32 %3, 2068
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %53 = tail call i32 @llvm.bswap.i32(i32 %hash_lo.3) #5
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %55, i32 %add30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %53) #5, !srcloc !27
  %add31 = add i32 %3, 2072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %56 = tail call i32 @llvm.bswap.i32(i32 %hash_hi.3) #5
  %57 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %58, i32 %add31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %56) #5, !srcloc !27
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_mac_set_mtu(ptr nocapture noundef readonly %mac, i32 noundef %mtu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 8
  %add = add i32 %mtu, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %add)
  %cmp = icmp ugt i32 %add, 1536
  %add1 = add i32 %mtu, 18
  %spec.select = select i1 %cmp, i32 %add1, i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 10236, i32 %spec.select)
  %cmp2 = icmp ugt i32 %spec.select, 10236
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %entry
  %offset = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %add5 = add i32 %3, 2216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #5
  %regs.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #5, !srcloc !27
  %rev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 13
  %7 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp6 = icmp ugt i32 %8, 2
  br i1 %cmp6, label %land.lhs.true, label %if.end4.if.else_crit_edge

if.end4.if.else_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end4
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %add8 = add i32 %10, 2060
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i174 = getelementptr i8, ptr %12, i32 %add8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i174) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then9

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then9:                                         ; preds = %land.lhs.true
  tail call void @t3_mac_disable_exact_filters(ptr noundef %mac)
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset, align 4
  %add11 = add i32 %16, 2064
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i176 = getelementptr i8, ptr %18, i32 %add11
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i176) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset, align 4
  %add14 = add i32 %21, 2064
  tail call void @t3_set_reg_field(ptr noundef %1, i32 noundef %add14, i32 noundef 5, i32 noundef 2) #5
  %22 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp17 = icmp eq i32 %23, 3
  %cond = select i1 %cmp17, i32 2468, i32 2180
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset, align 4
  %add19 = add i32 %cond, %25
  %call.i = tail call i32 @t3_wait_op_done_val(ptr noundef %1, i32 noundef %add19, i32 noundef -2147483648, i32 noundef 1, i32 noundef 20, i32 noundef 5, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not = icmp eq i32 %call.i, 0
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset, align 4
  br i1 %tobool21.not, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %add24 = add i32 %27, 2064
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i178 = getelementptr i8, ptr %29, i32 %add24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178, i32 %19) #5, !srcloc !27
  tail call void @t3_mac_enable_exact_filters(ptr noundef %mac)
  br label %cleanup

if.end25:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %add27 = add i32 %27, 2216
  tail call void @t3_set_reg_field(ptr noundef %1, i32 noundef %add27, i32 noundef 16383, i32 noundef %spec.select) #5
  %30 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset, align 4
  %add29 = add i32 %31, 2064
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %add.ptr.i180 = getelementptr i8, ptr %33, i32 %add29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 %19) #5, !srcloc !27
  tail call void @t3_mac_enable_exact_filters(ptr noundef %mac)
  br label %if.end33

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end4.if.else_crit_edge
  %34 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset, align 4
  %add31 = add i32 %35, 2216
  tail call void @t3_set_reg_field(ptr noundef %1, i32 noundef %add31, i32 noundef 16383, i32 noundef %spec.select) #5
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.end25
  %mul.neg.i = mul nsw i32 %spec.select, -3
  %36 = tail call i32 @llvm.smax.i32(i32 %mul.neg.i, i32 -20317)
  %37 = add nsw i32 %36, 32768
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 24576) #5
  %mul = mul nuw nsw i32 %spec.select, 3
  %39 = tail call i32 @llvm.umin.i32(i32 %mul, i32 8192)
  %40 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offset, align 4
  %add38 = add i32 %41, 2180
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 4
  %add.ptr.i182 = getelementptr i8, ptr %43, i32 %add38
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i182) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %45 = and i32 %44, 520158975
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = shl nuw nsw i32 %39, 2
  %shl41 = and i32 %47, 65504
  %or = or i32 %46, %shl41
  %48 = and i32 %46, 536739840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool43.not = icmp eq i32 %48, 0
  %and45 = and i32 %or, -536805377
  %49 = shl nuw nsw i32 %38, 14
  %shl47 = and i32 %49, 536739840
  %or48 = or i32 %and45, %shl47
  %v.0 = select i1 %tobool43.not, i32 %or, i32 %or48
  %50 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %offset, align 4
  %add51 = add i32 %51, 2180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %52 = tail call i32 @llvm.bswap.i32(i32 %v.0) #5
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 4
  %add.ptr.i184 = getelementptr i8, ptr %54, i32 %add51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184, i32 %52) #5, !srcloc !27
  %vpd = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 3
  %55 = ptrtoint ptr %vpd to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %vpd, align 4
  %mul53 = mul i32 %56, 1000
  %div54 = udiv i32 %mul53, 15625
  %mul55 = mul nuw i32 %div54, %spec.select
  %info.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 5
  %57 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %info.i, align 4
  %caps.i = getelementptr inbounds %struct.adapter_info, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %60, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool58.not = icmp eq i32 %and.i, 0
  %thres.0.v = select i1 %tobool58.not, i32 1000, i32 10000
  %thres.0 = udiv i32 %mul55, %thres.0.v
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %thres.0)
  %cmp62 = icmp ugt i32 %spec.select, %thres.0
  %sub = add nuw nsw i32 %spec.select, 7
  %add64 = sub nsw i32 %sub, %thres.0
  %div65172 = lshr i32 %add64, 3
  %61 = tail call i32 @llvm.umax.i32(i32 %div65172, i32 8)
  %62 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %63)
  %cmp77.not = icmp eq i32 %63, 4
  %64 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %offset, align 4
  %add80 = add i32 %65, 2184
  %.op = shl i32 %61, 4
  %shl81 = select i1 %cmp62, i32 %.op, i32 128
  %shl82 = select i1 %cmp77.not, i32 0, i32 8192
  %or83 = or i32 %shl81, %shl82
  tail call void @t3_set_reg_field(ptr noundef %1, i32 noundef %add80, i32 noundef 2097136, i32 noundef %or83) #5
  %66 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp86.not = icmp eq i32 %67, 0
  br i1 %cmp86.not, label %if.end33.if.end97_crit_edge, label %if.then87

if.end33.if.end97_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.then87:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %67)
  %cmp90 = icmp eq i32 %67, 4
  %68 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %offset, align 4
  %add93 = add i32 %69, 2192
  %sub94 = sub nuw nsw i32 %38, %39
  %mul95 = shl nuw nsw i32 %sub94, 2
  %70 = select i1 %cmp90, i32 6, i32 3
  %div96193196 = lshr i32 %mul95, %70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %71 = tail call i32 @llvm.bswap.i32(i32 %div96193196) #5
  %72 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i, align 4
  %add.ptr.i186 = getelementptr i8, ptr %73, i32 %add93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i186, i32 %71) #5, !srcloc !27
  br label %if.end97

if.end97:                                         ; preds = %if.then87, %if.end33.if.end97_crit_edge
  %74 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %offset, align 4
  %add99 = add i32 %75, 2056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %76 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i, align 4
  %add.ptr.i188 = getelementptr i8, ptr %77, i32 %add99
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i188, i32 524288) #5, !srcloc !27
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.then22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then22 ], [ 0, %if.end97 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_mac_set_speed_duplex_fc(ptr nocapture noundef readonly %mac, i32 noundef %speed, i32 noundef %duplex, i32 noundef %fc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 8
  %offset = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %duplex)
  %cmp = icmp slt i32 %duplex, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %duplex)
  %cmp1.not = icmp eq i32 %duplex, 1
  %or.cond = or i1 %cmp, %cmp1.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %speed)
  %cmp2 = icmp sgt i32 %speed, -1
  br i1 %cmp2, label %if.then3, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then3:                                         ; preds = %if.end
  %4 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %speed, label %if.then3.cleanup_crit_edge [
    i32 10, label %if.then3.if.end18_crit_edge
    i32 100, label %if.then7
    i32 1000, label %if.then10
    i32 10000, label %if.then13
  ]

if.then3.if.end18_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then10:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then13:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.then10, %if.then7, %if.then3.if.end18_crit_edge
  %val.0 = phi i32 [ 2, %if.then7 ], [ 4, %if.then10 ], [ 6, %if.then13 ], [ 0, %if.then3.if.end18_crit_edge ]
  %add = add i32 %3, 2232
  tail call void @t3_set_reg_field(ptr noundef %1, i32 noundef %add, i32 noundef 6, i32 noundef %val.0) #5
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end.if.end19_crit_edge
  %add20 = add i32 %3, 2180
  %regs.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %8 = and i32 %7, -65056
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and21 = and i32 %fc, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool.not = icmp eq i32 %and21, 0
  br i1 %tobool.not, label %if.end19.if.end27_crit_edge, label %if.then22

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %add23 = add i32 %3, 2216
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %11, i32 %add23
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %13 = and i32 %12, -12648448
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %mul.neg.i = mul nsw i32 %14, -3
  %15 = tail call i32 @llvm.smax.i32(i32 %mul.neg.i, i32 -20317)
  %16 = add nsw i32 %15, 32768
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 24576) #5
  %18 = shl nuw nsw i32 %17, 14
  %shl = and i32 %18, 536739840
  %or = or i32 %shl, %9
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end19.if.end27_crit_edge
  %val.1 = phi i32 [ %or, %if.then22 ], [ %9, %if.end19.if.end27_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %val.1) #5
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %21, i32 %add20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %19) #5, !srcloc !27
  %add29 = add i32 %3, 2052
  %and30 = and i32 %fc, 1
  tail call void @t3_set_reg_field(ptr noundef %1, i32 noundef %add29, i32 noundef 1, i32 noundef %and30) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_mac_enable(ptr nocapture noundef %mac, i32 noundef %which) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %offset.i = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %0 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset.i, align 4
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac, align 8
  %and = and i32 %which, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %div1.i = lshr i32 %1, 9
  %add = add nuw nsw i32 %div1.i, 299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %add) #5
  %regs.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #5, !srcloc !27
  %rev = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 10, i32 13
  %7 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp = icmp eq i32 %8, 4
  %cond = select i1 %cmp, i32 -989855999, i32 -1058151423
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %cond) #5
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %11, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %9) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %13, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 788594688) #5, !srcloc !27
  %shl = shl nuw i32 1, %div1.i
  %14 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp3 = icmp eq i32 %15, 4
  %spec.select = select i1 %cmp3, i32 0, i32 %shl
  tail call void @t3_set_reg_field(ptr noundef %3, i32 noundef 1092, i32 noundef %shl, i32 noundef %spec.select) #5
  %add6 = add i32 %1, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %17, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 16777216) #5, !srcloc !27
  %add7 = add nuw nsw i32 %div1.i, 301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %add7) #5
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %20, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 %18) #5, !srcloc !27
  %tx_frames = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 2
  %21 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tx_frames, align 8
  %tx_mcnt = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 5
  %23 = ptrtoint ptr %tx_mcnt to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %tx_mcnt, align 8
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %25, i32 1092
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %27 = and i32 %26, -65536
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %tx_tcnt = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 3
  %29 = ptrtoint ptr %tx_tcnt to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tx_tcnt, align 4
  %add10 = add i32 %1, 2472
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %31, i32 %add10
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #5, !srcloc !28
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %shr12 = lshr i32 %33, 16
  %tx_xcnt = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 4
  %34 = ptrtoint ptr %tx_xcnt to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shr12, ptr %tx_xcnt, align 8
  %rx_frames = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 24
  %35 = ptrtoint ptr %rx_frames to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %rx_frames, align 8
  %rx_mcnt = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 8
  %37 = ptrtoint ptr %rx_mcnt to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %rx_mcnt, align 8
  %rx_pause = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 27
  %38 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %rx_pause, align 8
  %rx_pause14 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 11
  %40 = ptrtoint ptr %rx_pause14 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %rx_pause14, align 8
  %add15 = add i32 %1, 2476
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %42, i32 %add15
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #5, !srcloc !28
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %shr17 = lshr i32 %44, 16
  %rx_xcnt = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 6
  %45 = ptrtoint ptr %rx_xcnt to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shr17, ptr %rx_xcnt, align 8
  %rx_fifo_ovfl = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 49
  %46 = ptrtoint ptr %rx_fifo_ovfl to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_fifo_ovfl, align 4
  %rx_ocnt = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 7
  %48 = ptrtoint ptr %rx_ocnt to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %rx_ocnt, align 4
  %txen = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 10
  %49 = ptrtoint ptr %txen to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %txen, align 4
  %toggle_cnt = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 9
  %50 = ptrtoint ptr %toggle_cnt to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %toggle_cnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and19 = and i32 %which, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end.if.end23_crit_edge, label %if.then21

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %add22 = add i32 %1, 2060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i71 = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 2
  %51 = ptrtoint ptr %regs.i71 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i71, align 4
  %add.ptr.i72 = getelementptr i8, ptr %52, i32 %add22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72, i32 16777216) #5, !srcloc !27
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end.if.end23_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3_mac_disable(ptr nocapture noundef %mac, i32 noundef %which) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 8
  %and = and i32 %which, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %offset = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %add = add i32 %3, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !27
  %txen = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 10
  %6 = ptrtoint ptr %txen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %txen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and1 = and i32 %which, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end22_crit_edge, label %if.then3

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mac, align 8
  %offset5 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %9 = ptrtoint ptr %offset5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset5, align 4
  %add6 = add i32 %10, 2220
  tail call void @t3_set_reg_field(ptr noundef %8, i32 noundef %add6, i32 noundef 2, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 100) #5
  %11 = ptrtoint ptr %offset5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset5, align 4
  %add8 = add i32 %12, 2060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i37 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %regs.i37 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i37, align 4
  %add.ptr.i38 = getelementptr i8, ptr %14, i32 %add8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 0) #5, !srcloc !27
  %info.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 10, i32 5
  %15 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info.i, align 4
  %caps.i = getelementptr inbounds %struct.adapter_info, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %18, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not = icmp eq i32 %and.i, 0
  %and.i41 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41)
  %tobool12.not = icmp eq i32 %and.i41, 0
  %. = select i1 %tobool12.not, i32 218103808, i32 184549376
  %val.0 = select i1 %tobool9.not, i32 %., i32 50331648
  %19 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mac, align 8
  %21 = ptrtoint ptr %offset5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset5, align 4
  %add21 = add i32 %22, 2220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i42 = getelementptr inbounds %struct.adapter, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %regs.i42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i42, align 4
  %add.ptr.i43 = getelementptr i8, ptr %24, i32 %add21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %val.0) #5, !srcloc !27
  br label %if.end22

if.end22:                                         ; preds = %if.then3, %if.end.if.end22_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t3b2_mac_watchdog_task(ptr noundef %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 8
  %tx_frames = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 2
  %2 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tx_frames, align 8
  %tx_tcnt1 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 3
  %4 = ptrtoint ptr %tx_tcnt1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_tcnt1, align 4
  %tx_mcnt2 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 5
  %6 = ptrtoint ptr %tx_mcnt2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tx_mcnt2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %7)
  %cmp = icmp eq i64 %3, %7
  br i1 %cmp, label %land.lhs.true, label %entry.if.else12_crit_edge

entry.if.else12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else12

land.lhs.true:                                    ; preds = %entry
  %rx_pause = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 11
  %8 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rx_pause, align 8
  %rx_pause3 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 27
  %10 = ptrtoint ptr %rx_pause3 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rx_pause3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %11)
  %cmp4 = icmp eq i64 %9, %11
  br i1 %cmp4, label %if.then, label %land.lhs.true.if.else12_crit_edge

land.lhs.true.if.else12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else12

if.then:                                          ; preds = %land.lhs.true
  %offset = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %add = add i32 %13, 2472
  %regs.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %add
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !28
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %shr = lshr i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %17)
  %cmp5 = icmp ult i32 %17, 65536
  br i1 %cmp5, label %if.then6, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then6:                                         ; preds = %if.then
  %18 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset, align 4
  %div1.i = lshr i32 %19, 9
  %add8 = add nuw nsw i32 %div1.i, 301
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %20 = tail call i32 @llvm.bswap.i32(i32 %add8) #5
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %22, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %20) #5, !srcloc !27
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %24, i32 1092
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %26 = and i32 %25, -65536
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %tx_tcnt1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_tcnt1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp15.not = icmp eq i32 %27, %29
  br i1 %cmp15.not, label %if.then6.if.else24_crit_edge, label %land.lhs.true16

if.then6.if.else24_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else24

if.else12:                                        ; preds = %land.lhs.true.if.else12_crit_edge, %entry.if.else12_crit_edge
  %toggle_cnt = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 9
  %30 = ptrtoint ptr %toggle_cnt to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %toggle_cnt, align 8
  br label %out

land.lhs.true16:                                  ; preds = %if.then6
  %tx_xcnt17 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 4
  %31 = ptrtoint ptr %tx_xcnt17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_xcnt17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp18 = icmp eq i32 %32, 0
  br i1 %cmp18, label %if.then19, label %land.lhs.true16.if.else24_crit_edge

land.lhs.true16.if.else24_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else24

if.then19:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #7
  %toggle_cnt20 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 9
  %33 = ptrtoint ptr %toggle_cnt20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %toggle_cnt20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp21 = icmp ugt i32 %34, 4
  %not.cmp21 = xor i1 %cmp21, true
  %.89 = select i1 %cmp21, i32 2, i32 1
  br label %out

if.else24:                                        ; preds = %land.lhs.true16.if.else24_crit_edge, %if.then6.if.else24_crit_edge
  %toggle_cnt25 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 9
  %35 = ptrtoint ptr %toggle_cnt25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %toggle_cnt25, align 8
  br label %out

out:                                              ; preds = %if.else24, %if.then19, %if.else12, %if.then.out_crit_edge
  %tx_tcnt.0 = phi i32 [ %27, %if.else24 ], [ %5, %if.then.out_crit_edge ], [ %5, %if.else12 ], [ %27, %if.then19 ]
  %tx_xcnt.0 = phi i32 [ 0, %if.else24 ], [ %shr, %if.then.out_crit_edge ], [ 1, %if.else12 ], [ 0, %if.then19 ]
  %cmp32 = phi i1 [ false, %if.else24 ], [ false, %if.then.out_crit_edge ], [ false, %if.else12 ], [ %not.cmp21, %if.then19 ]
  %cmp46 = phi i1 [ false, %if.else24 ], [ false, %if.then.out_crit_edge ], [ false, %if.else12 ], [ %cmp21, %if.then19 ]
  %status.0 = phi i32 [ 0, %if.else24 ], [ 0, %if.then.out_crit_edge ], [ 0, %if.else12 ], [ %.89, %if.then19 ]
  %36 = ptrtoint ptr %tx_tcnt1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %tx_tcnt.0, ptr %tx_tcnt1, align 4
  %tx_xcnt27 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 4
  %37 = ptrtoint ptr %tx_xcnt27 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %tx_xcnt.0, ptr %tx_xcnt27, align 8
  %38 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %tx_frames, align 8
  %40 = ptrtoint ptr %tx_mcnt2 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %tx_mcnt2, align 8
  %rx_pause30 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 27
  %41 = ptrtoint ptr %rx_pause30 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %rx_pause30, align 8
  %rx_pause31 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 11
  %43 = ptrtoint ptr %rx_pause31 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %rx_pause31, align 8
  br i1 %cmp32, label %if.then33, label %if.else45

if.then33:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  %offset34 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %44 = ptrtoint ptr %offset34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset34, align 4
  %add35 = add i32 %45, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i94 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %regs.i94 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i94, align 4
  %add.ptr.i95 = getelementptr i8, ptr %47, i32 %add35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 0) #5, !srcloc !27
  %48 = ptrtoint ptr %offset34 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset34, align 4
  %add37 = add i32 %49, 2048
  %50 = ptrtoint ptr %regs.i94 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i94, align 4
  %add.ptr.i97 = getelementptr i8, ptr %51, i32 %add37
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %53 = ptrtoint ptr %offset34 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %offset34, align 4
  %add40 = add i32 %54, 2048
  %txen = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 10
  %55 = ptrtoint ptr %txen to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %txen, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #5
  %58 = ptrtoint ptr %regs.i94 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i94, align 4
  %add.ptr.i99 = getelementptr i8, ptr %59, i32 %add40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %57) #5, !srcloc !27
  %60 = ptrtoint ptr %offset34 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offset34, align 4
  %add42 = add i32 %61, 2048
  %62 = ptrtoint ptr %regs.i94 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i94, align 4
  %add.ptr.i101 = getelementptr i8, ptr %63, i32 %add42
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %toggle_cnt44 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 9
  %65 = ptrtoint ptr %toggle_cnt44 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %toggle_cnt44, align 8
  %inc = add i32 %66, 1
  store i32 %inc, ptr %toggle_cnt44, align 8
  br label %if.end51

if.else45:                                        ; preds = %out
  br i1 %cmp46, label %if.then47, label %if.else45.if.end51_crit_edge

if.else45.if.end51_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then47:                                        ; preds = %if.else45
  %67 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mac, align 8
  %offset.i102 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %69 = ptrtoint ptr %offset.i102 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %offset.i102, align 4
  %div1.i.i = lshr i32 %70, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %70)
  %tobool.not.i = icmp ult i32 %70, 512
  %.34.i = select i1 %tobool.not.i, i32 1, i32 2
  tail call void @t3_set_reg_field(ptr noundef %68, i32 noundef 1536, i32 noundef %.34.i, i32 noundef 0) #5
  tail call void @t3_set_reg_field(ptr noundef %68, i32 noundef 1536, i32 noundef 2048, i32 noundef 0) #5
  %add.i = add i32 %70, 2052
  tail call void @t3_set_reg_field(ptr noundef %68, i32 noundef %add.i, i32 noundef 1, i32 noundef 0) #5
  %add2.i = add i32 %70, 2220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i.i = getelementptr inbounds %struct.adapter, ptr %68, i32 0, i32 2
  %71 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %72, i32 %add2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #5, !srcloc !27
  %73 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %74, i32 %add2.i
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %add5.i = add nuw nsw i32 %div1.i.i, 299
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %76 = tail call i32 @llvm.bswap.i32(i32 %add5.i) #5
  %77 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %78, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %76) #5, !srcloc !27
  %79 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %80, i32 %add5.i
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @msleep(i32 noundef 10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %82 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %83, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %76) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %84 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %85, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 285212864) #5, !srcloc !27
  %add9.i = add i32 %70, 2468
  %call.i.i = tail call i32 @t3_wait_op_done_val(ptr noundef %68, i32 noundef %add9.i, i32 noundef -2147483648, i32 noundef 1, i32 noundef 1000, i32 noundef 2, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not.i, label %if.end14.i, label %do.end.i

do.end.i:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i = getelementptr inbounds %struct.adapter, ptr %68, i32 0, i32 3
  %86 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %88 = ptrtoint ptr %offset.i102 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %offset.i102, align 4
  %div1.i14.i = lshr i32 %89, 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.5, i32 noundef %div1.i14.i) #8
  br label %t3b2_mac_reset.exit

if.end14.i:                                       ; preds = %if.then47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %91, i32 %add2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 0) #5, !srcloc !27
  %92 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %93, i32 %add2.i
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %info.i.i = getelementptr inbounds %struct.adapter, ptr %68, i32 0, i32 10, i32 5
  %95 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %info.i.i, align 4
  %caps.i.i = getelementptr inbounds %struct.adapter_info, ptr %96, i32 0, i32 5
  %97 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %caps.i.i, align 4
  %and.i.i = and i32 %98, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool19.not.i = icmp eq i32 %and.i.i, 0
  %and.i21.i = and i32 %98, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21.i)
  %tobool23.not.i = icmp eq i32 %and.i21.i, 0
  %..i = select i1 %tobool23.not.i, i32 13, i32 11
  %val.0.i = select i1 %tobool19.not.i, i32 %..i, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %99 = shl nuw nsw i32 %val.0.i, 24
  %100 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %101, i32 %add2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %99) #5, !srcloc !27
  %102 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %103, i32 %add2.i
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.i) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %and.i = and i32 %val.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool33.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool33.not.i, label %if.end14.i.if.end36.i_crit_edge, label %land.lhs.true.i

if.end14.i.if.end36.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %if.end14.i
  %rev.i = getelementptr inbounds %struct.adapter, ptr %68, i32 0, i32 10, i32 13
  %105 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool34.not.i = icmp eq i32 %106, 0
  br i1 %tobool34.not.i, label %land.lhs.true.i.if.end36.i_crit_edge, label %if.then35.i

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i

if.then35.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 1) #5
  %107 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mac, align 8
  %109 = ptrtoint ptr %offset.i102 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %offset.i102, align 4
  %add.i.i = add i32 %110, 2220
  tail call void @t3_set_reg_field(ptr noundef %108, i32 noundef %add.i.i, i32 noundef 2, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %111(i32 noundef 4294960) #5
  %112 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mac, align 8
  %114 = ptrtoint ptr %offset.i102 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %offset.i102, align 4
  %add3.i.i = add i32 %115, 2220
  tail call void @t3_set_reg_field(ptr noundef %113, i32 noundef %add3.i.i, i32 noundef 0, i32 noundef 2) #5
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then35.i, %land.lhs.true.i.if.end36.i_crit_edge, %if.end14.i.if.end36.i_crit_edge
  %add37.i = add i32 %70, 2064
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %116 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %117, i32 %add37.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 -1006436352) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %118 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %119, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 %76) #5, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %120 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %121, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %81) #5, !srcloc !27
  tail call void @t3_set_reg_field(ptr noundef %68, i32 noundef 1536, i32 noundef 0, i32 noundef %.34.i) #5
  tail call void @t3_set_reg_field(ptr noundef %68, i32 noundef 1536, i32 noundef 2048, i32 noundef 1) #5
  tail call void @t3_set_reg_field(ptr noundef %68, i32 noundef 1536, i32 noundef 2048, i32 noundef 1) #5
  br label %t3b2_mac_reset.exit

t3b2_mac_reset.exit:                              ; preds = %if.end36.i, %do.end.i
  %toggle_cnt49 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 9
  %122 = ptrtoint ptr %toggle_cnt49 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %toggle_cnt49, align 8
  br label %if.end51

if.end51:                                         ; preds = %t3b2_mac_reset.exit, %if.else45.if.end51_crit_edge, %if.then33
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @t3_mac_update_stats(ptr noundef %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac, align 8
  %offset = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %add = add i32 %3, 2364
  %regs.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %7 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mac, align 8
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %add3 = add i32 %10, 2368
  %regs.i362 = getelementptr inbounds %struct.adapter, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %regs.i362 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i362, align 4
  %add.ptr.i363 = getelementptr i8, ptr %12, i32 %add3
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i363) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %14 = zext i32 %13 to i64
  %15 = zext i32 %6 to i64
  %16 = shl nuw i64 %15, 32
  %17 = or i64 %16, %14
  %18 = tail call i64 @llvm.bswap.i64(i64 %17)
  %rx_octets = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 22
  %19 = ptrtoint ptr %rx_octets to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %rx_octets, align 8
  %add7 = add i64 %18, %20
  store i64 %add7, ptr %rx_octets, align 8
  %21 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mac, align 8
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset, align 4
  %add10 = add i32 %24, 2372
  %regs.i364 = getelementptr inbounds %struct.adapter, ptr %22, i32 0, i32 2
  %25 = ptrtoint ptr %regs.i364 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i364, align 4
  %add.ptr.i365 = getelementptr i8, ptr %26, i32 %add10
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i365) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %28 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mac, align 8
  %30 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset, align 4
  %add15 = add i32 %31, 2376
  %regs.i366 = getelementptr inbounds %struct.adapter, ptr %29, i32 0, i32 2
  %32 = ptrtoint ptr %regs.i366 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i366, align 4
  %add.ptr.i367 = getelementptr i8, ptr %33, i32 %add15
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i367) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %35 = zext i32 %34 to i64
  %36 = zext i32 %27 to i64
  %37 = shl nuw i64 %36, 32
  %38 = or i64 %37, %35
  %39 = tail call i64 @llvm.bswap.i64(i64 %38)
  %rx_frames = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 24
  %40 = ptrtoint ptr %rx_frames to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %rx_frames, align 8
  %add21 = add i64 %39, %41
  store i64 %add21, ptr %rx_frames, align 8
  %42 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mac, align 8
  %44 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset, align 4
  %add24 = add i32 %45, 2384
  %regs.i368 = getelementptr inbounds %struct.adapter, ptr %43, i32 0, i32 2
  %46 = ptrtoint ptr %regs.i368 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i368, align 4
  %add.ptr.i369 = getelementptr i8, ptr %47, i32 %add24
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i369) #5, !srcloc !28
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv26 = zext i32 %49 to i64
  %rx_mcast_frames = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 25
  %50 = ptrtoint ptr %rx_mcast_frames to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %rx_mcast_frames, align 8
  %add28 = add i64 %51, %conv26
  store i64 %add28, ptr %rx_mcast_frames, align 8
  %52 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mac, align 8
  %54 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset, align 4
  %add31 = add i32 %55, 2380
  %regs.i370 = getelementptr inbounds %struct.adapter, ptr %53, i32 0, i32 2
  %56 = ptrtoint ptr %regs.i370 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i370, align 4
  %add.ptr.i371 = getelementptr i8, ptr %57, i32 %add31
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i371) #5, !srcloc !28
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv33 = zext i32 %59 to i64
  %rx_bcast_frames = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 26
  %60 = ptrtoint ptr %rx_bcast_frames to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %rx_bcast_frames, align 8
  %add35 = add i64 %61, %conv33
  store i64 %add35, ptr %rx_bcast_frames, align 8
  %62 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mac, align 8
  %64 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %offset, align 4
  %add38 = add i32 %65, 2432
  %regs.i372 = getelementptr inbounds %struct.adapter, ptr %63, i32 0, i32 2
  %66 = ptrtoint ptr %regs.i372 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i372, align 4
  %add.ptr.i373 = getelementptr i8, ptr %67, i32 %add38
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i373) #5, !srcloc !28
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv40 = zext i32 %69 to i64
  %rx_fcs_errs = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 28
  %70 = ptrtoint ptr %rx_fcs_errs to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %rx_fcs_errs, align 8
  %add42 = add i64 %71, %conv40
  store i64 %add42, ptr %rx_fcs_errs, align 8
  %72 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mac, align 8
  %74 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %offset, align 4
  %add45 = add i32 %75, 2388
  %regs.i374 = getelementptr inbounds %struct.adapter, ptr %73, i32 0, i32 2
  %76 = ptrtoint ptr %regs.i374 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i374, align 4
  %add.ptr.i375 = getelementptr i8, ptr %77, i32 %add45
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i375) #5, !srcloc !28
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv47 = zext i32 %79 to i64
  %rx_pause = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 27
  %80 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %rx_pause, align 8
  %add49 = add i64 %81, %conv47
  store i64 %add49, ptr %rx_pause, align 8
  %82 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mac, align 8
  %84 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %offset, align 4
  %add52 = add i32 %85, 2428
  %regs.i376 = getelementptr inbounds %struct.adapter, ptr %83, i32 0, i32 2
  %86 = ptrtoint ptr %regs.i376 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i376, align 4
  %add.ptr.i377 = getelementptr i8, ptr %87, i32 %add52
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i377) #5, !srcloc !28
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv54 = zext i32 %89 to i64
  %rx_jabber = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 34
  %90 = ptrtoint ptr %rx_jabber to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %rx_jabber, align 8
  %add56 = add i64 %91, %conv54
  store i64 %add56, ptr %rx_jabber, align 8
  %92 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mac, align 8
  %94 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %offset, align 4
  %add59 = add i32 %95, 2420
  %regs.i378 = getelementptr inbounds %struct.adapter, ptr %93, i32 0, i32 2
  %96 = ptrtoint ptr %regs.i378 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs.i378, align 4
  %add.ptr.i379 = getelementptr i8, ptr %97, i32 %add59
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i379) #5, !srcloc !28
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv61 = zext i32 %99 to i64
  %rx_short = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 35
  %100 = ptrtoint ptr %rx_short to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %rx_short, align 8
  %add63 = add i64 %101, %conv61
  store i64 %add63, ptr %rx_short, align 8
  %102 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mac, align 8
  %104 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %offset, align 4
  %add66 = add i32 %105, 2440
  %regs.i380 = getelementptr inbounds %struct.adapter, ptr %103, i32 0, i32 2
  %106 = ptrtoint ptr %regs.i380 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs.i380, align 4
  %add.ptr.i381 = getelementptr i8, ptr %107, i32 %add66
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i381) #5, !srcloc !28
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv68 = zext i32 %109 to i64
  %rx_symbol_errs = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 30
  %110 = ptrtoint ptr %rx_symbol_errs to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %rx_symbol_errs, align 8
  %add70 = add i64 %111, %conv68
  store i64 %add70, ptr %rx_symbol_errs, align 8
  %112 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mac, align 8
  %114 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %offset, align 4
  %add73 = add i32 %115, 2424
  %regs.i382 = getelementptr inbounds %struct.adapter, ptr %113, i32 0, i32 2
  %116 = ptrtoint ptr %regs.i382 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs.i382, align 4
  %add.ptr.i383 = getelementptr i8, ptr %117, i32 %add73
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i383) #5, !srcloc !28
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv75 = zext i32 %119 to i64
  %rx_too_long = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 36
  %120 = ptrtoint ptr %rx_too_long to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %rx_too_long, align 8
  %add77 = add i64 %121, %conv75
  store i64 %add77, ptr %rx_too_long, align 8
  %122 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mac, align 8
  %124 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %offset, align 4
  %add80 = add i32 %125, 2468
  %regs.i384 = getelementptr inbounds %struct.adapter, ptr %123, i32 0, i32 2
  %126 = ptrtoint ptr %regs.i384 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regs.i384, align 4
  %add.ptr.i385 = getelementptr i8, ptr %127, i32 %add80
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i385) #5, !srcloc !28
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %130 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mac, align 8
  %rev = getelementptr inbounds %struct.adapter, ptr %131, i32 0, i32 10, i32 13
  %132 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %133)
  %cmp = icmp eq i32 %133, 3
  %and = and i32 %129, 2147483647
  %spec.select = select i1 %cmp, i32 %and, i32 %129
  %stats = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12
  %conv84 = zext i32 %spec.select to i64
  %134 = ptrtoint ptr %rx_too_long to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %rx_too_long, align 8
  %add87 = add i64 %135, %conv84
  store i64 %add87, ptr %rx_too_long, align 8
  %136 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %offset, align 4
  %add90 = add i32 %137, 2392
  %regs.i386 = getelementptr inbounds %struct.adapter, ptr %131, i32 0, i32 2
  %138 = ptrtoint ptr %regs.i386 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs.i386, align 4
  %add.ptr.i387 = getelementptr i8, ptr %139, i32 %add90
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i387) #5, !srcloc !28
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv92 = zext i32 %141 to i64
  %rx_frames_64 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 38
  %142 = ptrtoint ptr %rx_frames_64 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %rx_frames_64, align 8
  %add94 = add i64 %143, %conv92
  store i64 %add94, ptr %rx_frames_64, align 8
  %144 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mac, align 8
  %146 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %offset, align 4
  %add97 = add i32 %147, 2396
  %regs.i388 = getelementptr inbounds %struct.adapter, ptr %145, i32 0, i32 2
  %148 = ptrtoint ptr %regs.i388 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regs.i388, align 4
  %add.ptr.i389 = getelementptr i8, ptr %149, i32 %add97
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i389) #5, !srcloc !28
  %151 = tail call i32 @llvm.bswap.i32(i32 %150) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv99 = zext i32 %151 to i64
  %rx_frames_65_127 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 39
  %152 = ptrtoint ptr %rx_frames_65_127 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %rx_frames_65_127, align 8
  %add101 = add i64 %153, %conv99
  store i64 %add101, ptr %rx_frames_65_127, align 8
  %154 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mac, align 8
  %156 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %offset, align 4
  %add104 = add i32 %157, 2400
  %regs.i390 = getelementptr inbounds %struct.adapter, ptr %155, i32 0, i32 2
  %158 = ptrtoint ptr %regs.i390 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regs.i390, align 4
  %add.ptr.i391 = getelementptr i8, ptr %159, i32 %add104
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i391) #5, !srcloc !28
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv106 = zext i32 %161 to i64
  %rx_frames_128_255 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 40
  %162 = ptrtoint ptr %rx_frames_128_255 to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %rx_frames_128_255, align 8
  %add108 = add i64 %163, %conv106
  store i64 %add108, ptr %rx_frames_128_255, align 8
  %164 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mac, align 8
  %166 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %offset, align 4
  %add111 = add i32 %167, 2404
  %regs.i392 = getelementptr inbounds %struct.adapter, ptr %165, i32 0, i32 2
  %168 = ptrtoint ptr %regs.i392 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regs.i392, align 4
  %add.ptr.i393 = getelementptr i8, ptr %169, i32 %add111
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i393) #5, !srcloc !28
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv113 = zext i32 %171 to i64
  %rx_frames_256_511 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 41
  %172 = ptrtoint ptr %rx_frames_256_511 to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %rx_frames_256_511, align 8
  %add115 = add i64 %173, %conv113
  store i64 %add115, ptr %rx_frames_256_511, align 8
  %174 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %mac, align 8
  %176 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %offset, align 4
  %add118 = add i32 %177, 2408
  %regs.i394 = getelementptr inbounds %struct.adapter, ptr %175, i32 0, i32 2
  %178 = ptrtoint ptr %regs.i394 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regs.i394, align 4
  %add.ptr.i395 = getelementptr i8, ptr %179, i32 %add118
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i395) #5, !srcloc !28
  %181 = tail call i32 @llvm.bswap.i32(i32 %180) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv120 = zext i32 %181 to i64
  %rx_frames_512_1023 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 42
  %182 = ptrtoint ptr %rx_frames_512_1023 to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %rx_frames_512_1023, align 8
  %add122 = add i64 %183, %conv120
  store i64 %add122, ptr %rx_frames_512_1023, align 8
  %184 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %mac, align 8
  %186 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %offset, align 4
  %add125 = add i32 %187, 2412
  %regs.i396 = getelementptr inbounds %struct.adapter, ptr %185, i32 0, i32 2
  %188 = ptrtoint ptr %regs.i396 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %regs.i396, align 4
  %add.ptr.i397 = getelementptr i8, ptr %189, i32 %add125
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i397) #5, !srcloc !28
  %191 = tail call i32 @llvm.bswap.i32(i32 %190) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv127 = zext i32 %191 to i64
  %rx_frames_1024_1518 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 43
  %192 = ptrtoint ptr %rx_frames_1024_1518 to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %rx_frames_1024_1518, align 8
  %add129 = add i64 %193, %conv127
  store i64 %add129, ptr %rx_frames_1024_1518, align 8
  %194 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %mac, align 8
  %196 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %offset, align 4
  %add132 = add i32 %197, 2416
  %regs.i398 = getelementptr inbounds %struct.adapter, ptr %195, i32 0, i32 2
  %198 = ptrtoint ptr %regs.i398 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %regs.i398, align 4
  %add.ptr.i399 = getelementptr i8, ptr %199, i32 %add132
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i399) #5, !srcloc !28
  %201 = tail call i32 @llvm.bswap.i32(i32 %200) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv134 = zext i32 %201 to i64
  %rx_frames_1519_max = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 44
  %202 = ptrtoint ptr %rx_frames_1519_max to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %rx_frames_1519_max, align 8
  %add136 = add i64 %203, %conv134
  store i64 %add136, ptr %rx_frames_1519_max, align 8
  %204 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %mac, align 8
  %206 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %offset, align 4
  %add139 = add i32 %207, 2304
  %regs.i400 = getelementptr inbounds %struct.adapter, ptr %205, i32 0, i32 2
  %208 = ptrtoint ptr %regs.i400 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %regs.i400, align 4
  %add.ptr.i401 = getelementptr i8, ptr %209, i32 %add139
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i401) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %211 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %mac, align 8
  %213 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %offset, align 4
  %add144 = add i32 %214, 2308
  %regs.i402 = getelementptr inbounds %struct.adapter, ptr %212, i32 0, i32 2
  %215 = ptrtoint ptr %regs.i402 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %regs.i402, align 4
  %add.ptr.i403 = getelementptr i8, ptr %216, i32 %add144
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i403) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %218 = zext i32 %217 to i64
  %219 = zext i32 %210 to i64
  %220 = shl nuw i64 %219, 32
  %221 = or i64 %220, %218
  %222 = tail call i64 @llvm.bswap.i64(i64 %221)
  %223 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %stats, align 8
  %add150 = add i64 %222, %224
  store i64 %add150, ptr %stats, align 8
  %225 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %mac, align 8
  %227 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %offset, align 4
  %add153 = add i32 %228, 2312
  %regs.i404 = getelementptr inbounds %struct.adapter, ptr %226, i32 0, i32 2
  %229 = ptrtoint ptr %regs.i404 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %regs.i404, align 4
  %add.ptr.i405 = getelementptr i8, ptr %230, i32 %add153
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i405) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %232 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %mac, align 8
  %234 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %offset, align 4
  %add158 = add i32 %235, 2316
  %regs.i406 = getelementptr inbounds %struct.adapter, ptr %233, i32 0, i32 2
  %236 = ptrtoint ptr %regs.i406 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %regs.i406, align 4
  %add.ptr.i407 = getelementptr i8, ptr %237, i32 %add158
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i407) #5, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %239 = zext i32 %238 to i64
  %240 = zext i32 %231 to i64
  %241 = shl nuw i64 %240, 32
  %242 = or i64 %241, %239
  %243 = tail call i64 @llvm.bswap.i64(i64 %242)
  %tx_frames = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 2
  %244 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %tx_frames, align 8
  %add164 = add i64 %243, %245
  store i64 %add164, ptr %tx_frames, align 8
  %246 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %mac, align 8
  %248 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %offset, align 4
  %add167 = add i32 %249, 2324
  %regs.i408 = getelementptr inbounds %struct.adapter, ptr %247, i32 0, i32 2
  %250 = ptrtoint ptr %regs.i408 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %regs.i408, align 4
  %add.ptr.i409 = getelementptr i8, ptr %251, i32 %add167
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i409) #5, !srcloc !28
  %253 = tail call i32 @llvm.bswap.i32(i32 %252) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv169 = zext i32 %253 to i64
  %tx_mcast_frames = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 3
  %254 = ptrtoint ptr %tx_mcast_frames to i32
  call void @__asan_load8_noabort(i32 %254)
  %255 = load i64, ptr %tx_mcast_frames, align 8
  %add171 = add i64 %255, %conv169
  store i64 %add171, ptr %tx_mcast_frames, align 8
  %256 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %mac, align 8
  %258 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %offset, align 4
  %add174 = add i32 %259, 2320
  %regs.i410 = getelementptr inbounds %struct.adapter, ptr %257, i32 0, i32 2
  %260 = ptrtoint ptr %regs.i410 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %regs.i410, align 4
  %add.ptr.i411 = getelementptr i8, ptr %261, i32 %add174
  %262 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i411) #5, !srcloc !28
  %263 = tail call i32 @llvm.bswap.i32(i32 %262) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv176 = zext i32 %263 to i64
  %tx_bcast_frames = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 4
  %264 = ptrtoint ptr %tx_bcast_frames to i32
  call void @__asan_load8_noabort(i32 %264)
  %265 = load i64, ptr %tx_bcast_frames, align 8
  %add178 = add i64 %265, %conv176
  store i64 %add178, ptr %tx_bcast_frames, align 8
  %266 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %mac, align 8
  %268 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %offset, align 4
  %add181 = add i32 %269, 2328
  %regs.i412 = getelementptr inbounds %struct.adapter, ptr %267, i32 0, i32 2
  %270 = ptrtoint ptr %regs.i412 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %regs.i412, align 4
  %add.ptr.i413 = getelementptr i8, ptr %271, i32 %add181
  %272 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i413) #5, !srcloc !28
  %273 = tail call i32 @llvm.bswap.i32(i32 %272) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv183 = zext i32 %273 to i64
  %tx_pause = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 5
  %274 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load8_noabort(i32 %274)
  %275 = load i64, ptr %tx_pause, align 8
  %add185 = add i64 %275, %conv183
  store i64 %add185, ptr %tx_pause, align 8
  %276 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %mac, align 8
  %278 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %offset, align 4
  %add188 = add i32 %279, 2360
  %regs.i414 = getelementptr inbounds %struct.adapter, ptr %277, i32 0, i32 2
  %280 = ptrtoint ptr %regs.i414 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %regs.i414, align 4
  %add.ptr.i415 = getelementptr i8, ptr %281, i32 %add188
  %282 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i415) #5, !srcloc !28
  %283 = tail call i32 @llvm.bswap.i32(i32 %282) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv190 = zext i32 %283 to i64
  %tx_underrun = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 10
  %284 = ptrtoint ptr %tx_underrun to i32
  call void @__asan_load8_noabort(i32 %284)
  %285 = load i64, ptr %tx_underrun, align 8
  %add192 = add i64 %285, %conv190
  store i64 %add192, ptr %tx_underrun, align 8
  %286 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %mac, align 8
  %288 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %offset, align 4
  %add195 = add i32 %289, 2332
  %regs.i416 = getelementptr inbounds %struct.adapter, ptr %287, i32 0, i32 2
  %290 = ptrtoint ptr %regs.i416 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %regs.i416, align 4
  %add.ptr.i417 = getelementptr i8, ptr %291, i32 %add195
  %292 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i417) #5, !srcloc !28
  %293 = tail call i32 @llvm.bswap.i32(i32 %292) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv197 = zext i32 %293 to i64
  %tx_frames_64 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 15
  %294 = ptrtoint ptr %tx_frames_64 to i32
  call void @__asan_load8_noabort(i32 %294)
  %295 = load i64, ptr %tx_frames_64, align 8
  %add199 = add i64 %295, %conv197
  store i64 %add199, ptr %tx_frames_64, align 8
  %296 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %mac, align 8
  %298 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %offset, align 4
  %add202 = add i32 %299, 2336
  %regs.i418 = getelementptr inbounds %struct.adapter, ptr %297, i32 0, i32 2
  %300 = ptrtoint ptr %regs.i418 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %regs.i418, align 4
  %add.ptr.i419 = getelementptr i8, ptr %301, i32 %add202
  %302 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i419) #5, !srcloc !28
  %303 = tail call i32 @llvm.bswap.i32(i32 %302) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv204 = zext i32 %303 to i64
  %tx_frames_65_127 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 16
  %304 = ptrtoint ptr %tx_frames_65_127 to i32
  call void @__asan_load8_noabort(i32 %304)
  %305 = load i64, ptr %tx_frames_65_127, align 8
  %add206 = add i64 %305, %conv204
  store i64 %add206, ptr %tx_frames_65_127, align 8
  %306 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %mac, align 8
  %308 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %offset, align 4
  %add209 = add i32 %309, 2340
  %regs.i420 = getelementptr inbounds %struct.adapter, ptr %307, i32 0, i32 2
  %310 = ptrtoint ptr %regs.i420 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %regs.i420, align 4
  %add.ptr.i421 = getelementptr i8, ptr %311, i32 %add209
  %312 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i421) #5, !srcloc !28
  %313 = tail call i32 @llvm.bswap.i32(i32 %312) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv211 = zext i32 %313 to i64
  %tx_frames_128_255 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 17
  %314 = ptrtoint ptr %tx_frames_128_255 to i32
  call void @__asan_load8_noabort(i32 %314)
  %315 = load i64, ptr %tx_frames_128_255, align 8
  %add213 = add i64 %315, %conv211
  store i64 %add213, ptr %tx_frames_128_255, align 8
  %316 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %mac, align 8
  %318 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %offset, align 4
  %add216 = add i32 %319, 2344
  %regs.i422 = getelementptr inbounds %struct.adapter, ptr %317, i32 0, i32 2
  %320 = ptrtoint ptr %regs.i422 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %regs.i422, align 4
  %add.ptr.i423 = getelementptr i8, ptr %321, i32 %add216
  %322 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i423) #5, !srcloc !28
  %323 = tail call i32 @llvm.bswap.i32(i32 %322) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv218 = zext i32 %323 to i64
  %tx_frames_256_511 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 18
  %324 = ptrtoint ptr %tx_frames_256_511 to i32
  call void @__asan_load8_noabort(i32 %324)
  %325 = load i64, ptr %tx_frames_256_511, align 8
  %add220 = add i64 %325, %conv218
  store i64 %add220, ptr %tx_frames_256_511, align 8
  %326 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %mac, align 8
  %328 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %offset, align 4
  %add223 = add i32 %329, 2348
  %regs.i424 = getelementptr inbounds %struct.adapter, ptr %327, i32 0, i32 2
  %330 = ptrtoint ptr %regs.i424 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %regs.i424, align 4
  %add.ptr.i425 = getelementptr i8, ptr %331, i32 %add223
  %332 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i425) #5, !srcloc !28
  %333 = tail call i32 @llvm.bswap.i32(i32 %332) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv225 = zext i32 %333 to i64
  %tx_frames_512_1023 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 19
  %334 = ptrtoint ptr %tx_frames_512_1023 to i32
  call void @__asan_load8_noabort(i32 %334)
  %335 = load i64, ptr %tx_frames_512_1023, align 8
  %add227 = add i64 %335, %conv225
  store i64 %add227, ptr %tx_frames_512_1023, align 8
  %336 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %mac, align 8
  %338 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %offset, align 4
  %add230 = add i32 %339, 2352
  %regs.i426 = getelementptr inbounds %struct.adapter, ptr %337, i32 0, i32 2
  %340 = ptrtoint ptr %regs.i426 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %regs.i426, align 4
  %add.ptr.i427 = getelementptr i8, ptr %341, i32 %add230
  %342 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i427) #5, !srcloc !28
  %343 = tail call i32 @llvm.bswap.i32(i32 %342) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv232 = zext i32 %343 to i64
  %tx_frames_1024_1518 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 20
  %344 = ptrtoint ptr %tx_frames_1024_1518 to i32
  call void @__asan_load8_noabort(i32 %344)
  %345 = load i64, ptr %tx_frames_1024_1518, align 8
  %add234 = add i64 %345, %conv232
  store i64 %add234, ptr %tx_frames_1024_1518, align 8
  %346 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %mac, align 8
  %348 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %offset, align 4
  %add237 = add i32 %349, 2356
  %regs.i428 = getelementptr inbounds %struct.adapter, ptr %347, i32 0, i32 2
  %350 = ptrtoint ptr %regs.i428 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %regs.i428, align 4
  %add.ptr.i429 = getelementptr i8, ptr %351, i32 %add237
  %352 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i429) #5, !srcloc !28
  %353 = tail call i32 @llvm.bswap.i32(i32 %352) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %conv239 = zext i32 %353 to i64
  %tx_frames_1519_max = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 21
  %354 = ptrtoint ptr %tx_frames_1519_max to i32
  call void @__asan_load8_noabort(i32 %354)
  %355 = load i64, ptr %tx_frames_1519_max, align 8
  %add241 = add i64 %355, %conv239
  store i64 %add241, ptr %tx_frames_1519_max, align 8
  %356 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %mac, align 8
  %358 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %359)
  %tobool.not = icmp eq i32 %359, 0
  %cond = select i1 %tobool.not, i32 838860800, i32 855638016
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %regs.i430 = getelementptr inbounds %struct.adapter, ptr %357, i32 0, i32 2
  %360 = ptrtoint ptr %regs.i430 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %regs.i430, align 4
  %add.ptr.i431 = getelementptr i8, ptr %361, i32 1104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i431, i32 %cond) #5, !srcloc !27
  %362 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %mac, align 8
  %regs.i432 = getelementptr inbounds %struct.adapter, ptr %363, i32 0, i32 2
  %364 = ptrtoint ptr %regs.i432 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %regs.i432, align 4
  %add.ptr.i433 = getelementptr i8, ptr %365, i32 1108
  %366 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i433) #5, !srcloc !28
  %367 = tail call i32 @llvm.bswap.i32(i32 %366) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  %rx_cong_drops = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 12, i32 45
  %368 = ptrtoint ptr %rx_cong_drops to i32
  call void @__asan_load8_noabort(i32 %368)
  %369 = load i64, ptr %rx_cong_drops, align 8
  %conv247 = trunc i64 %369 to i32
  %sub = sub i32 %367, %conv247
  %conv248 = zext i32 %sub to i64
  %add251 = add i64 %369, %conv248
  store i64 %add251, ptr %rx_cong_drops, align 8
  ret ptr %stats
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t3_wait_op_done_val(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @t3_mac_reset.mac_reset_avp, !1, !"mac_reset_avp", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb3/xgmac.c", i32 81, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb3/xgmac.c", i32 117, i32 5}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @t3_mac_reset._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @t3_mac_reset._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"clear", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/chelsio/cxgb3/xgmac.c", i32 48, i32 28}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/cxgb3/xgmac.c", i32 184, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @t3b2_mac_reset._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @t3b2_mac_reset._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 2156828566}
!27 = !{i64 6572968}
!28 = !{i64 6573386}
!29 = !{i64 2156828176}
