; ModuleID = '/llk/IR_all_yes/drivers/net/fddi/skfp/srf.c_pt.bc'
source_filename = "../drivers/net/fddi/skfp/srf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.evc_init = type { i8, i8, i8, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fddi_addr = type { [6 x i8] }
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
%struct.smt_sid = type { [2 x i8], %struct.fddi_addr }
%struct.fddi_mib_m = type { i16, i32, i32, i8, i8, i8, i8, i16, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, i16, i16, i16, i16, %struct.fddi_addr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.fddi_mib_a = type { i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.fddi_mib_p = type { i16, i16, i8, %struct.anon.116, i16, [4 x i8], i16, i8, i8, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.anon.116 = type { i8, i8 }
%struct.anon.117 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.s_ess = type { i8, i8, i8, i8, ptr, i32, i32 }
%struct.s_pcon = type { i32, i32, i32, ptr }
%struct.s_mbuf = type { ptr, i16, i32, i32, [4504 x i8] }
%struct.smt_header = type { %struct.fddi_addr, %struct.fddi_addr, i8, i8, i16, i32, %struct.smt_sid, i16, i16 }

@smt_init_evc.fail_safe = internal global { i8, [31 x i8] } zeroinitializer, align 32
@evc_inits = internal constant { [10 x %struct.evc_init], [36 x i8] } { [10 x %struct.evc_init] [%struct.evc_init { i8 5, i8 0, i8 1, i16 4168 }, %struct.evc_init { i8 8, i8 1, i8 1, i16 8332 }, %struct.evc_init { i8 7, i8 1, i8 1, i16 8333 }, %struct.evc_init { i8 9, i8 1, i8 1, i16 8334 }, %struct.evc_init { i8 2, i8 1, i8 1, i16 8335 }, %struct.evc_init { i8 1, i8 1, i8 1, i16 8336 }, %struct.evc_init { i8 11, i8 1, i8 2, i16 16464 }, %struct.evc_init { i8 10, i8 1, i8 2, i16 16466 }, %struct.evc_init { i8 4, i8 1, i8 2, i16 16465 }, %struct.evc_init { i8 3, i8 1, i8 2, i16 16467 }], [36 x i8] zeroinitializer }, align 32
@smt_init_evc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016SMT PANIC: code: %d, msg: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"smt_init_evc\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/fddi/skfp/srf.c\00", [36 x i8] zeroinitializer }, align 32
@smt_init_evc._entry_ptr = internal global ptr @smt_init_evc._entry, section ".printk_index", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sizeof evcs\00", [20 x i8] zeroinitializer }, align 32
@smt_send_srf.SMT_SRF_DA = internal constant { %struct.fddi_addr, [26 x i8] } { %struct.fddi_addr { [6 x i8] c"\80\01C\00\80\08" }, [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"fail_safe\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 71, i32 17 }
@___asan_gen_.7 = private unnamed_addr constant [10 x i8] c"evc_inits\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 46, i32 30 }
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 93, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [11 x i8] c"SMT_SRF_DA\00", align 1
@___asan_gen_.26 = private constant [31 x i8] c"../drivers/net/fddi/skfp/srf.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 369, i32 32 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @smt_init_evc._entry, ptr @smt_init_evc._entry_ptr, ptr @smt_init_evc.fail_safe, ptr @evc_inits, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @smt_send_srf.SMT_SRF_DA], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smt_init_evc.fail_safe to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evc_inits to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smt_init_evc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smt_send_srf.SMT_SRF_DA to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smt_init_evc(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %evcs = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 12
  %0 = call ptr @memset(ptr %evcs, i32 0, i32 224)
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.end.for.cond3.preheader_crit_edge, %entry
  %evc.0140 = phi ptr [ %evcs, %entry ], [ %evc.1.lcssa, %for.end.for.cond3.preheader_crit_edge ]
  %i.0139 = phi i32 [ 0, %entry ], [ %inc12, %for.end.for.cond3.preheader_crit_edge ]
  %init.0137 = phi ptr [ @evc_inits, %entry ], [ %incdec.ptr10, %for.end.for.cond3.preheader_crit_edge ]
  %n = getelementptr inbounds %struct.evc_init, ptr %init.0137, i32 0, i32 2
  %1 = ptrtoint ptr %n to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %n, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp4134.not = icmp eq i8 %2, 0
  br i1 %cmp4134.not, label %for.cond3.preheader.for.end_crit_edge, label %for.body6.lr.ph

for.cond3.preheader.for.end_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body6.lr.ph:                                  ; preds = %for.cond3.preheader
  %para = getelementptr inbounds %struct.evc_init, ptr %init.0137, i32 0, i32 3
  %index7 = getelementptr inbounds %struct.evc_init, ptr %init.0137, i32 0, i32 1
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body6.lr.ph
  %evc.1136 = phi ptr [ %evc.0140, %for.body6.lr.ph ], [ %incdec.ptr, %for.body6.for.body6_crit_edge ]
  %index.0135 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc, %for.body6.for.body6_crit_edge ]
  %3 = ptrtoint ptr %init.0137 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %init.0137, align 2
  %5 = ptrtoint ptr %evc.1136 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %evc.1136, align 4
  %6 = ptrtoint ptr %para to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %para, align 2
  %evc_para = getelementptr inbounds %struct.s_srf_evc, ptr %evc.1136, i32 0, i32 3
  %8 = ptrtoint ptr %evc_para to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %evc_para, align 4
  %9 = ptrtoint ptr %index7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %index7, align 1
  %11 = trunc i32 %index.0135 to i8
  %conv9 = add i8 %10, %11
  %evc_index = getelementptr inbounds %struct.s_srf_evc, ptr %evc.1136, i32 0, i32 1
  %12 = ptrtoint ptr %evc_index to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv9, ptr %evc_index, align 1
  %evc_multiple = getelementptr inbounds %struct.s_srf_evc, ptr %evc.1136, i32 0, i32 5
  %13 = ptrtoint ptr %evc_multiple to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @smt_init_evc.fail_safe, ptr %evc_multiple, align 4
  %evc_cond_state = getelementptr inbounds %struct.s_srf_evc, ptr %evc.1136, i32 0, i32 4
  %14 = ptrtoint ptr %evc_cond_state to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @smt_init_evc.fail_safe, ptr %evc_cond_state, align 4
  %incdec.ptr = getelementptr %struct.s_srf_evc, ptr %evc.1136, i32 1
  %inc = add nuw nsw i32 %index.0135, 1
  %15 = ptrtoint ptr %n to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %n, align 2
  %conv = zext i8 %16 to i32
  %cmp4 = icmp ult i32 %inc, %conv
  br i1 %cmp4, label %for.body6.for.body6_crit_edge, label %for.body6.for.end_crit_edge

for.body6.for.end_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6

for.end:                                          ; preds = %for.body6.for.end_crit_edge, %for.cond3.preheader.for.end_crit_edge
  %evc.1.lcssa = phi ptr [ %evc.0140, %for.cond3.preheader.for.end_crit_edge ], [ %incdec.ptr, %for.body6.for.end_crit_edge ]
  %incdec.ptr10 = getelementptr %struct.evc_init, ptr %init.0137, i32 1
  %inc12 = add nuw nsw i32 %i.0139, 1
  %exitcond.not = icmp eq i32 %inc12, 10
  br i1 %exitcond.not, label %for.end13, label %for.end.for.cond3.preheader_crit_edge

for.end.for.cond3.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond3.preheader

for.end13:                                        ; preds = %for.end
  %sub.ptr.lhs.cast = ptrtoint ptr %evc.1.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %evcs to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %sub.ptr.sub)
  %cmp16 = icmp ugt i32 %sub.ptr.sub, 224
  br i1 %cmp16, label %do.end, label %for.end13.if.end_crit_edge

for.end13.if.end_crit_edge:                       ; preds = %for.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %for.end13
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 127, ptr noundef nonnull @.str.3) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end13.if.end_crit_edge
  %fddiSMTPeerWrapFlag = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 32
  %evc_cond_state19 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 12, i32 0, i32 4
  %17 = ptrtoint ptr %evc_cond_state19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %fddiSMTPeerWrapFlag, ptr %evc_cond_state19, align 4
  %fddiMACDuplicateAddressCond = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 5
  %evc_cond_state24 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 1, i32 4
  %18 = ptrtoint ptr %evc_cond_state24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %fddiMACDuplicateAddressCond, ptr %evc_cond_state24, align 4
  %fddiMACFrameErrorFlag = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 55
  %evc_cond_state30 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 2, i32 4
  %19 = ptrtoint ptr %evc_cond_state30 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %fddiMACFrameErrorFlag, ptr %evc_cond_state30, align 4
  %fddiMACNotCopiedFlag = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 56
  %evc_cond_state36 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 3, i32 4
  %20 = ptrtoint ptr %evc_cond_state36 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %fddiMACNotCopiedFlag, ptr %evc_cond_state36, align 4
  %fddiMACMultiple_N = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 3
  %evc_multiple42 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 4, i32 5
  %21 = ptrtoint ptr %evc_multiple42 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %fddiMACMultiple_N, ptr %evc_multiple42, align 4
  %fddiMACMultiple_P = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 4
  %evc_multiple48 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 5, i32 5
  %22 = ptrtoint ptr %evc_multiple48 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %fddiMACMultiple_P, ptr %evc_multiple48, align 4
  %fddiPORTLerFlag = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 0, i32 27
  %evc_cond_state58 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 6, i32 4
  %23 = ptrtoint ptr %evc_cond_state58 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %fddiPORTLerFlag, ptr %evc_cond_state58, align 4
  %fddiPORTEB_Condition = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 0, i32 30
  %evc_cond_state65 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 8, i32 4
  %24 = ptrtoint ptr %evc_cond_state65 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %fddiPORTEB_Condition, ptr %evc_cond_state65, align 4
  %fddiPORTMultiple_U = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 0, i32 28
  %evc_multiple72 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 10, i32 5
  %25 = ptrtoint ptr %evc_multiple72 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %fddiPORTMultiple_U, ptr %evc_multiple72, align 4
  %fddiPORTMultiple_P = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 0, i32 29
  %evc_multiple79 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 12, i32 5
  %26 = ptrtoint ptr %evc_multiple79 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %fddiPORTMultiple_P, ptr %evc_multiple79, align 4
  %fddiPORTLerFlag.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 1, i32 27
  %evc_cond_state58.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 7, i32 4
  %27 = ptrtoint ptr %evc_cond_state58.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %fddiPORTLerFlag.1, ptr %evc_cond_state58.1, align 4
  %fddiPORTEB_Condition.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 1, i32 30
  %evc_cond_state65.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 9, i32 4
  %28 = ptrtoint ptr %evc_cond_state65.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %fddiPORTEB_Condition.1, ptr %evc_cond_state65.1, align 4
  %fddiPORTMultiple_U.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 1, i32 28
  %evc_multiple72.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 11, i32 5
  %29 = ptrtoint ptr %evc_multiple72.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %fddiPORTMultiple_U.1, ptr %evc_multiple72.1, align 4
  %fddiPORTMultiple_P.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 1, i32 29
  %evc_multiple79.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 13, i32 5
  %30 = ptrtoint ptr %evc_multiple79.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %fddiPORTMultiple_P.1, ptr %evc_multiple79.1, align 4
  %call84 = tail call i32 @smt_get_time() #5
  %TSR = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 11, i32 4
  %31 = ptrtoint ptr %TSR to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call84, ptr %TSR, align 4
  %sr_state = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 11, i32 2
  %32 = ptrtoint ptr %sr_state to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %sr_state, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smt_get_time() local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smt_srf_event(ptr noundef %smc, i32 noundef %code, i32 noundef %index, i32 noundef %cond) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %code)
  %cmp = icmp ne i32 %code, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool.not = icmp eq i32 %cond, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ring_status = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 11, i32 5
  %0 = ptrtoint ptr %ring_status to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ring_status, align 4
  %2 = or i16 %1, 64
  store i16 %2, ptr %ring_status, align 4
  %conv2 = zext i16 %2 to i32
  tail call void @ring_status_indication(ptr noundef %smc, i32 noundef %conv2) #5
  br label %if.then4

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %code)
  %tobool3.not = icmp eq i32 %code, 0
  br i1 %tobool3.not, label %if.end.if.end39_crit_edge, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then4:                                         ; preds = %if.end.if.then4_crit_edge, %if.end.thread
  %evcs.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 12
  %3 = ptrtoint ptr %evcs.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %evcs.i, align 4
  %conv.i = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %code)
  %cmp1.i = icmp eq i32 %conv.i, %code
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.then4.for.inc.i_crit_edge

if.then4.for.inc.i_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.then4
  %evc_index.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 12, i32 0, i32 1
  %5 = ptrtoint ptr %evc_index.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %evc_index.i, align 1
  %conv3.i = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.i, i32 %index)
  %cmp4.i = icmp eq i32 %conv3.i, %index
  br i1 %cmp4.i, label %land.lhs.true.i.smt_get_evc.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i.smt_get_evc.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_get_evc.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.then4.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr.i, align 4
  %conv.1.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.1.i, i32 %code)
  %cmp1.1.i = icmp eq i32 %conv.1.i, %code
  br i1 %cmp1.1.i, label %land.lhs.true.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %evc_index.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 1, i32 1
  %9 = ptrtoint ptr %evc_index.1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %evc_index.1.i, align 1
  %conv3.1.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.1.i, i32 %index)
  %cmp4.1.i = icmp eq i32 %conv3.1.i, %index
  br i1 %cmp4.1.i, label %land.lhs.true.1.i.smt_get_evc.exit_crit_edge, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

land.lhs.true.1.i.smt_get_evc.exit_crit_edge:     ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_get_evc.exit

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %incdec.ptr.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 2
  %11 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr.1.i, align 4
  %conv.2.i = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.2.i, i32 %code)
  %cmp1.2.i = icmp eq i32 %conv.2.i, %code
  br i1 %cmp1.2.i, label %land.lhs.true.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %evc_index.2.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 2, i32 1
  %13 = ptrtoint ptr %evc_index.2.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %evc_index.2.i, align 1
  %conv3.2.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.2.i, i32 %index)
  %cmp4.2.i = icmp eq i32 %conv3.2.i, %index
  br i1 %cmp4.2.i, label %land.lhs.true.2.i.smt_get_evc.exit_crit_edge, label %land.lhs.true.2.i.for.inc.2.i_crit_edge

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i

land.lhs.true.2.i.smt_get_evc.exit_crit_edge:     ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_get_evc.exit

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %incdec.ptr.2.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 3
  %15 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr.2.i, align 4
  %conv.3.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.3.i, i32 %code)
  %cmp1.3.i = icmp eq i32 %conv.3.i, %code
  br i1 %cmp1.3.i, label %land.lhs.true.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %evc_index.3.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 3, i32 1
  %17 = ptrtoint ptr %evc_index.3.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %evc_index.3.i, align 1
  %conv3.3.i = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.3.i, i32 %index)
  %cmp4.3.i = icmp eq i32 %conv3.3.i, %index
  br i1 %cmp4.3.i, label %land.lhs.true.3.i.smt_get_evc.exit_crit_edge, label %land.lhs.true.3.i.for.inc.3.i_crit_edge

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i

land.lhs.true.3.i.smt_get_evc.exit_crit_edge:     ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_get_evc.exit

for.inc.3.i:                                      ; preds = %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %incdec.ptr.3.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 4
  %19 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %incdec.ptr.3.i, align 4
  %conv.4.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.4.i, i32 %code)
  %cmp1.4.i = icmp eq i32 %conv.4.i, %code
  br i1 %cmp1.4.i, label %land.lhs.true.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %evc_index.4.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 4, i32 1
  %21 = ptrtoint ptr %evc_index.4.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %evc_index.4.i, align 1
  %conv3.4.i = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.4.i, i32 %index)
  %cmp4.4.i = icmp eq i32 %conv3.4.i, %index
  br i1 %cmp4.4.i, label %land.lhs.true.4.i.smt_get_evc.exit_crit_edge, label %land.lhs.true.4.i.for.inc.4.i_crit_edge

land.lhs.true.4.i.for.inc.4.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4.i

land.lhs.true.4.i.smt_get_evc.exit_crit_edge:     ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_get_evc.exit

for.inc.4.i:                                      ; preds = %land.lhs.true.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %incdec.ptr.4.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 5
  %23 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %incdec.ptr.4.i, align 4
  %conv.5.i = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.5.i, i32 %code)
  %cmp1.5.i = icmp eq i32 %conv.5.i, %code
  br i1 %cmp1.5.i, label %land.lhs.true.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5.i

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  %evc_index.5.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 5, i32 1
  %25 = ptrtoint ptr %evc_index.5.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %evc_index.5.i, align 1
  %conv3.5.i = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.5.i, i32 %index)
  %cmp4.5.i = icmp eq i32 %conv3.5.i, %index
  br i1 %cmp4.5.i, label %land.lhs.true.5.i.smt_get_evc.exit_crit_edge, label %land.lhs.true.5.i.for.inc.5.i_crit_edge

land.lhs.true.5.i.for.inc.5.i_crit_edge:          ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5.i

land.lhs.true.5.i.smt_get_evc.exit_crit_edge:     ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_get_evc.exit

for.inc.5.i:                                      ; preds = %land.lhs.true.5.i.for.inc.5.i_crit_edge, %for.inc.4.i.for.inc.5.i_crit_edge
  %incdec.ptr.5.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 6
  %27 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %incdec.ptr.5.i, align 4
  %conv.6.i = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.6.i, i32 %code)
  %cmp1.6.i = icmp eq i32 %conv.6.i, %code
  br i1 %cmp1.6.i, label %land.lhs.true.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6.i

land.lhs.true.6.i:                                ; preds = %for.inc.5.i
  %evc_index.6.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 6, i32 1
  %29 = ptrtoint ptr %evc_index.6.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %evc_index.6.i, align 1
  %conv3.6.i = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.6.i, i32 %index)
  %cmp4.6.i = icmp eq i32 %conv3.6.i, %index
  br i1 %cmp4.6.i, label %land.lhs.true.6.i.smt_get_evc.exit_crit_edge, label %land.lhs.true.6.i.for.inc.6.i_crit_edge

land.lhs.true.6.i.for.inc.6.i_crit_edge:          ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6.i

land.lhs.true.6.i.smt_get_evc.exit_crit_edge:     ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_get_evc.exit

for.inc.6.i:                                      ; preds = %land.lhs.true.6.i.for.inc.6.i_crit_edge, %for.inc.5.i.for.inc.6.i_crit_edge
  %incdec.ptr.6.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 7
  %31 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %incdec.ptr.6.i, align 4
  %conv.7.i = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.7.i, i32 %code)
  %cmp1.7.i = icmp eq i32 %conv.7.i, %code
  br i1 %cmp1.7.i, label %land.lhs.true.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7.i

land.lhs.true.7.i:                                ; preds = %for.inc.6.i
  %evc_index.7.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 7, i32 1
  %33 = ptrtoint ptr %evc_index.7.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %evc_index.7.i, align 1
  %conv3.7.i = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.7.i, i32 %index)
  %cmp4.7.i = icmp eq i32 %conv3.7.i, %index
  br i1 %cmp4.7.i, label %land.lhs.true.7.i.smt_get_evc.exit_crit_edge, label %land.lhs.true.7.i.for.inc.7.i_crit_edge

land.lhs.true.7.i.for.inc.7.i_crit_edge:          ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7.i

land.lhs.true.7.i.smt_get_evc.exit_crit_edge:     ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_get_evc.exit

for.inc.7.i:                                      ; preds = %land.lhs.true.7.i.for.inc.7.i_crit_edge, %for.inc.6.i.for.inc.7.i_crit_edge
  %incdec.ptr.7.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 8
  %35 = ptrtoint ptr %incdec.ptr.7.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %incdec.ptr.7.i, align 4
  %conv.8.i = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.8.i, i32 %code)
  %cmp1.8.i = icmp eq i32 %conv.8.i, %code
  br i1 %cmp1.8.i, label %land.lhs.true.8.i, label %for.inc.7.i.for.inc.8.i_crit_edge

for.inc.7.i.for.inc.8.i_crit_edge:                ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.8.i

land.lhs.true.8.i:                                ; preds = %for.inc.7.i
  %evc_index.8.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 8, i32 1
  %37 = ptrtoint ptr %evc_index.8.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %evc_index.8.i, align 1
  %conv3.8.i = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.8.i, i32 %index)
  %cmp4.8.i = icmp eq i32 %conv3.8.i, %index
  br i1 %cmp4.8.i, label %land.lhs.true.8.i.smt_get_evc.exit_crit_edge, label %land.lhs.true.8.i.for.inc.8.i_crit_edge

land.lhs.true.8.i.for.inc.8.i_crit_edge:          ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.8.i

land.lhs.true.8.i.smt_get_evc.exit_crit_edge:     ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_get_evc.exit

for.inc.8.i:                                      ; preds = %land.lhs.true.8.i.for.inc.8.i_crit_edge, %for.inc.7.i.for.inc.8.i_crit_edge
  %incdec.ptr.8.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 9
  %39 = ptrtoint ptr %incdec.ptr.8.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %incdec.ptr.8.i, align 4
  %conv.9.i = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.9.i, i32 %code)
  %cmp1.9.i = icmp eq i32 %conv.9.i, %code
  br i1 %cmp1.9.i, label %land.lhs.true.9.i, label %for.inc.8.i.for.inc.9.i_crit_edge

for.inc.8.i.for.inc.9.i_crit_edge:                ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.9.i

land.lhs.true.9.i:                                ; preds = %for.inc.8.i
  %evc_index.9.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 9, i32 1
  %41 = ptrtoint ptr %evc_index.9.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %evc_index.9.i, align 1
  %conv3.9.i = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.9.i, i32 %index)
  %cmp4.9.i = icmp eq i32 %conv3.9.i, %index
  br i1 %cmp4.9.i, label %land.lhs.true.9.i.smt_get_evc.exit_crit_edge, label %land.lhs.true.9.i.for.inc.9.i_crit_edge

land.lhs.true.9.i.for.inc.9.i_crit_edge:          ; preds = %land.lhs.true.9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.9.i

land.lhs.true.9.i.smt_get_evc.exit_crit_edge:     ; preds = %land.lhs.true.9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_get_evc.exit

for.inc.9.i:                                      ; preds = %land.lhs.true.9.i.for.inc.9.i_crit_edge, %for.inc.8.i.for.inc.9.i_crit_edge
  %incdec.ptr.9.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 10
  %43 = ptrtoint ptr %incdec.ptr.9.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %incdec.ptr.9.i, align 4
  %conv.10.i = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.10.i, i32 %code)
  %cmp1.10.i = icmp eq i32 %conv.10.i, %code
  br i1 %cmp1.10.i, label %land.lhs.true.10.i, label %for.inc.9.i.for.inc.10.i_crit_edge

for.inc.9.i.for.inc.10.i_crit_edge:               ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.10.i

land.lhs.true.10.i:                               ; preds = %for.inc.9.i
  %evc_index.10.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 10, i32 1
  %45 = ptrtoint ptr %evc_index.10.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %evc_index.10.i, align 1
  %conv3.10.i = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.10.i, i32 %index)
  %cmp4.10.i = icmp eq i32 %conv3.10.i, %index
  br i1 %cmp4.10.i, label %land.lhs.true.10.i.smt_get_evc.exit_crit_edge, label %land.lhs.true.10.i.for.inc.10.i_crit_edge

land.lhs.true.10.i.for.inc.10.i_crit_edge:        ; preds = %land.lhs.true.10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.10.i

land.lhs.true.10.i.smt_get_evc.exit_crit_edge:    ; preds = %land.lhs.true.10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_get_evc.exit

for.inc.10.i:                                     ; preds = %land.lhs.true.10.i.for.inc.10.i_crit_edge, %for.inc.9.i.for.inc.10.i_crit_edge
  %incdec.ptr.10.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 11
  %47 = ptrtoint ptr %incdec.ptr.10.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %incdec.ptr.10.i, align 4
  %conv.11.i = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.11.i, i32 %code)
  %cmp1.11.i = icmp eq i32 %conv.11.i, %code
  br i1 %cmp1.11.i, label %land.lhs.true.11.i, label %for.inc.10.i.for.inc.11.i_crit_edge

for.inc.10.i.for.inc.11.i_crit_edge:              ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.11.i

land.lhs.true.11.i:                               ; preds = %for.inc.10.i
  %evc_index.11.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 11, i32 1
  %49 = ptrtoint ptr %evc_index.11.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %evc_index.11.i, align 1
  %conv3.11.i = zext i8 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.11.i, i32 %index)
  %cmp4.11.i = icmp eq i32 %conv3.11.i, %index
  br i1 %cmp4.11.i, label %land.lhs.true.11.i.smt_get_evc.exit_crit_edge, label %land.lhs.true.11.i.for.inc.11.i_crit_edge

land.lhs.true.11.i.for.inc.11.i_crit_edge:        ; preds = %land.lhs.true.11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.11.i

land.lhs.true.11.i.smt_get_evc.exit_crit_edge:    ; preds = %land.lhs.true.11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_get_evc.exit

for.inc.11.i:                                     ; preds = %land.lhs.true.11.i.for.inc.11.i_crit_edge, %for.inc.10.i.for.inc.11.i_crit_edge
  %incdec.ptr.11.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 12
  %51 = ptrtoint ptr %incdec.ptr.11.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %incdec.ptr.11.i, align 4
  %conv.12.i = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.12.i, i32 %code)
  %cmp1.12.i = icmp eq i32 %conv.12.i, %code
  br i1 %cmp1.12.i, label %land.lhs.true.12.i, label %for.inc.11.i.for.inc.12.i_crit_edge

for.inc.11.i.for.inc.12.i_crit_edge:              ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.12.i

land.lhs.true.12.i:                               ; preds = %for.inc.11.i
  %evc_index.12.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 12, i32 1
  %53 = ptrtoint ptr %evc_index.12.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %evc_index.12.i, align 1
  %conv3.12.i = zext i8 %54 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.12.i, i32 %index)
  %cmp4.12.i = icmp eq i32 %conv3.12.i, %index
  br i1 %cmp4.12.i, label %land.lhs.true.12.i.smt_get_evc.exit_crit_edge, label %land.lhs.true.12.i.for.inc.12.i_crit_edge

land.lhs.true.12.i.for.inc.12.i_crit_edge:        ; preds = %land.lhs.true.12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.12.i

land.lhs.true.12.i.smt_get_evc.exit_crit_edge:    ; preds = %land.lhs.true.12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_get_evc.exit

for.inc.12.i:                                     ; preds = %land.lhs.true.12.i.for.inc.12.i_crit_edge, %for.inc.11.i.for.inc.12.i_crit_edge
  %incdec.ptr.12.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 13
  %55 = ptrtoint ptr %incdec.ptr.12.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %incdec.ptr.12.i, align 4
  %conv.13.i = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.13.i, i32 %code)
  %cmp1.13.i = icmp eq i32 %conv.13.i, %code
  br i1 %cmp1.13.i, label %land.lhs.true.13.i, label %for.inc.12.i.cleanup_crit_edge

for.inc.12.i.cleanup_crit_edge:                   ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.13.i:                               ; preds = %for.inc.12.i
  %evc_index.13.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 13, i32 1
  %57 = ptrtoint ptr %evc_index.13.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %evc_index.13.i, align 1
  %conv3.13.i = zext i8 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3.13.i, i32 %index)
  %cmp4.13.i = icmp eq i32 %conv3.13.i, %index
  br i1 %cmp4.13.i, label %land.lhs.true.13.i.smt_get_evc.exit_crit_edge, label %land.lhs.true.13.i.cleanup_crit_edge

land.lhs.true.13.i.cleanup_crit_edge:             ; preds = %land.lhs.true.13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.13.i.smt_get_evc.exit_crit_edge:    ; preds = %land.lhs.true.13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smt_get_evc.exit

smt_get_evc.exit:                                 ; preds = %land.lhs.true.13.i.smt_get_evc.exit_crit_edge, %land.lhs.true.12.i.smt_get_evc.exit_crit_edge, %land.lhs.true.11.i.smt_get_evc.exit_crit_edge, %land.lhs.true.10.i.smt_get_evc.exit_crit_edge, %land.lhs.true.9.i.smt_get_evc.exit_crit_edge, %land.lhs.true.8.i.smt_get_evc.exit_crit_edge, %land.lhs.true.7.i.smt_get_evc.exit_crit_edge, %land.lhs.true.6.i.smt_get_evc.exit_crit_edge, %land.lhs.true.5.i.smt_get_evc.exit_crit_edge, %land.lhs.true.4.i.smt_get_evc.exit_crit_edge, %land.lhs.true.3.i.smt_get_evc.exit_crit_edge, %land.lhs.true.2.i.smt_get_evc.exit_crit_edge, %land.lhs.true.1.i.smt_get_evc.exit_crit_edge, %land.lhs.true.i.smt_get_evc.exit_crit_edge
  %retval.0.i = phi ptr [ %evcs.i, %land.lhs.true.i.smt_get_evc.exit_crit_edge ], [ %incdec.ptr.i, %land.lhs.true.1.i.smt_get_evc.exit_crit_edge ], [ %incdec.ptr.1.i, %land.lhs.true.2.i.smt_get_evc.exit_crit_edge ], [ %incdec.ptr.2.i, %land.lhs.true.3.i.smt_get_evc.exit_crit_edge ], [ %incdec.ptr.3.i, %land.lhs.true.4.i.smt_get_evc.exit_crit_edge ], [ %incdec.ptr.4.i, %land.lhs.true.5.i.smt_get_evc.exit_crit_edge ], [ %incdec.ptr.5.i, %land.lhs.true.6.i.smt_get_evc.exit_crit_edge ], [ %incdec.ptr.6.i, %land.lhs.true.7.i.smt_get_evc.exit_crit_edge ], [ %incdec.ptr.7.i, %land.lhs.true.8.i.smt_get_evc.exit_crit_edge ], [ %incdec.ptr.8.i, %land.lhs.true.9.i.smt_get_evc.exit_crit_edge ], [ %incdec.ptr.9.i, %land.lhs.true.10.i.smt_get_evc.exit_crit_edge ], [ %incdec.ptr.10.i, %land.lhs.true.11.i.smt_get_evc.exit_crit_edge ], [ %incdec.ptr.11.i, %land.lhs.true.12.i.smt_get_evc.exit_crit_edge ], [ %incdec.ptr.12.i, %land.lhs.true.13.i.smt_get_evc.exit_crit_edge ]
  %tobool5.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool5.not, label %smt_get_evc.exit.cleanup_crit_edge, label %if.end8

smt_get_evc.exit.cleanup_crit_edge:               ; preds = %smt_get_evc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %smt_get_evc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %code)
  %cmp9 = icmp sgt i32 %code, 4
  br i1 %cmp9, label %if.then11, label %if.else28.critedge

if.then11:                                        ; preds = %if.end8
  %evc_cond_state = getelementptr inbounds %struct.s_srf_evc, ptr %retval.0.i, i32 0, i32 4
  %59 = ptrtoint ptr %evc_cond_state to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %evc_cond_state, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %60, align 1
  %conv12 = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12, i32 %cond)
  %cmp13 = icmp eq i32 %conv12, %cond
  br i1 %cmp13, label %if.then11.cleanup_crit_edge, label %if.then20.critedge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then20.critedge:                               ; preds = %if.then11
  %fddiSMTTransitionTimeStamp.c = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 34
  tail call void @smt_set_timestamp(ptr noundef %smc, ptr noundef %fddiSMTTransitionTimeStamp.c) #5
  %63 = ptrtoint ptr %evc_cond_state to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %evc_cond_state, align 4
  br i1 %tobool.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then20.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %64, align 1
  %evc_rep_required = getelementptr inbounds %struct.s_srf_evc, ptr %retval.0.i, i32 0, i32 2
  %66 = ptrtoint ptr %evc_rep_required to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %evc_rep_required, align 2
  %any_report = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 11, i32 3
  %67 = ptrtoint ptr %any_report to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %any_report, align 2
  br label %if.end39

if.else:                                          ; preds = %if.then20.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %64, align 1
  br label %if.end39

if.else28.critedge:                               ; preds = %if.end8
  %fddiSMTTransitionTimeStamp.c237 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 34
  tail call void @smt_set_timestamp(ptr noundef %smc, ptr noundef %fddiSMTTransitionTimeStamp.c237) #5
  %evc_rep_required29 = getelementptr inbounds %struct.s_srf_evc, ptr %retval.0.i, i32 0, i32 2
  %69 = ptrtoint ptr %evc_rep_required29 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %evc_rep_required29, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool30.not = icmp eq i8 %70, 0
  br i1 %tobool30.not, label %if.else32, label %if.else28.critedge.if.end35_crit_edge

if.else28.critedge.if.end35_crit_edge:            ; preds = %if.else28.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.else32:                                        ; preds = %if.else28.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %evc_rep_required29 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %evc_rep_required29, align 2
  br label %if.end35

if.end35:                                         ; preds = %if.else32, %if.else28.critedge.if.end35_crit_edge
  %.sink = phi i8 [ 0, %if.else32 ], [ 1, %if.else28.critedge.if.end35_crit_edge ]
  %evc_multiple34 = getelementptr inbounds %struct.s_srf_evc, ptr %retval.0.i, i32 0, i32 5
  %72 = ptrtoint ptr %evc_multiple34 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %evc_multiple34, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %.sink, ptr %73, align 1
  %any_report37 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 11, i32 3
  %75 = ptrtoint ptr %any_report37 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %any_report37, align 2
  br label %if.end39

if.end39:                                         ; preds = %if.end35, %if.else, %if.then23, %if.end.if.end39_crit_edge
  %tobool61.not = phi i1 [ true, %if.end35 ], [ false, %if.else ], [ false, %if.then23 ], [ false, %if.end.if.end39_crit_edge ]
  %tobool53.not = phi i1 [ false, %if.end35 ], [ true, %if.else ], [ false, %if.then23 ], [ false, %if.end.if.end39_crit_edge ]
  %tobool138.not = phi i1 [ true, %if.end35 ], [ true, %if.else ], [ false, %if.then23 ], [ true, %if.end.if.end39_crit_edge ]
  %call40 = tail call i32 @smt_get_time() #5
  %srf41 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 11
  %TSR = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 11, i32 4
  %76 = ptrtoint ptr %TSR to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %TSR, align 4
  %sub = sub i32 %call40, %77
  %sr_state = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 11, i32 2
  %78 = ptrtoint ptr %sr_state to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %sr_state, align 1
  %80 = zext i8 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values)
  switch i8 %79, label %if.end39.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb128
    i8 2, label %sw.bb150
  ]

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end39
  %tobool138.not.not = xor i1 %tobool138.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %sub)
  %cmp46 = icmp slt i32 %sub, 200
  %or.cond238 = select i1 %tobool138.not.not, i1 %cmp46, i1 false
  br i1 %or.cond238, label %if.then48, label %if.end52

if.then48:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %srf41 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 200, ptr %srf41, align 4
  %82 = ptrtoint ptr %sr_state to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %sr_state, align 1
  br label %cleanup

if.end52:                                         ; preds = %sw.bb
  %or.cond239 = select i1 %tobool53.not, i1 %cmp46, i1 false
  br i1 %or.cond239, label %if.then57, label %if.end60

if.then57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %sr_state to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %sr_state, align 1
  br label %cleanup

if.end60:                                         ; preds = %if.end52
  %or.cond240 = select i1 %tobool61.not, i1 %cmp46, i1 false
  br i1 %or.cond240, label %if.then65, label %if.end68

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %sr_state to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %sr_state, align 1
  br label %cleanup

if.end68:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %sub)
  %cmp71 = icmp sgt i32 %sub, 199
  %or.cond242 = select i1 %tobool138.not.not, i1 %cmp71, i1 false
  br i1 %or.cond242, label %if.then73, label %if.end79

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %srf41 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 200, ptr %srf41, align 4
  %call76 = tail call i32 @smt_get_time() #5
  %86 = ptrtoint ptr %TSR to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call76, ptr %TSR, align 4
  tail call fastcc void @smt_send_srf(ptr noundef %smc)
  br label %cleanup

if.end79:                                         ; preds = %if.end68
  %or.cond244 = select i1 %tobool53.not, i1 %cmp71, i1 false
  br i1 %or.cond244, label %if.then84, label %if.end88

if.then84:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  %call85 = tail call i32 @smt_get_time() #5
  %87 = ptrtoint ptr %TSR to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %call85, ptr %TSR, align 4
  tail call fastcc void @smt_send_srf(ptr noundef %smc)
  br label %cleanup

if.end88:                                         ; preds = %if.end79
  %or.cond246 = select i1 %tobool61.not, i1 %cmp71, i1 false
  br i1 %or.cond246, label %if.then93, label %if.end97

if.then93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  %call94 = tail call i32 @smt_get_time() #5
  %88 = ptrtoint ptr %TSR to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call94, ptr %TSR, align 4
  tail call fastcc void @smt_send_srf(ptr noundef %smc)
  br label %cleanup

if.end97:                                         ; preds = %if.end88
  %any_report99 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 11, i32 3
  %89 = ptrtoint ptr %any_report99 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %any_report99, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool101.not = icmp eq i8 %90, 0
  br i1 %tobool101.not, label %if.end97.if.end121_crit_edge, label %land.lhs.true102

if.end97.if.end121_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

land.lhs.true102:                                 ; preds = %if.end97
  %91 = ptrtoint ptr %srf41 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %srf41, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %92)
  %cmp105.not = icmp ult i32 %sub, %92
  br i1 %cmp105.not, label %land.lhs.true102.if.end121_crit_edge, label %if.then107

land.lhs.true102.if.end121_crit_edge:             ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end121

if.then107:                                       ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl i32 %92, 1
  %93 = tail call i32 @llvm.umin.i32(i32 %mul, i32 3200)
  %94 = ptrtoint ptr %srf41 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %srf41, align 4
  %call118 = tail call i32 @smt_get_time() #5
  %95 = ptrtoint ptr %TSR to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %call118, ptr %TSR, align 4
  tail call fastcc void @smt_send_srf(ptr noundef %smc)
  br label %cleanup

if.end121:                                        ; preds = %land.lhs.true102.if.end121_crit_edge, %if.end97.if.end121_crit_edge
  %fddiSMTStatRptPolicy = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 23
  %96 = ptrtoint ptr %fddiSMTStatRptPolicy to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %fddiSMTStatRptPolicy, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool123.not = icmp eq i8 %97, 0
  br i1 %tobool123.not, label %if.then124, label %if.end121.cleanup_crit_edge

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then124:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %sr_state to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 2, ptr %sr_state, align 1
  br label %cleanup

sw.bb128:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %sub)
  %cmp129 = icmp sgt i32 %sub, 199
  br i1 %cmp129, label %if.then131, label %if.end137

if.then131:                                       ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #7
  %99 = ptrtoint ptr %sr_state to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %sr_state, align 1
  %call134 = tail call i32 @smt_get_time() #5
  %100 = ptrtoint ptr %TSR to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %call134, ptr %TSR, align 4
  tail call fastcc void @smt_send_srf(ptr noundef %smc)
  br label %cleanup

if.end137:                                        ; preds = %sw.bb128
  br i1 %tobool138.not, label %if.end137.if.end142_crit_edge, label %if.then139

if.end137.if.end142_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end142

if.then139:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #7
  %101 = ptrtoint ptr %srf41 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 200, ptr %srf41, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then139, %if.end137.if.end142_crit_edge
  %fddiSMTStatRptPolicy144 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 23
  %102 = ptrtoint ptr %fddiSMTStatRptPolicy144 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %fddiSMTStatRptPolicy144, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool145.not = icmp eq i8 %103, 0
  br i1 %tobool145.not, label %if.then146, label %if.end142.cleanup_crit_edge

if.end142.cleanup_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then146:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #7
  %104 = ptrtoint ptr %sr_state to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 2, ptr %sr_state, align 1
  br label %cleanup

sw.bb150:                                         ; preds = %if.end39
  %fddiSMTStatRptPolicy152 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 23
  %105 = ptrtoint ptr %fddiSMTStatRptPolicy152 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %fddiSMTStatRptPolicy152, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool153.not = icmp eq i8 %106, 0
  br i1 %tobool153.not, label %sw.bb150.cleanup_crit_edge, label %if.then154

sw.bb150.cleanup_crit_edge:                       ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then154:                                       ; preds = %sw.bb150
  %107 = ptrtoint ptr %sr_state to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %sr_state, align 1
  %call157 = tail call i32 @smt_get_time() #5
  %108 = ptrtoint ptr %TSR to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %call157, ptr %TSR, align 4
  %109 = ptrtoint ptr %srf41 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 200, ptr %srf41, align 4
  %evcs.i247 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 12
  %evc_rep_required.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 12, i32 0, i32 2
  %110 = ptrtoint ptr %evc_rep_required.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %evc_rep_required.i, align 2
  %111 = ptrtoint ptr %evcs.i247 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %evcs.i247, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %112)
  %cmp1.i248 = icmp ugt i8 %112, 4
  br i1 %cmp1.i248, label %if.then.i, label %if.then154.for.inc.i251_crit_edge

if.then154.for.inc.i251_crit_edge:                ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i251

if.then.i:                                        ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #7
  %evc_cond_state.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 12, i32 0, i32 4
  %113 = ptrtoint ptr %evc_cond_state.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %evc_cond_state.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %114, align 1
  br label %for.inc.i251

for.inc.i251:                                     ; preds = %if.then.i, %if.then154.for.inc.i251_crit_edge
  %incdec.ptr.i249 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 1
  %evc_rep_required.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 1, i32 2
  %116 = ptrtoint ptr %evc_rep_required.1.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %evc_rep_required.1.i, align 2
  %117 = ptrtoint ptr %incdec.ptr.i249 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %incdec.ptr.i249, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %118)
  %cmp1.1.i250 = icmp ugt i8 %118, 4
  br i1 %cmp1.1.i250, label %if.then.1.i, label %for.inc.i251.for.inc.1.i254_crit_edge

for.inc.i251.for.inc.1.i254_crit_edge:            ; preds = %for.inc.i251
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i254

if.then.1.i:                                      ; preds = %for.inc.i251
  call void @__sanitizer_cov_trace_pc() #7
  %evc_cond_state.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 1, i32 4
  %119 = ptrtoint ptr %evc_cond_state.1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %evc_cond_state.1.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %120, align 1
  br label %for.inc.1.i254

for.inc.1.i254:                                   ; preds = %if.then.1.i, %for.inc.i251.for.inc.1.i254_crit_edge
  %incdec.ptr.1.i252 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 2
  %evc_rep_required.2.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 2, i32 2
  %122 = ptrtoint ptr %evc_rep_required.2.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %evc_rep_required.2.i, align 2
  %123 = ptrtoint ptr %incdec.ptr.1.i252 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %incdec.ptr.1.i252, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %124)
  %cmp1.2.i253 = icmp ugt i8 %124, 4
  br i1 %cmp1.2.i253, label %if.then.2.i, label %for.inc.1.i254.for.inc.2.i257_crit_edge

for.inc.1.i254.for.inc.2.i257_crit_edge:          ; preds = %for.inc.1.i254
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i257

if.then.2.i:                                      ; preds = %for.inc.1.i254
  call void @__sanitizer_cov_trace_pc() #7
  %evc_cond_state.2.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 2, i32 4
  %125 = ptrtoint ptr %evc_cond_state.2.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %evc_cond_state.2.i, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %126, align 1
  br label %for.inc.2.i257

for.inc.2.i257:                                   ; preds = %if.then.2.i, %for.inc.1.i254.for.inc.2.i257_crit_edge
  %incdec.ptr.2.i255 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 3
  %evc_rep_required.3.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 3, i32 2
  %128 = ptrtoint ptr %evc_rep_required.3.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %evc_rep_required.3.i, align 2
  %129 = ptrtoint ptr %incdec.ptr.2.i255 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %incdec.ptr.2.i255, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %130)
  %cmp1.3.i256 = icmp ugt i8 %130, 4
  br i1 %cmp1.3.i256, label %if.then.3.i, label %for.inc.2.i257.for.inc.3.i260_crit_edge

for.inc.2.i257.for.inc.3.i260_crit_edge:          ; preds = %for.inc.2.i257
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i260

if.then.3.i:                                      ; preds = %for.inc.2.i257
  call void @__sanitizer_cov_trace_pc() #7
  %evc_cond_state.3.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 3, i32 4
  %131 = ptrtoint ptr %evc_cond_state.3.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %evc_cond_state.3.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %132, align 1
  br label %for.inc.3.i260

for.inc.3.i260:                                   ; preds = %if.then.3.i, %for.inc.2.i257.for.inc.3.i260_crit_edge
  %incdec.ptr.3.i258 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 4
  %evc_rep_required.4.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 4, i32 2
  %134 = ptrtoint ptr %evc_rep_required.4.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %evc_rep_required.4.i, align 2
  %135 = ptrtoint ptr %incdec.ptr.3.i258 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %incdec.ptr.3.i258, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %136)
  %cmp1.4.i259 = icmp ugt i8 %136, 4
  br i1 %cmp1.4.i259, label %if.then.4.i, label %for.inc.3.i260.for.inc.4.i263_crit_edge

for.inc.3.i260.for.inc.4.i263_crit_edge:          ; preds = %for.inc.3.i260
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4.i263

if.then.4.i:                                      ; preds = %for.inc.3.i260
  call void @__sanitizer_cov_trace_pc() #7
  %evc_cond_state.4.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 4, i32 4
  %137 = ptrtoint ptr %evc_cond_state.4.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %evc_cond_state.4.i, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %138, align 1
  br label %for.inc.4.i263

for.inc.4.i263:                                   ; preds = %if.then.4.i, %for.inc.3.i260.for.inc.4.i263_crit_edge
  %incdec.ptr.4.i261 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 5
  %evc_rep_required.5.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 5, i32 2
  %140 = ptrtoint ptr %evc_rep_required.5.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %evc_rep_required.5.i, align 2
  %141 = ptrtoint ptr %incdec.ptr.4.i261 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %incdec.ptr.4.i261, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %142)
  %cmp1.5.i262 = icmp ugt i8 %142, 4
  br i1 %cmp1.5.i262, label %if.then.5.i, label %for.inc.4.i263.for.inc.5.i266_crit_edge

for.inc.4.i263.for.inc.5.i266_crit_edge:          ; preds = %for.inc.4.i263
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5.i266

if.then.5.i:                                      ; preds = %for.inc.4.i263
  call void @__sanitizer_cov_trace_pc() #7
  %evc_cond_state.5.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 5, i32 4
  %143 = ptrtoint ptr %evc_cond_state.5.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %evc_cond_state.5.i, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %144, align 1
  br label %for.inc.5.i266

for.inc.5.i266:                                   ; preds = %if.then.5.i, %for.inc.4.i263.for.inc.5.i266_crit_edge
  %incdec.ptr.5.i264 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 6
  %evc_rep_required.6.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 6, i32 2
  %146 = ptrtoint ptr %evc_rep_required.6.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %evc_rep_required.6.i, align 2
  %147 = ptrtoint ptr %incdec.ptr.5.i264 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %incdec.ptr.5.i264, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %148)
  %cmp1.6.i265 = icmp ugt i8 %148, 4
  br i1 %cmp1.6.i265, label %if.then.6.i, label %for.inc.5.i266.for.inc.6.i269_crit_edge

for.inc.5.i266.for.inc.6.i269_crit_edge:          ; preds = %for.inc.5.i266
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6.i269

if.then.6.i:                                      ; preds = %for.inc.5.i266
  call void @__sanitizer_cov_trace_pc() #7
  %evc_cond_state.6.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 6, i32 4
  %149 = ptrtoint ptr %evc_cond_state.6.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %evc_cond_state.6.i, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %150, align 1
  br label %for.inc.6.i269

for.inc.6.i269:                                   ; preds = %if.then.6.i, %for.inc.5.i266.for.inc.6.i269_crit_edge
  %incdec.ptr.6.i267 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 7
  %evc_rep_required.7.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 7, i32 2
  %152 = ptrtoint ptr %evc_rep_required.7.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %evc_rep_required.7.i, align 2
  %153 = ptrtoint ptr %incdec.ptr.6.i267 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %incdec.ptr.6.i267, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %154)
  %cmp1.7.i268 = icmp ugt i8 %154, 4
  br i1 %cmp1.7.i268, label %if.then.7.i, label %for.inc.6.i269.for.inc.7.i272_crit_edge

for.inc.6.i269.for.inc.7.i272_crit_edge:          ; preds = %for.inc.6.i269
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.7.i272

if.then.7.i:                                      ; preds = %for.inc.6.i269
  call void @__sanitizer_cov_trace_pc() #7
  %evc_cond_state.7.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 7, i32 4
  %155 = ptrtoint ptr %evc_cond_state.7.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %evc_cond_state.7.i, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %156, align 1
  br label %for.inc.7.i272

for.inc.7.i272:                                   ; preds = %if.then.7.i, %for.inc.6.i269.for.inc.7.i272_crit_edge
  %incdec.ptr.7.i270 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 8
  %evc_rep_required.8.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 8, i32 2
  %158 = ptrtoint ptr %evc_rep_required.8.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %evc_rep_required.8.i, align 2
  %159 = ptrtoint ptr %incdec.ptr.7.i270 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %incdec.ptr.7.i270, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %160)
  %cmp1.8.i271 = icmp ugt i8 %160, 4
  br i1 %cmp1.8.i271, label %if.then.8.i, label %for.inc.7.i272.for.inc.8.i275_crit_edge

for.inc.7.i272.for.inc.8.i275_crit_edge:          ; preds = %for.inc.7.i272
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.8.i275

if.then.8.i:                                      ; preds = %for.inc.7.i272
  call void @__sanitizer_cov_trace_pc() #7
  %evc_cond_state.8.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 8, i32 4
  %161 = ptrtoint ptr %evc_cond_state.8.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %evc_cond_state.8.i, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %162, align 1
  br label %for.inc.8.i275

for.inc.8.i275:                                   ; preds = %if.then.8.i, %for.inc.7.i272.for.inc.8.i275_crit_edge
  %incdec.ptr.8.i273 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 9
  %evc_rep_required.9.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 9, i32 2
  %164 = ptrtoint ptr %evc_rep_required.9.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %evc_rep_required.9.i, align 2
  %165 = ptrtoint ptr %incdec.ptr.8.i273 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %incdec.ptr.8.i273, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %166)
  %cmp1.9.i274 = icmp ugt i8 %166, 4
  br i1 %cmp1.9.i274, label %if.then.9.i, label %for.inc.8.i275.for.inc.9.i278_crit_edge

for.inc.8.i275.for.inc.9.i278_crit_edge:          ; preds = %for.inc.8.i275
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.9.i278

if.then.9.i:                                      ; preds = %for.inc.8.i275
  call void @__sanitizer_cov_trace_pc() #7
  %evc_cond_state.9.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 9, i32 4
  %167 = ptrtoint ptr %evc_cond_state.9.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %evc_cond_state.9.i, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 0, ptr %168, align 1
  br label %for.inc.9.i278

for.inc.9.i278:                                   ; preds = %if.then.9.i, %for.inc.8.i275.for.inc.9.i278_crit_edge
  %incdec.ptr.9.i276 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 10
  %evc_rep_required.10.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 10, i32 2
  %170 = ptrtoint ptr %evc_rep_required.10.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %evc_rep_required.10.i, align 2
  %171 = ptrtoint ptr %incdec.ptr.9.i276 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %incdec.ptr.9.i276, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %172)
  %cmp1.10.i277 = icmp ugt i8 %172, 4
  br i1 %cmp1.10.i277, label %if.then.10.i, label %for.inc.9.i278.for.inc.10.i281_crit_edge

for.inc.9.i278.for.inc.10.i281_crit_edge:         ; preds = %for.inc.9.i278
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.10.i281

if.then.10.i:                                     ; preds = %for.inc.9.i278
  call void @__sanitizer_cov_trace_pc() #7
  %evc_cond_state.10.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 10, i32 4
  %173 = ptrtoint ptr %evc_cond_state.10.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %evc_cond_state.10.i, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 0, ptr %174, align 1
  br label %for.inc.10.i281

for.inc.10.i281:                                  ; preds = %if.then.10.i, %for.inc.9.i278.for.inc.10.i281_crit_edge
  %incdec.ptr.10.i279 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 11
  %evc_rep_required.11.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 11, i32 2
  %176 = ptrtoint ptr %evc_rep_required.11.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 0, ptr %evc_rep_required.11.i, align 2
  %177 = ptrtoint ptr %incdec.ptr.10.i279 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %incdec.ptr.10.i279, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %178)
  %cmp1.11.i280 = icmp ugt i8 %178, 4
  br i1 %cmp1.11.i280, label %if.then.11.i, label %for.inc.10.i281.for.inc.11.i284_crit_edge

for.inc.10.i281.for.inc.11.i284_crit_edge:        ; preds = %for.inc.10.i281
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.11.i284

if.then.11.i:                                     ; preds = %for.inc.10.i281
  call void @__sanitizer_cov_trace_pc() #7
  %evc_cond_state.11.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 11, i32 4
  %179 = ptrtoint ptr %evc_cond_state.11.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %evc_cond_state.11.i, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %180, align 1
  br label %for.inc.11.i284

for.inc.11.i284:                                  ; preds = %if.then.11.i, %for.inc.10.i281.for.inc.11.i284_crit_edge
  %incdec.ptr.11.i282 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 12
  %evc_rep_required.12.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 12, i32 2
  %182 = ptrtoint ptr %evc_rep_required.12.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %evc_rep_required.12.i, align 2
  %183 = ptrtoint ptr %incdec.ptr.11.i282 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %incdec.ptr.11.i282, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %184)
  %cmp1.12.i283 = icmp ugt i8 %184, 4
  br i1 %cmp1.12.i283, label %if.then.12.i, label %for.inc.11.i284.for.inc.12.i287_crit_edge

for.inc.11.i284.for.inc.12.i287_crit_edge:        ; preds = %for.inc.11.i284
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.12.i287

if.then.12.i:                                     ; preds = %for.inc.11.i284
  call void @__sanitizer_cov_trace_pc() #7
  %evc_cond_state.12.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 12, i32 4
  %185 = ptrtoint ptr %evc_cond_state.12.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %evc_cond_state.12.i, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 0, ptr %186, align 1
  br label %for.inc.12.i287

for.inc.12.i287:                                  ; preds = %if.then.12.i, %for.inc.11.i284.for.inc.12.i287_crit_edge
  %incdec.ptr.12.i285 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 13
  %evc_rep_required.13.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 13, i32 2
  %188 = ptrtoint ptr %evc_rep_required.13.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 0, ptr %evc_rep_required.13.i, align 2
  %189 = ptrtoint ptr %incdec.ptr.12.i285 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %incdec.ptr.12.i285, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %190)
  %cmp1.13.i286 = icmp ugt i8 %190, 4
  br i1 %cmp1.13.i286, label %if.then.13.i, label %for.inc.12.i287.clear_all_rep.exit_crit_edge

for.inc.12.i287.clear_all_rep.exit_crit_edge:     ; preds = %for.inc.12.i287
  call void @__sanitizer_cov_trace_pc() #7
  br label %clear_all_rep.exit

if.then.13.i:                                     ; preds = %for.inc.12.i287
  call void @__sanitizer_cov_trace_pc() #7
  %evc_cond_state.13.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 12, i32 13, i32 4
  %191 = ptrtoint ptr %evc_cond_state.13.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %evc_cond_state.13.i, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 0, ptr %192, align 1
  br label %clear_all_rep.exit

clear_all_rep.exit:                               ; preds = %if.then.13.i, %for.inc.12.i287.clear_all_rep.exit_crit_edge
  %any_report.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 11, i32 3
  %194 = ptrtoint ptr %any_report.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 0, ptr %any_report.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %clear_all_rep.exit, %sw.bb150.cleanup_crit_edge, %if.then146, %if.end142.cleanup_crit_edge, %if.then131, %if.then124, %if.end121.cleanup_crit_edge, %if.then107, %if.then93, %if.then84, %if.then73, %if.then65, %if.then57, %if.then48, %if.end39.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %smt_get_evc.exit.cleanup_crit_edge, %land.lhs.true.13.i.cleanup_crit_edge, %for.inc.12.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_status_indication(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_set_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smt_send_srf(ptr noundef %smc) unnamed_addr #0 align 64 {
entry:
  %pcon = alloca %struct.s_pcon, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pcon) #5
  %0 = getelementptr inbounds %struct.s_pcon, ptr %pcon, i32 0, i32 1
  %1 = getelementptr inbounds %struct.s_pcon, ptr %pcon, i32 0, i32 2
  %2 = getelementptr inbounds %struct.s_pcon, ptr %pcon, i32 0, i32 3
  %sm_ma_avail = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 3
  %3 = ptrtoint ptr %sm_ma_avail to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sm_ma_avail, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @smt_build_frame(ptr noundef %smc, i32 noundef 7, i32 noundef 1, i32 noundef 0) #5
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ring_status = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 11, i32 5
  %5 = ptrtoint ptr %ring_status to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ring_status, align 4
  %7 = or i16 %6, 8192
  store i16 %7, ptr %ring_status, align 4
  %conv5 = zext i16 %7 to i32
  tail call void @ring_status_indication(ptr noundef %smc, i32 noundef %conv5) #5
  %m_data = getelementptr inbounds %struct.s_mbuf, ptr %call, i32 0, i32 4
  %m_off = getelementptr inbounds %struct.s_mbuf, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %m_off to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %m_off, align 4
  %conv6 = sext i16 %9 to i32
  %add.ptr = getelementptr i8, ptr %m_data, i32 %conv6
  %10 = call ptr @memcpy(ptr %add.ptr, ptr @smt_send_srf.SMT_SRF_DA, i32 6)
  %11 = ptrtoint ptr %pcon to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4332, ptr %pcon, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %0, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %1, align 4
  %add.ptr7 = getelementptr %struct.smt_header, ptr %add.ptr, i32 1
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr7, ptr %2, align 4
  call void @smt_add_para(ptr noundef %smc, ptr noundef nonnull %pcon, i16 noundef zeroext 4147, i32 noundef 0, i32 noundef 0) #5
  call void @smt_add_para(ptr noundef %smc, ptr noundef nonnull %pcon, i16 noundef zeroext 4148, i32 noundef 0, i32 noundef 0) #5
  %evcs = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end3
  %evc.043 = phi ptr [ %evcs, %if.end3 ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.042 = phi i32 [ 0, %if.end3 ], [ %inc, %for.inc.for.body_crit_edge ]
  %evc_rep_required = getelementptr inbounds %struct.s_srf_evc, ptr %evc.043, i32 0, i32 2
  %15 = ptrtoint ptr %evc_rep_required to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %evc_rep_required, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool10.not = icmp eq i8 %16, 0
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %evc_para = getelementptr inbounds %struct.s_srf_evc, ptr %evc.043, i32 0, i32 3
  %17 = ptrtoint ptr %evc_para to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %evc_para, align 4
  %evc_index = getelementptr inbounds %struct.s_srf_evc, ptr %evc.043, i32 0, i32 1
  %19 = ptrtoint ptr %evc_index to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %evc_index, align 1
  %conv12 = zext i8 %20 to i32
  call void @smt_add_para(ptr noundef %smc, ptr noundef nonnull %pcon, i16 noundef zeroext %18, i32 noundef %conv12, i32 noundef 0) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.042, 1
  %incdec.ptr = getelementptr %struct.s_srf_evc, ptr %evc.043, i32 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %21 = ptrtoint ptr %pcon to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pcon, align 4
  %23 = trunc i32 %22 to i16
  %conv15 = sub i16 4332, %23
  %smt_len = getelementptr inbounds %struct.smt_header, ptr %add.ptr, i32 0, i32 8
  %24 = ptrtoint ptr %smt_len to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv15, ptr %smt_len, align 2
  %conv17 = zext i16 %conv15 to i32
  %add = add nuw nsw i32 %conv17, 32
  %m_len = getelementptr inbounds %struct.s_mbuf, ptr %call, i32 0, i32 2
  %25 = ptrtoint ptr %m_len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %m_len, align 4
  call void @smt_send_frame(ptr noundef %smc, ptr noundef nonnull %call, i32 noundef 65, i32 noundef 0) #5
  %any_report.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 11, i32 3
  %26 = ptrtoint ptr %any_report.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %any_report.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end
  %i.022.i = phi i32 [ 0, %for.end ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %evc.020.i = phi ptr [ %evcs, %for.end ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %evc.020.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %evc.020.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %28)
  %cmp1.i = icmp ugt i8 %28, 4
  br i1 %cmp1.i, label %if.then.i, label %if.else9.i

if.then.i:                                        ; preds = %for.body.i
  %evc_cond_state.i = getelementptr inbounds %struct.s_srf_evc, ptr %evc.020.i, i32 0, i32 4
  %29 = ptrtoint ptr %evc_cond_state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %evc_cond_state.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp4.i = icmp eq i8 %32, 0
  br i1 %cmp4.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %evc_rep_required.i = getelementptr inbounds %struct.s_srf_evc, ptr %evc.020.i, i32 0, i32 2
  %33 = ptrtoint ptr %evc_rep_required.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %evc_rep_required.i, align 2
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %any_report.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %any_report.i, align 2
  br label %for.inc.i

if.else9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %evc_rep_required10.i = getelementptr inbounds %struct.s_srf_evc, ptr %evc.020.i, i32 0, i32 2
  %35 = ptrtoint ptr %evc_rep_required10.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %evc_rep_required10.i, align 2
  %evc_multiple.i = getelementptr inbounds %struct.s_srf_evc, ptr %evc.020.i, i32 0, i32 5
  %36 = ptrtoint ptr %evc_multiple.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %evc_multiple.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %37, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else9.i, %if.else.i, %if.then6.i
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %incdec.ptr.i = getelementptr %struct.s_srf_evc, ptr %evc.020.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 14
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pcon) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @smt_build_frame(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_add_para(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_send_frame(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @smt_init_evc.fail_safe, !1, !"fail_safe", i1 false, i1 false}
!1 = !{!"../drivers/net/fddi/skfp/srf.c", i32 71, i32 17}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/fddi/skfp/srf.c", i32 93, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @smt_init_evc._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @smt_init_evc._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @evc_inits, !10, !"evc_inits", i1 false, i1 false}
!10 = !{!"../drivers/net/fddi/skfp/srf.c", i32 46, i32 30}
!11 = !{ptr @smt_send_srf.SMT_SRF_DA, !12, !"SMT_SRF_DA", i1 false, i1 false}
!12 = !{!"../drivers/net/fddi/skfp/srf.c", i32 369, i32 32}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
