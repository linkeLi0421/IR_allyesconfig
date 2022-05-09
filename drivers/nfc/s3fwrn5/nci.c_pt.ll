; ModuleID = '/llk/IR_all_yes/drivers/nfc/s3fwrn5/nci.c_pt.bc'
source_filename = "../drivers/nfc/s3fwrn5/nci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nci_driver_ops = type { i16, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sk_buff = type { %union.anon.73, %union.anon.76, %union.anon.77, [48 x i8], %union.anon.78, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.80, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { ptr, ptr, %union.anon.75 }
%union.anon.75 = type { ptr }
%union.anon.76 = type { ptr }
%union.anon.77 = type { i64 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { i32, ptr }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.82, i32, i32, i32, i16, i16, %union.anon.84, i32, %union.anon.85, %union.anon.86, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.82 = type { i32 }
%union.anon.84 = type { i32 }
%union.anon.85 = type { i32 }
%union.anon.86 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nci_prop_fw_cfg_cmd = type { i8, i8, i8 }
%struct.nci_prop_set_rfreg_cmd = type { i8, [252 x i8] }
%struct.nci_prop_stop_rfreg_cmd = type { i16 }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.firmware = type { i32, ptr, ptr }

@s3fwrn5_nci_prop_ops = dso_local constant { [4 x %struct.nci_driver_ops], [48 x i8] } { [4 x %struct.nci_driver_ops] [%struct.nci_driver_ops { i16 3874, ptr @s3fwrn5_nci_prop_rsp, ptr null }, %struct.nci_driver_ops { i16 3878, ptr @s3fwrn5_nci_prop_rsp, ptr null }, %struct.nci_driver_ops { i16 3879, ptr @s3fwrn5_nci_prop_rsp, ptr null }, %struct.nci_driver_ops { i16 3880, ptr @s3fwrn5_nci_prop_rsp, ptr null }], [48 x i8] zeroinitializer }, align 32
@s3fwrn5_nci_rf_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 81, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rfreg configuration update: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s3fwrn5_nci_rf_configure\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/nfc/s3fwrn5/nci.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s3fwrn5_nci_rf_configure._entry_ptr = internal global ptr @s3fwrn5_nci_rf_configure._entry, section ".printk_index", align 4
@s3fwrn5_nci_rf_configure._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 85, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to start rfreg update\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@s3fwrn5_nci_rf_configure._entry_ptr.8 = internal global ptr @s3fwrn5_nci_rf_configure._entry.5, section ".printk_index", align 4
@s3fwrn5_nci_rf_configure._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 99, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rfreg update error (code=%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@s3fwrn5_nci_rf_configure._entry_ptr.11 = internal global ptr @s3fwrn5_nci_rf_configure._entry.9, section ".printk_index", align 4
@s3fwrn5_nci_rf_configure._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 111, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to stop rfreg update\0A\00", [35 x i8] zeroinitializer }, align 32
@s3fwrn5_nci_rf_configure._entry_ptr.14 = internal global ptr @s3fwrn5_nci_rf_configure._entry.12, section ".printk_index", align 4
@s3fwrn5_nci_rf_configure._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 115, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"rfreg configuration update: success\0A\00", [59 x i8] zeroinitializer }, align 32
@s3fwrn5_nci_rf_configure._entry_ptr.17 = internal global ptr @s3fwrn5_nci_rf_configure._entry.15, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"s3fwrn5_nci_prop_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 23, i32 29 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 81, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 85, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 99, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 111, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [29 x i8] c"../drivers/nfc/s3fwrn5/nci.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 115, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @s3fwrn5_nci_rf_configure._entry, ptr @s3fwrn5_nci_rf_configure._entry.12, ptr @s3fwrn5_nci_rf_configure._entry.15, ptr @s3fwrn5_nci_rf_configure._entry.5, ptr @s3fwrn5_nci_rf_configure._entry.9, ptr @s3fwrn5_nci_rf_configure._entry_ptr, ptr @s3fwrn5_nci_rf_configure._entry_ptr.11, ptr @s3fwrn5_nci_rf_configure._entry_ptr.14, ptr @s3fwrn5_nci_rf_configure._entry_ptr.17, ptr @s3fwrn5_nci_rf_configure._entry_ptr.8, ptr @s3fwrn5_nci_prop_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_nci_prop_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_nci_rf_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_nci_rf_configure._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_nci_rf_configure._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_nci_rf_configure._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_nci_rf_configure._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3fwrn5_nci_prop_rsp(ptr noundef %ndev, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv = zext i8 %3 to i32
  tail call void @nci_req_complete(ptr noundef %ndev, i32 noundef %conv) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3fwrn5_nci_rf_configure(ptr nocapture noundef readonly %info, ptr noundef %fw_name) local_unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  %fw_cfg = alloca %struct.nci_prop_fw_cfg_cmd, align 1
  %set_rfreg = alloca %struct.nci_prop_set_rfreg_cmd, align 1
  %stop_rfreg = alloca %struct.nci_prop_stop_rfreg_cmd, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.nfc_dev, ptr %3, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #5
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %fw_cfg) #5
  %5 = getelementptr inbounds %struct.nci_prop_fw_cfg_cmd, ptr %fw_cfg, i32 0, i32 1
  %6 = getelementptr inbounds %struct.nci_prop_fw_cfg_cmd, ptr %fw_cfg, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 253, ptr nonnull %set_rfreg) #5
  %7 = call ptr @memset(ptr %set_rfreg, i32 255, i32 253)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %stop_rfreg) #5
  %8 = ptrtoint ptr %stop_rfreg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %stop_rfreg, align 2, !annotation !36
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %fw_name, ptr noundef %dev1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp288.not = icmp eq i32 %12, 0
  br i1 %cmp288.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %data = getelementptr inbounds %struct.firmware, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.090 = phi i32 [ 0, %for.body.lr.ph ], [ %add3, %for.body.for.body_crit_edge ]
  %checksum.089 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %14, i32 %i.090
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr, align 4
  %add = add i32 %16, %checksum.089
  %add3 = add i32 %i.090, 4
  %cmp2 = icmp ult i32 %add3, %12
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %phi.cast = trunc i32 %add to i16
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader.for.end_crit_edge
  %checksum.0.lcssa = phi i16 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %phi.cast, %for.end.loopexit ]
  %17 = ptrtoint ptr %fw_cfg to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %fw_cfg, align 1
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %5, align 1
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %6, align 1
  %20 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info, align 4
  %call5 = call i32 @nci_prop_cmd(ptr noundef %21, i8 noundef zeroext 40, i32 noundef 3, ptr noundef nonnull %fw_cfg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %for.end.out_crit_edge, label %do.end

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end:                                           ; preds = %for.end
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef %fw_name) #8
  %22 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %info, align 4
  %call10 = call i32 @nci_prop_cmd(ptr noundef %23, i8 noundef zeroext 38, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.end16

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #8
  br label %out

if.end16:                                         ; preds = %do.end
  %24 = ptrtoint ptr %set_rfreg to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %set_rfreg, align 1
  %25 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fw, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp1991.not = icmp eq i32 %28, 0
  br i1 %cmp1991.not, label %if.end16.for.end40_crit_edge, label %for.body20.lr.ph

if.end16.for.end40_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end40

for.body20.lr.ph:                                 ; preds = %if.end16
  %data25 = getelementptr inbounds %struct.nci_prop_set_rfreg_cmd, ptr %set_rfreg, i32 0, i32 1
  br label %for.body20

for.body20:                                       ; preds = %if.end36.for.body20_crit_edge, %for.body20.lr.ph
  %29 = phi i32 [ %28, %for.body20.lr.ph ], [ %42, %if.end36.for.body20_crit_edge ]
  %30 = phi ptr [ %26, %for.body20.lr.ph ], [ %40, %if.end36.for.body20_crit_edge ]
  %i.192 = phi i32 [ 0, %for.body20.lr.ph ], [ %add39, %if.end36.for.body20_crit_edge ]
  %sub = sub i32 %29, %i.192
  %31 = call i32 @llvm.umin.i32(i32 %sub, i32 252)
  %data26 = getelementptr inbounds %struct.firmware, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %data26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data26, align 4
  %add.ptr27 = getelementptr i8, ptr %33, i32 %i.192
  %34 = call ptr @memcpy(ptr %data25, ptr %add.ptr27, i32 %31)
  %35 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %info, align 4
  %add29 = add nuw nsw i32 %31, 1
  %call30 = call i32 @nci_prop_cmd(ptr noundef %36, i8 noundef zeroext 34, i32 noundef %add29, ptr noundef nonnull %set_rfreg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end35, label %if.end36

do.end35:                                         ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call30) #8
  br label %out

if.end36:                                         ; preds = %for.body20
  %37 = ptrtoint ptr %set_rfreg to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %set_rfreg, align 1
  %inc = add i8 %38, 1
  store i8 %inc, ptr %set_rfreg, align 1
  %add39 = add i32 %i.192, 252
  %39 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fw, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %cmp19 = icmp ugt i32 %42, %add39
  br i1 %cmp19, label %if.end36.for.body20_crit_edge, label %if.end36.for.end40_crit_edge

if.end36.for.end40_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end40

if.end36.for.body20_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body20

for.end40:                                        ; preds = %if.end36.for.end40_crit_edge, %if.end16.for.end40_crit_edge
  %43 = ptrtoint ptr %stop_rfreg to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %checksum.0.lcssa, ptr %stop_rfreg, align 2
  %44 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %info, align 4
  %call43 = call i32 @nci_prop_cmd(ptr noundef %45, i8 noundef zeroext 39, i32 noundef 2, ptr noundef nonnull %stop_rfreg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end49, label %do.end53

do.end49:                                         ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #8
  br label %out

do.end53:                                         ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.16) #8
  br label %out

out:                                              ; preds = %do.end53, %do.end49, %do.end35, %do.end15, %for.end.out_crit_edge
  %ret.0 = phi i32 [ %call5, %for.end.out_crit_edge ], [ %call10, %do.end15 ], [ %call30, %do.end35 ], [ %call43, %do.end49 ], [ %call43, %do.end53 ]
  %46 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %47) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %stop_rfreg) #5
  call void @llvm.lifetime.end.p0(i64 253, ptr nonnull %set_rfreg) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %fw_cfg) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_prop_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_req_complete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @s3fwrn5_nci_prop_ops, !1, !"s3fwrn5_nci_prop_ops", i1 false, i1 false}
!1 = !{!"../drivers/nfc/s3fwrn5/nci.c", i32 23, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/nfc/s3fwrn5/nci.c", i32 81, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @s3fwrn5_nci_rf_configure._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @s3fwrn5_nci_rf_configure._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/nfc/s3fwrn5/nci.c", i32 85, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @s3fwrn5_nci_rf_configure._entry.5, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @s3fwrn5_nci_rf_configure._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/nfc/s3fwrn5/nci.c", i32 99, i32 4}
!17 = !{ptr @s3fwrn5_nci_rf_configure._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @s3fwrn5_nci_rf_configure._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/nfc/s3fwrn5/nci.c", i32 111, i32 3}
!21 = !{ptr @s3fwrn5_nci_rf_configure._entry.12, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @s3fwrn5_nci_rf_configure._entry_ptr.14, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/nfc/s3fwrn5/nci.c", i32 115, i32 2}
!25 = !{ptr @s3fwrn5_nci_rf_configure._entry.15, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @s3fwrn5_nci_rf_configure._entry_ptr.17, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"auto-init"}
