; ModuleID = '/llk/IR_all_yes/drivers/net/ipa/ipa_uc.c_pt.bc'
source_filename = "../drivers/net/ipa/ipa_uc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ipa = type { %struct.gsi, i32, ptr, %struct.completion, %struct.notifier_block, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i32, ptr, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.ipa_endpoint], [23 x ptr], [10 x ptr], i8, %struct.atomic_t, ptr, %struct.ipa_qmi, [24 x i8] }
%struct.gsi = type { ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, %struct.mutex, [23 x %struct.gsi_channel], [24 x %struct.gsi_evt_ring], %struct.net_device }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gsi_channel = type { ptr, i8, i8, i8, i16, i16, %struct.gsi_ring, i32, i64, i64, i64, i64, i64, i64, %struct.gsi_trans_info, %struct.napi_struct }
%struct.gsi_ring = type { ptr, i32, i32, i32 }
%struct.gsi_trans_info = type { %struct.atomic_t, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.gsi_trans_pool = type { ptr, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.gsi_evt_ring = type { ptr, %struct.gsi_ring }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ipa_endpoint = type { ptr, i32, i32, i32, i8, ptr, i32, i32, ptr, [1 x i32], i32, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work }
%struct.atomic_t = type { i32 }
%struct.ipa_qmi = type { %struct.qmi_handle, %struct.qmi_handle, %struct.sockaddr_qrtr, %struct.work_struct, i8, i8, i8, i8, i8 }
%struct.qmi_handle = type { ptr, %struct.mutex, %struct.sockaddr_qrtr, %struct.work_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qmi_ops, %struct.idr, %struct.mutex, ptr }
%struct.qmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sockaddr_qrtr = type { i16, i32, i32 }
%struct.ipa_mem = type { i32, i32, i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ipa_uc_mem_area = type { i8, [3 x i8], i32, i32, i8, [3 x i8], i32, i8, [3 x i8], i32, i32, i8, i8, i16, i16, i16 }

@ipa_uc_power.already = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ipa_uc_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 215, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error %d getting proxy power\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipa_uc_power\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/net/ipa/ipa_uc.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipa_uc_power._entry_ptr = internal global ptr @ipa_uc_power._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ipa_uc_event_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 133, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"microcontroller error event\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ipa_uc_event_handler\00", [43 x i8] zeroinitializer }, align 32
@ipa_uc_event_handler._entry_ptr = internal global ptr @ipa_uc_event_handler._entry, section ".printk_index", align 4
@ipa_uc_event_handler._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 136, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unsupported microcontroller event %u\0A\00", [58 x i8] zeroinitializer }, align 32
@ipa_uc_event_handler._entry_ptr.9 = internal global ptr @ipa_uc_event_handler._entry.7, section ".printk_index", align 4
@ipa_uc_response_hdlr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 163, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unexpected init_completed response\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ipa_uc_response_hdlr\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ipa_uc_response_hdlr._entry_ptr = internal global ptr @ipa_uc_response_hdlr._entry, section ".printk_index", align 4
@ipa_uc_response_hdlr._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 168, ptr @.str.12, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unsupported microcontroller response %u\0A\00", [55 x i8] zeroinitializer }, align 32
@ipa_uc_response_hdlr._entry_ptr.15 = internal global ptr @ipa_uc_response_hdlr._entry.13, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.16 = private unnamed_addr constant [21 x i8] c"ipa_uc_power.already\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 215, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 133, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 135, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 163, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [28 x i8] c"../drivers/net/ipa/ipa_uc.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 167, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @ipa_uc_event_handler._entry, ptr @ipa_uc_event_handler._entry.7, ptr @ipa_uc_event_handler._entry_ptr, ptr @ipa_uc_event_handler._entry_ptr.9, ptr @ipa_uc_power._entry, ptr @ipa_uc_power._entry_ptr, ptr @ipa_uc_response_hdlr._entry, ptr @ipa_uc_response_hdlr._entry.13, ptr @ipa_uc_response_hdlr._entry_ptr, ptr @ipa_uc_response_hdlr._entry_ptr.15, ptr @ipa_uc_power.already, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_uc_power.already to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_uc_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_uc_event_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_uc_event_handler._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_uc_response_hdlr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_uc_response_hdlr._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_uc_config(ptr nocapture noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %uc_powered = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 11
  %0 = ptrtoint ptr %uc_powered to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %uc_powered, align 4
  %uc_loaded = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 12
  %1 = ptrtoint ptr %uc_loaded to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %uc_loaded, align 1
  %interrupt = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 10
  %2 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt, align 32
  tail call void @ipa_interrupt_add(ptr noundef %3, i32 noundef 2, ptr noundef nonnull @ipa_uc_event_handler) #4
  %4 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interrupt, align 32
  tail call void @ipa_interrupt_add(ptr noundef %5, i32 noundef 3, ptr noundef nonnull @ipa_uc_response_hdlr) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_interrupt_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipa_uc_event_handler(ptr noundef %ipa, i32 noundef %irq_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ipa_mem_find(ptr noundef %ipa, i32 noundef 0) #4
  %mem_offset.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 17
  %0 = ptrtoint ptr %mem_offset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mem_offset.i, align 8
  %offset1.i = getelementptr inbounds %struct.ipa_mem, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset1.i, align 4
  %add.i = add i32 %3, %1
  %mem_virt.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 16
  %4 = ptrtoint ptr %mem_virt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add.i
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %event = getelementptr inbounds %struct.ipa_uc_mem_area, ptr %add.ptr.i, i32 0, i32 7
  %8 = ptrtoint ptr %event to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %event, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %do.end10 [
    i8 1, label %do.end
    i8 2, label %entry.if.end13_crit_edge
  ]

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #7
  br label %if.end13

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %conv) #7
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %do.end, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipa_uc_response_hdlr(ptr noundef %ipa, i32 noundef %irq_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ipa_mem_find(ptr noundef %ipa, i32 noundef 0) #4
  %mem_offset.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 17
  %0 = ptrtoint ptr %mem_offset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mem_offset.i, align 8
  %offset1.i = getelementptr inbounds %struct.ipa_mem, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset1.i, align 4
  %add.i = add i32 %3, %1
  %mem_virt.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 16
  %4 = ptrtoint ptr %mem_virt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add.i
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %response = getelementptr inbounds %struct.ipa_uc_mem_area, ptr %add.ptr.i, i32 0, i32 4
  %8 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %response, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cond = icmp eq i8 %9, 1
  br i1 %cond, label %sw.bb, label %do.end6

sw.bb:                                            ; preds = %entry
  %uc_powered = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 11
  %10 = ptrtoint ptr %uc_powered to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %uc_powered, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %uc_loaded = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 12
  %12 = ptrtoint ptr %uc_loaded to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %uc_loaded, align 1
  tail call void @ipa_power_retention(ptr noundef %ipa, i1 noundef zeroext true) #4
  %call.i18 = tail call i64 @ktime_get_mono_fast_ns() #4
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 12, i32 22
  %13 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store volatile i64 %call.i18, ptr %last_busy.i, align 8
  %call.i19 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #4
  %14 = ptrtoint ptr %uc_powered to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %uc_powered, align 4
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.10) #7
  br label %sw.epilog

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %conv) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end6, %do.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_uc_deconfig(ptr noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %interrupt = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 10
  %2 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt, align 32
  tail call void @ipa_interrupt_remove(ptr noundef %3, i32 noundef 3) #4
  %4 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interrupt, align 32
  tail call void @ipa_interrupt_remove(ptr noundef %5, i32 noundef 2) #4
  %uc_loaded = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 12
  %6 = ptrtoint ptr %uc_loaded to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %uc_loaded, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ipa_power_retention(ptr noundef %ipa, i1 noundef zeroext false) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %uc_powered = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 11
  %8 = ptrtoint ptr %uc_powered to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %uc_powered, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #4
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 12, i32 22
  %10 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %call.i12 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_interrupt_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipa_power_retention(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_uc_power(ptr nocapture noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %.b9 = load i1, ptr @ipa_uc_power.already, align 1
  br i1 %.b9, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  store i1 true, ptr @ipa_uc_power.already, align 1
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #4
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #4, !srcloc !40
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then2.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then2.pm_runtime_put_noidle.exit_crit_edge:    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !41
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then2.pm_runtime_put_noidle.exit_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str, i32 noundef %call.i) #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %uc_powered = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 11
  %3 = ptrtoint ptr %uc_powered to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %uc_powered, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %pm_runtime_put_noidle.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_uc_panic_notifier(ptr noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %uc_loaded = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 12
  %0 = ptrtoint ptr %uc_loaded to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %uc_loaded, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i = tail call ptr @ipa_mem_find(ptr noundef %ipa, i32 noundef 0) #4
  %mem_offset.i.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 17
  %2 = ptrtoint ptr %mem_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_offset.i.i, align 8
  %offset1.i.i = getelementptr inbounds %struct.ipa_mem, ptr %call.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset1.i.i, align 4
  %add.i.i = add i32 %5, %3
  %mem_virt.i.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 16
  %6 = ptrtoint ptr %mem_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem_virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %add.i.i
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %add.ptr.i.i, align 4
  %command_param2.i = getelementptr inbounds %struct.ipa_uc_mem_area, ptr %add.ptr.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %command_param2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %command_param2.i, align 4
  %command_param_hi.i = getelementptr inbounds %struct.ipa_uc_mem_area, ptr %add.ptr.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %command_param_hi.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %command_param_hi.i, align 4
  %response.i = getelementptr inbounds %struct.ipa_uc_mem_area, ptr %add.ptr.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %response.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %response.i, align 4
  %response_param.i = getelementptr inbounds %struct.ipa_uc_mem_area, ptr %add.ptr.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %response_param.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %response_param.i, align 4
  %version.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 1
  %13 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %version.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %14)
  %cmp.i.i.i = icmp ult i32 %14, 9
  %..i.i.i = select i1 %cmp.i.i.i, i32 12316, i32 16412
  %reg_virt.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 14
  %15 = ptrtoint ptr %reg_virt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %..i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #4, !srcloc !43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 21474800) #4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipa_mem_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = distinct !{null, !1, !"already", i1 false, i1 false}
!1 = !{!"../drivers/net/ipa/ipa_uc.c", i32 202, i32 14}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ipa/ipa_uc.c", i32 215, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ipa_uc_power._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @ipa_uc_power._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ipa/ipa_uc.c", i32 133, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ipa_uc_event_handler._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @ipa_uc_event_handler._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ipa/ipa_uc.c", i32 135, i32 3}
!17 = !{ptr @ipa_uc_event_handler._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @ipa_uc_event_handler._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ipa/ipa_uc.c", i32 163, i32 4}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ipa_uc_response_hdlr._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @ipa_uc_response_hdlr._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ipa/ipa_uc.c", i32 167, i32 3}
!27 = !{ptr @ipa_uc_response_hdlr._entry.13, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ipa_uc_response_hdlr._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i8 0, i8 2}
!39 = !{i64 2148426609}
!40 = !{i64 913209, i64 913234, i64 913256, i64 913272, i64 913284, i64 913304, i64 913328, i64 913344, i64 913356}
!41 = !{i64 2148426797}
!42 = !{i64 2148878058}
!43 = !{i64 691112}
