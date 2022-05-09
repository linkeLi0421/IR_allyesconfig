; ModuleID = '/llk/IR_all_yes/drivers/net/fddi/skfp/ecm.c_pt.bc'
source_filename = "../drivers/net/fddi/skfp/ecm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.s_smc = type { %struct.s_smt_os, %struct.s_smt_hw, %struct.smt_config, %struct.smt_values, %struct.s_ecm, %struct.s_rmt, %struct.s_cfm, %struct.s_pcm, [2 x %struct.s_phy], %struct.s_queue, %struct.s_timer, %struct.s_srf, [14 x %struct.s_srf_evc], %struct.fddi_mib, %struct.s_ess }
%struct.s_smt_os = type { ptr, ptr, i32, [4 x i8], %struct.pci_dev, i32, [8 x i8], i32, i32, ptr, i32, i32, %struct.sk_buff_head, i32, i8, %struct.fddi_statistics, ptr, i32, i32, %struct.hw_modul, %struct.spinlock, [4 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.114, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.114 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.fddi_statistics = type { %struct.net_device_stats, [8 x i8], i32, i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i32, i32, i32, [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [6 x i8], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hw_modul = type { %struct.s_mbuf_pool, %struct.hwm_r, ptr, i16, i16, i16, i16, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.s_mbuf_pool = type { ptr, ptr }
%struct.hwm_r = type { i32, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.s_smt_hw = type { ptr, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i8, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, %struct.mac_parameter, %struct.mac_counter, i16, %struct.s_smt_fp }
%struct.fddi_addr = type { [6 x i8] }
%struct.mac_parameter = type { i32, i32 }
%struct.mac_counter = type { i32, i32 }
%struct.s_smt_fp = type { i16, i16, i16, i16, i16, i16, i16, %struct.err_st, %struct.fddi_mac_sf, [2 x ptr], [2 x ptr], [2 x %struct.s_smt_tx_queue], [2 x %struct.s_smt_rx_queue], %struct.s_smt_fifo_conf, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.115, %struct.fddi_addr, i32, i32, i32 }
%struct.err_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fddi_mac_sf = type { i8, %struct.fddi_addr, %struct.fddi_addr, [32 x i8] }
%struct.s_smt_tx_queue = type { ptr, ptr, ptr, i16, i16, ptr, ptr }
%struct.s_smt_rx_queue = type { ptr, ptr, ptr, i16, i16, ptr, ptr }
%struct.s_smt_fifo_conf = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.anon.115 = type { [32 x %struct.s_fpmc] }
%struct.s_fpmc = type { %struct.fddi_addr, i8, i8 }
%struct.smt_config = type { i8, i8, i8, i8, [1 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smt_values = type { i32, i32, i32, [5 x i32], i32, i16, i16, i32, i32, %struct.smt_timer, [1 x i32] }
%struct.smt_timer = type { ptr, ptr, i32, i32, i16, i16 }
%struct.s_ecm = type { i8, i8, i8, i8, i32, [2 x i8], %struct.smt_timer }
%struct.s_rmt = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.smt_timer, %struct.smt_timer, %struct.smt_timer, i8, i8, i8, i8 }
%struct.s_cfm = type { i8, [3 x i8] }
%struct.s_pcm = type { [3 x i8] }
%struct.s_phy = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], [10 x i8], [10 x i32], %struct.smt_timer, %struct.smt_timer, %struct.smt_timer, i8, i8, i8, [1 x i8], i32, %struct.lem_counter, %struct.s_plc }
%struct.lem_counter = type { i16, i32, i16 }
%struct.s_plc = type { i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.s_queue = type { [64 x %struct.event_queue], ptr, ptr }
%struct.event_queue = type { i16, i16 }
%struct.s_timer = type { ptr, %struct.smt_timer }
%struct.s_srf = type { i32, i8, i8, i8, i32, i16 }
%struct.s_srf_evc = type { i8, i8, i8, i16, ptr, ptr }
%struct.fddi_mib = type { [8 x i8], %struct.smt_sid, i32, i32, i32, i32, i32, i16, %struct.smt_sid, i16, i16, i16, [32 x i8], [32 x i8], i16, i8, i8, i8, i8, i16, i16, i16, i16, i8, i32, [2 x i16], i16, i8, i16, i16, i16, i8, i8, [8 x i8], [8 x i8], %struct.SetCountType, %struct.smt_sid, [1 x %struct.fddi_mib_m], [2 x %struct.fddi_mib_a], [2 x %struct.fddi_mib_p], %struct.anon.117 }
%struct.SetCountType = type { i32, [8 x i8] }
%struct.smt_sid = type { [2 x i8], %struct.fddi_addr }
%struct.fddi_mib_m = type { i16, i32, i32, i8, i8, i8, i8, i16, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, i16, i16, i16, i16, %struct.fddi_addr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.fddi_mib_a = type { i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.fddi_mib_p = type { i16, i16, i8, %struct.anon.116, i16, [4 x i8], i16, i8, i8, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.anon.116 = type { i8, i8 }
%struct.anon.117 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.s_ess = type { i8, i8, i8, i8, ptr, i32, i32 }

@ecm_fsm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016SMT PANIC: code: %d, msg: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ecm_fsm\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/fddi/skfp/ecm.c\00", [36 x i8] zeroinitializer }, align 32
@ecm_fsm._entry_ptr = internal global ptr @ecm_fsm._entry, section ".printk_index", align 4
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ECM : invalid state\00", [44 x i8] zeroinitializer }, align 32
@prop_actions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"prop_actions\00", [19 x i8] zeroinitializer }, align 32
@prop_actions._entry_ptr = internal global ptr @prop_actions._entry, section ".printk_index", align 4
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"prop_actions : NAC in DAS CFM\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 15]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 15]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 406, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [31 x i8] c"../drivers/net/fddi/skfp/ecm.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 430, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @ecm_fsm._entry, ptr @ecm_fsm._entry_ptr, ptr @prop_actions._entry, ptr @prop_actions._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecm_fsm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prop_actions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ecm_init(ptr nocapture noundef writeonly %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %e = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 4
  %0 = ptrtoint ptr %e to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %e, align 4
  %trace_prop = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 4, i32 4
  %1 = ptrtoint ptr %trace_prop to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %trace_prop, align 4
  %sb_flag = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %sb_flag to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %sb_flag, align 1
  %fddiSMTECMState = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 28
  %3 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 16, ptr %fddiSMTECMState, align 4
  %ecm_line_state = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %ecm_line_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %ecm_line_state, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ecm(ptr noundef %smc, i32 noundef %event) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fddiSMTECMState = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 28
  %fddiSMTBypassPresent.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 27
  %fddiSMTRemoteDisconnectFlag.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 31
  %DisconnectFlag19.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 4, i32 2
  %e413.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 4
  %ecm_i_max.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 16
  %ecm_timer.i581.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 4, i32 6
  %sb_flag.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 4, i32 1
  %ecm_line_state360.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 4, i32 3
  %ecm_check_poll392.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 20
  %ecm_in_max.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 17
  %ring_status.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 11, i32 5
  %tm_active.i572.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 4, i32 6, i32 4
  %ecm_test_done.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 19
  %ecm_td_min.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 18
  %fddiSMTTrace_MaxExpiration.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 24
  %trace_prop.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 4, i32 4
  %fddiPORTHardwarePresent.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 0, i32 26
  %fddiPORTHardwarePresent.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 1, i32 26
  %sas.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 1
  br label %do.body

do.body:                                          ; preds = %ecm_fsm.exit.do.body_crit_edge, %entry
  %event.addr.0 = phi i32 [ %event, %entry ], [ 0, %ecm_fsm.exit.do.body_crit_edge ]
  %0 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fddiSMTECMState, align 4
  %call.i = tail call i32 @sm_pm_bypass_present(ptr noundef %smc) #4
  %conv.i = trunc i32 %call.i to i8
  %2 = ptrtoint ptr %fddiSMTBypassPresent.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv.i, ptr %fddiSMTBypassPresent.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event.addr.0)
  %cmp.i = icmp eq i32 %event.addr.0, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %fddiSMTRemoteDisconnectFlag.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %fddiSMTRemoteDisconnectFlag.i, align 2
  br label %if.end21.sink.split.i

if.else.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event.addr.0)
  %cmp15.i = icmp eq i32 %event.addr.0, 2
  br i1 %cmp15.i, label %if.else.i.if.end21.sink.split.i_crit_edge, label %if.else.i.if.end21.i_crit_edge

if.else.i.if.end21.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.i

if.else.i.if.end21.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.sink.split.i

if.end21.sink.split.i:                            ; preds = %if.else.i.if.end21.sink.split.i_crit_edge, %if.then.i
  %.sink.i = phi i8 [ 0, %if.then.i ], [ 1, %if.else.i.if.end21.sink.split.i_crit_edge ]
  %4 = ptrtoint ptr %DisconnectFlag19.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.sink.i, ptr %DisconnectFlag19.i, align 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end21.sink.split.i, %if.else.i.if.end21.i_crit_edge
  %5 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %fddiSMTECMState, align 4
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i16 %6, label %do.end.i [
    i16 16, label %sw.bb.i
    i16 0, label %sw.bb30.i
    i16 17, label %sw.bb68.i
    i16 1, label %sw.bb82.i
    i16 18, label %sw.bb96.i
    i16 2, label %sw.bb103.i
    i16 19, label %sw.bb138.i
    i16 3, label %sw.bb153.i
    i16 20, label %sw.bb227.i
    i16 4, label %sw.bb236.i
    i16 21, label %sw.bb314.i
    i16 5, label %sw.bb321.i
    i16 22, label %sw.bb335.i
    i16 6, label %sw.bb344.i
    i16 23, label %sw.bb396.i
    i16 7, label %sw.bb403.i
  ]

sw.bb.i:                                          ; preds = %if.end21.i
  %8 = ptrtoint ptr %e413.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %e413.i, align 4
  %9 = ptrtoint ptr %ecm_line_state360.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %ecm_line_state360.i, align 1
  %10 = ptrtoint ptr %tm_active.i572.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tm_active.i572.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i.i = icmp eq i16 %11, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.stop_ecm_timer.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.stop_ecm_timer.exit.i_crit_edge:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop_ecm_timer.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @smt_timer_stop(ptr noundef %smc, ptr noundef %ecm_timer.i581.i) #4
  br label %stop_ecm_timer.exit.i

stop_ecm_timer.exit.i:                            ; preds = %if.then.i.i, %sw.bb.i.stop_ecm_timer.exit.i_crit_edge
  %12 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %fddiSMTECMState, align 4
  %14 = and i16 %13, -17
  store i16 %14, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

sw.bb30.i:                                        ; preds = %if.end21.i
  br i1 %cmp.i, label %land.lhs.true33.i, label %sw.bb30.i.ecm_fsm.exit_crit_edge

sw.bb30.i.ecm_fsm.exit_crit_edge:                 ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ecm_fsm.exit

land.lhs.true33.i:                                ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool.not.i = icmp eq i8 %conv.i, 0
  %15 = ptrtoint ptr %e413.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %e413.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp40.i = icmp eq i8 %16, 2
  br i1 %tobool.not.i, label %land.lhs.true36.i, label %land.lhs.true48.thread.i

land.lhs.true36.i:                                ; preds = %land.lhs.true33.i
  br i1 %cmp40.i, label %if.then42.i, label %land.lhs.true36.i.ecm_fsm.exit_crit_edge

land.lhs.true36.i.ecm_fsm.exit_crit_edge:         ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ecm_fsm.exit

if.then42.i:                                      ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 17, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

land.lhs.true48.thread.i:                         ; preds = %land.lhs.true33.i
  br i1 %cmp40.i, label %land.lhs.true59.i, label %land.lhs.true48.thread.i.ecm_fsm.exit_crit_edge

land.lhs.true48.thread.i.ecm_fsm.exit_crit_edge:  ; preds = %land.lhs.true48.thread.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ecm_fsm.exit

land.lhs.true59.i:                                ; preds = %land.lhs.true48.thread.i
  %18 = ptrtoint ptr %sas.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %sas.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp61.i = icmp eq i8 %19, 0
  br i1 %cmp61.i, label %if.then63.i, label %land.lhs.true59.i.ecm_fsm.exit_crit_edge

land.lhs.true59.i.ecm_fsm.exit_crit_edge:         ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ecm_fsm.exit

if.then63.i:                                      ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 21, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

sw.bb68.i:                                        ; preds = %if.end21.i
  %21 = ptrtoint ptr %tm_active.i572.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %tm_active.i572.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i566.i = icmp eq i16 %22, 0
  br i1 %tobool.not.i566.i, label %sw.bb68.i.stop_ecm_timer.exit569.i_crit_edge, label %if.then.i568.i

sw.bb68.i.stop_ecm_timer.exit569.i_crit_edge:     ; preds = %sw.bb68.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop_ecm_timer.exit569.i

if.then.i568.i:                                   ; preds = %sw.bb68.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @smt_timer_stop(ptr noundef %smc, ptr noundef %ecm_timer.i581.i) #4
  br label %stop_ecm_timer.exit569.i

stop_ecm_timer.exit569.i:                         ; preds = %if.then.i568.i, %sw.bb68.i.stop_ecm_timer.exit569.i_crit_edge
  %23 = ptrtoint ptr %trace_prop.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %trace_prop.i, align 4
  tail call void @sm_ma_control(ptr noundef %smc, i32 noundef 4) #4
  %24 = ptrtoint ptr %fddiPORTHardwarePresent.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %fddiPORTHardwarePresent.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool74.not.i = icmp eq i8 %25, 0
  br i1 %tobool74.not.i, label %stop_ecm_timer.exit569.i.for.inc.i_crit_edge, label %if.then75.i

stop_ecm_timer.exit569.i.for.inc.i_crit_edge:     ; preds = %stop_ecm_timer.exit569.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then75.i:                                      ; preds = %stop_ecm_timer.exit569.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @queue_event(ptr noundef %smc, i32 noundef 5, i32 noundef 1) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then75.i, %stop_ecm_timer.exit569.i.for.inc.i_crit_edge
  %26 = ptrtoint ptr %fddiPORTHardwarePresent.1.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fddiPORTHardwarePresent.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool74.not.1.i = icmp eq i8 %27, 0
  br i1 %tobool74.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then75.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.i

if.then75.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @queue_event(ptr noundef %smc, i32 noundef 6, i32 noundef 1) #4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then75.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %28 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %fddiSMTECMState, align 4
  %30 = and i16 %29, -17
  store i16 %30, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

sw.bb82.i:                                        ; preds = %if.end21.i
  %31 = zext i32 %event.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %event.addr.0, label %sw.bb82.i.ecm_fsm.exit_crit_edge [
    i32 3, label %if.then85.i
    i32 2, label %if.then91.i
  ]

sw.bb82.i.ecm_fsm.exit_crit_edge:                 ; preds = %sw.bb82.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ecm_fsm.exit

if.then85.i:                                      ; preds = %sw.bb82.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @prop_actions(ptr noundef %smc) #4
  %32 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 18, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

if.then91.i:                                      ; preds = %sw.bb82.i
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 19, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

sw.bb96.i:                                        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %fddiSMTTrace_MaxExpiration.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fddiSMTTrace_MaxExpiration.i, align 4
  %div.i = udiv i32 %35, 12
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %ecm_timer.i581.i, i32 noundef %div.i, i32 noundef 65542) #4
  %36 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %fddiSMTECMState, align 4
  %38 = and i16 %37, -17
  store i16 %38, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

sw.bb103.i:                                       ; preds = %if.end21.i
  %39 = zext i32 %event.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %event.addr.0, label %if.else117.i [
    i32 3, label %if.then106.i
    i32 2, label %if.then112.i
  ]

if.then106.i:                                     ; preds = %sw.bb103.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @prop_actions(ptr noundef %smc) #4
  %40 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 18, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

if.then112.i:                                     ; preds = %sw.bb103.i
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %e413.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 5, ptr %e413.i, align 4
  %42 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 19, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

if.else117.i:                                     ; preds = %sw.bb103.i
  %43 = ptrtoint ptr %e413.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %e413.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %44)
  %cmp121.i = icmp eq i8 %44, 4
  br i1 %cmp121.i, label %if.then123.i, label %if.else126.i

if.then123.i:                                     ; preds = %if.else117.i
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 19, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

if.else126.i:                                     ; preds = %if.else117.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %event.addr.0)
  %cmp127.i = icmp eq i32 %event.addr.0, 6
  br i1 %cmp127.i, label %if.then129.i, label %if.else126.i.ecm_fsm.exit_crit_edge

if.else126.i.ecm_fsm.exit_crit_edge:              ; preds = %if.else126.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ecm_fsm.exit

if.then129.i:                                     ; preds = %if.else126.i
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %e413.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 4, ptr %e413.i, align 4
  %47 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 19, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

sw.bb138.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %ecm_td_min.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ecm_td_min.i, align 4
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %ecm_timer.i581.i, i32 noundef %49, i32 noundef 65541) #4
  tail call void @queue_event(ptr noundef %smc, i32 noundef 5, i32 noundef 2) #4
  tail call void @queue_event(ptr noundef %smc, i32 noundef 6, i32 noundef 2) #4
  %50 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %fddiSMTECMState, align 4
  %52 = and i16 %51, -17
  store i16 %52, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

sw.bb153.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %event.addr.0)
  %cmp154.i = icmp eq i32 %event.addr.0, 5
  br i1 %cmp154.i, label %land.lhs.true156.i, label %if.else181.i

land.lhs.true156.i:                               ; preds = %sw.bb153.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool159.not.i = icmp eq i8 %conv.i, 0
  %53 = ptrtoint ptr %e413.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %e413.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %54)
  %cmp164.not.i = icmp eq i8 %54, 4
  br i1 %tobool159.not.i, label %land.lhs.true160.i, label %land.lhs.true172.i

land.lhs.true160.i:                               ; preds = %land.lhs.true156.i
  br i1 %cmp164.not.i, label %land.lhs.true160.i.if.then178.i_crit_edge, label %if.then166.i

land.lhs.true160.i.if.then178.i_crit_edge:        ; preds = %land.lhs.true160.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then178.i

if.then166.i:                                     ; preds = %land.lhs.true160.i
  call void @__sanitizer_cov_trace_pc() #6
  %55 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 16, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

land.lhs.true172.i:                               ; preds = %land.lhs.true156.i
  br i1 %cmp164.not.i, label %land.lhs.true172.i.if.then178.i_crit_edge, label %if.then219.i

land.lhs.true172.i.if.then178.i_crit_edge:        ; preds = %land.lhs.true172.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then178.i

if.then178.i:                                     ; preds = %land.lhs.true172.i.if.then178.i_crit_edge, %land.lhs.true160.i.if.then178.i_crit_edge
  %56 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 20, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

if.else181.i:                                     ; preds = %sw.bb153.i
  br i1 %cmp.i, label %land.lhs.true184.i, label %if.else193.i

land.lhs.true184.i:                               ; preds = %if.else181.i
  %57 = ptrtoint ptr %e413.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %e413.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %58)
  %cmp188.i = icmp eq i8 %58, 2
  br i1 %cmp188.i, label %if.then190.i, label %land.lhs.true184.i.ecm_fsm.exit_crit_edge

land.lhs.true184.i.ecm_fsm.exit_crit_edge:        ; preds = %land.lhs.true184.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ecm_fsm.exit

if.then190.i:                                     ; preds = %land.lhs.true184.i
  call void @__sanitizer_cov_trace_pc() #6
  %59 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 17, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

if.else193.i:                                     ; preds = %if.else181.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event.addr.0)
  %cmp194.i = icmp eq i32 %event.addr.0, 2
  br i1 %cmp194.i, label %land.lhs.true196.i, label %if.else193.i.ecm_fsm.exit_crit_edge

if.else193.i.ecm_fsm.exit_crit_edge:              ; preds = %if.else193.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ecm_fsm.exit

land.lhs.true196.i:                               ; preds = %if.else193.i
  %60 = ptrtoint ptr %e413.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %e413.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %61)
  %cmp200.i = icmp eq i8 %61, 4
  br i1 %cmp200.i, label %if.then202.i, label %land.lhs.true196.i.ecm_fsm.exit_crit_edge

land.lhs.true196.i.ecm_fsm.exit_crit_edge:        ; preds = %land.lhs.true196.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ecm_fsm.exit

if.then202.i:                                     ; preds = %land.lhs.true196.i
  call void @__sanitizer_cov_trace_pc() #6
  %62 = ptrtoint ptr %e413.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 5, ptr %e413.i, align 4
  br label %ecm_fsm.exit

if.then219.i:                                     ; preds = %land.lhs.true172.i
  call void @__sanitizer_cov_trace_pc() #6
  %63 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 23, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

sw.bb227.i:                                       ; preds = %if.end21.i
  %64 = ptrtoint ptr %tm_active.i572.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %tm_active.i572.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool.not.i573.i = icmp eq i16 %65, 0
  br i1 %tobool.not.i573.i, label %sw.bb227.i.stop_ecm_timer.exit576.i_crit_edge, label %if.then.i575.i

sw.bb227.i.stop_ecm_timer.exit576.i_crit_edge:    ; preds = %sw.bb227.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop_ecm_timer.exit576.i

if.then.i575.i:                                   ; preds = %sw.bb227.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @smt_timer_stop(ptr noundef %smc, ptr noundef %ecm_timer.i581.i) #4
  br label %stop_ecm_timer.exit576.i

stop_ecm_timer.exit576.i:                         ; preds = %if.then.i575.i, %sw.bb227.i.stop_ecm_timer.exit576.i_crit_edge
  %66 = ptrtoint ptr %e413.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %e413.i, align 4
  %67 = ptrtoint ptr %ecm_test_done.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ecm_test_done.i, align 4
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %ecm_timer.i581.i, i32 noundef %68, i32 noundef 65545) #4
  %69 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %fddiSMTECMState, align 4
  %71 = and i16 %70, -17
  store i16 %71, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

sw.bb236.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %event.addr.0)
  %cmp237.i = icmp eq i32 %event.addr.0, 9
  br i1 %cmp237.i, label %if.else275.i.thread, label %if.end242.i

if.else275.i.thread:                              ; preds = %sw.bb236.i
  call void @__sanitizer_cov_trace_pc() #6
  %72 = ptrtoint ptr %e413.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 2, ptr %e413.i, align 4
  br label %if.then281.i

if.end242.i:                                      ; preds = %sw.bb236.i
  %73 = ptrtoint ptr %e413.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %.pr = load i8, ptr %e413.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr)
  %cmp246.i = icmp eq i8 %.pr, 3
  br i1 %cmp246.i, label %if.end252.i, label %if.end242.i.if.else265.i_crit_edge

if.end242.i.if.else265.i_crit_edge:               ; preds = %if.end242.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else265.i

if.end252.i:                                      ; preds = %if.end242.i
  %74 = ptrtoint ptr %ring_status.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %ring_status.i, align 4
  %76 = or i16 %75, 2048
  store i16 %76, ptr %ring_status.i, align 4
  %conv251.i = zext i16 %76 to i32
  tail call void @ring_status_indication(ptr noundef %smc, i32 noundef %conv251.i) #4
  %77 = ptrtoint ptr %e413.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %.pr.i = load i8, ptr %e413.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr.i)
  %cmp256.i = icmp eq i8 %.pr.i, 3
  br i1 %cmp256.i, label %land.lhs.true258.i, label %if.end252.i.if.else265.i_crit_edge

if.end252.i.if.else265.i_crit_edge:               ; preds = %if.end252.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else265.i

land.lhs.true258.i:                               ; preds = %if.end252.i
  %78 = ptrtoint ptr %fddiSMTBypassPresent.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %fddiSMTBypassPresent.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool261.not.i = icmp eq i8 %79, 0
  br i1 %tobool261.not.i, label %if.then262.i, label %land.lhs.true258.i.if.else265.i_crit_edge

land.lhs.true258.i.if.else265.i_crit_edge:        ; preds = %land.lhs.true258.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else265.i

if.then262.i:                                     ; preds = %land.lhs.true258.i
  call void @__sanitizer_cov_trace_pc() #6
  %80 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 16, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

if.else265.i:                                     ; preds = %land.lhs.true258.i.if.else265.i_crit_edge, %if.end252.i.if.else265.i_crit_edge, %if.end242.i.if.else265.i_crit_edge
  %81 = phi i8 [ 3, %land.lhs.true258.i.if.else265.i_crit_edge ], [ %.pr.i, %if.end252.i.if.else265.i_crit_edge ], [ %.pr, %if.end242.i.if.else265.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event.addr.0)
  %cmp266.i = icmp eq i32 %event.addr.0, 2
  br i1 %cmp266.i, label %land.lhs.true268.i, label %if.else265.i.if.else275.i_crit_edge

if.else265.i.if.else275.i_crit_edge:              ; preds = %if.else265.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else275.i

land.lhs.true268.i:                               ; preds = %if.else265.i
  %82 = ptrtoint ptr %fddiSMTBypassPresent.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %fddiSMTBypassPresent.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool271.not.i = icmp eq i8 %83, 0
  br i1 %tobool271.not.i, label %if.then272.i, label %land.lhs.true268.i.if.else275.i_crit_edge

land.lhs.true268.i.if.else275.i_crit_edge:        ; preds = %land.lhs.true268.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else275.i

if.then272.i:                                     ; preds = %land.lhs.true268.i
  call void @__sanitizer_cov_trace_pc() #6
  %84 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 16, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

if.else275.i:                                     ; preds = %land.lhs.true268.i.if.else275.i_crit_edge, %if.else265.i.if.else275.i_crit_edge
  %85 = zext i8 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %81, label %if.else275.i.if.else298.i_crit_edge [
    i8 2, label %if.else275.i.if.then281.i_crit_edge
    i8 3, label %land.lhs.true290.i
  ]

if.else275.i.if.then281.i_crit_edge:              ; preds = %if.else275.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then281.i

if.else275.i.if.else298.i_crit_edge:              ; preds = %if.else275.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else298.i

if.then281.i:                                     ; preds = %if.else275.i.if.then281.i_crit_edge, %if.else275.i.thread
  %86 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 17, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

land.lhs.true290.i:                               ; preds = %if.else275.i
  %87 = ptrtoint ptr %fddiSMTBypassPresent.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %fddiSMTBypassPresent.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool294.not.i = icmp eq i8 %88, 0
  br i1 %tobool294.not.i, label %land.lhs.true290.i.if.else298.i_crit_edge, label %if.then295.i

land.lhs.true290.i.if.else298.i_crit_edge:        ; preds = %land.lhs.true290.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else298.i

if.then295.i:                                     ; preds = %land.lhs.true290.i
  call void @__sanitizer_cov_trace_pc() #6
  %89 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 23, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

if.else298.i:                                     ; preds = %land.lhs.true290.i.if.else298.i_crit_edge, %if.else275.i.if.else298.i_crit_edge
  br i1 %cmp266.i, label %land.lhs.true301.i, label %if.else298.i.ecm_fsm.exit_crit_edge

if.else298.i.ecm_fsm.exit_crit_edge:              ; preds = %if.else298.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ecm_fsm.exit

land.lhs.true301.i:                               ; preds = %if.else298.i
  %90 = ptrtoint ptr %fddiSMTBypassPresent.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %fddiSMTBypassPresent.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool305.not.i = icmp eq i8 %91, 0
  br i1 %tobool305.not.i, label %land.lhs.true301.i.ecm_fsm.exit_crit_edge, label %if.then306.i

land.lhs.true301.i.ecm_fsm.exit_crit_edge:        ; preds = %land.lhs.true301.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ecm_fsm.exit

if.then306.i:                                     ; preds = %land.lhs.true301.i
  call void @__sanitizer_cov_trace_pc() #6
  %92 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 23, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

sw.bb314.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @sm_pm_bypass_req(ptr noundef %smc, i32 noundef 1) #4
  %93 = ptrtoint ptr %ecm_in_max.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ecm_in_max.i, align 4
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %ecm_timer.i581.i, i32 noundef %94, i32 noundef 65544) #4
  %95 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %fddiSMTECMState, align 4
  %97 = and i16 %96, -17
  store i16 %97, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

sw.bb321.i:                                       ; preds = %if.end21.i
  %98 = zext i32 %event.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %event.addr.0, label %sw.bb321.i.ecm_fsm.exit_crit_edge [
    i32 8, label %if.then324.i
    i32 2, label %if.then330.i
  ]

sw.bb321.i.ecm_fsm.exit_crit_edge:                ; preds = %sw.bb321.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ecm_fsm.exit

if.then324.i:                                     ; preds = %sw.bb321.i
  call void @__sanitizer_cov_trace_pc() #6
  %99 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 22, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

if.then330.i:                                     ; preds = %sw.bb321.i
  call void @__sanitizer_cov_trace_pc() #6
  %100 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 23, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

sw.bb335.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  %101 = ptrtoint ptr %ecm_check_poll392.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ecm_check_poll392.i, align 4
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %ecm_timer.i581.i, i32 noundef %102, i32 noundef 65536) #4
  %103 = ptrtoint ptr %ecm_line_state360.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %ecm_line_state360.i, align 1
  %104 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %fddiSMTECMState, align 4
  %106 = and i16 %105, -17
  store i16 %106, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

sw.bb344.i:                                       ; preds = %if.end21.i
  %call345.i = tail call i32 @sm_pm_get_ls(ptr noundef %smc, i32 noundef 0) #4
  %call346.i = tail call i32 @sm_pm_get_ls(ptr noundef %smc, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call345.i)
  %cmp347.i = icmp eq i32 %call345.i, 12
  %107 = zext i32 %call345.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %call345.i, label %sw.bb344.i.if.else363.i_crit_edge [
    i32 15, label %sw.bb344.i.land.lhs.true351.i_crit_edge
    i32 12, label %sw.bb344.i.land.lhs.true351.i_crit_edge16
  ]

sw.bb344.i.land.lhs.true351.i_crit_edge16:        ; preds = %sw.bb344.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true351.i

sw.bb344.i.land.lhs.true351.i_crit_edge:          ; preds = %sw.bb344.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true351.i

sw.bb344.i.if.else363.i_crit_edge:                ; preds = %sw.bb344.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else363.i

land.lhs.true351.i:                               ; preds = %sw.bb344.i.land.lhs.true351.i_crit_edge, %sw.bb344.i.land.lhs.true351.i_crit_edge16
  %108 = zext i32 %call346.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %call346.i, label %land.lhs.true351.i.if.else363.i_crit_edge [
    i32 12, label %land.lhs.true351.i.if.then357.i_crit_edge
    i32 15, label %land.lhs.true351.i.if.then357.i_crit_edge17
  ]

land.lhs.true351.i.if.then357.i_crit_edge17:      ; preds = %land.lhs.true351.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then357.i

land.lhs.true351.i.if.then357.i_crit_edge:        ; preds = %land.lhs.true351.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then357.i

land.lhs.true351.i.if.else363.i_crit_edge:        ; preds = %land.lhs.true351.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else363.i

if.then357.i:                                     ; preds = %land.lhs.true351.i.if.then357.i_crit_edge, %land.lhs.true351.i.if.then357.i_crit_edge17
  %109 = ptrtoint ptr %sb_flag.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %sb_flag.i, align 1
  %110 = ptrtoint ptr %ecm_line_state360.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %ecm_line_state360.i, align 1
  %111 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 17, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

if.else363.i:                                     ; preds = %land.lhs.true351.i.if.else363.i_crit_edge, %sw.bb344.i.if.else363.i_crit_edge
  %112 = ptrtoint ptr %sb_flag.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %sb_flag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool366.not.i = icmp eq i8 %113, 0
  br i1 %tobool366.not.i, label %land.lhs.true367.i, label %if.else363.i.if.else382.i_crit_edge

if.else363.i.if.else382.i_crit_edge:              ; preds = %if.else363.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else382.i

land.lhs.true367.i:                               ; preds = %if.else363.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %call345.i)
  %cmp368.i = icmp eq i32 %call345.i, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call346.i)
  %cmp371.i = icmp eq i32 %call346.i, 12
  %or.cond563.i = select i1 %cmp368.i, i1 %cmp371.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %call346.i)
  %cmp377.i = icmp eq i32 %call346.i, 13
  %or.cond564.i = select i1 %cmp347.i, i1 %cmp377.i, i1 false
  %or.cond.i = select i1 %or.cond563.i, i1 true, i1 %or.cond564.i
  br i1 %or.cond.i, label %if.then379.i, label %land.lhs.true367.i.if.else382.i_crit_edge

land.lhs.true367.i.if.else382.i_crit_edge:        ; preds = %land.lhs.true367.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else382.i

if.then379.i:                                     ; preds = %land.lhs.true367.i
  call void @__sanitizer_cov_trace_pc() #6
  %114 = ptrtoint ptr %sb_flag.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %sb_flag.i, align 1
  br label %ecm_fsm.exit

if.else382.i:                                     ; preds = %land.lhs.true367.i.if.else382.i_crit_edge, %if.else363.i.if.else382.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event.addr.0)
  %cmp383.i = icmp eq i32 %event.addr.0, 2
  br i1 %cmp383.i, label %if.then385.i, label %if.else390.i

if.then385.i:                                     ; preds = %if.else382.i
  call void @__sanitizer_cov_trace_pc() #6
  %115 = ptrtoint ptr %ecm_line_state360.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %ecm_line_state360.i, align 1
  %116 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 23, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

if.else390.i:                                     ; preds = %if.else382.i
  call void @__sanitizer_cov_trace_pc() #6
  %117 = ptrtoint ptr %ecm_check_poll392.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ecm_check_poll392.i, align 4
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %ecm_timer.i581.i, i32 noundef %118, i32 noundef 65536) #4
  br label %ecm_fsm.exit

sw.bb396.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @sm_pm_bypass_req(ptr noundef %smc, i32 noundef 0) #4
  %119 = ptrtoint ptr %ecm_i_max.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ecm_i_max.i, align 4
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %ecm_timer.i581.i, i32 noundef %120, i32 noundef 65543) #4
  %121 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %fddiSMTECMState, align 4
  %123 = and i16 %122, -17
  store i16 %123, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

sw.bb403.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %event.addr.0)
  %cmp404.i = icmp eq i32 %event.addr.0, 7
  br i1 %cmp404.i, label %if.then406.i, label %if.else409.i

if.then406.i:                                     ; preds = %sw.bb403.i
  call void @__sanitizer_cov_trace_pc() #6
  %124 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 16, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

if.else409.i:                                     ; preds = %sw.bb403.i
  br i1 %cmp.i, label %land.lhs.true412.i, label %if.else409.i.ecm_fsm.exit_crit_edge

if.else409.i.ecm_fsm.exit_crit_edge:              ; preds = %if.else409.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ecm_fsm.exit

land.lhs.true412.i:                               ; preds = %if.else409.i
  %125 = ptrtoint ptr %e413.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %e413.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %126)
  %cmp416.i = icmp eq i8 %126, 2
  br i1 %cmp416.i, label %if.then418.i, label %land.lhs.true412.i.ecm_fsm.exit_crit_edge

land.lhs.true412.i.ecm_fsm.exit_crit_edge:        ; preds = %land.lhs.true412.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ecm_fsm.exit

if.then418.i:                                     ; preds = %land.lhs.true412.i
  call void @__sanitizer_cov_trace_pc() #6
  %127 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 21, ptr %fddiSMTECMState, align 4
  br label %ecm_fsm.exit

do.end.i:                                         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  %call424.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 107, ptr noundef nonnull @.str.3) #7
  br label %ecm_fsm.exit

ecm_fsm.exit:                                     ; preds = %do.end.i, %if.then418.i, %land.lhs.true412.i.ecm_fsm.exit_crit_edge, %if.else409.i.ecm_fsm.exit_crit_edge, %if.then406.i, %sw.bb396.i, %if.else390.i, %if.then385.i, %if.then379.i, %if.then357.i, %sw.bb335.i, %if.then330.i, %if.then324.i, %sw.bb321.i.ecm_fsm.exit_crit_edge, %sw.bb314.i, %if.then306.i, %land.lhs.true301.i.ecm_fsm.exit_crit_edge, %if.else298.i.ecm_fsm.exit_crit_edge, %if.then295.i, %if.then281.i, %if.then272.i, %if.then262.i, %stop_ecm_timer.exit576.i, %if.then219.i, %if.then202.i, %land.lhs.true196.i.ecm_fsm.exit_crit_edge, %if.else193.i.ecm_fsm.exit_crit_edge, %if.then190.i, %land.lhs.true184.i.ecm_fsm.exit_crit_edge, %if.then178.i, %if.then166.i, %sw.bb138.i, %if.then129.i, %if.else126.i.ecm_fsm.exit_crit_edge, %if.then123.i, %if.then112.i, %if.then106.i, %sw.bb96.i, %if.then91.i, %if.then85.i, %sw.bb82.i.ecm_fsm.exit_crit_edge, %for.inc.1.i, %if.then63.i, %land.lhs.true59.i.ecm_fsm.exit_crit_edge, %land.lhs.true48.thread.i.ecm_fsm.exit_crit_edge, %if.then42.i, %land.lhs.true36.i.ecm_fsm.exit_crit_edge, %sw.bb30.i.ecm_fsm.exit_crit_edge, %stop_ecm_timer.exit.i
  %128 = ptrtoint ptr %fddiSMTECMState to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %fddiSMTECMState, align 4
  %cmp.not = icmp eq i16 %1, %129
  br i1 %cmp.not, label %do.end, label %ecm_fsm.exit.do.body_crit_edge

ecm_fsm.exit.do.body_crit_edge:                   ; preds = %ecm_fsm.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %ecm_fsm.exit
  call void @__sanitizer_cov_trace_pc() #6
  %conv3 = zext i16 %1 to i32
  tail call void @ecm_state_change(ptr noundef %smc, i32 noundef %conv3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ecm_state_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_pm_bypass_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sm_ma_control(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @queue_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prop_actions(ptr noundef %smc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_status = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 11, i32 5
  %0 = ptrtoint ptr %ring_status to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ring_status, align 4
  %2 = or i16 %1, 4
  store i16 %2, ptr %ring_status, align 4
  %conv2 = zext i16 %2 to i32
  tail call void @ring_status_indication(ptr noundef %smc, i32 noundef %conv2) #4
  %sas = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %sas to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sas, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %4, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 0, label %sw.bb4
    i8 2, label %do.end
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @pcm_get_s_port(ptr noundef %smc) #4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 @cfm_get_mac_input(ptr noundef %smc) #4
  %call6 = tail call i32 @cfm_get_mac_output(ptr noundef %smc) #4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 108, ptr noundef nonnull @.str.5) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  %port_out.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call6, %sw.bb4 ], [ %call, %sw.bb ]
  %port_in.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call5, %sw.bb4 ], [ %call, %sw.bb ]
  %e = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 4
  %trace_prop = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 4, i32 4
  %6 = ptrtoint ptr %trace_prop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %trace_prop, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i32 %port_in.0, 5
  tail call void @queue_event(ptr noundef %smc, i32 noundef %add, i32 noundef 8) #4
  br label %if.end33

if.else:                                          ; preds = %sw.epilog
  %and14 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port_out.0)
  %cmp.not = icmp eq i32 %port_out.0, 0
  %or.cond = select i1 %tobool15.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.else19, label %if.then17

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @queue_event(ptr noundef %smc, i32 noundef 6, i32 noundef 8) #4
  br label %if.end33

if.else19:                                        ; preds = %if.else
  %and22 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %port_out.0)
  %cmp25.not = icmp eq i32 %port_out.0, 1
  %or.cond51 = select i1 %tobool23.not, i1 true, i1 %cmp25.not
  br i1 %or.cond51, label %if.else29, label %if.then27

if.then27:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @queue_event(ptr noundef %smc, i32 noundef 5, i32 noundef 8) #4
  br label %if.end33

if.else29:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %e to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %e, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else29, %if.then27, %if.then17, %if.then
  %9 = ptrtoint ptr %trace_prop to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %trace_prop, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_status_indication(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sm_pm_bypass_req(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_pm_get_ls(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_timer_stop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcm_get_s_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfm_get_mac_input(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfm_get_mac_output(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_timer_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/fddi/skfp/ecm.c", i32 406, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ecm_fsm._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ecm_fsm._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/fddi/skfp/ecm.c", i32 430, i32 3}
!9 = !{ptr @prop_actions._entry, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @prop_actions._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
