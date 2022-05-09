; ModuleID = '/llk/IR_all_yes/drivers/net/fddi/skfp/ess.c_pt.bc'
source_filename = "../drivers/net/fddi/skfp/ess.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fddi_addr = type { [6 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.smt_p_0015 = type { %struct.smt_para, i32 }
%struct.smt_para = type { i16, i16 }
%struct.smt_p_0016 = type { %struct.smt_para, i32 }
%struct.smt_header = type { %struct.fddi_addr, %struct.fddi_addr, i8, i8, i16, i32, %struct.smt_sid, i16, i16 }
%struct.smt_sid = type { [2 x i8], %struct.fddi_addr }
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
%struct.fddi_mib_m = type { i16, i32, i32, i8, i8, i8, i8, i16, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, i16, i16, i16, i16, %struct.fddi_addr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.fddi_mib_a = type { i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.fddi_mib_p = type { i16, i16, i8, %struct.anon.116, i16, [4 x i8], i16, i8, i8, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.anon.116 = type { i8, i8 }
%struct.anon.117 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.s_ess = type { i8, i8, i8, i8, ptr, i32, i32 }
%struct.smt_p_0019 = type { %struct.smt_para, i16, %struct.fddi_addr }
%struct.smt_p_320f = type { %struct.smt_para, i32, i32 }
%struct.smt_p_3210 = type { %struct.smt_para, i32, i32 }
%struct.s_mbuf = type { ptr, i16, i32, i32, [4504 x i8] }
%struct.smt_p_320b = type { %struct.smt_para, i32, i16, i16 }
%struct.smt_p_reason = type { %struct.smt_para, i32 }
%struct.smt_sba_chg = type { %struct.smt_header, %struct.smt_p_0015, %struct.smt_p_0016, %struct.smt_p_320b, %struct.smt_p_320f, %struct.smt_p_3210, %struct.smt_p_001a }
%struct.smt_p_001a = type { %struct.smt_para, i32 }
%struct.smt_sba_alc_req = type { %struct.smt_header, %struct.smt_p_0015, %struct.smt_p_0016, %struct.smt_p_320b, %struct.smt_p_0017, %struct.smt_p_0018, %struct.smt_p_320f, %struct.smt_p_3210, %struct.smt_p_0019, %struct.smt_p_001a, %struct.smt_p_001b, %struct.smt_p_001c }
%struct.smt_p_0017 = type { %struct.smt_para, i32 }
%struct.smt_p_0018 = type { %struct.smt_para, i32 }
%struct.smt_p_001b = type { %struct.smt_para, i32 }
%struct.smt_p_001c = type { %struct.smt_para, i32 }

@smt_sba_da = internal constant { %struct.fddi_addr, [26 x i8] } { %struct.fddi_addr { [6 x i8] c"\80\01C\00\80\0C" }, [26 x i8] zeroinitializer }, align 32
@plist_raf_alc_res = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 18, i16 12811, i16 12815, i16 12816, i16 25, i16 26, i16 29, i16 0], [16 x i8] zeroinitializer }, align 32
@ess_raf_received_pack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013ESS: sm_to_para failed\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ess_raf_received_pack\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/fddi/skfp/ess.c\00", [36 x i8] zeroinitializer }, align 32
@ess_raf_received_pack._entry_ptr = internal global ptr @ess_raf_received_pack._entry, section ".printk_index", align 4
@ess_raf_received_pack._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ess_raf_received_pack._entry_ptr.4 = internal global ptr @ess_raf_received_pack._entry.3, section ".printk_index", align 4
@plist_raf_chg_req = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 12811, i16 12815, i16 12816, i16 26, i16 0], [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.5 = private unnamed_addr constant [11 x i8] c"smt_sba_da\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 62, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant [18 x i8] c"plist_raf_alc_res\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 55, i32 22 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 248, i32 25 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 254, i32 25 }
@___asan_gen_.26 = private unnamed_addr constant [18 x i8] c"plist_raf_chg_req\00", align 1
@___asan_gen_.27 = private constant [31 x i8] c"../drivers/net/fddi/skfp/ess.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 59, i32 22 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @ess_raf_received_pack._entry, ptr @ess_raf_received_pack._entry.3, ptr @ess_raf_received_pack._entry_ptr, ptr @ess_raf_received_pack._entry_ptr.4, ptr @smt_sba_da, ptr @plist_raf_alc_res, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @plist_raf_chg_req], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smt_sba_da to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plist_raf_alc_res to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ess_raf_received_pack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ess_raf_received_pack._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plist_raf_chg_req to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ess_raf_received_pack(ptr noundef %smc, ptr nocapture noundef readonly %mb, ptr noundef %sm, i32 noundef %fs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %fs, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %call = tail call ptr @sm_to_para(ptr noundef %smc, ptr noundef %sm, i32 noundef 21) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %res_type = getelementptr inbounds %struct.smt_p_0015, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %res_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %res_type, align 4
  %call1 = tail call ptr @sm_to_para(ptr noundef %smc, ptr noundef %sm, i32 noundef 22) #3
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sba_cmd = getelementptr inbounds %struct.smt_p_0016, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %sba_cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sba_cmd, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end5.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb92
    i32 2, label %sw.bb126
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  %smt_type = getelementptr inbounds %struct.smt_header, ptr %sm, i32 0, i32 3
  %5 = ptrtoint ptr %smt_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %smt_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp12 = icmp eq i8 %6, 2
  br i1 %cmp12, label %if.then14, label %if.end47

if.then14:                                        ; preds = %sw.bb
  br i1 %cmp.not, label %if.then14.cleanup_crit_edge, label %lor.lhs.false

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then14
  %fddiESSPayload = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 2
  %7 = ptrtoint ptr %fddiESSPayload to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fddiESSPayload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool16.not = icmp eq i32 %8, 0
  br i1 %tobool16.not, label %if.end18, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false
  %call19 = tail call ptr @sm_to_para(ptr noundef %smc, ptr noundef %sm, i32 noundef 25) #3
  %alloc_addr = getelementptr inbounds %struct.smt_p_0019, ptr %call19, i32 0, i32 2
  %9 = ptrtoint ptr %alloc_addr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %alloc_addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool22.not = icmp eq i8 %10, 0
  br i1 %tobool22.not, label %for.cond, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond:                                         ; preds = %if.end18
  %arrayidx.1 = getelementptr %struct.smt_p_0019, ptr %call19, i32 0, i32 2, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool22.not.1 = icmp eq i8 %12, 0
  br i1 %tobool22.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.smt_p_0019, ptr %call19, i32 0, i32 2, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool22.not.2 = icmp eq i8 %14, 0
  br i1 %tobool22.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.smt_p_0019, ptr %call19, i32 0, i32 2, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool22.not.3 = icmp eq i8 %16, 0
  br i1 %tobool22.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr %struct.smt_p_0019, ptr %call19, i32 0, i32 2, i32 0, i32 4
  %17 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool22.not.4 = icmp eq i8 %18, 0
  br i1 %tobool22.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %smt_tid = getelementptr inbounds %struct.smt_header, ptr %sm, i32 0, i32 5
  %19 = ptrtoint ptr %smt_tid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %smt_tid, align 4
  %alloc_trans_id = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14, i32 6
  %21 = ptrtoint ptr %alloc_trans_id to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %alloc_trans_id, align 4
  %call26 = tail call ptr @sm_to_para(ptr noundef %smc, ptr noundef %sm, i32 noundef 12815) #3
  %fddiPATHSbaPayload = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 1
  %22 = ptrtoint ptr %fddiPATHSbaPayload to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fddiPATHSbaPayload, align 4
  %mib_payload = getelementptr inbounds %struct.smt_p_320f, ptr %call26, i32 0, i32 2
  %24 = ptrtoint ptr %mib_payload to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %mib_payload, align 4
  %call30 = tail call ptr @sm_to_para(ptr noundef %smc, ptr noundef %sm, i32 noundef 12816) #3
  %fddiPATHSbaOverhead = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 2
  %25 = ptrtoint ptr %fddiPATHSbaOverhead to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fddiPATHSbaOverhead, align 4
  %mib_overhead = getelementptr inbounds %struct.smt_p_3210, ptr %call30, i32 0, i32 2
  %27 = ptrtoint ptr %mib_overhead to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %mib_overhead, align 4
  %28 = call ptr @memcpy(ptr %sm, ptr @smt_sba_da, i32 6)
  %local_sba_active = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14, i32 1
  %29 = ptrtoint ptr %local_sba_active to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %local_sba_active, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool35.not = icmp eq i8 %30, 0
  br i1 %tobool35.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #5
  %or = or i32 %fs, 64
  br label %cleanup

if.end37:                                         ; preds = %for.cond.4
  %call38 = tail call ptr @smt_get_mbuf(ptr noundef %smc) #3
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %if.end41

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  %m_len = getelementptr inbounds %struct.s_mbuf, ptr %mb, i32 0, i32 2
  %31 = ptrtoint ptr %m_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %m_len, align 4
  %m_len42 = getelementptr inbounds %struct.s_mbuf, ptr %call38, i32 0, i32 2
  %33 = ptrtoint ptr %m_len42 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %m_len42, align 4
  %m_off = getelementptr inbounds %struct.s_mbuf, ptr %mb, i32 0, i32 1
  %34 = ptrtoint ptr %m_off to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %m_off, align 4
  %m_off43 = getelementptr inbounds %struct.s_mbuf, ptr %call38, i32 0, i32 1
  %36 = ptrtoint ptr %m_off43 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %m_off43, align 4
  %m_data = getelementptr inbounds %struct.s_mbuf, ptr %call38, i32 0, i32 4
  %conv45 = sext i16 %35 to i32
  %add.ptr = getelementptr i8, ptr %m_data, i32 %conv45
  %37 = call ptr @memcpy(ptr %add.ptr, ptr %sm, i32 %32)
  tail call void @smt_send_frame(ptr noundef %smc, ptr noundef nonnull %call38, i32 noundef 65, i32 noundef 0) #3
  br label %cleanup

if.end47:                                         ; preds = %sw.bb
  %call48 = tail call i32 @smt_check_para(ptr noundef %smc, ptr noundef %sm, ptr noundef nonnull @plist_raf_alc_res) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end52, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  %call53 = tail call ptr @sm_to_para(ptr noundef %smc, ptr noundef %sm, i32 noundef 12811) #3
  %path_index = getelementptr inbounds %struct.smt_p_320b, ptr %call53, i32 0, i32 3
  %38 = ptrtoint ptr %path_index to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %path_index, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %39)
  %cmp55.not = icmp eq i16 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp58.not = icmp eq i32 %1, 1
  %or.cond = select i1 %cmp55.not, i1 %cmp58.not, i1 false
  br i1 %or.cond, label %lor.lhs.false60, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false60:                                  ; preds = %if.end52
  %call61 = tail call ptr @sm_to_para(ptr noundef %smc, ptr noundef %sm, i32 noundef 18) #3
  %rdf_reason = getelementptr inbounds %struct.smt_p_reason, ptr %call61, i32 0, i32 1
  %40 = ptrtoint ptr %rdf_reason to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rdf_reason, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp62.not = icmp eq i32 %41, 3
  br i1 %cmp62.not, label %lor.lhs.false64, label %lor.lhs.false60.cleanup_crit_edge

lor.lhs.false60.cleanup_crit_edge:                ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false64:                                  ; preds = %lor.lhs.false60
  %smt_tid65 = getelementptr inbounds %struct.smt_header, ptr %sm, i32 0, i32 5
  %42 = ptrtoint ptr %smt_tid65 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %smt_tid65, align 4
  %alloc_trans_id67 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14, i32 6
  %44 = ptrtoint ptr %alloc_trans_id67 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %alloc_trans_id67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp68.not = icmp eq i32 %43, %45
  br i1 %cmp68.not, label %if.end72, label %lor.lhs.false64.cleanup_crit_edge

lor.lhs.false64.cleanup_crit_edge:                ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end72:                                         ; preds = %lor.lhs.false64
  %call73 = tail call ptr @sm_to_para(ptr noundef %smc, ptr noundef %sm, i32 noundef 12815) #3
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %do.end, label %if.end78

do.end:                                           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #5
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %cleanup

if.end78:                                         ; preds = %if.end72
  %mib_payload79 = getelementptr inbounds %struct.smt_p_320f, ptr %call73, i32 0, i32 2
  %46 = ptrtoint ptr %mib_payload79 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mib_payload79, align 4
  %call80 = tail call ptr @sm_to_para(ptr noundef %smc, ptr noundef %sm, i32 noundef 12816) #3
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %do.end85, label %if.end88

do.end85:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #5
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %cleanup

if.end88:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #5
  %mib_overhead89 = getelementptr inbounds %struct.smt_p_3210, ptr %call80, i32 0, i32 2
  %48 = ptrtoint ptr %mib_overhead89 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mib_overhead89, align 4
  %call91 = tail call fastcc i32 @process_bw_alloc(ptr noundef %smc, i32 noundef %47, i32 noundef %49)
  br label %cleanup

sw.bb92:                                          ; preds = %if.end5
  %smt_type93 = getelementptr inbounds %struct.smt_header, ptr %sm, i32 0, i32 3
  %50 = ptrtoint ptr %smt_type93 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %smt_type93, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %51)
  %cmp95.not = icmp eq i8 %51, 2
  br i1 %cmp95.not, label %if.end99, label %sw.bb92.cleanup_crit_edge

sw.bb92.cleanup_crit_edge:                        ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end99:                                         ; preds = %sw.bb92
  %call100 = tail call i32 @smt_check_para(ptr noundef %smc, ptr noundef %sm, ptr noundef nonnull @plist_raf_chg_req) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end104, label %if.end99.cleanup_crit_edge

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end104:                                        ; preds = %if.end99
  %call105 = tail call ptr @sm_to_para(ptr noundef %smc, ptr noundef %sm, i32 noundef 12811) #3
  %path_index106 = getelementptr inbounds %struct.smt_p_320b, ptr %call105, i32 0, i32 3
  %52 = ptrtoint ptr %path_index106 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %path_index106, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %53)
  %cmp108.not = icmp eq i16 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp111.not = icmp eq i32 %1, 1
  %or.cond237 = select i1 %cmp108.not, i1 %cmp111.not, i1 false
  br i1 %or.cond237, label %if.end115, label %if.end104.cleanup_crit_edge

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end115:                                        ; preds = %if.end104
  %call116 = tail call ptr @sm_to_para(ptr noundef %smc, ptr noundef %sm, i32 noundef 12815) #3
  %mib_payload117 = getelementptr inbounds %struct.smt_p_320f, ptr %call116, i32 0, i32 2
  %54 = ptrtoint ptr %mib_payload117 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mib_payload117, align 4
  %call118 = tail call ptr @sm_to_para(ptr noundef %smc, ptr noundef %sm, i32 noundef 12816) #3
  %mib_overhead119 = getelementptr inbounds %struct.smt_p_3210, ptr %call118, i32 0, i32 2
  %56 = ptrtoint ptr %mib_overhead119 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mib_overhead119, align 4
  %call122 = tail call fastcc i32 @process_bw_alloc(ptr noundef %smc, i32 noundef %55, i32 noundef %57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end115.cleanup_crit_edge, label %if.end125

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end125:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @ess_send_response(ptr noundef %smc, ptr noundef %sm, i32 noundef 3)
  br label %cleanup

sw.bb126:                                         ; preds = %if.end5
  %smt_type127 = getelementptr inbounds %struct.smt_header, ptr %sm, i32 0, i32 3
  %58 = ptrtoint ptr %smt_type127 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %smt_type127, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %59)
  %cmp129.not = icmp eq i8 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp135.not = icmp eq i32 %1, 1
  %or.cond238 = select i1 %cmp129.not, i1 %cmp135.not, i1 false
  br i1 %or.cond238, label %if.end139, label %sw.bb126.cleanup_crit_edge

sw.bb126.cleanup_crit_edge:                       ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end139:                                        ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @ess_send_response(ptr noundef %smc, ptr noundef %sm, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end139, %sw.bb126.cleanup_crit_edge, %if.end125, %if.end115.cleanup_crit_edge, %if.end104.cleanup_crit_edge, %if.end99.cleanup_crit_edge, %sw.bb92.cleanup_crit_edge, %if.end88, %do.end85, %do.end, %lor.lhs.false64.cleanup_crit_edge, %lor.lhs.false60.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end41, %if.end37.cleanup_crit_edge, %if.then36, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %fs, %if.end139 ], [ %fs, %if.end125 ], [ %or, %if.then36 ], [ %fs, %if.end41 ], [ %fs, %if.end88 ], [ %fs, %do.end85 ], [ %fs, %do.end ], [ %fs, %entry.cleanup_crit_edge ], [ %fs, %if.end.cleanup_crit_edge ], [ %fs, %lor.lhs.false.cleanup_crit_edge ], [ %fs, %if.then14.cleanup_crit_edge ], [ %fs, %if.end37.cleanup_crit_edge ], [ %fs, %if.end47.cleanup_crit_edge ], [ %fs, %lor.lhs.false64.cleanup_crit_edge ], [ %fs, %lor.lhs.false60.cleanup_crit_edge ], [ %fs, %if.end52.cleanup_crit_edge ], [ %fs, %sw.bb92.cleanup_crit_edge ], [ %fs, %if.end99.cleanup_crit_edge ], [ %fs, %if.end104.cleanup_crit_edge ], [ %fs, %if.end115.cleanup_crit_edge ], [ %fs, %sw.bb126.cleanup_crit_edge ], [ %fs, %if.end5.cleanup_crit_edge ], [ %fs, %for.cond.3.cleanup_crit_edge ], [ %fs, %for.cond.2.cleanup_crit_edge ], [ %fs, %for.cond.1.cleanup_crit_edge ], [ %fs, %for.cond.cleanup_crit_edge ], [ %fs, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sm_to_para(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smt_get_mbuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_send_frame(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smt_check_para(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_bw_alloc(ptr noundef %smc, i32 noundef %payload, i32 noundef %overhead) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1562, i32 %payload)
  %cmp = icmp sgt i32 %payload, 1562
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %overhead)
  %cmp1 = icmp sgt i32 %overhead, 5000
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  %fddiESSPayload = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 2
  %0 = ptrtoint ptr %fddiESSPayload to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fddiESSPayload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %payload)
  %cmp4.not = icmp eq i32 %1, %payload
  br i1 %cmp4.not, label %lor.lhs.false5, label %land.lhs.true.if.then8_crit_edge

land.lhs.true.if.then8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then8

lor.lhs.false5:                                   ; preds = %land.lhs.true
  %fddiESSOverhead = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 3
  %2 = ptrtoint ptr %fddiESSOverhead to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fddiESSOverhead, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %overhead)
  %cmp7.not = icmp eq i32 %3, %overhead
  br i1 %cmp7.not, label %lor.lhs.false5.if.end10_crit_edge, label %lor.lhs.false5.if.then8_crit_edge

lor.lhs.false5.if.then8_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then8

lor.lhs.false5.if.end10_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.then8:                                         ; preds = %lor.lhs.false5.if.then8_crit_edge, %land.lhs.true.if.then8_crit_edge
  %raf_act_timer_poll = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14, i32 2
  %4 = ptrtoint ptr %raf_act_timer_poll to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %raf_act_timer_poll, align 2
  %timer_count = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14, i32 3
  %5 = ptrtoint ptr %timer_count to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %timer_count, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %lor.lhs.false5.if.end10_crit_edge, %if.end.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %payload)
  %tobool11.not = icmp eq i32 %payload, 0
  %ess18 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14
  br i1 %tobool11.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end10
  %6 = ptrtoint ptr %ess18 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %ess18, align 8
  %fddiMACT_Neg = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 20
  %7 = ptrtoint ptr %fddiMACT_Neg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fddiMACT_Neg, align 4
  %mul = mul i32 %8, %payload
  %div.neg = sdiv i32 %mul, -1562
  %sub = add i32 %div.neg, %overhead
  %sync_bw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14, i32 5
  %9 = ptrtoint ptr %sync_bw to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub, ptr %sync_bw, align 8
  %fddiPATHSbaPayload = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 1
  %10 = ptrtoint ptr %fddiPATHSbaPayload to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %payload, ptr %fddiPATHSbaPayload, align 4
  %fddiPATHSbaOverhead = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 2
  %11 = ptrtoint ptr %fddiPATHSbaOverhead to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %overhead, ptr %fddiPATHSbaOverhead, align 4
  %fifo_config_mode15.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 13, i32 10
  %12 = ptrtoint ptr %fifo_config_mode15.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %fifo_config_mode15.i, align 4
  %conv.i = zext i16 %13 to i32
  %and.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end21.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end21.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %and7.i = and i32 %conv.i, 1
  %fddiESSSynchTxMode.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 7
  %14 = ptrtoint ptr %fddiESSSynchTxMode.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %fddiESSSynchTxMode.i, align 4
  %conv9.i = sext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and7.i, i32 %conv9.i)
  %cmp.i = icmp eq i32 %and7.i, %conv9.i
  br i1 %cmp.i, label %land.lhs.true.i.ess_config_fifo.exit_crit_edge, label %land.lhs.true.i.if.end21.i_crit_edge

land.lhs.true.i.if.end21.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21.i

land.lhs.true.i.ess_config_fifo.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ess_config_fifo.exit

if.else.i:                                        ; preds = %if.end10
  %16 = ptrtoint ptr %ess18 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %ess18, align 8
  %sync_bw21 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14, i32 5
  %17 = ptrtoint ptr %sync_bw21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sync_bw21, align 8
  %fddiPATHSbaPayload53 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 1
  %18 = ptrtoint ptr %fddiPATHSbaPayload53 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %fddiPATHSbaPayload53, align 4
  %fddiPATHSbaOverhead54 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 2
  %19 = ptrtoint ptr %fddiPATHSbaOverhead54 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %fddiPATHSbaOverhead54, align 4
  %fifo_config_mode15.i55 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 13, i32 10
  %20 = ptrtoint ptr %fifo_config_mode15.i55 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %fifo_config_mode15.i55, align 4
  %22 = and i16 %21, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool18.not.i = icmp eq i16 %22, 0
  br i1 %tobool18.not.i, label %if.else.i.ess_config_fifo.exit_crit_edge, label %if.else.i.if.end21.i_crit_edge

if.else.i.if.end21.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21.i

if.else.i.ess_config_fifo.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %ess_config_fifo.exit

if.end21.i:                                       ; preds = %if.else.i.if.end21.i_crit_edge, %land.lhs.true.i.if.end21.i_crit_edge, %if.then.i.if.end21.i_crit_edge
  tail call void @formac_reinit_tx(ptr noundef %smc) #3
  br label %ess_config_fifo.exit

ess_config_fifo.exit:                             ; preds = %if.end21.i, %if.else.i.ess_config_fifo.exit_crit_edge, %land.lhs.true.i.ess_config_fifo.exit_crit_edge
  %sync_bw30 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14, i32 5
  %23 = ptrtoint ptr %sync_bw30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sync_bw30, align 8
  tail call void @set_formac_tsync(ptr noundef %smc, i32 noundef %24) #3
  br label %return

return:                                           ; preds = %ess_config_fifo.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %ess_config_fifo.exit ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ess_send_response(ptr noundef %smc, ptr noundef %sm, i32 noundef %sba_cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sba_cmd)
  %cmp = icmp eq i32 %sba_cmd, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call ptr @smt_build_frame(ptr noundef %smc, i32 noundef 5, i32 noundef 3, i32 noundef 92) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.else:                                          ; preds = %entry
  %call2 = tail call ptr @smt_build_frame(ptr noundef %smc, i32 noundef 5, i32 noundef 3, i32 noundef 84) #3
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.else.cleanup_crit_edge, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %if.then.if.end6_crit_edge
  %mb.0 = phi ptr [ %call, %if.then.if.end6_crit_edge ], [ %call2, %if.else.if.end6_crit_edge ]
  %m_data = getelementptr inbounds %struct.s_mbuf, ptr %mb.0, i32 0, i32 4
  %m_off = getelementptr inbounds %struct.s_mbuf, ptr %mb.0, i32 0, i32 1
  %0 = ptrtoint ptr %m_off to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %m_off, align 4
  %conv = sext i16 %1 to i32
  %add.ptr = getelementptr i8, ptr %m_data, i32 %conv
  %smt_tid = getelementptr inbounds %struct.smt_header, ptr %sm, i32 0, i32 5
  %2 = ptrtoint ptr %smt_tid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %smt_tid, align 4
  %smt_tid7 = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 5
  %4 = ptrtoint ptr %smt_tid7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %smt_tid7, align 4
  %smt_source = getelementptr inbounds %struct.smt_header, ptr %sm, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %add.ptr, ptr %smt_source, i32 6)
  %s_type = getelementptr inbounds %struct.smt_sba_chg, ptr %add.ptr, i32 0, i32 1
  %6 = ptrtoint ptr %s_type to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 21, ptr %s_type, align 4
  %p_len = getelementptr inbounds %struct.smt_para, ptr %s_type, i32 0, i32 1
  %7 = ptrtoint ptr %p_len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 4, ptr %p_len, align 2
  %res_type = getelementptr inbounds %struct.smt_p_0015, ptr %s_type, i32 0, i32 1
  %8 = ptrtoint ptr %res_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %res_type, align 4
  %cmd = getelementptr inbounds %struct.smt_sba_chg, ptr %add.ptr, i32 0, i32 2
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 22, ptr %cmd, align 4
  %p_len16 = getelementptr inbounds %struct.smt_para, ptr %cmd, i32 0, i32 1
  %10 = ptrtoint ptr %p_len16 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 4, ptr %p_len16, align 2
  %sba_cmd18 = getelementptr inbounds %struct.smt_p_0016, ptr %cmd, i32 0, i32 1
  %11 = ptrtoint ptr %sba_cmd18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sba_cmd, ptr %sba_cmd18, align 4
  %path = getelementptr inbounds %struct.smt_sba_chg, ptr %add.ptr, i32 0, i32 3
  %12 = ptrtoint ptr %path to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 12811, ptr %path, align 4
  %p_len23 = getelementptr inbounds %struct.smt_para, ptr %path, i32 0, i32 1
  %13 = ptrtoint ptr %p_len23 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 8, ptr %p_len23, align 2
  %mib_index = getelementptr inbounds %struct.smt_p_320b, ptr %path, i32 0, i32 1
  %14 = ptrtoint ptr %mib_index to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %mib_index, align 4
  %path_pad = getelementptr inbounds %struct.smt_p_320b, ptr %path, i32 0, i32 2
  %15 = ptrtoint ptr %path_pad to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %path_pad, align 4
  %path_index = getelementptr inbounds %struct.smt_p_320b, ptr %path, i32 0, i32 3
  %16 = ptrtoint ptr %path_index to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %path_index, align 2
  %payload = getelementptr inbounds %struct.smt_sba_chg, ptr %add.ptr, i32 0, i32 4
  %17 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 12815, ptr %payload, align 4
  %p_len31 = getelementptr inbounds %struct.smt_para, ptr %payload, i32 0, i32 1
  %18 = ptrtoint ptr %p_len31 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 8, ptr %p_len31, align 2
  %mib_index33 = getelementptr inbounds %struct.smt_p_320f, ptr %payload, i32 0, i32 1
  %19 = ptrtoint ptr %mib_index33 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %mib_index33, align 4
  %fddiPATHSbaPayload = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 1
  %20 = ptrtoint ptr %fddiPATHSbaPayload to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fddiPATHSbaPayload, align 4
  %mib_payload = getelementptr inbounds %struct.smt_p_320f, ptr %payload, i32 0, i32 2
  %22 = ptrtoint ptr %mib_payload to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %mib_payload, align 4
  %overhead = getelementptr inbounds %struct.smt_sba_chg, ptr %add.ptr, i32 0, i32 5
  %23 = ptrtoint ptr %overhead to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 12816, ptr %overhead, align 4
  %p_len39 = getelementptr inbounds %struct.smt_para, ptr %overhead, i32 0, i32 1
  %24 = ptrtoint ptr %p_len39 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 8, ptr %p_len39, align 2
  %mib_index41 = getelementptr inbounds %struct.smt_p_3210, ptr %overhead, i32 0, i32 1
  %25 = ptrtoint ptr %mib_index41 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %mib_index41, align 4
  %fddiPATHSbaOverhead = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 2
  %26 = ptrtoint ptr %fddiPATHSbaOverhead to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fddiPATHSbaOverhead, align 4
  %mib_overhead = getelementptr inbounds %struct.smt_p_3210, ptr %overhead, i32 0, i32 2
  %28 = ptrtoint ptr %mib_overhead to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %mib_overhead, align 4
  br i1 %cmp, label %if.then48, label %if.end6.if.end57_crit_edge

if.end6.if.end57_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57

if.then48:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  %cat = getelementptr inbounds %struct.smt_sba_chg, ptr %add.ptr, i32 0, i32 6
  %29 = ptrtoint ptr %cat to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 26, ptr %cat, align 4
  %p_len53 = getelementptr inbounds %struct.smt_para, ptr %cat, i32 0, i32 1
  %30 = ptrtoint ptr %p_len53 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 4, ptr %p_len53, align 2
  %call54 = tail call ptr @sm_to_para(ptr noundef %smc, ptr noundef %sm, i32 noundef 26) #3
  %category = getelementptr inbounds %struct.smt_p_001a, ptr %call54, i32 0, i32 1
  %31 = ptrtoint ptr %category to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %category, align 4
  %category56 = getelementptr inbounds %struct.smt_p_001a, ptr %cat, i32 0, i32 1
  %33 = ptrtoint ptr %category56 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %category56, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then48, %if.end6.if.end57_crit_edge
  %local_sba_active.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14, i32 1
  %34 = ptrtoint ptr %local_sba_active.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %local_sba_active.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i, label %if.else7.i, label %if.then.i

if.then.i:                                        ; preds = %if.end57
  %sba_reply_pend.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14, i32 4
  %36 = ptrtoint ptr %sba_reply_pend.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sba_reply_pend.i, align 4
  %tobool2.not.i = icmp eq ptr %37, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %38 = ptrtoint ptr %sba_reply_pend.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %mb.0, ptr %sba_reply_pend.i, align 4
  br label %cleanup

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @smt_free_mbuf(ptr noundef %smc, ptr noundef nonnull %mb.0) #3
  br label %cleanup

if.else7.i:                                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @smt_send_frame(ptr noundef %smc, ptr noundef nonnull %mb.0, i32 noundef 65, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.else7.i, %if.else.i, %if.then3.i, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ess_timer_poll(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %raf_act_timer_poll = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14, i32 2
  %0 = ptrtoint ptr %raf_act_timer_poll to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %raf_act_timer_poll, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.end

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.end:                                           ; preds = %entry
  %timer_count = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %timer_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %timer_count, align 1
  %inc = add i8 %3, 1
  store i8 %inc, ptr %timer_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %inc)
  %cmp = icmp eq i8 %inc, 10
  br i1 %cmp, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then5:                                         ; preds = %if.end
  %4 = ptrtoint ptr %timer_count to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %timer_count, align 1
  %fddiESSPayload.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 2
  %5 = ptrtoint ptr %fddiESSPayload.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fddiESSPayload.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  %fddiESSOverhead.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 3
  br i1 %tobool.not.i, label %if.then5.if.end8.sink.split.i_crit_edge, label %if.else.i

if.then5.if.end8.sink.split.i_crit_edge:          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8.sink.split.i

if.else.i:                                        ; preds = %if.then5
  %7 = ptrtoint ptr %fddiESSOverhead.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fddiESSOverhead.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not.i = icmp eq i32 %8, 0
  br i1 %tobool4.not.i, label %if.else.i.if.end8.sink.split.i_crit_edge, label %if.else.i.if.end8.i_crit_edge

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8.i

if.else.i.if.end8.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8.sink.split.i

if.end8.sink.split.i:                             ; preds = %if.else.i.if.end8.sink.split.i_crit_edge, %if.then5.if.end8.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 0, %if.then5.if.end8.sink.split.i_crit_edge ], [ 50, %if.else.i.if.end8.sink.split.i_crit_edge ]
  %9 = ptrtoint ptr %fddiESSOverhead.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink.i, ptr %fddiESSOverhead.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end8.sink.split.i, %if.else.i.if.end8.i_crit_edge
  %10 = ptrtoint ptr %fddiESSOverhead.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fddiESSOverhead.i, align 4
  %fddiPATHSbaOverhead.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 2
  %12 = ptrtoint ptr %fddiPATHSbaOverhead.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fddiPATHSbaOverhead.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.i = icmp eq i32 %11, %13
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end8.i.if.end20.i_crit_edge

if.end8.i.if.end20.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %if.end8.i
  %fddiPATHSbaPayload.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 1
  %14 = ptrtoint ptr %fddiPATHSbaPayload.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fddiPATHSbaPayload.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %15)
  %cmp17.i = icmp eq i32 %6, %15
  br i1 %cmp17.i, label %if.then18.i, label %land.lhs.true.i.if.end20.i_crit_edge

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20.i

if.then18.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %raf_act_timer_poll to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %raf_act_timer_poll, align 2
  %17 = ptrtoint ptr %timer_count to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 7, ptr %timer_count, align 1
  br label %if.end8

if.end20.i:                                       ; preds = %land.lhs.true.i.if.end20.i_crit_edge, %if.end8.i.if.end20.i_crit_edge
  %call.i = tail call ptr @smt_build_frame(ptr noundef %smc, i32 noundef 5, i32 noundef 2, i32 noundef 136) #3
  %tobool21.not.i = icmp eq ptr %call.i, null
  br i1 %tobool21.not.i, label %if.end20.i.if.end8_crit_edge, label %if.end23.i

if.end20.i.if.end8_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.end23.i:                                       ; preds = %if.end20.i
  %m_data.i = getelementptr inbounds %struct.s_mbuf, ptr %call.i, i32 0, i32 4
  %m_off.i = getelementptr inbounds %struct.s_mbuf, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %m_off.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %m_off.i, align 4
  %conv.i = sext i16 %19 to i32
  %add.ptr.i = getelementptr i8, ptr %m_data.i, i32 %conv.i
  %call24.i = tail call i32 @smt_get_tid(ptr noundef %smc) #3
  %alloc_trans_id.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14, i32 6
  %20 = ptrtoint ptr %alloc_trans_id.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call24.i, ptr %alloc_trans_id.i, align 4
  %smt_tid.i = getelementptr inbounds %struct.smt_header, ptr %add.ptr.i, i32 0, i32 5
  %21 = ptrtoint ptr %smt_tid.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call24.i, ptr %smt_tid.i, align 4
  %22 = call ptr @memcpy(ptr %add.ptr.i, ptr @smt_sba_da, i32 6)
  %s_type.i = getelementptr inbounds %struct.smt_sba_alc_req, ptr %add.ptr.i, i32 0, i32 1
  %23 = ptrtoint ptr %s_type.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 21, ptr %s_type.i, align 4
  %p_len.i = getelementptr inbounds %struct.smt_para, ptr %s_type.i, i32 0, i32 1
  %24 = ptrtoint ptr %p_len.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 4, ptr %p_len.i, align 2
  %res_type.i = getelementptr inbounds %struct.smt_p_0015, ptr %s_type.i, i32 0, i32 1
  %25 = ptrtoint ptr %res_type.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %res_type.i, align 4
  %cmd.i = getelementptr inbounds %struct.smt_sba_alc_req, ptr %add.ptr.i, i32 0, i32 2
  %26 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 22, ptr %cmd.i, align 4
  %p_len34.i = getelementptr inbounds %struct.smt_para, ptr %cmd.i, i32 0, i32 1
  %27 = ptrtoint ptr %p_len34.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 4, ptr %p_len34.i, align 2
  %sba_cmd.i = getelementptr inbounds %struct.smt_p_0016, ptr %cmd.i, i32 0, i32 1
  %28 = ptrtoint ptr %sba_cmd.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %sba_cmd.i, align 4
  %path.i = getelementptr inbounds %struct.smt_sba_alc_req, ptr %add.ptr.i, i32 0, i32 3
  %29 = ptrtoint ptr %path.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 12811, ptr %path.i, align 4
  %p_len40.i = getelementptr inbounds %struct.smt_para, ptr %path.i, i32 0, i32 1
  %30 = ptrtoint ptr %p_len40.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 8, ptr %p_len40.i, align 2
  %mib_index.i = getelementptr inbounds %struct.smt_p_320b, ptr %path.i, i32 0, i32 1
  %31 = ptrtoint ptr %mib_index.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %mib_index.i, align 4
  %path_pad.i = getelementptr inbounds %struct.smt_p_320b, ptr %path.i, i32 0, i32 2
  %32 = ptrtoint ptr %path_pad.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %path_pad.i, align 4
  %path_index.i = getelementptr inbounds %struct.smt_p_320b, ptr %path.i, i32 0, i32 3
  %33 = ptrtoint ptr %path_index.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %path_index.i, align 2
  %pl_req.i = getelementptr inbounds %struct.smt_sba_alc_req, ptr %add.ptr.i, i32 0, i32 4
  %34 = ptrtoint ptr %pl_req.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 23, ptr %pl_req.i, align 4
  %p_len48.i = getelementptr inbounds %struct.smt_para, ptr %pl_req.i, i32 0, i32 1
  %35 = ptrtoint ptr %p_len48.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 4, ptr %p_len48.i, align 2
  %36 = ptrtoint ptr %fddiESSPayload.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fddiESSPayload.i, align 4
  %fddiPATHSbaPayload54.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 1
  %38 = ptrtoint ptr %fddiPATHSbaPayload54.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fddiPATHSbaPayload54.i, align 4
  %sub.i = sub i32 %37, %39
  %sba_pl_req.i = getelementptr inbounds %struct.smt_p_0017, ptr %pl_req.i, i32 0, i32 1
  %40 = ptrtoint ptr %sba_pl_req.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub.i, ptr %sba_pl_req.i, align 4
  %ov_req.i = getelementptr inbounds %struct.smt_sba_alc_req, ptr %add.ptr.i, i32 0, i32 5
  %41 = ptrtoint ptr %ov_req.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 24, ptr %ov_req.i, align 4
  %p_len60.i = getelementptr inbounds %struct.smt_para, ptr %ov_req.i, i32 0, i32 1
  %42 = ptrtoint ptr %p_len60.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 4, ptr %p_len60.i, align 2
  %43 = ptrtoint ptr %fddiESSOverhead.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fddiESSOverhead.i, align 4
  %45 = ptrtoint ptr %fddiPATHSbaOverhead.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fddiPATHSbaOverhead.i, align 4
  %sub67.i = sub i32 %44, %46
  %sba_ov_req.i = getelementptr inbounds %struct.smt_p_0018, ptr %ov_req.i, i32 0, i32 1
  %47 = ptrtoint ptr %sba_ov_req.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub67.i, ptr %sba_ov_req.i, align 4
  %payload.i = getelementptr inbounds %struct.smt_sba_alc_req, ptr %add.ptr.i, i32 0, i32 6
  %48 = ptrtoint ptr %payload.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 12815, ptr %payload.i, align 4
  %p_len73.i = getelementptr inbounds %struct.smt_para, ptr %payload.i, i32 0, i32 1
  %49 = ptrtoint ptr %p_len73.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 8, ptr %p_len73.i, align 2
  %mib_index75.i = getelementptr inbounds %struct.smt_p_320f, ptr %payload.i, i32 0, i32 1
  %50 = ptrtoint ptr %mib_index75.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %mib_index75.i, align 4
  %51 = load i32, ptr %fddiPATHSbaPayload54.i, align 4
  %mib_payload.i = getelementptr inbounds %struct.smt_p_320f, ptr %payload.i, i32 0, i32 2
  %52 = ptrtoint ptr %mib_payload.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %mib_payload.i, align 4
  %overhead.i = getelementptr inbounds %struct.smt_sba_alc_req, ptr %add.ptr.i, i32 0, i32 7
  %53 = ptrtoint ptr %overhead.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 12816, ptr %overhead.i, align 4
  %p_len85.i = getelementptr inbounds %struct.smt_para, ptr %overhead.i, i32 0, i32 1
  %54 = ptrtoint ptr %p_len85.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 8, ptr %p_len85.i, align 2
  %mib_index87.i = getelementptr inbounds %struct.smt_p_3210, ptr %overhead.i, i32 0, i32 1
  %55 = ptrtoint ptr %mib_index87.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %mib_index87.i, align 4
  %56 = load i32, ptr %fddiPATHSbaOverhead.i, align 4
  %mib_overhead.i = getelementptr inbounds %struct.smt_p_3210, ptr %overhead.i, i32 0, i32 2
  %57 = ptrtoint ptr %mib_overhead.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %mib_overhead.i, align 4
  %a_addr.i = getelementptr inbounds %struct.smt_sba_alc_req, ptr %add.ptr.i, i32 0, i32 8
  %58 = ptrtoint ptr %a_addr.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 25, ptr %a_addr.i, align 4
  %p_len97.i = getelementptr inbounds %struct.smt_para, ptr %a_addr.i, i32 0, i32 1
  %59 = ptrtoint ptr %p_len97.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 8, ptr %p_len97.i, align 2
  %sba_pad.i = getelementptr inbounds %struct.smt_p_0019, ptr %a_addr.i, i32 0, i32 1
  %cat.i = getelementptr inbounds %struct.smt_sba_alc_req, ptr %add.ptr.i, i32 0, i32 9
  %60 = ptrtoint ptr %sba_pad.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 0, ptr %sba_pad.i, align 4
  %61 = ptrtoint ptr %cat.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 26, ptr %cat.i, align 4
  %p_len104.i = getelementptr inbounds %struct.smt_para, ptr %cat.i, i32 0, i32 1
  %62 = ptrtoint ptr %p_len104.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 4, ptr %p_len104.i, align 2
  %fddiESSCategory.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 6
  %63 = ptrtoint ptr %fddiESSCategory.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fddiESSCategory.i, align 4
  %category.i = getelementptr inbounds %struct.smt_p_001a, ptr %cat.i, i32 0, i32 1
  %65 = ptrtoint ptr %category.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %category.i, align 4
  %tneg.i = getelementptr inbounds %struct.smt_sba_alc_req, ptr %add.ptr.i, i32 0, i32 10
  %66 = ptrtoint ptr %tneg.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 27, ptr %tneg.i, align 4
  %p_len111.i = getelementptr inbounds %struct.smt_para, ptr %tneg.i, i32 0, i32 1
  %67 = ptrtoint ptr %p_len111.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 4, ptr %p_len111.i, align 2
  %fddiESSMaxTNeg.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 4
  %68 = ptrtoint ptr %fddiESSMaxTNeg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fddiESSMaxTNeg.i, align 4
  %max_t_neg.i = getelementptr inbounds %struct.smt_p_001b, ptr %tneg.i, i32 0, i32 1
  %70 = ptrtoint ptr %max_t_neg.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %max_t_neg.i, align 4
  %segm.i = getelementptr inbounds %struct.smt_sba_alc_req, ptr %add.ptr.i, i32 0, i32 11
  %71 = ptrtoint ptr %segm.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 28, ptr %segm.i, align 4
  %p_len118.i = getelementptr inbounds %struct.smt_para, ptr %segm.i, i32 0, i32 1
  %72 = ptrtoint ptr %p_len118.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 4, ptr %p_len118.i, align 2
  %fddiESSMinSegmentSize.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 5
  %73 = ptrtoint ptr %fddiESSMinSegmentSize.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fddiESSMinSegmentSize.i, align 4
  %min_seg_siz.i = getelementptr inbounds %struct.smt_p_001c, ptr %segm.i, i32 0, i32 1
  %75 = ptrtoint ptr %min_seg_siz.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %min_seg_siz.i, align 4
  %local_sba_active.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14, i32 1
  %76 = ptrtoint ptr %local_sba_active.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %local_sba_active.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i.i = icmp eq i8 %77, 0
  br i1 %tobool.not.i.i, label %if.else7.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end23.i
  %sba_reply_pend.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14, i32 4
  %78 = ptrtoint ptr %sba_reply_pend.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sba_reply_pend.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %79, null
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.else.i.i

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %80 = ptrtoint ptr %sba_reply_pend.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i, ptr %sba_reply_pend.i.i, align 4
  br label %if.end8

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @smt_free_mbuf(ptr noundef %smc, ptr noundef nonnull %call.i) #3
  br label %if.end8

if.else7.i.i:                                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @smt_send_frame(ptr noundef %smc, ptr noundef nonnull %call.i, i32 noundef 65, i32 noundef 0) #3
  br label %if.end8

if.end8:                                          ; preds = %if.else7.i.i, %if.else.i.i, %if.then3.i.i, %if.end20.i.if.end8_crit_edge, %if.then18.i, %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ess_para_change(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %fddiPATHSbaPayload = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 1
  %0 = ptrtoint ptr %fddiPATHSbaPayload to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fddiPATHSbaPayload, align 4
  %fddiPATHSbaOverhead = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 2
  %2 = ptrtoint ptr %fddiPATHSbaOverhead to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fddiPATHSbaOverhead, align 4
  %call = tail call fastcc i32 @process_bw_alloc(ptr noundef %smc, i32 noundef %1, i32 noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_formac_tsync(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @formac_reinit_tx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smt_build_frame(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_free_mbuf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smt_get_tid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/fddi/skfp/ess.c", i32 248, i32 25}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ess_raf_received_pack._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ess_raf_received_pack._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @ess_raf_received_pack._entry.3, !7, !"_entry", i1 false, i1 false}
!7 = !{!"../drivers/net/fddi/skfp/ess.c", i32 254, i32 25}
!8 = !{ptr @ess_raf_received_pack._entry_ptr.4, !7, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @smt_sba_da, !10, !"smt_sba_da", i1 false, i1 false}
!10 = !{!"../drivers/net/fddi/skfp/ess.c", i32 62, i32 31}
!11 = !{ptr @plist_raf_alc_res, !12, !"plist_raf_alc_res", i1 false, i1 false}
!12 = !{!"../drivers/net/fddi/skfp/ess.c", i32 55, i32 22}
!13 = !{ptr @plist_raf_chg_req, !14, !"plist_raf_chg_req", i1 false, i1 false}
!14 = !{!"../drivers/net/fddi/skfp/ess.c", i32 59, i32 22}
!15 = distinct !{null, !16, !"null_addr", i1 false, i1 false}
!16 = !{!"../drivers/net/fddi/skfp/ess.c", i32 63, i32 31}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
