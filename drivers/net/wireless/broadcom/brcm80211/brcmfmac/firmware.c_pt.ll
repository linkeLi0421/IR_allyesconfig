; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.brcmf_mp_global_t = type { [256 x i8] }
%struct.brcmf_fw_request = type { i16, i16, i32, ptr, [0 x %struct.brcmf_fw_item] }
%struct.brcmf_fw_item = type { ptr, i32, i16, %union.anon.128 }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.brcmf_fw = type { ptr, ptr, i32, ptr }
%struct.brcmf_firmware_mapping = type { i32, i32, ptr }
%struct.brcmf_fw_name = type { ptr, ptr }
%struct.nvram_parser = type { i32, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.firmware = type { i32, ptr, ptr }

@__func__.brcmf_fw_get_firmwares = private unnamed_addr constant [23 x i8] c"brcmf_fw_get_firmwares\00", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"enter: dev=%s\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.brcmf_fw_alloc_request = private unnamed_addr constant [23 x i8] c"brcmf_fw_alloc_request\00", align 1
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Unknown chip %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"using %s for chip %s\0A\00", [42 x i8] zeroinitializer }, align 32
@brcmf_mp_global = external dso_local global %struct.brcmf_mp_global_t, align 1
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/\00", [30 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@__func__.brcmf_fw_complete_request = private unnamed_addr constant [26 x i8] c"brcmf_fw_complete_request\00", align 1
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"firmware %s %sfound\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"not \00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown fw type: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.brcmf_fw_request_nvram_done = private unnamed_addr constant [28 x i8] c"brcmf_fw_request_nvram_done\00", align 1
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nvram %p len %d\0A\00", [47 x i8] zeroinitializer }, align 32
@nv_parser_states = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @brcmf_nvram_handle_idle, ptr @brcmf_nvram_handle_key, ptr @brcmf_nvram_handle_value, ptr @brcmf_nvram_handle_comment, ptr @brcmf_nvram_handle_end], [44 x i8] zeroinitializer }, align 32
@__func__.brcmf_nvram_handle_idle = private unnamed_addr constant [24 x i8] c"brcmf_nvram_handle_idle\00", align 1
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"warning: ln=%d:col=%d: ignoring invalid character\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RAW1\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devpath\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pcie/\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"boardrev\00", [23 x i8] zeroinitializer }, align 32
@__func__.brcmf_nvram_handle_key = private unnamed_addr constant [23 x i8] c"brcmf_nvram_handle_key\00", align 1
@.str.15 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"warning: ln=%d:col=%d: '=' expected, skip invalid key entry\0A\00", [35 x i8] zeroinitializer }, align 32
@__const.brcmf_fw_strip_multi_v1.pci_path = private unnamed_addr constant [9 x i8] c"=pci/?/?\00", align 1
@__const.brcmf_fw_strip_multi_v1.pcie_path = private unnamed_addr constant [10 x i8] c"=pcie/?/?\00", align 1
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"=pci/%d/%d\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"=pcie/%d/%d\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcie/%d/%d/\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"boardrev=0xff\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.21 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 9, i64 10, i64 13, i64 32, i64 35]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 699, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 756, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 764, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 783, i32 30 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 608, i32 20 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 573, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 587, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 558, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"nv_parser_states\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 190, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 98, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 114, i32 39 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 118, i32 39 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 120, i32 39 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 122, i32 39 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 125, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 251, i32 39 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 254, i32 41 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 331, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [63 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 362, i32 39 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @nv_parser_states, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_parser_states to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @brcmf_fw_nvram_free(ptr noundef %nvram) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %nvram) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_fw_get_firmwares(ptr noundef %dev, ptr noundef %req, ptr noundef %fw_cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %items = getelementptr inbounds %struct.brcmf_fw_request, ptr %req, i32 0, i32 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fw_get_firmwares, ptr noundef nonnull @.str, ptr noundef %retval.0.i) #12
  %tobool.not = icmp eq ptr %fw_cb, null
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %if.end

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %n_items.i = getelementptr inbounds %struct.brcmf_fw_request, ptr %req, i32 0, i32 2
  %4 = ptrtoint ptr %n_items.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_items.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i47 = icmp eq i32 %5, 0
  br i1 %tobool.not.i47, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %item.011.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %items, %if.end.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %item.011.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %item.011.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %for.body.i.cleanup_crit_edge, label %for.inc.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.012.i, 1
  %incdec.ptr.i = getelementptr %struct.brcmf_fw_item, ptr %item.011.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %if.end3, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end3:                                          ; preds = %for.inc.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 16) #15
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %call7.i.i, align 8
  %req9 = getelementptr inbounds %struct.brcmf_fw, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %req9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %req, ptr %req9, align 4
  %done = getelementptr inbounds %struct.brcmf_fw, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %fw_cb, ptr %done, align 4
  %board_type = getelementptr inbounds %struct.brcmf_fw_request, ptr %req, i32 0, i32 3
  %12 = ptrtoint ptr %board_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %board_type, align 4
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %if.end7.if.else_crit_edge, label %if.end16

if.end7.if.else_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end16:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %items, align 4
  %call15 = tail call fastcc ptr @brcm_alt_fw_path(ptr noundef %15, ptr noundef nonnull %13)
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %if.end16.if.else_crit_edge, label %if.then18

if.end16.if.else_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call7.i.i, align 8
  %call20 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull %call15, ptr noundef %17, i32 noundef 3264, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @brcmf_fw_request_done_alt_path) #12
  tail call void @kfree(ptr noundef nonnull %call15) #12
  br label %if.end24

if.else:                                          ; preds = %if.end16.if.else_crit_edge, %if.end7.if.else_crit_edge
  %18 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %items, align 4
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i, align 8
  %call23 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef %19, ptr noundef %21, i32 noundef 3264, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @brcmf_fw_request_done) #12
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then18
  %ret.0 = phi i32 [ %call20, %if.then18 ], [ %call23, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  br i1 %cmp, label %if.then25, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then25:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @brcmf_fw_request_done(ptr noundef null, ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end24.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %dev_name.exit.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ 0, %if.then25 ], [ 0, %if.end24.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc noalias ptr @brcm_alt_fw_path(ptr noundef %path, ptr noundef %board_type) unnamed_addr #0 align 64 {
entry:
  %alt_path = alloca [320 x i8], align 1
  %suffix = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %alt_path) #12
  %0 = call ptr @memset(ptr %alt_path, i32 255, i32 320)
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %suffix) #12
  %1 = call ptr @memset(ptr %suffix, i32 255, i32 5)
  %call = call i32 @strscpy(ptr noundef nonnull %alt_path, ptr noundef %path, i32 noundef 320) #12
  %call2 = call i32 @strlen(ptr noundef nonnull %alt_path) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call2)
  %cmp = icmp ult i32 %call2, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %alt_path, i32 %call2
  %add.ptr7 = getelementptr i8, ptr %add.ptr, i32 -4
  %call8 = call i32 @strscpy(ptr noundef nonnull %suffix, ptr noundef %add.ptr7, i32 noundef 5) #12
  %call10 = call i32 @strlen(ptr noundef nonnull %alt_path) #16
  %sub = add i32 %call10, -4
  %arrayidx = getelementptr [320 x i8], ptr %alt_path, i32 0, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  %call12 = call i32 @strlcat(ptr noundef nonnull %alt_path, ptr noundef nonnull @.str.4, i32 noundef 320) #12
  %call14 = call i32 @strlcat(ptr noundef nonnull %alt_path, ptr noundef %board_type, i32 noundef 320) #12
  %call17 = call i32 @strlcat(ptr noundef nonnull %alt_path, ptr noundef nonnull %suffix, i32 noundef 320) #12
  %call19 = call noalias ptr @kstrdup(ptr noundef nonnull %alt_path, i32 noundef 3264) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call19, %if.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %suffix) #12
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %alt_path) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_fw_request_done_alt_path(ptr noundef %fw, ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fw, null
  br i1 %tobool.not, label %if.end, label %entry.if.then2_crit_edge

entry.if.then2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2

if.end:                                           ; preds = %entry
  %req = getelementptr inbounds %struct.brcmf_fw, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %items = getelementptr inbounds %struct.brcmf_fw_request, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %items, align 4
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef %3, ptr noundef %5, i32 noundef 3264, ptr noundef %ctx, ptr noundef nonnull @brcmf_fw_request_done) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.if.then2_crit_edge, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then2

if.then2:                                         ; preds = %if.end.if.then2_crit_edge, %entry.if.then2_crit_edge
  tail call void @brcmf_fw_request_done(ptr noundef %fw, ptr noundef %ctx)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmf_fw_request_done(ptr noundef %fw, ptr noundef %ctx) #0 align 64 {
entry:
  %fw.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fw.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %fw, ptr %fw.addr, align 4
  %call = tail call fastcc i32 @brcmf_fw_complete_request(ptr noundef %fw, ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cond24 = icmp eq i32 %call, 0
  br i1 %cond24, label %land.rhs.lr.ph, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

land.rhs.lr.ph:                                   ; preds = %entry
  %curpos = getelementptr inbounds %struct.brcmf_fw, ptr %ctx, i32 0, i32 2
  %req = getelementptr inbounds %struct.brcmf_fw, ptr %ctx, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %brcmf_fw_request_firmware.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %1 = ptrtoint ptr %curpos to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %curpos, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %curpos, align 4
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %req, align 4
  %n_items = getelementptr inbounds %struct.brcmf_fw_request, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %n_items to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_items, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %6)
  %cmp1 = icmp ult i32 %inc, %6
  br i1 %cmp1, label %while.body, label %land.rhs.if.end_crit_edge

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.body:                                       ; preds = %land.rhs
  %arrayidx.i = getelementptr %struct.brcmf_fw_request, ptr %4, i32 0, i32 4, i32 %inc
  %type.i = getelementptr %struct.brcmf_fw_request, ptr %4, i32 0, i32 4, i32 %inc, i32 1
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp eq i32 %8, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %while.body.fallback.i_crit_edge

while.body.fallback.i_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %fallback.i

land.lhs.true.i:                                  ; preds = %while.body
  %board_type.i = getelementptr inbounds %struct.brcmf_fw_request, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %board_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %board_type.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %land.lhs.true.i.fallback.i_crit_edge, label %if.then.i

land.lhs.true.i.fallback.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fallback.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call fastcc ptr @brcm_alt_fw_path(ptr noundef %12, ptr noundef nonnull %10) #12
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %if.then.i.fallback.i_crit_edge, label %if.end.i

if.then.i.fallback.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fallback.i

if.end.i:                                         ; preds = %if.then.i
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx, align 4
  %call6.i = call i32 @request_firmware(ptr noundef nonnull %fw.addr, ptr noundef nonnull %call.i, ptr noundef %14) #12
  call void @kfree(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp eq i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end.i.brcmf_fw_request_firmware.exit_crit_edge, label %if.end.i.fallback.i_crit_edge

if.end.i.fallback.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fallback.i

if.end.i.brcmf_fw_request_firmware.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_fw_request_firmware.exit

fallback.i:                                       ; preds = %if.end.i.fallback.i_crit_edge, %if.then.i.fallback.i_crit_edge, %land.lhs.true.i.fallback.i_crit_edge, %while.body.fallback.i_crit_edge
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  %call13.i = call i32 @request_firmware(ptr noundef nonnull %fw.addr, ptr noundef %16, ptr noundef %18) #12
  br label %brcmf_fw_request_firmware.exit

brcmf_fw_request_firmware.exit:                   ; preds = %fallback.i, %if.end.i.brcmf_fw_request_firmware.exit_crit_edge
  %19 = ptrtoint ptr %fw.addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fw.addr, align 4
  %call3 = call fastcc i32 @brcmf_fw_complete_request(ptr noundef %20, ptr noundef %ctx)
  %cond = icmp eq i32 %call3, 0
  br i1 %cond, label %brcmf_fw_request_firmware.exit.land.rhs_crit_edge, label %brcmf_fw_request_firmware.exit.if.then_crit_edge

brcmf_fw_request_firmware.exit.if.then_crit_edge: ; preds = %brcmf_fw_request_firmware.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

brcmf_fw_request_firmware.exit.land.rhs_crit_edge: ; preds = %brcmf_fw_request_firmware.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

if.then:                                          ; preds = %brcmf_fw_request_firmware.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %ret.0.lcssa = phi i32 [ %call, %entry.if.then_crit_edge ], [ %call3, %brcmf_fw_request_firmware.exit.if.then_crit_edge ]
  %req4 = getelementptr inbounds %struct.brcmf_fw, ptr %ctx, i32 0, i32 1
  %21 = ptrtoint ptr %req4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req4, align 4
  %n_items.i = getelementptr inbounds %struct.brcmf_fw_request, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %n_items.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_items.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp13.not.i = icmp eq i32 %24, 0
  br i1 %cmp13.not.i, label %if.then.brcmf_fw_free_request.exit_crit_edge, label %for.body.preheader.i

if.then.brcmf_fw_free_request.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_fw_free_request.exit

for.body.preheader.i:                             ; preds = %if.then
  %items.i = getelementptr inbounds %struct.brcmf_fw_request, ptr %22, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.016.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %item.014.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %items.i, %for.body.preheader.i ]
  %type.i19 = getelementptr inbounds %struct.brcmf_fw_item, ptr %item.014.i, i32 0, i32 1
  %25 = ptrtoint ptr %type.i19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type.i19, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %26, label %for.body.i.for.inc.i_crit_edge [
    i32 0, label %if.then.i20
    i32 1, label %if.then4.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i20:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = getelementptr inbounds %struct.brcmf_fw_item, ptr %item.014.i, i32 0, i32 3
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  call void @release_firmware(ptr noundef %30) #12
  br label %for.inc.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = getelementptr inbounds %struct.brcmf_fw_item, ptr %item.014.i, i32 0, i32 3
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  call void @kfree(ptr noundef %33) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %if.then.i20, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.016.i, 1
  %incdec.ptr.i = getelementptr %struct.brcmf_fw_item, ptr %item.014.i, i32 1
  %34 = ptrtoint ptr %n_items.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n_items.i, align 4
  %cmp.i21 = icmp ult i32 %inc.i, %35
  br i1 %cmp.i21, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.brcmf_fw_free_request.exit_crit_edge

for.inc.i.brcmf_fw_free_request.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_fw_free_request.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

brcmf_fw_free_request.exit:                       ; preds = %for.inc.i.brcmf_fw_free_request.exit_crit_edge, %if.then.brcmf_fw_free_request.exit_crit_edge
  call void @kfree(ptr noundef %22) #12
  %36 = ptrtoint ptr %req4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %req4, align 4
  br label %if.end

if.end:                                           ; preds = %brcmf_fw_free_request.exit, %land.rhs.if.end_crit_edge
  %ret.023 = phi i32 [ %ret.0.lcssa, %brcmf_fw_free_request.exit ], [ 0, %land.rhs.if.end_crit_edge ]
  %done = getelementptr inbounds %struct.brcmf_fw, ptr %ctx, i32 0, i32 3
  %37 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %done, align 4
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx, align 4
  %req6 = getelementptr inbounds %struct.brcmf_fw, ptr %ctx, i32 0, i32 1
  %41 = ptrtoint ptr %req6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %req6, align 4
  call void %38(ptr noundef %40, i32 noundef %ret.023, ptr noundef %42) #12
  call void @kfree(ptr noundef %ctx) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @brcmf_fw_alloc_request(i32 noundef %chip, i32 noundef %chiprev, ptr nocapture noundef readonly %mapping_table, i32 noundef %table_size, ptr nocapture noundef readonly %fwnames, i32 noundef %n_fwnames) local_unnamed_addr #0 align 64 {
entry:
  %chipname = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %chipname) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %table_size)
  %cmp108.not = icmp eq i32 %table_size, 0
  %0 = call ptr @memset(ptr %chipname, i32 255, i32 12)
  br i1 %cmp108.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %shl = shl nuw i32 1, %chiprev
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0109 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.brcmf_firmware_mapping, ptr %mapping_table, i32 %i.0109
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %chip)
  %cmp1 = icmp eq i32 %2, %chip
  br i1 %cmp1, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %revmask = getelementptr %struct.brcmf_firmware_mapping, ptr %mapping_table, i32 %i.0109, i32 1
  %3 = ptrtoint ptr %revmask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %revmask, align 4
  %and = and i32 %4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0109, 1
  %exitcond.not = icmp eq i32 %inc, %table_size
  br i1 %exitcond.not, label %for.end.thread, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end.thread:                                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %call116 = call ptr @brcmf_chip_name(i32 noundef %chip, i32 noundef %chiprev, ptr noundef nonnull %chipname, i32 noundef 12) #12
  br label %do.body

for.end:                                          ; preds = %land.lhs.true.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.0109, %land.lhs.true.for.end_crit_edge ]
  %call = call ptr @brcmf_chip_name(i32 noundef %chip, i32 noundef %chiprev, ptr noundef nonnull %chipname, i32 noundef 12) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %table_size)
  %cmp3 = icmp eq i32 %i.0.lcssa, %table_size
  br i1 %cmp3, label %for.end.do.body_crit_edge, label %if.end8.i.i

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %for.end.thread
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fw_alloc_request, ptr noundef nonnull @.str.1, ptr noundef nonnull %chipname) #12
  br label %cleanup

if.end8.i.i:                                      ; preds = %for.end
  %5 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n_fwnames, i32 20) #12
  %6 = extractvalue { i32, i1 } %5, 1
  %7 = extractvalue { i32, i1 } %5, 0
  %8 = add nuw i32 %7, 12
  %retval.0.i = select i1 %6, i32 -1, i32 %8
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #17
  %tobool9.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool9.not, label %if.end8.i.i.cleanup_crit_edge, label %do.body12

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body12:                                        ; preds = %if.end8.i.i
  %fw_base = getelementptr %struct.brcmf_firmware_mapping, ptr %mapping_table, i32 %i.0.lcssa, i32 2
  %9 = ptrtoint ptr %fw_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw_base, align 4
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fw_alloc_request, ptr noundef nonnull @.str.2, ptr noundef %10, ptr noundef nonnull %chipname) #12
  %call17 = call i32 @strnlen(ptr noundef nonnull @brcmf_mp_global, i32 noundef 256) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body12.if.end21_crit_edge, label %if.then19

do.body12.if.end21_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then19:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add i32 %call17, -1
  %arrayidx20 = getelementptr i8, ptr @brcmf_mp_global, i32 %sub
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx20, align 1
  %phi.cast = zext i8 %12 to i32
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %do.body12.if.end21_crit_edge
  %end.0 = phi i32 [ %phi.cast, %if.then19 ], [ 0, %do.body12.if.end21_crit_edge ]
  %n_items = getelementptr inbounds %struct.brcmf_fw_request, ptr %call9.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %n_items to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %n_fwnames, ptr %n_items, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_fwnames)
  %cmp23112.not = icmp eq i32 %n_fwnames, 0
  br i1 %cmp23112.not, label %if.end21.cleanup_crit_edge, label %for.body24.lr.ph

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body24.lr.ph:                                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %end.0)
  %cmp38.not = icmp eq i32 %end.0, 47
  br label %for.body24

for.body24:                                       ; preds = %if.end45.for.body24_crit_edge, %for.body24.lr.ph
  %j.0113 = phi i32 [ 0, %for.body24.lr.ph ], [ %inc61, %if.end45.for.body24_crit_edge ]
  %arrayidx25 = getelementptr %struct.brcmf_fw_name, ptr %fwnames, i32 %j.0113
  %path = getelementptr %struct.brcmf_fw_name, ptr %fwnames, i32 %j.0113, i32 1
  %14 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %path, align 4
  %arrayidx26 = getelementptr %struct.brcmf_fw_request, ptr %call9.i.i, i32 0, i32 4, i32 %j.0113
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %arrayidx26, align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %15, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @brcmf_mp_global to i32))
  %18 = load i8, ptr @brcmf_mp_global, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp31.not = icmp eq i8 %18, 0
  br i1 %cmp31.not, label %for.body24.if.end45_crit_edge, label %if.then33

for.body24.if.end45_crit_edge:                    ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then33:                                        ; preds = %for.body24
  %19 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %path, align 4
  %call36 = call i32 @strlcpy(ptr noundef %20, ptr noundef nonnull @brcmf_mp_global, i32 noundef 320) #12
  br i1 %cmp38.not, label %if.then33.if.end45_crit_edge, label %if.then40

if.then33.if.end45_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then40:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %path, align 4
  %call43 = call i32 @strlcat(ptr noundef %22, ptr noundef nonnull @.str.3, i32 noundef 320) #12
  br label %if.end45

if.end45:                                         ; preds = %if.then40, %if.then33.if.end45_crit_edge, %for.body24.if.end45_crit_edge
  %23 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %path, align 4
  %25 = ptrtoint ptr %fw_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fw_base, align 4
  %call50 = call i32 @strlcat(ptr noundef %24, ptr noundef %26, i32 noundef 320) #12
  %27 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %path, align 4
  %29 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx25, align 4
  %call54 = call i32 @strlcat(ptr noundef %28, ptr noundef %30, i32 noundef 320) #12
  %31 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %path, align 4
  %33 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %arrayidx26, align 4
  %inc61 = add nuw i32 %j.0113, 1
  %exitcond114.not = icmp eq i32 %inc61, %n_fwnames
  br i1 %exitcond114.not, label %if.end45.cleanup_crit_edge, label %if.end45.for.body24_crit_edge

if.end45.for.body24_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body24

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end45.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %do.body
  %retval.0 = phi ptr [ null, %do.body ], [ null, %if.end8.i.i.cleanup_crit_edge ], [ %call9.i.i, %if.end21.cleanup_crit_edge ], [ %call9.i.i, %if.end45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %chipname) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @brcmf_chip_name(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_fw_complete_request(ptr noundef %fw, ptr nocapture noundef readonly %fwctx) unnamed_addr #0 align 64 {
entry:
  %prefix.i.i.i = alloca [10 x i8], align 1
  %pci_path.i.i.i = alloca [9 x i8], align 1
  %pcie_path.i.i.i = alloca [10 x i8], align 1
  %nvp.i.i = alloca %struct.nvram_parser, align 4
  %data_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.brcmf_fw, ptr %fwctx, i32 0, i32 1
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 4
  %curpos = getelementptr inbounds %struct.brcmf_fw, ptr %fwctx, i32 0, i32 2
  %2 = ptrtoint ptr %curpos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curpos, align 4
  %arrayidx = getelementptr %struct.brcmf_fw_request, ptr %1, i32 0, i32 4, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %fw, null
  %cond = select i1 %tobool.not, ptr @.str.7, ptr @.str.6
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fw_complete_request, ptr noundef nonnull @.str.5, ptr noundef %5, ptr noundef nonnull %cond) #12
  %type = getelementptr %struct.brcmf_fw_request, ptr %1, i32 0, i32 4, i32 %3, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %7, label %do.body3 [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_len.i) #12
  %9 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %data_len.i, align 4, !annotation !56
  %10 = ptrtoint ptr %fwctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fwctx, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sw.bb.dev_name.exit.i_crit_edge

sw.bb.dev_name.exit.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %sw.bb.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %sw.bb.dev_name.exit.i_crit_edge ]
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fw_request_nvram_done, ptr noundef nonnull @.str, ptr noundef %retval.0.i.i) #12
  %16 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %req, align 4
  %18 = ptrtoint ptr %curpos to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %curpos, align 4
  br i1 %tobool.not, label %dev_name.exit.i.if.else.i_crit_edge, label %land.lhs.true.i

dev_name.exit.i.if.else.i_crit_edge:              ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %dev_name.exit.i
  %data1.i = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %20 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data1.i, align 4
  %tobool2.not.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fw, align 4
  %24 = ptrtoint ptr %data_len.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %data_len.i, align 4
  br label %if.then18.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %dev_name.exit.i.if.else.i_crit_edge
  %call4.i = call ptr @bcm47xx_nvram_get_contents(ptr noundef nonnull %data_len.i) #12
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.else7.i, label %if.else.i.if.then18.i_crit_edge

if.else.i.if.then18.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then18.i

if.else7.i:                                       ; preds = %if.else.i
  %flags.i = getelementptr %struct.brcmf_fw_request, ptr %17, i32 0, i32 4, i32 %19, i32 2
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %flags.i, align 4
  %27 = and i16 %26, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool12.not.i = icmp eq i16 %27, 0
  br i1 %tobool12.not.i, label %if.else7.i.brcmf_fw_request_nvram_done.exit_crit_edge, label %if.end28.thread.i

if.else7.i.brcmf_fw_request_nvram_done.exit_crit_edge: ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_fw_request_nvram_done.exit

if.end28.thread.i:                                ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @release_firmware(ptr noundef %fw) #12
  br label %land.lhs.true30.i

if.then18.i:                                      ; preds = %if.else.i.if.then18.i_crit_edge, %if.then.i
  %free_bcm47xx_nvram.0.off0.ph.i = phi i1 [ true, %if.else.i.if.then18.i_crit_edge ], [ false, %if.then.i ]
  %data.0.ph.i = phi ptr [ %call4.i, %if.else.i.if.then18.i_crit_edge ], [ %21, %if.then.i ]
  %28 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_len.i, align 4
  %30 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %req, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %31, align 4
  %bus_nr.i = getelementptr inbounds %struct.brcmf_fw_request, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %bus_nr.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %bus_nr.i, align 2
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %nvp.i.i) #12
  %36 = call ptr @memset(ptr %nvp.i.i, i32 0, i32 36)
  %data1.i.i.i = getelementptr inbounds %struct.nvram_parser, ptr %nvp.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %data1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %data.0.ph.i, ptr %data1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %29)
  %cmp.i.i.i = icmp ugt i32 %29, 64000
  %phi.bo.i.i.i = add i32 %29, 8
  %size.0.i.i.i = select i1 %cmp.i.i.i, i32 64008, i32 %phi.bo.i.i.i
  %call9.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %size.0.i.i.i, i32 noundef 3520) #17
  %nvram.i.i.i = getelementptr inbounds %struct.nvram_parser, ptr %nvp.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %nvram.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call9.i.i.i.i.i, ptr %nvram.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then18.i.if.end22.i_crit_edge, label %brcmf_init_nvram_parser.exit.i.i

if.then18.i.if.end22.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

brcmf_init_nvram_parser.exit.i.i:                 ; preds = %if.then18.i
  %line.i.i.i = getelementptr inbounds %struct.nvram_parser, ptr %nvp.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %line.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %line.i.i.i, align 4
  %column.i.i.i = getelementptr inbounds %struct.nvram_parser, ptr %nvp.i.i, i32 0, i32 5
  %40 = ptrtoint ptr %column.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %column.i.i.i, align 4
  %pos.i.i = getelementptr inbounds %struct.nvram_parser, ptr %nvp.i.i, i32 0, i32 6
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %brcmf_init_nvram_parser.exit.i.i
  %41 = ptrtoint ptr %pos.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pos.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %29)
  %cmp1.i.i = icmp ult i32 %42, %29
  br i1 %cmp1.i.i, label %while.body.i.i, label %while.cond.i.i.while.end.i.i_crit_edge

while.cond.i.i.while.end.i.i_crit_edge:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %43 = ptrtoint ptr %nvp.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nvp.i.i, align 4
  %arrayidx.i.i = getelementptr [5 x ptr], ptr @nv_parser_states, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i, align 4
  %call2.i.i = call i32 %46(ptr noundef nonnull %nvp.i.i) #12
  %47 = ptrtoint ptr %nvp.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call2.i.i, ptr %nvp.i.i, align 4
  %cmp5.i.i = icmp eq i32 %call2.i.i, 4
  br i1 %cmp5.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %while.cond.i.i.while.end.i.i_crit_edge
  %multi_dev_v1.i.i = getelementptr inbounds %struct.nvram_parser, ptr %nvp.i.i, i32 0, i32 8
  %48 = ptrtoint ptr %multi_dev_v1.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %multi_dev_v1.i.i, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i64.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i64.i, label %if.else.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %while.end.i.i
  %boardrev_found.i.i = getelementptr inbounds %struct.nvram_parser, ptr %nvp.i.i, i32 0, i32 10
  %50 = ptrtoint ptr %boardrev_found.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %boardrev_found.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %pci_path.i.i.i) #12
  %51 = call ptr @memcpy(ptr %pci_path.i.i.i, ptr @__const.brcmf_fw_strip_multi_v1.pci_path, i32 9)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %pcie_path.i.i.i) #12
  %52 = call ptr @memcpy(ptr %pcie_path.i.i.i, ptr @__const.brcmf_fw_strip_multi_v1.pcie_path, i32 10)
  %nvram_len.i.i.i = getelementptr inbounds %struct.nvram_parser, ptr %nvp.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %nvram_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nvram_len.i.i.i, align 4
  %add2.i.i.i = add i32 %54, 8
  %call9.i.i.i72.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add2.i.i.i, i32 noundef 3520) #17
  %tobool.not.i75.i.i = icmp eq ptr %call9.i.i.i72.i.i, null
  br i1 %tobool.not.i75.i.i, label %if.then8.i.i.fail.i.i.i_crit_edge, label %if.end.i.i.i

if.then8.i.i.fail.i.i.i_crit_edge:                ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i.i.i

if.end.i.i.i:                                     ; preds = %if.then8.i.i
  %55 = ptrtoint ptr %nvram_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nvram_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %56)
  %cmp.i77.i.i = icmp ult i32 %56, 25
  br i1 %cmp.i77.i.i, label %if.end.i.i.i.fail.i.i.i_crit_edge, label %if.end5.i.i.i

if.end.i.i.i.fail.i.i.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  %conv.i.i.i = zext i16 %33 to i32
  %conv6.i.i.i = zext i16 %35 to i32
  %call7.i.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pci_path.i.i.i, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef %conv.i.i.i, i32 noundef %conv6.i.i.i) #12
  %call9.i.i.i = call i32 @strlen(ptr noundef nonnull %pci_path.i.i.i) #18
  %call13.i.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pcie_path.i.i.i, i32 noundef 10, ptr noundef nonnull @.str.17, i32 noundef %conv.i.i.i, i32 noundef %conv6.i.i.i) #12
  %call15.i.i.i = call i32 @strlen(ptr noundef nonnull %pcie_path.i.i.i) #18
  %57 = ptrtoint ptr %nvram_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nvram_len.i.i.i, align 4
  %sub.i.i.i = add i32 %58, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp17175.not.i.i.i = icmp eq i32 %sub.i.i.i, 0
  br i1 %cmp17175.not.i.i.i, label %if.end5.i.i.i.fail.i.i.i_crit_edge, label %while.body.lr.ph.i.i.i

if.end5.i.i.i.fail.i.i.i_crit_edge:               ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i.i.i

while.body.lr.ph.i.i.i:                           ; preds = %if.end5.i.i.i
  %59 = ptrtoint ptr %nvram.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %nvram.i.i.i, align 4
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.end.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %i.0176.i.i.i = phi i32 [ 0, %while.body.lr.ph.i.i.i ], [ %inc.i.i.i, %while.end.i.i.i.while.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr i8, ptr %60, i32 %i.0176.i.i.i
  %call20.i.i.i = call i32 @strncmp(ptr noundef %arrayidx.i.i.i, ptr noundef nonnull dereferenceable(8) @.str.12, i32 noundef 7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i.i)
  %cmp21.i.i.i = icmp eq i32 %call20.i.i.i, 0
  br i1 %cmp21.i.i.i, label %land.lhs.true.i.i.i, label %while.body.i.i.i.while.cond43.i.i.i.preheader_crit_edge

while.body.i.i.i.while.cond43.i.i.i.preheader_crit_edge: ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond43.i.i.i.preheader

land.lhs.true.i.i.i:                              ; preds = %while.body.i.i.i
  %add24.i.i.i = add i32 %i.0176.i.i.i, 8
  %arrayidx25.i.i.i = getelementptr i8, ptr %60, i32 %add24.i.i.i
  %call27.i.i.i = call i32 @strncmp(ptr noundef %arrayidx25.i.i.i, ptr noundef nonnull %pci_path.i.i.i, i32 noundef %call9.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %land.lhs.true.i.i.i.while.end51.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

land.lhs.true.i.i.i.while.end51.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end51.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true.i.i.i
  %call33.i.i.i = call i32 @strncmp(ptr noundef %arrayidx25.i.i.i, ptr noundef nonnull %pcie_path.i.i.i, i32 noundef %call15.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i.i)
  %tobool34.not.i.i.i = icmp eq i32 %call33.i.i.i, 0
  br i1 %tobool34.not.i.i.i, label %lor.lhs.false.i.i.i.while.end51.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.while.cond43.i.i.i.preheader_crit_edge

lor.lhs.false.i.i.i.while.cond43.i.i.i.preheader_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond43.i.i.i.preheader

lor.lhs.false.i.i.i.while.end51.i.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end51.i.i.i

while.cond43.i.i.i.preheader:                     ; preds = %lor.lhs.false.i.i.i.while.cond43.i.i.i.preheader_crit_edge, %while.body.i.i.i.while.cond43.i.i.i.preheader_crit_edge
  br label %while.cond43.i.i.i

while.cond43.i.i.i:                               ; preds = %while.cond43.i.i.i.while.cond43.i.i.i_crit_edge, %while.cond43.i.i.i.preheader
  %i.1.i.i.i = phi i32 [ %inc.i.i.i, %while.cond43.i.i.i.while.cond43.i.i.i_crit_edge ], [ %i.0176.i.i.i, %while.cond43.i.i.i.preheader ]
  %arrayidx45.i.i.i = getelementptr i8, ptr %60, i32 %i.1.i.i.i
  %61 = ptrtoint ptr %arrayidx45.i.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx45.i.i.i, align 1
  %cmp47.not.i.i.i = icmp eq i8 %62, 0
  %inc.i.i.i = add i32 %i.1.i.i.i, 1
  br i1 %cmp47.not.i.i.i, label %while.end.i.i.i, label %while.cond43.i.i.i.while.cond43.i.i.i_crit_edge

while.cond43.i.i.i.while.cond43.i.i.i_crit_edge:  ; preds = %while.cond43.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond43.i.i.i

while.end.i.i.i:                                  ; preds = %while.cond43.i.i.i
  %cmp17.i.i.i = icmp ult i32 %inc.i.i.i, %sub.i.i.i
  br i1 %cmp17.i.i.i, label %while.end.i.i.i.while.body.i.i.i_crit_edge, label %while.end.i.i.i.fail.i.i.i_crit_edge

while.end.i.i.i.fail.i.i.i_crit_edge:             ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail.i.i.i

while.end.i.i.i.while.body.i.i.i_crit_edge:       ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i

while.end51.i.i.i:                                ; preds = %lor.lhs.false.i.i.i.while.end51.i.i.i_crit_edge, %land.lhs.true.i.i.i.while.end51.i.i.i_crit_edge
  %add37.i.i.i = add i32 %i.0176.i.i.i, 7
  %arrayidx38.i.i.i = getelementptr i8, ptr %60, i32 %add37.i.i.i
  %63 = ptrtoint ptr %arrayidx38.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx38.i.i.i, align 1
  %65 = add i8 %64, -48
  %phi.cast.i.i.i = zext i8 %65 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp57183.not.i.i.i = icmp eq i32 %58, 0
  br i1 %cmp57183.not.i.i.i, label %while.end51.i.i.i.while.end109.i.i.i_crit_edge, label %while.body59.i.i.i.preheader

while.end51.i.i.i.while.end109.i.i.i_crit_edge:   ; preds = %while.end51.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end109.i.i.i

while.body59.i.i.i.preheader:                     ; preds = %while.end51.i.i.i
  %66 = ptrtoint ptr %nvram.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %nvram.i.i.i, align 4
  %68 = load ptr, ptr %nvram.i.i.i, align 4
  %69 = ptrtoint ptr %nvram_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nvram_len.i.i.i, align 4
  br label %while.body59.i.i.i

while.body59.i.i.i:                               ; preds = %while.end107.i.i.i.while.body59.i.i.i_crit_edge, %while.body59.i.i.i.preheader
  %j.0185.i.i.i = phi i32 [ %j.2.i.i.i, %while.end107.i.i.i.while.body59.i.i.i_crit_edge ], [ 0, %while.body59.i.i.i.preheader ]
  %i.2184.i.i.i = phi i32 [ %inc106.i.i.i, %while.end107.i.i.i.while.body59.i.i.i_crit_edge ], [ 0, %while.body59.i.i.i.preheader ]
  %arrayidx61.i.i.i = getelementptr i8, ptr %67, i32 %i.2184.i.i.i
  %71 = ptrtoint ptr %arrayidx61.i.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx61.i.i.i, align 1
  %conv62.i.i.i = zext i8 %72 to i32
  %sub63.i.i.i = add nsw i32 %conv62.i.i.i, -48
  call void @__sanitizer_cov_trace_cmp4(i32 %sub63.i.i.i, i32 %phi.cast.i.i.i)
  %cmp65.i.i.i = icmp eq i32 %sub63.i.i.i, %phi.cast.i.i.i
  br i1 %cmp65.i.i.i, label %land.lhs.true67.i.i.i, label %while.body59.i.i.i.if.end98.i.i.i_crit_edge

while.body59.i.i.i.if.end98.i.i.i_crit_edge:      ; preds = %while.body59.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98.i.i.i

land.lhs.true67.i.i.i:                            ; preds = %while.body59.i.i.i
  %add69.i.i.i = add nuw i32 %i.2184.i.i.i, 1
  %arrayidx70.i.i.i = getelementptr i8, ptr %67, i32 %add69.i.i.i
  %73 = ptrtoint ptr %arrayidx70.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx70.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %74)
  %cmp72.i.i.i = icmp eq i8 %74, 58
  br i1 %cmp72.i.i.i, label %if.then74.i.i.i, label %land.lhs.true67.i.i.i.if.end98.i.i.i_crit_edge

land.lhs.true67.i.i.i.if.end98.i.i.i_crit_edge:   ; preds = %land.lhs.true67.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98.i.i.i

if.then74.i.i.i:                                  ; preds = %land.lhs.true67.i.i.i
  %add75.i.i.i = add i32 %i.2184.i.i.i, 2
  %arrayidx77.i.i.i = getelementptr i8, ptr %67, i32 %add75.i.i.i
  %call78.i.i.i = call i32 @strncmp(ptr noundef %arrayidx77.i.i.i, ptr noundef nonnull dereferenceable(9) @.str.14, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i.i.i)
  %cmp79.i.i.i = icmp eq i32 %call78.i.i.i, 0
  br i1 %cmp79.i.i.i, label %if.then81.i.i.i, label %if.then74.i.i.i.if.end82.i.i.i_crit_edge

if.then74.i.i.i.if.end82.i.i.i_crit_edge:         ; preds = %if.then74.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82.i.i.i

if.then81.i.i.i:                                  ; preds = %if.then74.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %75 = ptrtoint ptr %boardrev_found.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %boardrev_found.i.i, align 2
  br label %if.end82.i.i.i

if.end82.i.i.i:                                   ; preds = %if.then81.i.i.i, %if.then74.i.i.i.if.end82.i.i.i_crit_edge
  %76 = ptrtoint ptr %arrayidx77.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx77.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp87.not179.i.i.i = icmp eq i8 %77, 0
  br i1 %cmp87.not179.i.i.i, label %if.end82.i.i.i.while.end95.i.i.i_crit_edge, label %while.body89.i.i.i.preheader

if.end82.i.i.i.while.end95.i.i.i_crit_edge:       ; preds = %if.end82.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end95.i.i.i

while.body89.i.i.i.preheader:                     ; preds = %if.end82.i.i.i
  %78 = ptrtoint ptr %nvram.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %nvram.i.i.i, align 4
  br label %while.body89.i.i.i

while.body89.i.i.i:                               ; preds = %while.body89.i.i.i.while.body89.i.i.i_crit_edge, %while.body89.i.i.i.preheader
  %80 = phi i8 [ %83, %while.body89.i.i.i.while.body89.i.i.i_crit_edge ], [ %77, %while.body89.i.i.i.preheader ]
  %j.1181.i.i.i = phi i32 [ %inc94.i.i.i, %while.body89.i.i.i.while.body89.i.i.i_crit_edge ], [ %j.0185.i.i.i, %while.body89.i.i.i.preheader ]
  %i.3180.i.i.i = phi i32 [ %inc93.i.i.i, %while.body89.i.i.i.while.body89.i.i.i_crit_edge ], [ %add75.i.i.i, %while.body89.i.i.i.preheader ]
  %arrayidx92.i.i.i = getelementptr i8, ptr %call9.i.i.i72.i.i, i32 %j.1181.i.i.i
  %81 = ptrtoint ptr %arrayidx92.i.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx92.i.i.i, align 1
  %inc93.i.i.i = add i32 %i.3180.i.i.i, 1
  %inc94.i.i.i = add i32 %j.1181.i.i.i, 1
  %arrayidx85.i.i.i = getelementptr i8, ptr %79, i32 %inc93.i.i.i
  %82 = ptrtoint ptr %arrayidx85.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx85.i.i.i, align 1
  %cmp87.not.i.i.i = icmp eq i8 %83, 0
  br i1 %cmp87.not.i.i.i, label %while.body89.i.i.i.while.end95.i.i.i_crit_edge, label %while.body89.i.i.i.while.body89.i.i.i_crit_edge

while.body89.i.i.i.while.body89.i.i.i_crit_edge:  ; preds = %while.body89.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body89.i.i.i

while.body89.i.i.i.while.end95.i.i.i_crit_edge:   ; preds = %while.body89.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end95.i.i.i

while.end95.i.i.i:                                ; preds = %while.body89.i.i.i.while.end95.i.i.i_crit_edge, %if.end82.i.i.i.while.end95.i.i.i_crit_edge
  %i.3.lcssa.i.i.i = phi i32 [ %add75.i.i.i, %if.end82.i.i.i.while.end95.i.i.i_crit_edge ], [ %inc93.i.i.i, %while.body89.i.i.i.while.end95.i.i.i_crit_edge ]
  %j.1.lcssa.i.i.i = phi i32 [ %j.0185.i.i.i, %if.end82.i.i.i.while.end95.i.i.i_crit_edge ], [ %inc94.i.i.i, %while.body89.i.i.i.while.end95.i.i.i_crit_edge ]
  %arrayidx96.i.i.i = getelementptr i8, ptr %call9.i.i.i72.i.i, i32 %j.1.lcssa.i.i.i
  %84 = ptrtoint ptr %arrayidx96.i.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %arrayidx96.i.i.i, align 1
  %inc97.i.i.i = add i32 %j.1.lcssa.i.i.i, 1
  br label %if.end98.i.i.i

if.end98.i.i.i:                                   ; preds = %while.end95.i.i.i, %land.lhs.true67.i.i.i.if.end98.i.i.i_crit_edge, %while.body59.i.i.i.if.end98.i.i.i_crit_edge
  %i.4.i.i.i = phi i32 [ %i.3.lcssa.i.i.i, %while.end95.i.i.i ], [ %i.2184.i.i.i, %land.lhs.true67.i.i.i.if.end98.i.i.i_crit_edge ], [ %i.2184.i.i.i, %while.body59.i.i.i.if.end98.i.i.i_crit_edge ]
  %j.2.i.i.i = phi i32 [ %inc97.i.i.i, %while.end95.i.i.i ], [ %j.0185.i.i.i, %land.lhs.true67.i.i.i.if.end98.i.i.i_crit_edge ], [ %j.0185.i.i.i, %while.body59.i.i.i.if.end98.i.i.i_crit_edge ]
  br label %while.cond99.i.i.i

while.cond99.i.i.i:                               ; preds = %while.cond99.i.i.i.while.cond99.i.i.i_crit_edge, %if.end98.i.i.i
  %i.5.i.i.i = phi i32 [ %i.4.i.i.i, %if.end98.i.i.i ], [ %inc106.i.i.i, %while.cond99.i.i.i.while.cond99.i.i.i_crit_edge ]
  %arrayidx101.i.i.i = getelementptr i8, ptr %68, i32 %i.5.i.i.i
  %85 = ptrtoint ptr %arrayidx101.i.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx101.i.i.i, align 1
  %cmp103.not.i.i.i = icmp eq i8 %86, 0
  %inc106.i.i.i = add i32 %i.5.i.i.i, 1
  br i1 %cmp103.not.i.i.i, label %while.end107.i.i.i, label %while.cond99.i.i.i.while.cond99.i.i.i_crit_edge

while.cond99.i.i.i.while.cond99.i.i.i_crit_edge:  ; preds = %while.cond99.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond99.i.i.i

while.end107.i.i.i:                               ; preds = %while.cond99.i.i.i
  %cmp57.i.i.i = icmp ult i32 %inc106.i.i.i, %70
  br i1 %cmp57.i.i.i, label %while.end107.i.i.i.while.body59.i.i.i_crit_edge, label %while.end107.i.i.i.while.end109.i.i.i_crit_edge

while.end107.i.i.i.while.end109.i.i.i_crit_edge:  ; preds = %while.end107.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end109.i.i.i

while.end107.i.i.i.while.body59.i.i.i_crit_edge:  ; preds = %while.end107.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body59.i.i.i

while.end109.i.i.i:                               ; preds = %while.end107.i.i.i.while.end109.i.i.i_crit_edge, %while.end51.i.i.i.while.end109.i.i.i_crit_edge
  %j.0.lcssa.i.i.i = phi i32 [ 0, %while.end51.i.i.i.while.end109.i.i.i_crit_edge ], [ %j.2.i.i.i, %while.end107.i.i.i.while.end109.i.i.i_crit_edge ]
  %87 = ptrtoint ptr %nvram.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %nvram.i.i.i, align 4
  call void @kfree(ptr noundef %88) #12
  %89 = ptrtoint ptr %nvram.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call9.i.i.i72.i.i, ptr %nvram.i.i.i, align 4
  br label %brcmf_fw_strip_multi_v1.exit.i.i

fail.i.i.i:                                       ; preds = %while.end.i.i.i.fail.i.i.i_crit_edge, %if.end5.i.i.i.fail.i.i.i_crit_edge, %if.end.i.i.i.fail.i.i.i_crit_edge, %if.then8.i.i.fail.i.i.i_crit_edge
  %retval.1.i.i172.i.i.i = phi ptr [ %call9.i.i.i72.i.i, %if.end.i.i.i.fail.i.i.i_crit_edge ], [ null, %if.then8.i.i.fail.i.i.i_crit_edge ], [ %call9.i.i.i72.i.i, %if.end5.i.i.i.fail.i.i.i_crit_edge ], [ %call9.i.i.i72.i.i, %while.end.i.i.i.fail.i.i.i_crit_edge ]
  call void @kfree(ptr noundef %retval.1.i.i172.i.i.i) #12
  br label %brcmf_fw_strip_multi_v1.exit.i.i

brcmf_fw_strip_multi_v1.exit.i.i:                 ; preds = %fail.i.i.i, %while.end109.i.i.i
  %storemerge.i.i.i = phi i32 [ 0, %fail.i.i.i ], [ %j.0.lcssa.i.i.i, %while.end109.i.i.i ]
  %90 = ptrtoint ptr %nvram_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %storemerge.i.i.i, ptr %nvram_len.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %pcie_path.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %pci_path.i.i.i) #12
  br label %if.end13.i.i

if.else.i.i:                                      ; preds = %while.end.i.i
  %multi_dev_v2.i.i = getelementptr inbounds %struct.nvram_parser, ptr %nvp.i.i, i32 0, i32 9
  %91 = ptrtoint ptr %multi_dev_v2.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %multi_dev_v2.i.i, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool9.not.i.i = icmp eq i8 %92, 0
  br i1 %tobool9.not.i.i, label %if.else.i.i.if.end13.i.i_crit_edge, label %if.then10.i.i

if.else.i.i.if.end13.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i

if.then10.i.i:                                    ; preds = %if.else.i.i
  %boardrev_found11.i.i = getelementptr inbounds %struct.nvram_parser, ptr %nvp.i.i, i32 0, i32 10
  %93 = ptrtoint ptr %boardrev_found11.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %boardrev_found11.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %prefix.i.i.i) #12
  %nvram_len.i78.i.i = getelementptr inbounds %struct.nvram_parser, ptr %nvp.i.i, i32 0, i32 3
  %94 = call ptr @memset(ptr %prefix.i.i.i, i32 255, i32 10)
  %95 = ptrtoint ptr %nvram_len.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %nvram_len.i78.i.i, align 4
  %add2.i79.i.i = add i32 %96, 8
  %call9.i.i.i105.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add2.i79.i.i, i32 noundef 3520) #17
  %tobool.not.i108.i.i = icmp eq ptr %call9.i.i.i105.i.i, null
  br i1 %tobool.not.i108.i.i, label %if.then10.i.i.brcmf_fw_strip_multi_v2.exit.i.i_crit_edge, label %if.end.i112.i.i

if.then10.i.i.brcmf_fw_strip_multi_v2.exit.i.i_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_fw_strip_multi_v2.exit.i.i

if.end.i112.i.i:                                  ; preds = %if.then10.i.i
  %conv.i110.i.i = zext i16 %33 to i32
  %conv4.i.i.i = zext i16 %35 to i32
  %call5.i.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %prefix.i.i.i, i32 noundef 10, ptr noundef nonnull @.str.18, i32 noundef %conv.i110.i.i, i32 noundef %conv4.i.i.i) #12
  %call7.i111.i.i = call i32 @strlen(ptr noundef nonnull %prefix.i.i.i) #18
  %97 = ptrtoint ptr %nvram_len.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %nvram_len.i78.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %call7.i111.i.i)
  %cmp94.not.i.i.i = icmp eq i32 %98, %call7.i111.i.i
  br i1 %cmp94.not.i.i.i, label %if.end.i112.i.i.while.end48.i.i.i_crit_edge, label %while.body.i116.i.i.preheader

if.end.i112.i.i.while.end48.i.i.i_crit_edge:      ; preds = %if.end.i112.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end48.i.i.i

while.body.i116.i.i.preheader:                    ; preds = %if.end.i112.i.i
  %99 = ptrtoint ptr %nvram.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %nvram.i.i.i, align 4
  %101 = load ptr, ptr %nvram.i.i.i, align 4
  %102 = ptrtoint ptr %nvram_len.i78.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %nvram_len.i78.i.i, align 4
  %sub.i121.i.i = sub i32 %103, %call7.i111.i.i
  br label %while.body.i116.i.i

while.body.i116.i.i:                              ; preds = %while.end46.i.i.i.while.body.i116.i.i_crit_edge, %while.body.i116.i.i.preheader
  %j.096.i.i.i = phi i32 [ %j.2.i120.i.i, %while.end46.i.i.i.while.body.i116.i.i_crit_edge ], [ 0, %while.body.i116.i.i.preheader ]
  %i.095.i.i.i = phi i32 [ %inc45.i.i.i, %while.end46.i.i.i.while.body.i116.i.i_crit_edge ], [ 0, %while.body.i116.i.i.preheader ]
  %arrayidx.i115.i.i = getelementptr i8, ptr %100, i32 %i.095.i.i.i
  %call12.i.i.i = call i32 @strncmp(ptr noundef %arrayidx.i115.i.i, ptr noundef nonnull %prefix.i.i.i, i32 noundef %call7.i111.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i)
  %cmp13.i.i.i = icmp eq i32 %call12.i.i.i, 0
  br i1 %cmp13.i.i.i, label %if.then15.i.i.i, label %while.body.i116.i.i.if.end37.i.i.i_crit_edge

while.body.i116.i.i.if.end37.i.i.i_crit_edge:     ; preds = %while.body.i116.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37.i.i.i

if.then15.i.i.i:                                  ; preds = %while.body.i116.i.i
  %add16.i.i.i = add i32 %i.095.i.i.i, %call7.i111.i.i
  %arrayidx18.i.i.i = getelementptr i8, ptr %100, i32 %add16.i.i.i
  %call19.i.i.i = call i32 @strncmp(ptr noundef %arrayidx18.i.i.i, ptr noundef nonnull dereferenceable(9) @.str.14, i32 noundef 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i.i)
  %cmp20.i.i.i = icmp eq i32 %call19.i.i.i, 0
  br i1 %cmp20.i.i.i, label %if.then22.i.i.i, label %if.then15.i.i.i.if.end23.i.i.i_crit_edge

if.then15.i.i.i.if.end23.i.i.i_crit_edge:         ; preds = %if.then15.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i.i.i

if.then22.i.i.i:                                  ; preds = %if.then15.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %104 = ptrtoint ptr %boardrev_found11.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 1, ptr %boardrev_found11.i.i, align 2
  br label %if.end23.i.i.i

if.end23.i.i.i:                                   ; preds = %if.then22.i.i.i, %if.then15.i.i.i.if.end23.i.i.i_crit_edge
  %105 = ptrtoint ptr %arrayidx18.i.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx18.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp28.not89.i.i.i = icmp eq i8 %106, 0
  br i1 %cmp28.not89.i.i.i, label %if.end23.i.i.i.while.end.i119.i.i_crit_edge, label %while.body30.i.i.i.preheader

if.end23.i.i.i.while.end.i119.i.i_crit_edge:      ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i119.i.i

while.body30.i.i.i.preheader:                     ; preds = %if.end23.i.i.i
  %107 = ptrtoint ptr %nvram.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %nvram.i.i.i, align 4
  br label %while.body30.i.i.i

while.body30.i.i.i:                               ; preds = %while.body30.i.i.i.while.body30.i.i.i_crit_edge, %while.body30.i.i.i.preheader
  %109 = phi i8 [ %112, %while.body30.i.i.i.while.body30.i.i.i_crit_edge ], [ %106, %while.body30.i.i.i.preheader ]
  %j.191.i.i.i = phi i32 [ %inc34.i.i.i, %while.body30.i.i.i.while.body30.i.i.i_crit_edge ], [ %j.096.i.i.i, %while.body30.i.i.i.preheader ]
  %i.190.i.i.i = phi i32 [ %inc.i117.i.i, %while.body30.i.i.i.while.body30.i.i.i_crit_edge ], [ %add16.i.i.i, %while.body30.i.i.i.preheader ]
  %arrayidx33.i.i.i = getelementptr i8, ptr %call9.i.i.i105.i.i, i32 %j.191.i.i.i
  %110 = ptrtoint ptr %arrayidx33.i.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %arrayidx33.i.i.i, align 1
  %inc.i117.i.i = add i32 %i.190.i.i.i, 1
  %inc34.i.i.i = add i32 %j.191.i.i.i, 1
  %arrayidx26.i.i.i = getelementptr i8, ptr %108, i32 %inc.i117.i.i
  %111 = ptrtoint ptr %arrayidx26.i.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx26.i.i.i, align 1
  %cmp28.not.i.i.i = icmp eq i8 %112, 0
  br i1 %cmp28.not.i.i.i, label %while.body30.i.i.i.while.end.i119.i.i_crit_edge, label %while.body30.i.i.i.while.body30.i.i.i_crit_edge

while.body30.i.i.i.while.body30.i.i.i_crit_edge:  ; preds = %while.body30.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body30.i.i.i

while.body30.i.i.i.while.end.i119.i.i_crit_edge:  ; preds = %while.body30.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i119.i.i

while.end.i119.i.i:                               ; preds = %while.body30.i.i.i.while.end.i119.i.i_crit_edge, %if.end23.i.i.i.while.end.i119.i.i_crit_edge
  %i.1.lcssa.i.i.i = phi i32 [ %add16.i.i.i, %if.end23.i.i.i.while.end.i119.i.i_crit_edge ], [ %inc.i117.i.i, %while.body30.i.i.i.while.end.i119.i.i_crit_edge ]
  %j.1.lcssa.i118.i.i = phi i32 [ %j.096.i.i.i, %if.end23.i.i.i.while.end.i119.i.i_crit_edge ], [ %inc34.i.i.i, %while.body30.i.i.i.while.end.i119.i.i_crit_edge ]
  %arrayidx35.i.i.i = getelementptr i8, ptr %call9.i.i.i105.i.i, i32 %j.1.lcssa.i118.i.i
  %113 = ptrtoint ptr %arrayidx35.i.i.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %arrayidx35.i.i.i, align 1
  %inc36.i.i.i = add i32 %j.1.lcssa.i118.i.i, 1
  br label %if.end37.i.i.i

if.end37.i.i.i:                                   ; preds = %while.end.i119.i.i, %while.body.i116.i.i.if.end37.i.i.i_crit_edge
  %i.2.i.i.i = phi i32 [ %i.1.lcssa.i.i.i, %while.end.i119.i.i ], [ %i.095.i.i.i, %while.body.i116.i.i.if.end37.i.i.i_crit_edge ]
  %j.2.i120.i.i = phi i32 [ %inc36.i.i.i, %while.end.i119.i.i ], [ %j.096.i.i.i, %while.body.i116.i.i.if.end37.i.i.i_crit_edge ]
  br label %while.cond38.i.i.i

while.cond38.i.i.i:                               ; preds = %while.cond38.i.i.i.while.cond38.i.i.i_crit_edge, %if.end37.i.i.i
  %i.3.i.i.i = phi i32 [ %i.2.i.i.i, %if.end37.i.i.i ], [ %inc45.i.i.i, %while.cond38.i.i.i.while.cond38.i.i.i_crit_edge ]
  %arrayidx40.i.i.i = getelementptr i8, ptr %101, i32 %i.3.i.i.i
  %114 = ptrtoint ptr %arrayidx40.i.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx40.i.i.i, align 1
  %cmp42.not.i.i.i = icmp eq i8 %115, 0
  %inc45.i.i.i = add i32 %i.3.i.i.i, 1
  br i1 %cmp42.not.i.i.i, label %while.end46.i.i.i, label %while.cond38.i.i.i.while.cond38.i.i.i_crit_edge

while.cond38.i.i.i.while.cond38.i.i.i_crit_edge:  ; preds = %while.cond38.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond38.i.i.i

while.end46.i.i.i:                                ; preds = %while.cond38.i.i.i
  %cmp.i122.i.i = icmp ult i32 %inc45.i.i.i, %sub.i121.i.i
  br i1 %cmp.i122.i.i, label %while.end46.i.i.i.while.body.i116.i.i_crit_edge, label %while.end46.i.i.i.while.end48.i.i.i_crit_edge

while.end46.i.i.i.while.end48.i.i.i_crit_edge:    ; preds = %while.end46.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end48.i.i.i

while.end46.i.i.i.while.body.i116.i.i_crit_edge:  ; preds = %while.end46.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i116.i.i

while.end48.i.i.i:                                ; preds = %while.end46.i.i.i.while.end48.i.i.i_crit_edge, %if.end.i112.i.i.while.end48.i.i.i_crit_edge
  %j.0.lcssa.i123.i.i = phi i32 [ 0, %if.end.i112.i.i.while.end48.i.i.i_crit_edge ], [ %j.2.i120.i.i, %while.end46.i.i.i.while.end48.i.i.i_crit_edge ]
  %116 = ptrtoint ptr %nvram.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %nvram.i.i.i, align 4
  call void @kfree(ptr noundef %117) #12
  %118 = ptrtoint ptr %nvram.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call9.i.i.i105.i.i, ptr %nvram.i.i.i, align 4
  br label %brcmf_fw_strip_multi_v2.exit.i.i

brcmf_fw_strip_multi_v2.exit.i.i:                 ; preds = %while.end48.i.i.i, %if.then10.i.i.brcmf_fw_strip_multi_v2.exit.i.i_crit_edge
  %storemerge.i124.i.i = phi i32 [ %j.0.lcssa.i123.i.i, %while.end48.i.i.i ], [ 0, %if.then10.i.i.brcmf_fw_strip_multi_v2.exit.i.i_crit_edge ]
  %119 = ptrtoint ptr %nvram_len.i78.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %storemerge.i124.i.i, ptr %nvram_len.i78.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %prefix.i.i.i) #12
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %brcmf_fw_strip_multi_v2.exit.i.i, %if.else.i.i.if.end13.i.i_crit_edge, %brcmf_fw_strip_multi_v1.exit.i.i
  %nvram_len.i.i = getelementptr inbounds %struct.nvram_parser, ptr %nvp.i.i, i32 0, i32 3
  %120 = ptrtoint ptr %nvram_len.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %nvram_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp14.i.i = icmp eq i32 %121, 0
  br i1 %cmp14.i.i, label %if.then15.i.i, label %if.end16.i.i

if.then15.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %122 = ptrtoint ptr %nvram.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %nvram.i.i.i, align 4
  call void @kfree(ptr noundef %123) #12
  br label %if.end22.i

if.end16.i.i:                                     ; preds = %if.end13.i.i
  %boardrev_found.i125.i.i = getelementptr inbounds %struct.nvram_parser, ptr %nvp.i.i, i32 0, i32 10
  %124 = ptrtoint ptr %boardrev_found.i125.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %boardrev_found.i125.i.i, align 2, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool.not.i126.i.i = icmp eq i8 %125, 0
  br i1 %tobool.not.i126.i.i, label %if.end.i131.i.i, label %if.end16.i.i.brcmf_fw_add_defaults.exit.i.i_crit_edge

if.end16.i.i.brcmf_fw_add_defaults.exit.i.i_crit_edge: ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_fw_add_defaults.exit.i.i

if.end.i131.i.i:                                  ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %126 = ptrtoint ptr %nvram.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %nvram.i.i.i, align 4
  %arrayidx.i129.i.i = getelementptr i8, ptr %127, i32 %121
  %128 = call ptr @memcpy(ptr %arrayidx.i129.i.i, ptr @.str.19, i32 13)
  %129 = ptrtoint ptr %nvram_len.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %nvram_len.i.i, align 4
  %add.i.i.i = add i32 %130, 13
  store i32 %add.i.i.i, ptr %nvram_len.i.i, align 4
  %131 = load ptr, ptr %nvram.i.i.i, align 4
  %arrayidx4.i.i.i = getelementptr i8, ptr %131, i32 %add.i.i.i
  %132 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %arrayidx4.i.i.i, align 1
  %133 = load i32, ptr %nvram_len.i.i, align 4
  %inc.i130.i.i = add i32 %133, 1
  store i32 %inc.i130.i.i, ptr %nvram_len.i.i, align 4
  br label %brcmf_fw_add_defaults.exit.i.i

brcmf_fw_add_defaults.exit.i.i:                   ; preds = %if.end.i131.i.i, %if.end16.i.i.brcmf_fw_add_defaults.exit.i.i_crit_edge
  %134 = ptrtoint ptr %nvram_len.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %nvram_len.i.i, align 4
  %add19.i.i = add i32 %135, 4
  %div47.i.i = and i32 %add19.i.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %div47.i.i)
  %cmp21.not135.i.i = icmp eq i32 %135, %div47.i.i
  br i1 %cmp21.not135.i.i, label %brcmf_fw_add_defaults.exit.i.i.while.end25.i.i_crit_edge, label %brcmf_fw_add_defaults.exit.i.i.while.body22.i.i_crit_edge

brcmf_fw_add_defaults.exit.i.i.while.body22.i.i_crit_edge: ; preds = %brcmf_fw_add_defaults.exit.i.i
  br label %while.body22.i.i

brcmf_fw_add_defaults.exit.i.i.while.end25.i.i_crit_edge: ; preds = %brcmf_fw_add_defaults.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end25.i.i

while.body22.i.i:                                 ; preds = %while.body22.i.i.while.body22.i.i_crit_edge, %brcmf_fw_add_defaults.exit.i.i.while.body22.i.i_crit_edge
  %pad.0136.i.i = phi i32 [ %inc.i.i, %while.body22.i.i.while.body22.i.i_crit_edge ], [ %135, %brcmf_fw_add_defaults.exit.i.i.while.body22.i.i_crit_edge ]
  %136 = ptrtoint ptr %nvram.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %nvram.i.i.i, align 4
  %arrayidx24.i.i = getelementptr i8, ptr %137, i32 %pad.0136.i.i
  %138 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %arrayidx24.i.i, align 1
  %inc.i.i = add i32 %pad.0136.i.i, 1
  %cmp21.not.i.i = icmp eq i32 %inc.i.i, %div47.i.i
  br i1 %cmp21.not.i.i, label %while.body22.i.i.while.end25.i.i_crit_edge, label %while.body22.i.i.while.body22.i.i_crit_edge

while.body22.i.i.while.body22.i.i_crit_edge:      ; preds = %while.body22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body22.i.i

while.body22.i.i.while.end25.i.i_crit_edge:       ; preds = %while.body22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end25.i.i

while.end25.i.i:                                  ; preds = %while.body22.i.i.while.end25.i.i_crit_edge, %brcmf_fw_add_defaults.exit.i.i.while.end25.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %135, %brcmf_fw_add_defaults.exit.i.i.while.end25.i.i_crit_edge ], [ %div47.i.i, %while.body22.i.i.while.end25.i.i_crit_edge ]
  %div2648.i.i = lshr i32 %.lcssa.i.i, 2
  %neg.i.i = xor i32 %div2648.i.i, -1
  %shl.i.i = shl i32 %neg.i.i, 16
  %and.i.i = and i32 %div2648.i.i, 65535
  %or.i.i = or i32 %shl.i.i, %and.i.i
  %139 = call i32 @llvm.bswap.i32(i32 %or.i.i) #12
  %140 = ptrtoint ptr %nvram.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %nvram.i.i.i, align 4
  %arrayidx28.i.i = getelementptr i8, ptr %141, i32 %.lcssa.i.i
  %142 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_storeN_noabort(i32 %142, i32 4)
  store i32 %139, ptr %arrayidx28.i.i, align 1
  %add29.i.i = add i32 %div47.i.i, 4
  %143 = load ptr, ptr %nvram.i.i.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %while.end25.i.i, %if.then15.i.i, %if.then18.i.if.end22.i_crit_edge
  %nvram_length.0.i = phi i32 [ 0, %if.then18.i.if.end22.i_crit_edge ], [ 0, %if.then15.i.i ], [ %add29.i.i, %while.end25.i.i ]
  %retval.0.i65.i = phi ptr [ null, %if.then18.i.if.end22.i_crit_edge ], [ null, %if.then15.i.i ], [ %143, %while.end25.i.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %nvp.i.i) #12
  br i1 %free_bcm47xx_nvram.0.off0.ph.i, label %if.then24.i, label %if.end22.i.if.end28.i_crit_edge

if.end22.i.if.end28.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.then24.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @vfree(ptr noundef %data.0.ph.i) #12
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then24.i, %if.end22.i.if.end28.i_crit_edge
  call void @release_firmware(ptr noundef %fw) #12
  %tobool29.not.i = icmp eq ptr %retval.0.i65.i, null
  br i1 %tobool29.not.i, label %if.end28.i.land.lhs.true30.i_crit_edge, label %if.end28.i.do.body37.i_crit_edge

if.end28.i.do.body37.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body37.i

if.end28.i.land.lhs.true30.i_crit_edge:           ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true30.i

land.lhs.true30.i:                                ; preds = %if.end28.i.land.lhs.true30.i_crit_edge, %if.end28.thread.i
  %nvram_length.18088.i = phi i32 [ 0, %if.end28.thread.i ], [ %nvram_length.0.i, %if.end28.i.land.lhs.true30.i_crit_edge ]
  %flags31.i = getelementptr %struct.brcmf_fw_request, ptr %17, i32 0, i32 4, i32 %19, i32 2
  %144 = ptrtoint ptr %flags31.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %flags31.i, align 4
  %146 = and i16 %145, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %146)
  %tobool34.not.i = icmp eq i16 %146, 0
  br i1 %tobool34.not.i, label %land.lhs.true30.i.brcmf_fw_request_nvram_done.exit_crit_edge, label %land.lhs.true30.i.do.body37.i_crit_edge

land.lhs.true30.i.do.body37.i_crit_edge:          ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body37.i

land.lhs.true30.i.brcmf_fw_request_nvram_done.exit_crit_edge: ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %brcmf_fw_request_nvram_done.exit

do.body37.i:                                      ; preds = %land.lhs.true30.i.do.body37.i_crit_edge, %if.end28.i.do.body37.i_crit_edge
  %nvram_length.18087.i = phi i32 [ %nvram_length.0.i, %if.end28.i.do.body37.i_crit_edge ], [ %nvram_length.18088.i, %land.lhs.true30.i.do.body37.i_crit_edge ]
  %nvram.08185.i = phi ptr [ %retval.0.i65.i, %if.end28.i.do.body37.i_crit_edge ], [ null, %land.lhs.true30.i.do.body37.i_crit_edge ]
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 2, ptr noundef nonnull @__func__.brcmf_fw_request_nvram_done, ptr noundef nonnull @.str.9, ptr noundef %nvram.08185.i, i32 noundef %nvram_length.18087.i) #12
  %147 = getelementptr %struct.brcmf_fw_request, ptr %17, i32 0, i32 4, i32 %19, i32 3
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %nvram.08185.i, ptr %147, align 4
  %len.i = getelementptr inbounds %struct.anon.129, ptr %147, i32 0, i32 1
  %149 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %nvram_length.18087.i, ptr %len.i, align 4
  br label %brcmf_fw_request_nvram_done.exit

brcmf_fw_request_nvram_done.exit:                 ; preds = %do.body37.i, %land.lhs.true30.i.brcmf_fw_request_nvram_done.exit_crit_edge, %if.else7.i.brcmf_fw_request_nvram_done.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body37.i ], [ -2, %land.lhs.true30.i.brcmf_fw_request_nvram_done.exit_crit_edge ], [ -2, %if.else7.i.brcmf_fw_request_nvram_done.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_len.i) #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  br i1 %tobool.not, label %sw.bb1.sw.epilog_crit_edge, label %if.then

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  %150 = getelementptr %struct.brcmf_fw_request, ptr %1, i32 0, i32 4, i32 %3, i32 3
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %fw, ptr %150, align 4
  br label %sw.epilog

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_fw_complete_request, ptr noundef nonnull @.str.8, i32 noundef %7) #12
  tail call void @release_firmware(ptr noundef %fw) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body3, %if.then, %sw.bb1.sw.epilog_crit_edge, %brcmf_fw_request_nvram_done.exit
  %ret.0 = phi i32 [ -22, %do.body3 ], [ 0, %if.then ], [ %retval.0.i, %brcmf_fw_request_nvram_done.exit ], [ -2, %sw.bb1.sw.epilog_crit_edge ]
  %flags = getelementptr %struct.brcmf_fw_request, ptr %1, i32 0, i32 4, i32 %3, i32 2
  %152 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %flags, align 4
  %154 = and i16 %153, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %154)
  %tobool7.not = icmp eq i16 %154, 0
  %spec.select = select i1 %tobool7.not, i32 %ret.0, i32 0
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bcm47xx_nvram_get_contents(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_nvram_handle_idle(ptr nocapture noundef %nvp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %pos = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 6
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %5, label %if.end12 [
    i8 10, label %entry.cleanup_crit_edge
    i8 32, label %entry.proceed_crit_edge
    i8 13, label %entry.proceed_crit_edge34
    i8 9, label %entry.proceed_crit_edge35
    i8 0, label %entry.proceed_crit_edge36
    i8 35, label %entry.cleanup_crit_edge37
  ]

entry.cleanup_crit_edge37:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.proceed_crit_edge36:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %proceed

entry.proceed_crit_edge35:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %proceed

entry.proceed_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %proceed

entry.proceed_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %proceed

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %entry
  %7 = add i8 %5, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %7)
  %8 = icmp ult i8 %7, 95
  br i1 %8, label %if.then14, label %do.body

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %entry16 = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 7
  %9 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %entry16, align 4
  br label %cleanup

do.body:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %line = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 4
  %10 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %line, align 4
  %column = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 5
  %12 = ptrtoint ptr %column to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %column, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_nvram_handle_idle, ptr noundef nonnull @.str.10, i32 noundef %11, i32 noundef %13) #12
  br label %proceed

proceed:                                          ; preds = %do.body, %entry.proceed_crit_edge, %entry.proceed_crit_edge34, %entry.proceed_crit_edge35, %entry.proceed_crit_edge36
  %column18 = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 5
  %14 = ptrtoint ptr %column18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %column18, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %column18, align 4
  %16 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pos, align 4
  %inc20 = add i32 %17, 1
  store i32 %inc20, ptr %pos, align 4
  br label %cleanup

cleanup:                                          ; preds = %proceed, %if.then14, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge37
  %retval.0 = phi i32 [ 0, %proceed ], [ 1, %if.then14 ], [ 3, %entry.cleanup_crit_edge ], [ 3, %entry.cleanup_crit_edge37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmf_nvram_handle_key(ptr nocapture noundef %nvp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %pos = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 6
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %5)
  %cmp = icmp eq i8 %5, 61
  br i1 %cmp, label %if.then, label %if.else32

if.then:                                          ; preds = %entry
  %entry3 = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 7
  %6 = ptrtoint ptr %entry3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entry3, align 4
  %arrayidx4 = getelementptr i8, ptr %1, i32 %7
  %call = tail call i32 @strncmp(ptr noundef %arrayidx4, ptr noundef nonnull dereferenceable(5) @.str.11, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp eq i32 %call, 0
  %. = select i1 %cmp5, i32 3, i32 2
  %call11 = tail call i32 @strncmp(ptr noundef %arrayidx4, ptr noundef nonnull dereferenceable(8) @.str.12, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %multi_dev_v1 = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 8
  %8 = ptrtoint ptr %multi_dev_v1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %multi_dev_v1, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then.if.end15_crit_edge
  %call19 = tail call i32 @strncmp(ptr noundef %arrayidx4, ptr noundef nonnull dereferenceable(6) @.str.13, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.end15.if.end23_crit_edge

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then22:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %multi_dev_v2 = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 9
  %9 = ptrtoint ptr %multi_dev_v2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %multi_dev_v2, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end15.if.end23_crit_edge
  %call27 = tail call i32 @strncmp(ptr noundef %arrayidx4, ptr noundef nonnull dereferenceable(9) @.str.14, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end23.if.end39_crit_edge

if.end23.if.end39_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %boardrev_found = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 10
  %10 = ptrtoint ptr %boardrev_found to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %boardrev_found, align 2
  br label %if.end39

if.else32:                                        ; preds = %entry
  %11 = ptrtoint ptr %nvp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nvp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %5)
  %cmp.i = icmp eq i8 %5, 35
  %13 = add i8 %5, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %13)
  %14 = icmp ult i8 %13, -94
  %15 = or i1 %cmp.i, %14
  br i1 %15, label %do.body, label %if.else32.if.end39_crit_edge

if.else32.if.end39_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

do.body:                                          ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #14
  %line = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 4
  %16 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %line, align 4
  %column = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 5
  %18 = ptrtoint ptr %column to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %column, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4, ptr noundef nonnull @__func__.brcmf_nvram_handle_key, ptr noundef nonnull @.str.15, i32 noundef %17, i32 noundef %19) #12
  br label %cleanup

if.end39:                                         ; preds = %if.else32.if.end39_crit_edge, %if.then30, %if.end23.if.end39_crit_edge
  %st.1 = phi i32 [ %., %if.then30 ], [ %., %if.end23.if.end39_crit_edge ], [ %12, %if.else32.if.end39_crit_edge ]
  %column40 = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 5
  %20 = ptrtoint ptr %column40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %column40, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %column40, align 4
  %inc42 = add i32 %3, 1
  %22 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %inc42, ptr %pos, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.body
  %retval.0 = phi i32 [ %st.1, %if.end39 ], [ 3, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @brcmf_nvram_handle_value(ptr nocapture noundef %nvp) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %pos = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 6
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %5)
  %cmp.i = icmp ne i8 %5, 35
  %6 = add i8 %5, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %6)
  %7 = icmp ult i8 %6, 95
  %retval.0.i = and i1 %cmp.i, %7
  br i1 %retval.0.i, label %if.end17, label %if.then

if.then:                                          ; preds = %entry
  %entry5 = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 7
  %8 = ptrtoint ptr %entry5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %entry5, align 4
  %arrayidx6 = getelementptr i8, ptr %1, i32 %9
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %arrayidx6 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %nvram_len = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 3
  %10 = ptrtoint ptr %nvram_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nvram_len, align 4
  %add = add i32 %11, -63999
  %12 = add i32 %add, %sub.ptr.sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64000, i32 %12)
  %cmp = icmp ult i32 %12, -64000
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %nvram = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 2
  %13 = ptrtoint ptr %nvram to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nvram, align 4
  %arrayidx10 = getelementptr i8, ptr %14, i32 %11
  %15 = call ptr @memcpy(ptr %arrayidx10, ptr %arrayidx6, i32 %sub.ptr.sub)
  %16 = ptrtoint ptr %nvram_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nvram_len, align 4
  %add12 = add i32 %17, %sub.ptr.sub
  store i32 %add12, ptr %nvram_len, align 4
  %18 = load ptr, ptr %nvram, align 4
  %arrayidx15 = getelementptr i8, ptr %18, i32 %add12
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx15, align 1
  br label %cleanup.sink.split

if.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %inc19 = add i32 %3, 1
  %20 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %inc19, ptr %pos, align 4
  %column = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end17, %if.end
  %column.sink41 = phi ptr [ %column, %if.end17 ], [ %nvram_len, %if.end ]
  %retval.0.ph = phi i32 [ 2, %if.end17 ], [ 0, %if.end ]
  %21 = ptrtoint ptr %column.sink41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %column.sink41, align 4
  %inc20 = add i32 %22, 1
  store i32 %inc20, ptr %column.sink41, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %if.then.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @brcmf_nvram_handle_comment(ptr nocapture noundef %nvp) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %pos = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 6
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pos, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 %3
  %call = tail call ptr @strchr(ptr noundef %arrayidx, i32 noundef 10)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %entry
  %strlen = tail call i32 @strlen(ptr %arrayidx) #16
  %strchr = getelementptr i8, ptr %arrayidx, i32 %strlen
  %tobool2.not = icmp eq ptr %strchr, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %eoc.0 = phi ptr [ %call, %entry.if.end4_crit_edge ], [ %strchr, %if.then.if.end4_crit_edge ]
  %line = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 4
  %4 = ptrtoint ptr %line to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %line, align 4
  %column = getelementptr inbounds %struct.nvram_parser, ptr %nvp, i32 0, i32 5
  %6 = ptrtoint ptr %column to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %column, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %eoc.0 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %arrayidx to i32
  %sub.ptr.sub = add i32 %3, 1
  %add = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %add6 = add i32 %add, %sub.ptr.lhs.cast
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add6, ptr %pos, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ 4, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @brcmf_nvram_handle_end(ptr nocapture noundef readnone %nvp) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !16, !17, !19, !21, !23, !25, !27, !28, !30, !32, !34, !36, !38, !39, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__func__.brcmf_fw_get_firmwares, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c", i32 699, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.brcmf_fw_alloc_request, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c", i32 756, i32 3}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c", i32 764, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c", i32 783, i32 30}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c", i32 608, i32 20}
!12 = !{ptr @__func__.brcmf_fw_complete_request, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c", i32 573, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c", i32 587, i32 3}
!19 = !{ptr @__func__.brcmf_fw_request_nvram_done, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c", i32 528, i32 2}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c", i32 558, i32 2}
!23 = !{ptr @nv_parser_states, !24, !"nv_parser_states", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c", i32 190, i32 3}
!25 = !{ptr @__func__.brcmf_nvram_handle_idle, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c", i32 98, i32 2}
!27 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c", i32 114, i32 39}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c", i32 118, i32 39}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c", i32 120, i32 39}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c", i32 122, i32 39}
!36 = !{ptr @__func__.brcmf_nvram_handle_key, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c", i32 125, i32 3}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c", i32 251, i32 39}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c", i32 254, i32 41}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c", i32 331, i32 35}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/firmware.c", i32 362, i32 39}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"auto-init"}
!57 = !{i8 0, i8 2}
