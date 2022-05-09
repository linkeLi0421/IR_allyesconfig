; ModuleID = '/llk/IR_all_yes/drivers/nfc/s3fwrn5/core.c_pt.bc'
source_filename = "../drivers/nfc/s3fwrn5/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+s3fwrn5_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_s3fwrn5_probe\09\09\09\09"
module asm "\09.long\09__crc_s3fwrn5_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3fwrn5_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22s3fwrn5_probe\22\09\09\09\09\09"
module asm "__kstrtabns_s3fwrn5_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+s3fwrn5_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_s3fwrn5_remove\09\09\09\09"
module asm "\09.long\09__crc_s3fwrn5_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3fwrn5_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22s3fwrn5_remove\22\09\09\09\09\09"
module asm "__kstrtabns_s3fwrn5_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+s3fwrn5_recv_frame\22, \22a\22\09"
module asm "\09.weak\09__crc_s3fwrn5_recv_frame\09\09\09\09"
module asm "\09.long\09__crc_s3fwrn5_recv_frame\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s3fwrn5_recv_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22s3fwrn5_recv_frame\22\09\09\09\09\09"
module asm "__kstrtabns_s3fwrn5_recv_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nci_driver_ops = type { i16, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.s3fwrn5_info = type { ptr, ptr, ptr, ptr, %struct.s3fwrn5_fw_info, %struct.mutex }
%struct.s3fwrn5_fw_info = type { ptr, %struct.s3fwrn5_fw_image, [33 x i8], ptr, i32, i32, i32, %struct.completion, ptr, i8 }
%struct.s3fwrn5_fw_image = type { ptr, [13 x i8], i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.s3fwrn5_phy_ops = type { ptr, ptr, ptr, ptr }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.sk_buff_head = type { %union.anon.93, i32, %struct.spinlock }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { ptr, ptr }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }

@s3fwrn5_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&info->mutex\00", [19 x i8] zeroinitializer }, align 32
@s3fwrn5_nci_ops = internal constant { %struct.nci_ops, [52 x i8] } { %struct.nci_ops { ptr null, ptr @s3fwrn5_nci_open, ptr @s3fwrn5_nci_close, ptr @s3fwrn5_nci_send, ptr null, ptr @s3fwrn5_nci_post_setup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3fwrn5_nci_prop_ops, i32 4, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_s3fwrn5_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3fwrn5_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_s3fwrn5_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3fwrn5_probe to i32), ptr @__kstrtab_s3fwrn5_probe, ptr @__kstrtabns_s3fwrn5_probe }, section "___ksymtab+s3fwrn5_probe", align 4
@__kstrtab_s3fwrn5_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3fwrn5_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_s3fwrn5_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3fwrn5_remove to i32), ptr @__kstrtab_s3fwrn5_remove, ptr @__kstrtabns_s3fwrn5_remove }, section "___ksymtab+s3fwrn5_remove", align 4
@__kstrtab_s3fwrn5_recv_frame = external dso_local constant [0 x i8], align 1
@__kstrtabns_s3fwrn5_recv_frame = external dso_local constant [0 x i8], align 1
@__ksymtab_s3fwrn5_recv_frame = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s3fwrn5_recv_frame to i32), ptr @__kstrtab_s3fwrn5_recv_frame, ptr @__kstrtabns_s3fwrn5_recv_frame }, section "___ksymtab+s3fwrn5_recv_frame", align 4
@__UNIQUE_ID_file275 = internal constant [41 x i8] c"s3fwrn5.file=drivers/nfc/s3fwrn5/s3fwrn5\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [20 x i8] c"s3fwrn5.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description277 = internal constant [47 x i8] c"s3fwrn5.description=Samsung S3FWRN5 NFC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author278 = internal constant [54 x i8] c"s3fwrn5.author=Robert Baldyga <r.baldyga@samsung.com>\00", section ".modinfo", align 1
@s3fwrn5_nci_prop_ops = external dso_local constant [4 x %struct.nci_driver_ops], align 4
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sec_s3fwrn5_firmware.bin\00", [39 x i8] zeroinitializer }, align 32
@s3fwrn5_firmware_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 34, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get fw file, ret=%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s3fwrn5_firmware_init\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/nfc/s3fwrn5/core.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s3fwrn5_firmware_init._entry_ptr = internal global ptr @s3fwrn5_firmware_init._entry, section ".printk_index", align 4
@s3fwrn5_firmware_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 57, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Detected new firmware version\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"s3fwrn5_firmware_update\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@s3fwrn5_firmware_update._entry_ptr = internal global ptr @s3fwrn5_firmware_update._entry, section ".printk_index", align 4
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sec_s3fwrn5_rfreg.bin\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.11 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 168, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"s3fwrn5_nci_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 146, i32 29 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 28, i32 27 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 33, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 57, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [30 x i8] c"../drivers/nfc/s3fwrn5/core.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 68, i32 39 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author278, ptr @__UNIQUE_ID_description277, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_license276, ptr @__ksymtab_s3fwrn5_probe, ptr @__ksymtab_s3fwrn5_recv_frame, ptr @__ksymtab_s3fwrn5_remove, ptr @s3fwrn5_firmware_init._entry, ptr @s3fwrn5_firmware_init._entry_ptr, ptr @s3fwrn5_firmware_update._entry, ptr @s3fwrn5_firmware_update._entry_ptr, ptr @s3fwrn5_probe.__key, ptr @.str, ptr @s3fwrn5_nci_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_nci_ops to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_firmware_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3fwrn5_firmware_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3fwrn5_probe(ptr nocapture noundef writeonly %ndev, ptr noundef %phy_id, ptr noundef %pdev, ptr noundef %phy_ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %pdev, i32 noundef 276, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy_id1 = getelementptr inbounds %struct.s3fwrn5_info, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %phy_id1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %phy_id, ptr %phy_id1, align 4
  %pdev2 = getelementptr inbounds %struct.s3fwrn5_info, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %pdev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pdev2, align 4
  %phy_ops3 = getelementptr inbounds %struct.s3fwrn5_info, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %phy_ops3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %phy_ops, ptr %phy_ops3, align 4
  %mutex = getelementptr inbounds %struct.s3fwrn5_info, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @s3fwrn5_probe.__key) #3
  %3 = ptrtoint ptr %phy_ops3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy_ops3, align 4
  %set_mode.i = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %set_mode.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_mode.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.s3fwrn5_set_mode.exit_crit_edge, label %if.end.i

if.end.s3fwrn5_set_mode.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %s3fwrn5_set_mode.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %phy_id1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_id1, align 4
  tail call void %6(ptr noundef %8, i32 noundef 0) #3
  br label %s3fwrn5_set_mode.exit

s3fwrn5_set_mode.exit:                            ; preds = %if.end.i, %if.end.s3fwrn5_set_mode.exit_crit_edge
  %call5 = tail call ptr @nci_allocate_device(ptr noundef nonnull @s3fwrn5_nci_ops, i32 noundef 222, i32 noundef 0, i32 noundef 0) #3
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %call.i, align 4
  %tobool8.not = icmp eq ptr %call5, null
  br i1 %tobool8.not, label %s3fwrn5_set_mode.exit.cleanup_crit_edge, label %if.end10

s3fwrn5_set_mode.exit.cleanup_crit_edge:          ; preds = %s3fwrn5_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %s3fwrn5_set_mode.exit
  %10 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call5, align 4
  %parent.i.i = getelementptr inbounds %struct.nfc_dev, ptr %11, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pdev, ptr %parent.i.i, align 8
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %14, i32 0, i32 26
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i, align 4
  %16 = load ptr, ptr %call.i, align 4
  %call14 = tail call i32 @nci_register_device(ptr noundef %16) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  br i1 %cmp, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nci_free_device(ptr noundef %18) #3
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %fw_info = getelementptr inbounds %struct.s3fwrn5_info, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %fw_info, align 4
  %20 = ptrtoint ptr %ndev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %ndev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then15, %s3fwrn5_set_mode.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then15 ], [ %call14, %if.end17 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %s3fwrn5_set_mode.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nci_allocate_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s3fwrn5_remove(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %phy_ops.i = getelementptr inbounds %struct.s3fwrn5_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_ops.i, align 4
  %set_mode.i = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %set_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_mode.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.s3fwrn5_set_mode.exit_crit_edge, label %if.end.i

entry.s3fwrn5_set_mode.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %s3fwrn5_set_mode.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %phy_id.i = getelementptr inbounds %struct.s3fwrn5_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_id.i, align 4
  tail call void %5(ptr noundef %7, i32 noundef 0) #3
  br label %s3fwrn5_set_mode.exit

s3fwrn5_set_mode.exit:                            ; preds = %if.end.i, %entry.s3fwrn5_set_mode.exit_crit_edge
  tail call void @nci_unregister_device(ptr noundef %ndev) #3
  tail call void @nci_free_device(ptr noundef %ndev) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3fwrn5_recv_frame(ptr noundef %ndev, ptr noundef %skb, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @nci_recv_frame(ptr noundef %ndev, ptr noundef %skb) #3
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 @s3fwrn5_fw_recv_frame(ptr noundef %ndev, ptr noundef %skb) #3
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #3
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -19, %sw.default ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3fwrn5_fw_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3fwrn5_nci_open(ptr nocapture noundef readonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %phy_ops.i = getelementptr inbounds %struct.s3fwrn5_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_ops.i, align 4
  %get_mode.i = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %get_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_mode.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %s3fwrn5_get_mode.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

s3fwrn5_get_mode.exit:                            ; preds = %entry
  %phy_id.i = getelementptr inbounds %struct.s3fwrn5_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_id.i, align 4
  %call.i = tail call i32 %5(ptr noundef %7) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %s3fwrn5_get_mode.exit.cleanup_crit_edge

s3fwrn5_get_mode.exit.cleanup_crit_edge:          ; preds = %s3fwrn5_get_mode.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %s3fwrn5_get_mode.exit
  %8 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_ops.i, align 4
  %set_mode.i = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %set_mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_mode.i, align 4
  %tobool.not.i7 = icmp eq ptr %11, null
  br i1 %tobool.not.i7, label %if.end.s3fwrn5_set_mode.exit_crit_edge, label %if.end.i9

if.end.s3fwrn5_set_mode.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %s3fwrn5_set_mode.exit

if.end.i9:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_id.i, align 4
  tail call void %11(ptr noundef %13, i32 noundef 1) #3
  br label %s3fwrn5_set_mode.exit

s3fwrn5_set_mode.exit:                            ; preds = %if.end.i9, %if.end.s3fwrn5_set_mode.exit_crit_edge
  %14 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy_ops.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool.not.i11 = icmp eq ptr %17, null
  br i1 %tobool.not.i11, label %s3fwrn5_set_mode.exit.cleanup_crit_edge, label %if.end.i13

s3fwrn5_set_mode.exit.cleanup_crit_edge:          ; preds = %s3fwrn5_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i13:                                       ; preds = %s3fwrn5_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_id.i, align 4
  tail call void %17(ptr noundef %19, i1 noundef zeroext true) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end.i13, %s3fwrn5_set_mode.exit.cleanup_crit_edge, %s3fwrn5_get_mode.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %s3fwrn5_get_mode.exit.cleanup_crit_edge ], [ 0, %s3fwrn5_set_mode.exit.cleanup_crit_edge ], [ 0, %if.end.i13 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3fwrn5_nci_close(ptr nocapture noundef readonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %phy_ops.i = getelementptr inbounds %struct.s3fwrn5_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_ops.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.s3fwrn5_set_wake.exit_crit_edge, label %if.end.i

entry.s3fwrn5_set_wake.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %s3fwrn5_set_wake.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %phy_id.i = getelementptr inbounds %struct.s3fwrn5_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_id.i, align 4
  tail call void %5(ptr noundef %7, i1 noundef zeroext false) #3
  br label %s3fwrn5_set_wake.exit

s3fwrn5_set_wake.exit:                            ; preds = %if.end.i, %entry.s3fwrn5_set_wake.exit_crit_edge
  %8 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_ops.i, align 4
  %set_mode.i = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %set_mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_mode.i, align 4
  %tobool.not.i5 = icmp eq ptr %11, null
  br i1 %tobool.not.i5, label %s3fwrn5_set_wake.exit.s3fwrn5_set_mode.exit_crit_edge, label %if.end.i7

s3fwrn5_set_wake.exit.s3fwrn5_set_mode.exit_crit_edge: ; preds = %s3fwrn5_set_wake.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %s3fwrn5_set_mode.exit

if.end.i7:                                        ; preds = %s3fwrn5_set_wake.exit
  call void @__sanitizer_cov_trace_pc() #5
  %phy_id.i6 = getelementptr inbounds %struct.s3fwrn5_info, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %phy_id.i6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_id.i6, align 4
  tail call void %11(ptr noundef %13, i32 noundef 0) #3
  br label %s3fwrn5_set_mode.exit

s3fwrn5_set_mode.exit:                            ; preds = %if.end.i7, %s3fwrn5_set_wake.exit.s3fwrn5_set_mode.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3fwrn5_nci_send(ptr nocapture noundef readonly %ndev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.s3fwrn5_info, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #3
  %phy_ops.i = getelementptr inbounds %struct.s3fwrn5_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_ops.i, align 4
  %get_mode.i = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %get_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_mode.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %s3fwrn5_get_mode.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

s3fwrn5_get_mode.exit:                            ; preds = %entry
  %phy_id.i = getelementptr inbounds %struct.s3fwrn5_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_id.i, align 4
  %call.i = tail call i32 %5(ptr noundef %7) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 1
  br i1 %cmp.not, label %if.end, label %s3fwrn5_get_mode.exit.cleanup_crit_edge

s3fwrn5_get_mode.exit.cleanup_crit_edge:          ; preds = %s3fwrn5_get_mode.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %s3fwrn5_get_mode.exit
  %8 = ptrtoint ptr %phy_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_ops.i, align 4
  %write.i = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i, align 4
  %tobool.not.i16 = icmp eq ptr %11, null
  br i1 %tobool.not.i16, label %if.end.if.then5_crit_edge, label %s3fwrn5_write.exit

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then5

s3fwrn5_write.exit:                               ; preds = %if.end
  %12 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_id.i, align 4
  %call.i18 = tail call i32 %11(ptr noundef %13, ptr noundef %skb) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %cmp4 = icmp slt i32 %call.i18, 0
  br i1 %cmp4, label %s3fwrn5_write.exit.if.then5_crit_edge, label %s3fwrn5_write.exit.cleanup_crit_edge

s3fwrn5_write.exit.cleanup_crit_edge:             ; preds = %s3fwrn5_write.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

s3fwrn5_write.exit.if.then5_crit_edge:            ; preds = %s3fwrn5_write.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then5

if.then5:                                         ; preds = %s3fwrn5_write.exit.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %retval.0.i2026 = phi i32 [ %call.i18, %s3fwrn5_write.exit.if.then5_crit_edge ], [ -95, %if.end.if.then5_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %s3fwrn5_write.exit.cleanup_crit_edge, %s3fwrn5_get_mode.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %s3fwrn5_get_mode.exit.cleanup_crit_edge ], [ %retval.0.i2026, %if.then5 ], [ %call.i18, %s3fwrn5_write.exit.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3fwrn5_nci_post_setup(ptr nocapture noundef readonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %fw_info1.i = getelementptr inbounds %struct.s3fwrn5_info, ptr %1, i32 0, i32 4
  tail call void @s3fwrn5_fw_init(ptr noundef %fw_info1.i, ptr noundef nonnull @.str.1) #3
  %call.i = tail call i32 @s3fwrn5_fw_request_firmware(ptr noundef %fw_info1.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %s3fwrn5_firmware_init.exit.thread, label %s3fwrn5_firmware_init.exit

s3fwrn5_firmware_init.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %fw_info1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_info1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.nfc_dev, ptr %5, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.2, i32 noundef %call.i) #6
  br label %cleanup

s3fwrn5_firmware_init.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %s3fwrn5_firmware_init.exit.cleanup_crit_edge

s3fwrn5_firmware_init.exit.cleanup_crit_edge:     ; preds = %s3fwrn5_firmware_init.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %s3fwrn5_firmware_init.exit
  %phy_ops.i.i = getelementptr inbounds %struct.s3fwrn5_info, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_ops.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.s3fwrn5_set_wake.exit.i_crit_edge, label %if.end.i.i

if.end.s3fwrn5_set_wake.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %s3fwrn5_set_wake.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %phy_id.i.i = getelementptr inbounds %struct.s3fwrn5_info, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %phy_id.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_id.i.i, align 4
  tail call void %9(ptr noundef %11, i1 noundef zeroext false) #3
  br label %s3fwrn5_set_wake.exit.i

s3fwrn5_set_wake.exit.i:                          ; preds = %if.end.i.i, %if.end.s3fwrn5_set_wake.exit.i_crit_edge
  %12 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_ops.i.i, align 4
  %set_mode.i.i = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %set_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_mode.i.i, align 4
  %tobool.not.i36.i = icmp eq ptr %15, null
  br i1 %tobool.not.i36.i, label %s3fwrn5_set_wake.exit.i.s3fwrn5_set_mode.exit.i_crit_edge, label %if.end.i38.i

s3fwrn5_set_wake.exit.i.s3fwrn5_set_mode.exit.i_crit_edge: ; preds = %s3fwrn5_set_wake.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %s3fwrn5_set_mode.exit.i

if.end.i38.i:                                     ; preds = %s3fwrn5_set_wake.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %phy_id.i37.i = getelementptr inbounds %struct.s3fwrn5_info, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %phy_id.i37.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_id.i37.i, align 4
  tail call void %15(ptr noundef %17, i32 noundef 2) #3
  br label %s3fwrn5_set_mode.exit.i

s3fwrn5_set_mode.exit.i:                          ; preds = %if.end.i38.i, %s3fwrn5_set_wake.exit.i.s3fwrn5_set_mode.exit.i_crit_edge
  %call2.i = tail call i32 @s3fwrn5_fw_setup(ptr noundef %fw_info1.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i23 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i23, label %s3fwrn5_set_mode.exit.i.cleanup_crit_edge, label %if.end.i

s3fwrn5_set_mode.exit.i.cleanup_crit_edge:        ; preds = %s3fwrn5_set_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %s3fwrn5_set_mode.exit.i
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %manufact_specific_info.i = getelementptr inbounds %struct.nci_dev, ptr %19, i32 0, i32 40
  %20 = ptrtoint ptr %manufact_specific_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %manufact_specific_info.i, align 4
  %call4.i = tail call zeroext i1 @s3fwrn5_fw_check_version(ptr noundef %fw_info1.i, i32 noundef %21) #3
  br i1 %call4.i, label %do.end.i25, label %if.end.i.out.i_crit_edge

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.i

do.end.i25:                                       ; preds = %if.end.i
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %dev.i24 = getelementptr inbounds %struct.nfc_dev, ptr %25, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i24, ptr noundef nonnull @.str.7) #6
  %call9.i = tail call i32 @s3fwrn5_fw_download(ptr noundef %fw_info1.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %do.end.i25.out.i_crit_edge, label %if.end12.i

do.end.i25.out.i_crit_edge:                       ; preds = %do.end.i25
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.i

if.end12.i:                                       ; preds = %do.end.i25
  %26 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy_ops.i.i, align 4
  %set_mode.i40.i = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %set_mode.i40.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_mode.i40.i, align 4
  %tobool.not.i41.i = icmp eq ptr %29, null
  br i1 %tobool.not.i41.i, label %if.end12.i.s3fwrn5_set_mode.exit44.i_crit_edge, label %if.end.i43.i

if.end12.i.s3fwrn5_set_mode.exit44.i_crit_edge:   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %s3fwrn5_set_mode.exit44.i

if.end.i43.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #5
  %phy_id.i42.i = getelementptr inbounds %struct.s3fwrn5_info, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %phy_id.i42.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy_id.i42.i, align 4
  tail call void %29(ptr noundef %31, i32 noundef 1) #3
  br label %s3fwrn5_set_mode.exit44.i

s3fwrn5_set_mode.exit44.i:                        ; preds = %if.end.i43.i, %if.end12.i.s3fwrn5_set_mode.exit44.i_crit_edge
  %32 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy_ops.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool.not.i46.i = icmp eq ptr %35, null
  br i1 %tobool.not.i46.i, label %s3fwrn5_set_mode.exit44.i.s3fwrn5_set_wake.exit49.i_crit_edge, label %if.end.i48.i

s3fwrn5_set_mode.exit44.i.s3fwrn5_set_wake.exit49.i_crit_edge: ; preds = %s3fwrn5_set_mode.exit44.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %s3fwrn5_set_wake.exit49.i

if.end.i48.i:                                     ; preds = %s3fwrn5_set_mode.exit44.i
  call void @__sanitizer_cov_trace_pc() #5
  %phy_id.i47.i = getelementptr inbounds %struct.s3fwrn5_info, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %phy_id.i47.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy_id.i47.i, align 4
  tail call void %35(ptr noundef %37, i1 noundef zeroext true) #3
  br label %s3fwrn5_set_wake.exit49.i

s3fwrn5_set_wake.exit49.i:                        ; preds = %if.end.i48.i, %s3fwrn5_set_mode.exit44.i.s3fwrn5_set_wake.exit49.i_crit_edge
  %call15.i = tail call i32 @s3fwrn5_nci_rf_configure(ptr noundef %1, ptr noundef nonnull @.str.10) #3
  %38 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy_ops.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %tobool.not.i51.i = icmp eq ptr %41, null
  br i1 %tobool.not.i51.i, label %s3fwrn5_set_wake.exit49.i.out.i_crit_edge, label %if.end.i53.i

s3fwrn5_set_wake.exit49.i.out.i_crit_edge:        ; preds = %s3fwrn5_set_wake.exit49.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.i

if.end.i53.i:                                     ; preds = %s3fwrn5_set_wake.exit49.i
  call void @__sanitizer_cov_trace_pc() #5
  %phy_id.i52.i = getelementptr inbounds %struct.s3fwrn5_info, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %phy_id.i52.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phy_id.i52.i, align 4
  tail call void %41(ptr noundef %43, i1 noundef zeroext false) #3
  br label %out.i

out.i:                                            ; preds = %if.end.i53.i, %s3fwrn5_set_wake.exit49.i.out.i_crit_edge, %do.end.i25.out.i_crit_edge, %if.end.i.out.i_crit_edge
  %ret.0.i = phi i32 [ %call9.i, %do.end.i25.out.i_crit_edge ], [ %call2.i, %if.end.i.out.i_crit_edge ], [ %call15.i, %s3fwrn5_set_wake.exit49.i.out.i_crit_edge ], [ %call15.i, %if.end.i53.i ]
  %44 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %phy_ops.i.i, align 4
  %set_mode.i56.i = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %set_mode.i56.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %set_mode.i56.i, align 4
  %tobool.not.i57.i = icmp eq ptr %47, null
  br i1 %tobool.not.i57.i, label %out.i.s3fwrn5_firmware_update.exit_crit_edge, label %if.end.i59.i

out.i.s3fwrn5_firmware_update.exit_crit_edge:     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %s3fwrn5_firmware_update.exit

if.end.i59.i:                                     ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #5
  %phy_id.i58.i = getelementptr inbounds %struct.s3fwrn5_info, ptr %1, i32 0, i32 1
  %48 = ptrtoint ptr %phy_id.i58.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %phy_id.i58.i, align 4
  tail call void %47(ptr noundef %49, i32 noundef 0) #3
  br label %s3fwrn5_firmware_update.exit

s3fwrn5_firmware_update.exit:                     ; preds = %if.end.i59.i, %out.i.s3fwrn5_firmware_update.exit_crit_edge
  tail call void @s3fwrn5_fw_cleanup(ptr noundef %fw_info1.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp slt i32 %ret.0.i, 0
  br i1 %cmp, label %s3fwrn5_firmware_update.exit.cleanup_crit_edge, label %if.end4

s3fwrn5_firmware_update.exit.cleanup_crit_edge:   ; preds = %s3fwrn5_firmware_update.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %s3fwrn5_firmware_update.exit
  %50 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %phy_ops.i.i, align 4
  %set_mode.i = getelementptr inbounds %struct.s3fwrn5_phy_ops, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %set_mode.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_mode.i, align 4
  %tobool.not.i = icmp eq ptr %53, null
  br i1 %tobool.not.i, label %if.end4.s3fwrn5_set_mode.exit_crit_edge, label %if.end.i26

if.end4.s3fwrn5_set_mode.exit_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %s3fwrn5_set_mode.exit

if.end.i26:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  %phy_id.i = getelementptr inbounds %struct.s3fwrn5_info, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %phy_id.i, align 4
  tail call void %53(ptr noundef %55, i32 noundef 1) #3
  br label %s3fwrn5_set_mode.exit

s3fwrn5_set_mode.exit:                            ; preds = %if.end.i26, %if.end4.s3fwrn5_set_mode.exit_crit_edge
  %56 = ptrtoint ptr %phy_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %phy_ops.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %tobool.not.i28 = icmp eq ptr %59, null
  br i1 %tobool.not.i28, label %s3fwrn5_set_mode.exit.s3fwrn5_set_wake.exit_crit_edge, label %if.end.i30

s3fwrn5_set_mode.exit.s3fwrn5_set_wake.exit_crit_edge: ; preds = %s3fwrn5_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %s3fwrn5_set_wake.exit

if.end.i30:                                       ; preds = %s3fwrn5_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #5
  %phy_id.i29 = getelementptr inbounds %struct.s3fwrn5_info, ptr %1, i32 0, i32 1
  %60 = ptrtoint ptr %phy_id.i29 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %phy_id.i29, align 4
  tail call void %59(ptr noundef %61, i1 noundef zeroext true) #3
  br label %s3fwrn5_set_wake.exit

s3fwrn5_set_wake.exit:                            ; preds = %if.end.i30, %s3fwrn5_set_mode.exit.s3fwrn5_set_wake.exit_crit_edge
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %call8 = tail call i32 @nci_core_reset(ptr noundef %63) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %s3fwrn5_set_wake.exit.cleanup_crit_edge, label %if.end11

s3fwrn5_set_wake.exit.cleanup_crit_edge:          ; preds = %s3fwrn5_set_wake.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end11:                                         ; preds = %s3fwrn5_set_wake.exit
  call void @__sanitizer_cov_trace_pc() #5
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %call13 = tail call i32 @nci_core_init(ptr noundef %65) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %s3fwrn5_set_wake.exit.cleanup_crit_edge, %s3fwrn5_firmware_update.exit.cleanup_crit_edge, %s3fwrn5_set_mode.exit.i.cleanup_crit_edge, %s3fwrn5_firmware_init.exit.cleanup_crit_edge, %s3fwrn5_firmware_init.exit.thread
  %retval.0 = phi i32 [ %call13, %if.end11 ], [ 0, %s3fwrn5_firmware_init.exit.cleanup_crit_edge ], [ %ret.0.i, %s3fwrn5_firmware_update.exit.cleanup_crit_edge ], [ %call8, %s3fwrn5_set_wake.exit.cleanup_crit_edge ], [ 0, %s3fwrn5_firmware_init.exit.thread ], [ %call2.i, %s3fwrn5_set_mode.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_core_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_core_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3fwrn5_fw_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3fwrn5_fw_request_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3fwrn5_fw_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @s3fwrn5_fw_check_version(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3fwrn5_fw_download(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s3fwrn5_nci_rf_configure(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3fwrn5_fw_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @s3fwrn5_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/nfc/s3fwrn5/core.c", i32 168, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_s3fwrn5_probe, !4, !"__ksymtab_s3fwrn5_probe", i1 false, i1 false}
!4 = !{!"../drivers/nfc/s3fwrn5/core.c", i32 192, i32 1}
!5 = !{ptr @__ksymtab_s3fwrn5_remove, !6, !"__ksymtab_s3fwrn5_remove", i1 false, i1 false}
!6 = !{!"../drivers/nfc/s3fwrn5/core.c", i32 203, i32 1}
!7 = !{ptr @__ksymtab_s3fwrn5_recv_frame, !8, !"__ksymtab_s3fwrn5_recv_frame", i1 false, i1 false}
!8 = !{!"../drivers/nfc/s3fwrn5/core.c", i32 218, i32 1}
!9 = !{ptr @__UNIQUE_ID_file275, !10, !"__UNIQUE_ID_file275", i1 false, i1 false}
!10 = !{!"../drivers/nfc/s3fwrn5/core.c", i32 220, i32 1}
!11 = !{ptr @__UNIQUE_ID_license276, !10, !"__UNIQUE_ID_license276", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_description277, !13, !"__UNIQUE_ID_description277", i1 false, i1 false}
!13 = !{!"../drivers/nfc/s3fwrn5/core.c", i32 221, i32 1}
!14 = !{ptr @__UNIQUE_ID_author278, !15, !"__UNIQUE_ID_author278", i1 false, i1 false}
!15 = !{!"../drivers/nfc/s3fwrn5/core.c", i32 222, i32 1}
!16 = !{ptr @s3fwrn5_nci_ops, !17, !"s3fwrn5_nci_ops", i1 false, i1 false}
!17 = !{!"../drivers/nfc/s3fwrn5/core.c", i32 146, i32 29}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/nfc/s3fwrn5/core.c", i32 28, i32 27}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/nfc/s3fwrn5/core.c", i32 33, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @s3fwrn5_firmware_init._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @s3fwrn5_firmware_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/nfc/s3fwrn5/core.c", i32 57, i32 2}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @s3fwrn5_firmware_update._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @s3fwrn5_firmware_update._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/nfc/s3fwrn5/core.c", i32 68, i32 39}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
