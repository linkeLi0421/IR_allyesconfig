; ModuleID = '/llk/IR_all_yes/drivers/nfc/virtual_ncidev.c_pt.bc'
source_filename = "../drivers/nfc/virtual_ncidev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.nci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.sk_buff = type { %union.anon.77, %union.anon.80, %union.anon.81, [48 x i8], %union.anon.82, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.84, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type { ptr, ptr, %union.anon.79 }
%union.anon.79 = type { ptr }
%union.anon.80 = type { ptr }
%union.anon.81 = type { i64 }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i32, ptr }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.86, i32, i32, i32, i16, i16, %union.anon.88, i32, %union.anon.89, %union.anon.90, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.86 = type { i32 }
%union.anon.88 = type { i32 }
%union.anon.89 = type { i32 }
%union.anon.90 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@miscdev = internal global { %struct.miscdevice, [56 x i8] } zeroinitializer, align 32
@__initcall__kmod_virtual_ncidev__277_215_virtual_ncidev_init6 = internal global ptr @virtual_ncidev_init, section ".initcall6.init", align 4
@__exitcall_virtual_ncidev_exit = internal global ptr @virtual_ncidev_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file278 = internal constant [47 x i8] c"virtual_ncidev.file=drivers/nfc/virtual_ncidev\00", section ".modinfo", align 1
@__UNIQUE_ID_license279 = internal constant [27 x i8] c"virtual_ncidev.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description280 = internal constant [64 x i8] c"virtual_ncidev.description=Virtual NCI device simulation driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author281 = internal constant [60 x i8] c"virtual_ncidev.author=Bongsu Jeon <bongsu.jeon@samsung.com>\00", section ".modinfo", align 1
@state = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"virtual_nci\00", [20 x i8] zeroinitializer }, align 32
@virtual_ncidev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @virtual_ncidev_read, ptr @virtual_ncidev_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtual_ncidev_ioctl, ptr null, ptr null, i32 0, ptr @virtual_ncidev_open, ptr null, ptr @virtual_ncidev_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@nci_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nci_mutex, i64 52), ptr getelementptr (i8, ptr @nci_mutex, i64 52) }, ptr @nci_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@send_buff = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/nfc/virtual_ncidev.c\00", [35 x i8] zeroinitializer }, align 32
@wq = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @wq, i64 44), ptr getelementptr (i8, ptr @wq, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nci_mutex.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nci_mutex\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wq.lock\00", [24 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ndev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@virtual_nci_ops = internal constant { %struct.nci_ops, [52 x i8] } { %struct.nci_ops { ptr null, ptr @virtual_nci_open, ptr @virtual_nci_close, ptr @virtual_nci_send, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [8 x i8] c"miscdev\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 32, i32 26 }
@___asan_gen_.11 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 30, i32 33 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 203, i32 17 }
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"virtual_ncidev_fops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 190, i32 37 }
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"nci_mutex\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [10 x i8] c"send_buff\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 33, i32 24 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 85, i32 7 }
@___asan_gen_.29 = private unnamed_addr constant [3 x i8] c"wq\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 35, i32 8 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 31, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 230, i32 6 }
@___asan_gen_.45 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 214, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 174, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [5 x i8] c"ndev\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 34, i32 24 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"virtual_nci_ops\00", align 1
@___asan_gen_.54 = private constant [32 x i8] c"../drivers/nfc/virtual_ncidev.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 71, i32 29 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author281, ptr @__UNIQUE_ID_description280, ptr @__UNIQUE_ID_file278, ptr @__UNIQUE_ID_license279, ptr @__exitcall_virtual_ncidev_exit, ptr @__initcall__kmod_virtual_ncidev__277_215_virtual_ncidev_init6, ptr @virtual_ncidev_exit, ptr @miscdev, ptr @state, ptr @.str, ptr @virtual_ncidev_fops, ptr @nci_mutex, ptr @send_buff, ptr @.str.1, ptr @wq, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ndev, ptr @virtual_nci_ops], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @miscdev to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @state to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtual_ncidev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nci_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_buff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtual_nci_ops to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @virtual_ncidev_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @misc_deregister(ptr noundef nonnull @miscdev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @virtual_ncidev_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 1, ptr @state, align 4
  store i32 255, ptr @miscdev, align 4
  store ptr @.str, ptr getelementptr inbounds (%struct.miscdevice, ptr @miscdev, i32 0, i32 1), align 4
  store ptr @virtual_ncidev_fops, ptr getelementptr inbounds (%struct.miscdevice, ptr @miscdev, i32 0, i32 2), align 4
  store i16 384, ptr getelementptr inbounds (%struct.miscdevice, ptr @miscdev, i32 0, i32 8), align 4
  %call = tail call i32 @misc_register(ptr noundef nonnull @miscdev) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtual_ncidev_read(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nci_mutex, i32 noundef 0) #7
  %0 = load ptr, ptr @send_buff, align 4
  %tobool.not50 = icmp eq ptr %0, null
  br i1 %tobool.not50, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %entry.while.body_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @nci_mutex) #7
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 85) #7
  %1 = load ptr, ptr @send_buff, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.then, label %while.body.if.end15_crit_edge

while.body.if.end15_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %call47 = call i32 @prepare_to_wait_event(ptr noundef nonnull @wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %3 = load ptr, ptr @send_buff, align 4
  %tobool6.not48 = icmp eq ptr %3, null
  br i1 %tobool6.not48, label %if.then.if.end_crit_edge, label %if.then.if.end11.thread41_crit_edge

if.then.if.end11.thread41_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.thread41

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then.if.end_crit_edge
  %call49 = phi i32 [ %call, %cleanup.if.end_crit_edge ], [ %call47, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool8.not = icmp eq i32 %call49, 0
  br i1 %tobool8.not, label %cleanup, label %if.end11

cleanup:                                          ; preds = %if.end
  call void @schedule() #7
  %call = call i32 @prepare_to_wait_event(ptr noundef nonnull @wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %4 = load ptr, ptr @send_buff, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %cleanup.if.end_crit_edge, label %cleanup.if.end11.thread41_crit_edge

cleanup.if.end11.thread41_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.thread41

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end11.thread41:                                ; preds = %cleanup.if.end11.thread41_crit_edge, %if.then.if.end11.thread41_crit_edge
  call void @finish_wait(ptr noundef nonnull @wq, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end15

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %cleanup26

if.end15:                                         ; preds = %if.end11.thread41, %while.body.if.end15_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @nci_mutex, i32 noundef 0) #7
  %5 = load ptr, ptr @send_buff, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end15.while.body_crit_edge, label %if.end15.while.end_crit_edge

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end15.while.end_crit_edge, %entry.while.end_crit_edge
  %.lcssa = phi ptr [ %0, %entry.while.end_crit_edge ], [ %5, %if.end15.while.end_crit_edge ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %.lcssa, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 %count)
  %data = getelementptr inbounds %struct.sk_buff, ptr %.lcssa, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp9.i.i = icmp slt i32 %8, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %while.end
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.then19_crit_edge, label %if.then27.i.i, !prof !51

land.rhs16.i.i.if.then19_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %if.then19

if.then.i.i.i:                                    ; preds = %while.end
  call void @__check_object_size(ptr noundef %10, i32 noundef %8, i1 noundef zeroext true) #7
  call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #7
  %call.i.i = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %11 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %8, i32 -1226833920) #10, !srcloc !52
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %10, i32 noundef %8) #7
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %10, i32 noundef %8) #7
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %8, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %8, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool18.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool18.not, label %if.end20, label %copy_to_user.exit.if.then19_crit_edge

copy_to_user.exit.if.then19_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then19

if.then19:                                        ; preds = %copy_to_user.exit.if.then19_crit_edge, %if.then27.i.i, %land.rhs16.i.i.if.then19_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @nci_mutex) #7
  br label %cleanup26

if.end20:                                         ; preds = %copy_to_user.exit
  %12 = load ptr, ptr @send_buff, align 4
  %call21 = call ptr @skb_pull(ptr noundef %12, i32 noundef %8) #7
  %13 = load ptr, ptr @send_buff, align 4
  %len22 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %len22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp23 = icmp eq i32 %15, 0
  br i1 %cmp23, label %if.then24, label %if.end20.if.end25_crit_edge

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  call void @consume_skb(ptr noundef %13) #7
  store ptr null, ptr @send_buff, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20.if.end25_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @nci_mutex) #7
  br label %cleanup26

cleanup26:                                        ; preds = %if.end25, %if.then19, %if.end11
  %retval.0 = phi i32 [ -14, %if.then19 ], [ %8, %if.end25 ], [ -14, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtual_ncidev_write(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__alloc_skb(i32 noundef %count, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %count) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9.i.i = icmp slt i32 %count, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.then4_crit_edge, label %if.then27.i.i, !prof !51

land.rhs16.i.i.if.then4_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %if.then4

if.then.i.i.i:                                    ; preds = %if.end
  tail call void @__check_object_size(ptr noundef %call1, i32 noundef %count, i1 noundef zeroext false) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %0 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #10, !srcloc !53
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !51

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %call1, i32 noundef %count) #7
  %1 = tail call i32 @llvm.read_register.i32(metadata !41) #7
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !54
  %and.i.i.i.i = and i32 %3, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %call1, ptr noundef %buf, i32 noundef %count) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #7, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end5, label %if.then11.i.i, !prof !51

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call1, i32 %sub.i.i
  %4 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %if.then4

if.then4:                                         ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.if.then4_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = load ptr, ptr @ndev, align 4
  %call6 = tail call i32 @nci_recv_frame(ptr noundef %5, ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then4 ], [ %count, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtual_ncidev_ioctl(ptr nocapture noundef readnone %flip, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = inttoptr i32 %arg to ptr
  %1 = load ptr, ptr @ndev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 4, i32 -1226833920) #10, !srcloc !52
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #7
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef %3, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -25, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtual_ncidev_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nci_mutex, i32 noundef 0) #7
  %0 = load i32, ptr @state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @nci_allocate_device(ptr noundef nonnull @virtual_nci_ops, i32 noundef 222, i32 noundef 0, i32 noundef 0) #7
  store ptr %call, ptr @ndev, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @nci_register_device(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %1 = load ptr, ptr @ndev, align 4
  tail call void @nci_free_device(ptr noundef %1) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr @state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ 0, %if.end6 ], [ -16, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @nci_mutex) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtual_ncidev_close(ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nci_mutex, i32 noundef 0) #7
  %0 = load i32, ptr @state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i32 2, ptr @state, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @nci_mutex) #7
  %1 = load ptr, ptr @ndev, align 4
  tail call void @nci_unregister_device(ptr noundef %1) #7
  %2 = load ptr, ptr @ndev, align 4
  tail call void @nci_free_device(ptr noundef %2) #7
  tail call void @mutex_lock_nested(ptr noundef nonnull @nci_mutex, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  store i32 1, ptr @state, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @nci_mutex) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nci_allocate_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @virtual_nci_open(ptr nocapture noundef readnone %ndev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtual_nci_close(ptr nocapture noundef readnone %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nci_mutex, i32 noundef 0) #7
  %0 = load ptr, ptr @send_buff, align 4
  tail call void @kfree_skb_reason(ptr noundef %0, i32 noundef 0) #7
  store ptr null, ptr @send_buff, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @nci_mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtual_nci_send(ptr nocapture noundef readnone %ndev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nci_mutex, i32 noundef 0) #7
  %0 = load i32, ptr @state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef nonnull @nci_mutex) #7
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @send_buff, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef nonnull @nci_mutex) #7
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 3264) #7
  store ptr %call, ptr @send_buff, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @nci_mutex) #7
  tail call void @__wake_up(ptr noundef nonnull @wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %return

return:                                           ; preds = %if.end2, %if.then1, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.then1 ], [ 0, %if.end2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !27, !29, !30, !32, !33, !35, !37, !39}
!llvm.named.register.sp = !{!41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_virtual_ncidev__277_215_virtual_ncidev_init6, !1, !"__initcall__kmod_virtual_ncidev__277_215_virtual_ncidev_init6", i1 false, i1 false}
!1 = !{!"../drivers/nfc/virtual_ncidev.c", i32 215, i32 1}
!2 = !{ptr @__exitcall_virtual_ncidev_exit, !3, !"__exitcall_virtual_ncidev_exit", i1 false, i1 false}
!3 = !{!"../drivers/nfc/virtual_ncidev.c", i32 216, i32 1}
!4 = !{ptr @__UNIQUE_ID_file278, !5, !"__UNIQUE_ID_file278", i1 false, i1 false}
!5 = !{!"../drivers/nfc/virtual_ncidev.c", i32 218, i32 1}
!6 = !{ptr @__UNIQUE_ID_license279, !5, !"__UNIQUE_ID_license279", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description280, !8, !"__UNIQUE_ID_description280", i1 false, i1 false}
!8 = !{!"../drivers/nfc/virtual_ncidev.c", i32 219, i32 1}
!9 = !{ptr @__UNIQUE_ID_author281, !10, !"__UNIQUE_ID_author281", i1 false, i1 false}
!10 = !{!"../drivers/nfc/virtual_ncidev.c", i32 220, i32 1}
!11 = !{ptr @miscdev, !12, !"miscdev", i1 false, i1 false}
!12 = !{!"../drivers/nfc/virtual_ncidev.c", i32 32, i32 26}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/nfc/virtual_ncidev.c", i32 203, i32 17}
!15 = !{ptr @state, !16, !"state", i1 false, i1 false}
!16 = !{!"../drivers/nfc/virtual_ncidev.c", i32 30, i32 33}
!17 = !{ptr @virtual_ncidev_fops, !18, !"virtual_ncidev_fops", i1 false, i1 false}
!18 = !{!"../drivers/nfc/virtual_ncidev.c", i32 190, i32 37}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/nfc/virtual_ncidev.c", i32 85, i32 7}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/nfc/virtual_ncidev.c", i32 35, i32 8}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nci_mutex, !22, !"nci_mutex", i1 false, i1 false}
!25 = !{ptr @send_buff, !26, !"send_buff", i1 false, i1 false}
!26 = !{!"../drivers/nfc/virtual_ncidev.c", i32 33, i32 24}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/nfc/virtual_ncidev.c", i32 31, i32 8}
!29 = !{ptr @wq, !28, !"wq", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!37 = !{ptr @ndev, !38, !"ndev", i1 false, i1 false}
!38 = !{!"../drivers/nfc/virtual_ncidev.c", i32 34, i32 24}
!39 = !{ptr @virtual_nci_ops, !40, !"virtual_nci_ops", i1 false, i1 false}
!40 = !{!"../drivers/nfc/virtual_ncidev.c", i32 71, i32 29}
!41 = !{!"sp"}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i64 2153535105, i64 2153535130}
!53 = !{i64 2153534424, i64 2153534449}
!54 = !{i64 6029979}
!55 = !{i64 6030176}
!56 = !{i64 2153515409}
