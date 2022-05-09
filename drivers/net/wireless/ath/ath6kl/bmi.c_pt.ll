; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath6kl/bmi.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath6kl/bmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ath6kl = type <{ ptr, ptr, i32, i32, %struct.ath6kl_bmi, ptr, ptr, ptr, [9 x i32], i32, ptr, i32, ptr, %struct.list_head, %struct.spinlock, i8, [3 x i8], i32, i8, i8, [2 x i8], %struct.spinlock, %struct.semaphore, i8, [3 x i8], %struct.ath6kl_version, i32, i8, [15 x %struct.ath6kl_node_mapping], i8, i8, i8, i8, [3 x i8], ptr, i32, [4 x i32], [4 x i8], [4 x i8], i8, [9 x i8], [2 x i8], i32, %struct.ath6kl_htc_credit_info, i32, i32, i8, [3 x i8], [10 x %struct.ath6kl_sta], i8, [3 x i8], %struct.ath6kl_req_key, %struct.sk_buff_head, i32, i16, [2 x i8], %struct.spinlock, i8, %struct.wmi_ap_mode_stat, [3 x i8], %struct.list_head, i8, [3 x i8], i32, [6 x i8], [2 x i8], %struct.anon.127, %struct.ath6kl_hw, i16, i16, i16, [2 x i8], %struct.wait_queue_head, %struct.ath6kl_mbox_info, [198 x %struct.ath6kl_cookie], i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, [1 x i32], ptr, ptr, i8, i8, [2 x i8], %struct.ath6kl_fw_recovery, %struct.anon.128 }>
%struct.ath6kl_bmi = type { i32, i8, ptr, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ath6kl_version = type { i32, i32, i32 }
%struct.ath6kl_node_mapping = type { [6 x i8], i8, i8 }
%struct.ath6kl_htc_credit_info = type { i32, i32, %struct.list_head }
%struct.ath6kl_sta = type { i16, [6 x i8], i8, i8, i8, i8, [256 x i8], %struct.sk_buff_head, %struct.spinlock, %struct.list_head, i32, i8, %struct.sk_buff_head, ptr }
%struct.ath6kl_req_key = type { i8, i8, i32, [32 x i8], i8 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wmi_ap_mode_stat = type { i32, [11 x %struct.wmi_per_sta_stat] }
%struct.wmi_per_sta_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.127 = type { ptr, i32 }
%struct.ath6kl_hw = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, %struct.ath6kl_hw_fw, ptr, ptr }
%struct.ath6kl_hw_fw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ath6kl_mbox_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ath6kl_cookie = type { ptr, i32, %struct.htc_packet, ptr }
%struct.htc_packet = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, %union.anon.124, ptr, ptr, ptr }
%union.anon.124 = type { %struct.htc_tx_packet_info }
%struct.htc_tx_packet_info = type { i16, i32, i8, i32 }
%struct.ath6kl_fw_recovery = type { %struct.work_struct, i32, i32, %struct.timer_list, i32, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.128 = type { %struct.sk_buff_head, %struct.completion, i8, i32, i32, i32, i32, %struct.anon.129, ptr, i32, i8, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.129 = type { i32 }
%struct.ath6kl_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath6kl_bmi_target_info = type { i32, i32, i32 }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bmi done skipped\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to send bmi done: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bmi done sent already, cmd %d disallowed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to send get target info: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to recv target info: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unable to read target info byte count: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ath/ath6kl/bmi.c\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to read target info (%d bytes): %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"target info (ver: 0x%x type: 0x%x)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"bmi read memory: device: addr: 0x%x, len: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to write to the device: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to read from the device: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bmi write memory: addr: 0x%x, len: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bmi execute: addr: 0x%x, param: %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bmi set app start: addr: 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bmi read SOC reg: addr: 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bmi write SOC reg: addr: 0x%x, param: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bmi send LZ data: len: %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bmi LZ stream start: addr: 0x%x)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unable to start LZ stream to the device: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 29, i32 30 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 37, i32 14 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 51, i32 14 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 57, i32 14 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 70, i32 14 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 80, i32 15 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 90, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 102, i32 15 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 108, i32 29 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 135, i32 6 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 153, i32 15 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 159, i32 15 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 196, i32 6 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 256, i32 29 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 303, i32 29 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 339, i32 29 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 383, i32 6 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 424, i32 29 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 474, i32 6 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath6kl/bmi.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 485, i32 14 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_bmi_done(ptr noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  %cid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cid) #6
  %0 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %cid, align 4
  %done_sent = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %done_sent to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %done_sent, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 16, ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %done_sent to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %done_sent, align 4
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 5
  %4 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hif_ops.i, align 4
  %bmi_write.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %bmi_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmi_write.i, align 4
  %call.i = call i32 %7(ptr noundef %ar, ptr noundef nonnull %cid, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.1, i32 noundef %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call.i, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cid) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_bmi_get_target_info(ptr noundef %ar, ptr noundef %targ_info) local_unnamed_addr #0 align 64 {
entry:
  %cid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cid) #6
  %0 = ptrtoint ptr %cid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8, ptr %cid, align 4
  %done_sent = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %done_sent to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %done_sent, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.2, i32 noundef 8) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 5
  %3 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hif_ops.i, align 4
  %bmi_write.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %bmi_write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bmi_write.i, align 4
  %call.i = call i32 %6(ptr noundef %ar, ptr noundef nonnull %cid, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.3, i32 noundef %call.i) #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %hif_type = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 11
  %7 = ptrtoint ptr %hif_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hif_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hif_ops.i, align 4
  %bmi_read.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %bmi_read.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bmi_read.i, align 4
  %call.i74 = call i32 %12(ptr noundef %ar, ptr noundef %targ_info, i32 noundef 12) #6
  br label %if.end7

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %version = getelementptr inbounds %struct.ath6kl_bmi_target_info, ptr %targ_info, i32 0, i32 1
  %13 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hif_ops.i, align 4
  %bmi_read.i76 = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %bmi_read.i76 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bmi_read.i76, align 4
  %call.i77 = call i32 %16(ptr noundef %ar, ptr noundef %version, i32 noundef 4) #6
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %ret.0 = phi i32 [ %call.i74, %if.then4 ], [ %call.i77, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool8.not = icmp eq i32 %ret.0, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.4, i32 noundef %ret.0) #6
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %version11 = getelementptr %struct.ath6kl_bmi_target_info, ptr %targ_info, i32 0, i32 1
  %17 = ptrtoint ptr %version11 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %version11, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp12 = icmp eq i32 %18, -1
  br i1 %cmp12, label %if.then13, label %if.end10.if.end44_crit_edge

if.end10.if.end44_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then13:                                        ; preds = %if.end10
  %19 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hif_ops.i, align 4
  %bmi_read.i79 = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %bmi_read.i79 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bmi_read.i79, align 4
  %call.i80 = call i32 %22(ptr noundef %ar, ptr noundef %targ_info, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool15.not = icmp eq i32 %call.i80, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.5, i32 noundef %call.i80) #6
  br label %cleanup

if.end17:                                         ; preds = %if.then13
  %23 = ptrtoint ptr %targ_info to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %targ_info, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %24)
  %cmp19.not = icmp eq i32 %24, 201326592
  br i1 %cmp19.not, label %if.end38, label %do.end

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 90, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end38:                                         ; preds = %if.end17
  %25 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hif_ops.i, align 4
  %bmi_read.i82 = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %bmi_read.i82 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bmi_read.i82, align 4
  %call.i83 = call i32 %28(ptr noundef %ar, ptr noundef %version11, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool40.not = icmp eq i32 %call.i83, 0
  br i1 %tobool40.not, label %if.end38.if.end44_crit_edge, label %if.then41

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %targ_info to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %targ_info, align 1
  call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.7, i32 noundef %30, i32 noundef %call.i83) #6
  br label %cleanup

if.end44:                                         ; preds = %if.end38.if.end44_crit_edge, %if.end10.if.end44_crit_edge
  %31 = ptrtoint ptr %version11 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %version11, align 1
  %type = getelementptr inbounds %struct.ath6kl_bmi_target_info, ptr %targ_info, i32 0, i32 2
  %33 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %type, align 1
  call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %32, i32 noundef %34) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then41, %do.end, %if.then16, %if.then9, %if.then2, %if.then
  %retval.0 = phi i32 [ -13, %if.then ], [ %call.i, %if.then2 ], [ %ret.0, %if.then9 ], [ %call.i80, %if.then16 ], [ -22, %do.end ], [ %call.i83, %if.then41 ], [ 0, %if.end44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cid) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_bmi_read(ptr noundef %ar, i32 noundef %addr, ptr nocapture noundef writeonly %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %done_sent = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %done_sent to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %done_sent, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.2, i32 noundef 2) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_data_size = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %max_data_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_data_size, align 4
  %conv = add i32 %3, 12
  %conv4 = and i32 %conv, 65535
  %max_cmd_size = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %max_cmd_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_cmd_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4, i32 %5)
  %cmp = icmp ugt i32 %conv4, %5
  br i1 %cmp, label %do.end, label %if.end25

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 129, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %cmd_buf = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd_buf, align 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 %conv4)
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %addr, i32 noundef %len) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool28.not106 = icmp eq i32 %len, 0
  br i1 %tobool28.not106, label %if.end25.cleanup_crit_edge, label %while.body.lr.ph

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end25
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end56.while.body_crit_edge, %while.body.lr.ph
  %len_remain.0108 = phi i32 [ %len, %while.body.lr.ph ], [ %sub60, %if.end56.while.body_crit_edge ]
  %addr.addr.0107 = phi i32 [ %addr, %while.body.lr.ph ], [ %add61, %if.end56.while.body_crit_edge ]
  %9 = ptrtoint ptr %max_data_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_data_size, align 4
  %11 = tail call i32 @llvm.umin.i32(i32 %len_remain.0108, i32 %10)
  %12 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmd_buf, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 2, ptr %13, align 1
  %15 = load ptr, ptr %cmd_buf, align 4
  %arrayidx40 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %addr.addr.0107, ptr %arrayidx40, align 1
  %17 = load ptr, ptr %cmd_buf, align 4
  %arrayidx44 = getelementptr i8, ptr %17, i32 8
  %18 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %11, ptr %arrayidx44, align 1
  %19 = load ptr, ptr %cmd_buf, align 4
  %20 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hif_ops.i, align 4
  %bmi_write.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %bmi_write.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bmi_write.i, align 4
  %call.i = tail call i32 %23(ptr noundef %ar, ptr noundef %19, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool48.not = icmp eq i32 %call.i, 0
  br i1 %tobool48.not, label %if.end50, label %if.then49

if.then49:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.10, i32 noundef %call.i) #6
  br label %cleanup

if.end50:                                         ; preds = %while.body
  %24 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmd_buf, align 4
  %26 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hif_ops.i, align 4
  %bmi_read.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %bmi_read.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bmi_read.i, align 4
  %call.i104 = tail call i32 %29(ptr noundef %ar, ptr noundef %25, i32 noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool54.not = icmp eq i32 %call.i104, 0
  br i1 %tobool54.not, label %if.end56, label %if.then55

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.11, i32 noundef %call.i104) #6
  br label %cleanup

if.end56:                                         ; preds = %if.end50
  %sub = sub i32 %len, %len_remain.0108
  %arrayidx57 = getelementptr i8, ptr %buf, i32 %sub
  %30 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmd_buf, align 4
  %32 = call ptr @memcpy(ptr %arrayidx57, ptr %31, i32 %11)
  %sub60 = sub i32 %len_remain.0108, %11
  %add61 = add i32 %11, %addr.addr.0107
  %tobool28.not = icmp eq i32 %sub60, 0
  br i1 %tobool28.not, label %if.end56.cleanup_crit_edge, label %if.end56.while.body_crit_edge

if.end56.while.body_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end56.cleanup_crit_edge, %if.then55, %if.then49, %if.end25.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ -13, %if.then ], [ -22, %do.end ], [ %call.i, %if.then49 ], [ %call.i104, %if.then55 ], [ 0, %if.end25.cleanup_crit_edge ], [ 0, %if.end56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_bmi_write(ptr noundef %ar, i32 noundef %addr, ptr nocapture noundef readonly %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %aligned_buf = alloca [400 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %aligned_buf) #6
  %0 = call ptr @memset(ptr %aligned_buf, i32 255, i32 400)
  %done_sent = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %done_sent to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %done_sent, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.2, i32 noundef 3) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_data_size = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %max_data_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_data_size, align 4
  %add = add i32 %4, 12
  %max_cmd_size = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 4
  %5 = ptrtoint ptr %max_cmd_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_cmd_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %6)
  %cmp = icmp ugt i32 %add, %6
  br i1 %cmp, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 186, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %4)
  %cmp25 = icmp ugt i32 %4, 400
  br i1 %cmp25, label %do.end41, label %if.end57, !prof !50

do.end41:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 190, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end57:                                         ; preds = %if.end21
  %cmd_buf = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd_buf, align 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 %add)
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 16, ptr noundef nonnull @.str.12, i32 noundef %addr, i32 noundef %len) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool62.not149 = icmp eq i32 %len, 0
  br i1 %tobool62.not149, label %if.end57.cleanup_crit_edge, label %while.body.lr.ph

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end57
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end99.while.body_crit_edge, %while.body.lr.ph
  %addr.addr.0151 = phi i32 [ %addr, %while.body.lr.ph ], [ %add101, %if.end99.while.body_crit_edge ]
  %len_remain.0150 = phi i32 [ %len, %while.body.lr.ph ], [ %sub100, %if.end99.while.body_crit_edge ]
  %sub = sub i32 %len, %len_remain.0150
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub
  %10 = ptrtoint ptr %max_data_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_data_size, align 4
  %sub65 = add i32 %11, -12
  call void @__sanitizer_cov_trace_cmp4(i32 %len_remain.0150, i32 %sub65)
  %cmp66 = icmp ult i32 %len_remain.0150, %sub65
  br i1 %cmp66, label %if.then67, label %while.body.if.end78_crit_edge

while.body.if.end78_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then67:                                        ; preds = %while.body
  %and = and i32 %len_remain.0150, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool68.not = icmp eq i32 %and, 0
  br i1 %tobool68.not, label %if.then67.if.end78_crit_edge, label %if.then69

if.then67.if.end78_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then69:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  %sub71 = sub nuw nsw i32 4, %and
  %add72 = add i32 %sub71, %len_remain.0150
  %12 = call ptr @memcpy(ptr %aligned_buf, ptr %arrayidx, i32 %add72)
  br label %if.end78

if.end78:                                         ; preds = %if.then69, %if.then67.if.end78_crit_edge, %while.body.if.end78_crit_edge
  %len_remain.2 = phi i32 [ %add72, %if.then69 ], [ %len_remain.0150, %if.then67.if.end78_crit_edge ], [ %len_remain.0150, %while.body.if.end78_crit_edge ]
  %tx_len.0 = phi i32 [ %add72, %if.then69 ], [ %len_remain.0150, %if.then67.if.end78_crit_edge ], [ %sub65, %while.body.if.end78_crit_edge ]
  %src.1 = phi ptr [ %aligned_buf, %if.then69 ], [ %arrayidx, %if.then67.if.end78_crit_edge ], [ %arrayidx, %while.body.if.end78_crit_edge ]
  %13 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd_buf, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 3, ptr %14, align 1
  %16 = load ptr, ptr %cmd_buf, align 4
  %arrayidx85 = getelementptr i8, ptr %16, i32 4
  %17 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %addr.addr.0151, ptr %arrayidx85, align 1
  %18 = load ptr, ptr %cmd_buf, align 4
  %arrayidx89 = getelementptr i8, ptr %18, i32 8
  %19 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %tx_len.0, ptr %arrayidx89, align 1
  %20 = load ptr, ptr %cmd_buf, align 4
  %arrayidx93 = getelementptr i8, ptr %20, i32 12
  %21 = call ptr @memcpy(ptr %arrayidx93, ptr %src.1, i32 %tx_len.0)
  %add94 = add i32 %tx_len.0, 12
  %22 = load ptr, ptr %cmd_buf, align 4
  %23 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hif_ops.i, align 4
  %bmi_write.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %24, i32 0, i32 14
  %25 = ptrtoint ptr %bmi_write.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bmi_write.i, align 4
  %call.i = tail call i32 %26(ptr noundef %ar, ptr noundef %22, i32 noundef %add94) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool97.not = icmp eq i32 %call.i, 0
  br i1 %tobool97.not, label %if.end99, label %if.then98

if.then98:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.10, i32 noundef %call.i) #6
  br label %cleanup

if.end99:                                         ; preds = %if.end78
  %sub100 = sub i32 %len_remain.2, %tx_len.0
  %add101 = add i32 %tx_len.0, %addr.addr.0151
  %tobool62.not = icmp eq i32 %sub100, 0
  br i1 %tobool62.not, label %if.end99.cleanup_crit_edge, label %if.end99.while.body_crit_edge

if.end99.while.body_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end99.cleanup_crit_edge, %if.then98, %if.end57.cleanup_crit_edge, %do.end41, %do.end, %if.then
  %retval.0 = phi i32 [ -13, %if.then ], [ -22, %do.end ], [ -7, %do.end41 ], [ %call.i, %if.then98 ], [ 0, %if.end57.cleanup_crit_edge ], [ 0, %if.end99.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %aligned_buf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_bmi_execute(ptr noundef %ar, i32 noundef %addr, ptr nocapture noundef %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %done_sent = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %done_sent to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %done_sent, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.2, i32 noundef 4) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_cmd_size = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %max_cmd_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_cmd_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %cmp = icmp ult i32 %3, 12
  br i1 %cmp, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 251, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %cmd_buf = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd_buf, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 12)
  %7 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %param, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %addr, i32 noundef %8) #6
  %9 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd_buf, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 4, ptr %10, align 1
  %12 = load ptr, ptr %cmd_buf, align 4
  %arrayidx28 = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %addr, ptr %arrayidx28, align 1
  %14 = load ptr, ptr %cmd_buf, align 4
  %arrayidx32 = getelementptr i8, ptr %14, i32 8
  %15 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %param, align 4
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %arrayidx32, align 1
  %18 = load ptr, ptr %cmd_buf, align 4
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 5
  %19 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hif_ops.i, align 4
  %bmi_write.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %bmi_write.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bmi_write.i, align 4
  %call.i = tail call i32 %22(ptr noundef %ar, ptr noundef %18, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.10, i32 noundef %call.i) #6
  br label %cleanup

if.end38:                                         ; preds = %if.end21
  %23 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmd_buf, align 4
  %25 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hif_ops.i, align 4
  %bmi_read.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %bmi_read.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bmi_read.i, align 4
  %call.i76 = tail call i32 %28(ptr noundef %ar, ptr noundef %24, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool42.not = icmp eq i32 %call.i76, 0
  br i1 %tobool42.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.11, i32 noundef %call.i76) #6
  br label %cleanup

if.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cmd_buf, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %30, align 1
  %33 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %param, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then43, %if.then37, %do.end, %if.then
  %retval.0 = phi i32 [ -13, %if.then ], [ -22, %do.end ], [ %call.i, %if.then37 ], [ %call.i76, %if.then43 ], [ 0, %if.end44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_bmi_set_app_start(ptr noundef %ar, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %done_sent = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %done_sent to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %done_sent, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.2, i32 noundef 5) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_cmd_size = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %max_cmd_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_cmd_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp ult i32 %3, 8
  br i1 %cmp, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 298, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %cmd_buf = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %5, align 1
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef %addr) #6
  %7 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd_buf, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 5, ptr %8, align 1
  %10 = load ptr, ptr %cmd_buf, align 4
  %arrayidx28 = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %addr, ptr %arrayidx28, align 1
  %12 = load ptr, ptr %cmd_buf, align 4
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 5
  %13 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hif_ops.i, align 4
  %bmi_write.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %bmi_write.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bmi_write.i, align 4
  %call.i = tail call i32 %16(ptr noundef %ar, ptr noundef %12, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool32.not = icmp eq i32 %call.i, 0
  br i1 %tobool32.not, label %if.end21.cleanup_crit_edge, label %if.then33

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then33:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.10, i32 noundef %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end21.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ -13, %if.then ], [ -22, %do.end ], [ %call.i, %if.then33 ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_bmi_reg_read(ptr noundef %ar, i32 noundef %addr, ptr nocapture noundef writeonly %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %done_sent = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %done_sent to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %done_sent, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.2, i32 noundef 6) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_cmd_size = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %max_cmd_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_cmd_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp ult i32 %3, 8
  br i1 %cmp, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 334, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %cmd_buf = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %5, align 1
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %addr) #6
  %7 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd_buf, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 6, ptr %8, align 1
  %10 = load ptr, ptr %cmd_buf, align 4
  %arrayidx28 = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %addr, ptr %arrayidx28, align 1
  %12 = load ptr, ptr %cmd_buf, align 4
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 5
  %13 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hif_ops.i, align 4
  %bmi_write.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %bmi_write.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bmi_write.i, align 4
  %call.i = tail call i32 %16(ptr noundef %ar, ptr noundef %12, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool32.not = icmp eq i32 %call.i, 0
  br i1 %tobool32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.10, i32 noundef %call.i) #6
  br label %cleanup

if.end34:                                         ; preds = %if.end21
  %17 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmd_buf, align 4
  %19 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hif_ops.i, align 4
  %bmi_read.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %bmi_read.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bmi_read.i, align 4
  %call.i67 = tail call i32 %22(ptr noundef %ar, ptr noundef %18, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool38.not = icmp eq i32 %call.i67, 0
  br i1 %tobool38.not, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.11, i32 noundef %call.i67) #6
  br label %cleanup

if.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmd_buf, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %24, align 1
  %27 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %param, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then39, %if.then33, %do.end, %if.then
  %retval.0 = phi i32 [ -13, %if.then ], [ -22, %do.end ], [ %call.i, %if.then33 ], [ %call.i67, %if.then39 ], [ 0, %if.end40 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_bmi_reg_write(ptr noundef %ar, i32 noundef %addr, i32 noundef %param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %done_sent = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %done_sent to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %done_sent, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.2, i32 noundef 7) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_cmd_size = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %max_cmd_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_cmd_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %3)
  %cmp = icmp ult i32 %3, 12
  br i1 %cmp, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 377, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %cmd_buf = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd_buf, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 12)
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 16, ptr noundef nonnull @.str.16, i32 noundef %addr, i32 noundef %param) #6
  %7 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd_buf, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 7, ptr %8, align 1
  %10 = load ptr, ptr %cmd_buf, align 4
  %arrayidx28 = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %addr, ptr %arrayidx28, align 1
  %12 = load ptr, ptr %cmd_buf, align 4
  %arrayidx32 = getelementptr i8, ptr %12, i32 8
  %13 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %param, ptr %arrayidx32, align 1
  %14 = load ptr, ptr %cmd_buf, align 4
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 5
  %15 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hif_ops.i, align 4
  %bmi_write.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %bmi_write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bmi_write.i, align 4
  %call.i = tail call i32 %18(ptr noundef %ar, ptr noundef %14, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %if.end21.cleanup_crit_edge, label %if.then37

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then37:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.10, i32 noundef %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end21.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ -13, %if.then ], [ -22, %do.end ], [ %call.i, %if.then37 ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_bmi_lz_data(ptr noundef %ar, ptr nocapture noundef readonly %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %done_sent = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %done_sent to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %done_sent, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.2, i32 noundef 14) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_data_size = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 3
  %2 = ptrtoint ptr %max_data_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_data_size, align 4
  %conv = add i32 %3, 8
  %conv2 = and i32 %conv, 65535
  %max_cmd_size = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %max_cmd_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_cmd_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %5)
  %cmp = icmp ugt i32 %conv2, %5
  br i1 %cmp, label %do.end, label %if.end23

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 419, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %cmd_buf = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd_buf, align 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 %conv2)
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 16, ptr noundef nonnull @.str.17, i32 noundef %len) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool26.not87 = icmp eq i32 %len, 0
  br i1 %tobool26.not87, label %if.end23.cleanup_crit_edge, label %while.body.lr.ph

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end23
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 5
  br label %while.body

while.cond:                                       ; preds = %while.body
  %sub52 = sub i32 %len_remain.088, %11
  %tobool26.not = icmp eq i32 %sub52, 0
  br i1 %tobool26.not, label %while.cond.cleanup_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %len_remain.088 = phi i32 [ %len, %while.body.lr.ph ], [ %sub52, %while.cond.while.body_crit_edge ]
  %9 = ptrtoint ptr %max_data_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_data_size, align 4
  %sub = add i32 %10, -8
  %11 = tail call i32 @llvm.umin.i32(i32 %len_remain.088, i32 %sub)
  %12 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cmd_buf, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 14, ptr %13, align 1
  %15 = load ptr, ptr %cmd_buf, align 4
  %arrayidx39 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %11, ptr %arrayidx39, align 1
  %17 = load ptr, ptr %cmd_buf, align 4
  %arrayidx43 = getelementptr i8, ptr %17, i32 8
  %sub44 = sub i32 %len, %len_remain.088
  %arrayidx45 = getelementptr i8, ptr %buf, i32 %sub44
  %18 = call ptr @memcpy(ptr %arrayidx43, ptr %arrayidx45, i32 %11)
  %add46 = add i32 %11, 8
  %19 = load ptr, ptr %cmd_buf, align 4
  %20 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hif_ops.i, align 4
  %bmi_write.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %bmi_write.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bmi_write.i, align 4
  %call.i = tail call i32 %23(ptr noundef %ar, ptr noundef %19, i32 noundef %add46) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool49.not = icmp eq i32 %call.i, 0
  br i1 %tobool49.not, label %while.cond, label %if.then50

if.then50:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.10, i32 noundef %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %while.cond.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ -13, %if.then ], [ -22, %do.end ], [ %call.i, %if.then50 ], [ 0, %if.end23.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_bmi_lz_stream_start(ptr noundef %ar, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %done_sent = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %done_sent to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %done_sent, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.2, i32 noundef 13) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_cmd_size = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %max_cmd_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_cmd_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp ult i32 %3, 8
  br i1 %cmp, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 468, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %cmd_buf = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd_buf, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %5, align 1
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %addr) #6
  %7 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd_buf, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 13, ptr %8, align 1
  %10 = load ptr, ptr %cmd_buf, align 4
  %arrayidx28 = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %addr, ptr %arrayidx28, align 1
  %12 = load ptr, ptr %cmd_buf, align 4
  %hif_ops.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 5
  %13 = ptrtoint ptr %hif_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hif_ops.i, align 4
  %bmi_write.i = getelementptr inbounds %struct.ath6kl_hif_ops, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %bmi_write.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bmi_write.i, align 4
  %call.i = tail call i32 %16(ptr noundef %ar, ptr noundef %12, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool32.not = icmp eq i32 %call.i, 0
  br i1 %tobool32.not, label %if.end21.cleanup_crit_edge, label %if.then33

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then33:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.19, i32 noundef %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end21.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ -13, %if.then ], [ -22, %do.end ], [ %call.i, %if.then33 ], [ 0, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_bmi_fast_download(ptr noundef %ar, i32 noundef %addr, ptr nocapture noundef readonly %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %last_word = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_word) #6
  %0 = ptrtoint ptr %last_word to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %last_word, align 4
  %and = and i32 %len, -4
  %and1 = and i32 %len, 3
  %call = tail call i32 @ath6kl_bmi_lz_stream_start(ptr noundef %ar, i32 noundef %addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end4.thread

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @ath6kl_bmi_lz_data(ptr noundef %ar, ptr noundef %buf, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.if.then14_crit_edge, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.if.then14_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.end4.thread:                                   ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %buf, i32 %and
  %1 = call ptr @memcpy(ptr %last_word, ptr %arrayidx, i32 %and1)
  %call533 = tail call i32 @ath6kl_bmi_lz_data(ptr noundef %ar, ptr noundef %buf, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call533)
  %tobool6.not34 = icmp eq i32 %call533, 0
  br i1 %tobool6.not34, label %if.end12, label %if.end4.thread.cleanup_crit_edge

if.end4.thread.cleanup_crit_edge:                 ; preds = %if.end4.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end4.thread
  %call11 = call i32 @ath6kl_bmi_lz_data(ptr noundef %ar, ptr noundef nonnull %last_word, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool13.not = icmp eq i32 %call11, 0
  br i1 %tobool13.not, label %if.end12.if.then14_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12.if.then14_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then14:                                        ; preds = %if.end12.if.then14_crit_edge, %if.end4.if.then14_crit_edge
  %call15 = tail call i32 @ath6kl_bmi_lz_stream_start(ptr noundef %ar, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end12.cleanup_crit_edge, %if.end4.thread.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call11, %if.end12.cleanup_crit_edge ], [ %call15, %if.then14 ], [ %call533, %if.end4.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_word) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ath6kl_bmi_reset(ptr nocapture noundef writeonly %ar) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %done_sent = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %done_sent to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %done_sent, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath6kl_bmi_init(ptr nocapture noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %max_data_size = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %max_data_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %if.end21, !prof !50

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 531, i32 noundef 9, ptr noundef null) #6
  br label %return

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %1, 12
  %max_cmd_size = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %max_cmd_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %max_cmd_size, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #9
  %cmd_buf = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 2
  %3 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i.i, ptr %cmd_buf, align 4
  %tobool30.not = icmp eq ptr %call9.i.i, null
  %. = select i1 %tobool30.not, i32 -12, i32 0
  br label %return

return:                                           ; preds = %if.end21, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %., %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath6kl_bmi_cleanup(ptr nocapture noundef %ar) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_buf = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd_buf, align 4
  tail call void @kfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %cmd_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cmd_buf, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath6kl/bmi.c", i32 29, i32 30}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath6kl/bmi.c", i32 37, i32 14}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath6kl/bmi.c", i32 51, i32 14}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath6kl/bmi.c", i32 57, i32 14}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath6kl/bmi.c", i32 70, i32 14}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath6kl/bmi.c", i32 80, i32 15}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath6kl/bmi.c", i32 90, i32 4}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath6kl/bmi.c", i32 102, i32 15}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath6kl/bmi.c", i32 108, i32 29}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath6kl/bmi.c", i32 135, i32 6}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath6kl/bmi.c", i32 153, i32 15}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath6kl/bmi.c", i32 159, i32 15}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath6kl/bmi.c", i32 196, i32 6}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath6kl/bmi.c", i32 256, i32 29}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath6kl/bmi.c", i32 303, i32 29}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath6kl/bmi.c", i32 339, i32 29}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath6kl/bmi.c", i32 383, i32 6}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath6kl/bmi.c", i32 424, i32 29}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/ath/ath6kl/bmi.c", i32 474, i32 6}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/ath/ath6kl/bmi.c", i32 485, i32 14}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i8 0, i8 2}
!50 = !{!"branch_weights", i32 1, i32 2000}
