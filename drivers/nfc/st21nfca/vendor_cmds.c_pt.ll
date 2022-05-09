; ModuleID = '/llk/IR_all_yes/drivers/nfc/st21nfca/vendor_cmds.c_pt.bc'
source_filename = "../drivers/nfc/st21nfca/vendor_cmds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+st21nfca_hci_loopback_event_received\22, \22a\22\09"
module asm "\09.weak\09__crc_st21nfca_hci_loopback_event_received\09\09\09\09"
module asm "\09.long\09__crc_st21nfca_hci_loopback_event_received\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st21nfca_hci_loopback_event_received:\09\09\09\09\09"
module asm "\09.asciz \09\22st21nfca_hci_loopback_event_received\22\09\09\09\09\09"
module asm "__kstrtabns_st21nfca_hci_loopback_event_received:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+st21nfca_vendor_cmds_init\22, \22a\22\09"
module asm "\09.weak\09__crc_st21nfca_vendor_cmds_init\09\09\09\09"
module asm "\09.long\09__crc_st21nfca_vendor_cmds_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st21nfca_vendor_cmds_init:\09\09\09\09\09"
module asm "\09.asciz \09\22st21nfca_vendor_cmds_init\22\09\09\09\09\09"
module asm "__kstrtabns_st21nfca_vendor_cmds_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nfc_vendor_cmd = type { i32, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.st21nfca_hci_info = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, i32, ptr, ptr, %struct.st21nfca_dep_info, %struct.st21nfca_se_info, %struct.st21nfca_vendor_info }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.st21nfca_dep_info = type <{ ptr, %struct.work_struct, i8, i32, i8, i8, i8, i8, i8 }>
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.st21nfca_se_info = type { [33 x i8], %struct.completion, %struct.timer_list, i32, i8, %struct.timer_list, i8, i32, i32, i8, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.st21nfca_vendor_info = type { %struct.completion, ptr }
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
%struct.nfc_hci_dev = type { ptr, i32, i8, %struct.mutex, %struct.list_head, %struct.work_struct, %struct.timer_list, ptr, %struct.sk_buff_head, %struct.work_struct, %struct.sk_buff_head, ptr, ptr, %struct.nfc_hci_init_data, ptr, [256 x i8], [128 x %struct.nfc_hci_pipe], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, ptr, ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon.62, i32, %struct.spinlock }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { ptr, ptr }
%struct.nfc_hci_init_data = type { i8, [50 x %struct.nfc_hci_gate], [9 x i8] }
%struct.nfc_hci_gate = type { i8, i8 }
%struct.nfc_hci_pipe = type { i8, i8 }
%struct.sk_buff = type { %union.anon.41, %union.anon.44, %union.anon.45, [48 x i8], %union.anon.46, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.48, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { ptr, ptr, %union.anon.43 }
%union.anon.43 = type { ptr }
%union.anon.44 = type { ptr }
%union.anon.45 = type { i64 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i32, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.50, i32, i32, i32, i16, i16, %union.anon.52, i32, %union.anon.53, %union.anon.54, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.50 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i16 }
%struct.get_param_data = type { i8, i8 }

@st21nfca_hci_loopback_event_received._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 240, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"NFC: Unexpected event on loopback gate\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"st21nfca_hci_loopback_event_received\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/nfc/st21nfca/vendor_cmds.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st21nfca_hci_loopback_event_received._entry_ptr = internal global ptr @st21nfca_hci_loopback_event_received._entry, section ".printk_index", align 4
@__kstrtab_st21nfca_hci_loopback_event_received = external dso_local constant [0 x i8], align 1
@__kstrtabns_st21nfca_hci_loopback_event_received = external dso_local constant [0 x i8], align 1
@__ksymtab_st21nfca_hci_loopback_event_received = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st21nfca_hci_loopback_event_received to i32), ptr @__kstrtab_st21nfca_hci_loopback_event_received, ptr @__kstrtabns_st21nfca_hci_loopback_event_received }, section "___ksymtab+st21nfca_hci_loopback_event_received", align 4
@st21nfca_vendor_cmds = internal constant { [11 x %struct.nfc_vendor_cmd], [60 x i8] } { [11 x %struct.nfc_vendor_cmd] [%struct.nfc_vendor_cmd { i32 32993, i32 0, ptr @st21nfca_factory_mode }, %struct.nfc_vendor_cmd { i32 32993, i32 1, ptr @st21nfca_hci_clear_all_pipes }, %struct.nfc_vendor_cmd { i32 32993, i32 2, ptr @st21nfca_hci_dm_put_data }, %struct.nfc_vendor_cmd { i32 32993, i32 3, ptr @st21nfca_hci_dm_update_aid }, %struct.nfc_vendor_cmd { i32 32993, i32 4, ptr @st21nfca_hci_dm_get_info }, %struct.nfc_vendor_cmd { i32 32993, i32 5, ptr @st21nfca_hci_dm_get_data }, %struct.nfc_vendor_cmd { i32 32993, i32 6, ptr @st21nfca_hci_dm_load }, %struct.nfc_vendor_cmd { i32 32993, i32 7, ptr @st21nfca_hci_dm_reset }, %struct.nfc_vendor_cmd { i32 32993, i32 8, ptr @st21nfca_hci_get_param }, %struct.nfc_vendor_cmd { i32 32993, i32 9, ptr @st21nfca_hci_dm_field_generator }, %struct.nfc_vendor_cmd { i32 32993, i32 10, ptr @st21nfca_hci_loopback }], [60 x i8] zeroinitializer }, align 32
@__kstrtab_st21nfca_vendor_cmds_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_st21nfca_vendor_cmds_init = external dso_local constant [0 x i8], align 1
@__ksymtab_st21nfca_vendor_cmds_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st21nfca_vendor_cmds_init to i32), ptr @__kstrtab_st21nfca_vendor_cmds_init, ptr @__kstrtabns_st21nfca_vendor_cmds_init }, section "___ksymtab+st21nfca_vendor_cmds_init", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@st21nfca_factory_mode.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st21nfca_hci\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st21nfca_factory_mode\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"factory mode: %x\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 240, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [21 x i8] c"st21nfca_vendor_cmds\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 298, i32 36 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 87, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [38 x i8] c"../drivers/nfc/st21nfca/vendor_cmds.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 43, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_st21nfca_hci_loopback_event_received, ptr @__ksymtab_st21nfca_vendor_cmds_init, ptr @st21nfca_hci_loopback_event_received._entry, ptr @st21nfca_hci_loopback_event_received._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @st21nfca_vendor_cmds, ptr @init_completion.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_hci_loopback_event_received._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_vendor_cmds to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st21nfca_hci_loopback_event_received(ptr noundef %hdev, i8 noundef zeroext %event, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %event)
  %cond = icmp eq i8 %event, 2
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %rx_skb = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %skb, ptr %rx_skb, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdev, align 4
  %dev = getelementptr inbounds %struct.nfc_dev, ptr %2, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  %vendor_info1 = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 11
  tail call void @complete(ptr noundef %vendor_info1) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_hci_get_clientdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st21nfca_vendor_cmds_init(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #4
  %vendor_info = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %vendor_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %vendor_info, align 4
  %wait.i = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 11, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #4
  %1 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdev, align 4
  %vendor_cmds.i = getelementptr inbounds %struct.nfc_dev, ptr %2, i32 0, i32 21
  %3 = ptrtoint ptr %vendor_cmds.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vendor_cmds.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.nfc_set_vendor_cmds.exit_crit_edge

entry.nfc_set_vendor_cmds.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfc_set_vendor_cmds.exit

lor.lhs.false.i:                                  ; preds = %entry
  %n_vendor_cmds.i = getelementptr inbounds %struct.nfc_dev, ptr %2, i32 0, i32 22
  %5 = ptrtoint ptr %n_vendor_cmds.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_vendor_cmds.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not.i = icmp eq i32 %6, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.nfc_set_vendor_cmds.exit_crit_edge

lor.lhs.false.i.nfc_set_vendor_cmds.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfc_set_vendor_cmds.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %vendor_cmds.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @st21nfca_vendor_cmds, ptr %vendor_cmds.i, align 4
  %8 = ptrtoint ptr %n_vendor_cmds.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 132, ptr %n_vendor_cmds.i, align 8
  br label %nfc_set_vendor_cmds.exit

nfc_set_vendor_cmds.exit:                         ; preds = %if.end.i, %lor.lhs.false.i.nfc_set_vendor_cmds.exit_crit_edge, %entry.nfc_set_vendor_cmds.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %lor.lhs.false.i.nfc_set_vendor_cmds.exit_crit_edge ], [ -22, %entry.nfc_set_vendor_cmds.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_factory_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, i32 noundef %data_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %data_len)
  %cmp.not = icmp eq i32 %data_len, 1
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st21nfca_factory_mode.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st21nfca_factory_mode, %if.then4)) #4
          to label %do.end [label %if.then4], !srcloc !31

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  %conv = zext i8 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st21nfca_factory_mode.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.8, i32 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %do.end.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 0, label %sw.bb9
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %quirks = getelementptr inbounds %struct.nfc_hci_dev, ptr %1, i32 0, i32 31
  %call8 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %quirks) #4
  br label %cleanup

sw.bb9:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %quirks10 = getelementptr inbounds %struct.nfc_hci_dev, ptr %1, i32 0, i32 31
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %quirks10) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9, %sw.bb, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ 0, %sw.bb9 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_clear_all_pipes(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, i32 noundef %data_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @nfc_hci_disconnect_all_gates(ptr noundef %1) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_dm_put_data(ptr nocapture noundef readonly %dev, ptr noundef %data, i32 noundef %data_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @nfc_hci_send_cmd(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 17, ptr noundef %data, i32 noundef %data_len, ptr noundef null) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_dm_update_aid(ptr nocapture noundef readonly %dev, ptr noundef %data, i32 noundef %data_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @nfc_hci_send_cmd(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 32, ptr noundef %data, i32 noundef %data_len, ptr noundef null) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_dm_get_info(ptr noundef %dev, ptr noundef %data, i32 noundef %data_len) #0 align 64 {
entry:
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #4
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !32
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = call i32 @nfc_hci_send_cmd(ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 19, ptr noundef %data, i32 noundef %data_len, ptr noundef nonnull %skb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %call.i = call ptr @__nfc_alloc_vendor_cmd_reply_skb(ptr noundef %dev, i32 noundef 31, i32 noundef 32993, i32 noundef 4, i32 noundef %6) #4
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.free_skb_crit_edge, label %if.end5

if.end.free_skb_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_skb

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skb, align 4
  %len6 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len6, align 4
  %data7 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 19
  %11 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data7, align 4
  %call8 = call i32 @nla_put(ptr noundef nonnull %call.i, i32 noundef 31, i32 noundef %10, ptr noundef %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #4
  br label %free_skb

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = call i32 @nfc_vendor_cmd_reply(ptr noundef nonnull %call.i) #4
  br label %free_skb

free_skb:                                         ; preds = %if.end11, %if.then10, %if.end.free_skb_crit_edge
  %r.0 = phi i32 [ -105, %if.then10 ], [ %call12, %if.end11 ], [ -12, %if.end.free_skb_crit_edge ]
  %13 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb, align 4
  call void @kfree_skb_reason(ptr noundef %14, i32 noundef 0) #4
  br label %exit

exit:                                             ; preds = %free_skb, %entry.exit_crit_edge
  %r.1 = phi i32 [ %call1, %entry.exit_crit_edge ], [ %r.0, %free_skb ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #4
  ret i32 %r.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_dm_get_data(ptr noundef %dev, ptr noundef %data, i32 noundef %data_len) #0 align 64 {
entry:
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #4
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !32
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = call i32 @nfc_hci_send_cmd(ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 16, ptr noundef %data, i32 noundef %data_len, ptr noundef nonnull %skb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %call.i = call ptr @__nfc_alloc_vendor_cmd_reply_skb(ptr noundef %dev, i32 noundef 31, i32 noundef 32993, i32 noundef 5, i32 noundef %6) #4
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.free_skb_crit_edge, label %if.end5

if.end.free_skb_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_skb

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skb, align 4
  %len6 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len6, align 4
  %data7 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 19
  %11 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data7, align 4
  %call8 = call i32 @nla_put(ptr noundef nonnull %call.i, i32 noundef 31, i32 noundef %10, ptr noundef %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #4
  br label %free_skb

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = call i32 @nfc_vendor_cmd_reply(ptr noundef nonnull %call.i) #4
  br label %free_skb

free_skb:                                         ; preds = %if.end11, %if.then10, %if.end.free_skb_crit_edge
  %r.0 = phi i32 [ -105, %if.then10 ], [ %call12, %if.end11 ], [ -12, %if.end.free_skb_crit_edge ]
  %13 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb, align 4
  call void @kfree_skb_reason(ptr noundef %14, i32 noundef 0) #4
  br label %exit

exit:                                             ; preds = %free_skb, %entry.exit_crit_edge
  %r.1 = phi i32 [ %call1, %entry.exit_crit_edge ], [ %r.0, %free_skb ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #4
  ret i32 %r.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_dm_load(ptr nocapture noundef readonly %dev, ptr noundef %data, i32 noundef %data_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @nfc_hci_send_cmd(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 18, ptr noundef %data, i32 noundef %data_len, ptr noundef null) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_dm_reset(ptr nocapture noundef readonly %dev, ptr noundef %data, i32 noundef %data_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @nfc_hci_send_cmd_async(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 62, ptr noundef %data, i32 noundef %data_len, ptr noundef null, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %llc = getelementptr inbounds %struct.nfc_hci_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %llc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %llc, align 4
  %call2 = tail call i32 @nfc_llc_stop(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %llc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %llc, align 4
  %call7 = tail call i32 @nfc_llc_start(ptr noundef %5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_get_param(ptr noundef %dev, ptr nocapture noundef readonly %data, i32 noundef %data_len) #0 align 64 {
entry:
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #4
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %data_len)
  %cmp = icmp ult i32 %data_len, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  %data1 = getelementptr inbounds %struct.get_param_data, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %data1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data1, align 1
  %call2 = call i32 @nfc_hci_get_param(ptr noundef %2, i8 noundef zeroext %4, i8 noundef zeroext %6, ptr noundef nonnull %skb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %call.i = call ptr @__nfc_alloc_vendor_cmd_reply_skb(ptr noundef %dev, i32 noundef 31, i32 noundef 32993, i32 noundef 8, i32 noundef %10) #4
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end4.free_skb_crit_edge, label %if.end8

if.end4.free_skb_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_skb

if.end8:                                          ; preds = %if.end4
  %11 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skb, align 4
  %len9 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len9, align 4
  %data10 = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 19
  %15 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data10, align 4
  %call11 = call i32 @nla_put(ptr noundef nonnull %call.i, i32 noundef 31, i32 noundef %14, ptr noundef %16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #4
  br label %free_skb

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = call i32 @nfc_vendor_cmd_reply(ptr noundef nonnull %call.i) #4
  br label %free_skb

free_skb:                                         ; preds = %if.end14, %if.then13, %if.end4.free_skb_crit_edge
  %r.0 = phi i32 [ -105, %if.then13 ], [ %call15, %if.end14 ], [ -12, %if.end4.free_skb_crit_edge ]
  %17 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skb, align 4
  call void @kfree_skb_reason(ptr noundef %18, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %free_skb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -71, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %r.0, %free_skb ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_dm_field_generator(ptr nocapture noundef readonly %dev, ptr noundef %data, i32 noundef %data_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @nfc_hci_send_cmd(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 50, ptr noundef %data, i32 noundef %data_len, ptr noundef null) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_loopback(ptr nocapture noundef readonly %dev, ptr noundef %data, i32 noundef %data_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @nfc_hci_get_clientdata(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len)
  %cmp = icmp eq i32 %data_len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %vendor_info = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call1, i32 0, i32 11
  %2 = ptrtoint ptr %vendor_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %vendor_info, align 4
  %rx_skb = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call1, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %rx_skb, align 4
  %call3 = tail call i32 @nfc_hci_send_event(ptr noundef %1, i8 noundef zeroext 4, i8 noundef zeroext 2, ptr noundef %data, i32 noundef %data_len) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call9 = tail call i32 @wait_for_completion_interruptible(ptr noundef %vendor_info) #4
  %4 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_skb, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %lor.lhs.false

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end6
  %len = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %data_len)
  %cmp14.not = icmp eq i32 %7, %data_len
  br i1 %cmp14.not, label %if.end16, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i = tail call ptr @__nfc_alloc_vendor_cmd_reply_skb(ptr noundef %9, i32 noundef 31, i32 noundef 32993, i32 noundef 10, i32 noundef %data_len) #4
  %tobool21.not = icmp eq ptr %call.i, null
  br i1 %tobool21.not, label %if.end16.free_skb_crit_edge, label %if.end23

if.end16.free_skb_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_skb

if.end23:                                         ; preds = %if.end16
  %10 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_skb, align 4
  %len26 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %len26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len26, align 4
  %data29 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 19
  %14 = ptrtoint ptr %data29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data29, align 4
  %call30 = tail call i32 @nla_put(ptr noundef nonnull %call.i, i32 noundef 31, i32 noundef %13, ptr noundef %15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #4
  br label %free_skb

if.end33:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %call34 = tail call i32 @nfc_vendor_cmd_reply(ptr noundef nonnull %call.i) #4
  br label %free_skb

free_skb:                                         ; preds = %if.end33, %if.then32, %if.end16.free_skb_crit_edge
  %r.0 = phi i32 [ -105, %if.then32 ], [ %call34, %if.end33 ], [ -12, %if.end16.free_skb_crit_edge ]
  %16 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %17, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %free_skb, %lor.lhs.false.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -71, %entry.cleanup_crit_edge ], [ %r.0, %free_skb ], [ -71, %if.end.cleanup_crit_edge ], [ -71, %lor.lhs.false.cleanup_crit_edge ], [ -71, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_disconnect_all_gates(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_send_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_vendor_cmd_reply(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nfc_alloc_vendor_cmd_reply_skb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_send_cmd_async(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llc_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llc_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_get_param(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_send_event(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !17, !19, !20, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/nfc/st21nfca/vendor_cmds.c", i32 240, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @st21nfca_hci_loopback_event_received._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @st21nfca_hci_loopback_event_received._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_st21nfca_hci_loopback_event_received, !9, !"__ksymtab_st21nfca_hci_loopback_event_received", i1 false, i1 false}
!9 = !{!"../drivers/nfc/st21nfca/vendor_cmds.c", i32 245, i32 1}
!10 = !{ptr @__ksymtab_st21nfca_vendor_cmds_init, !11, !"__ksymtab_st21nfca_vendor_cmds_init", i1 false, i1 false}
!11 = !{!"../drivers/nfc/st21nfca/vendor_cmds.c", i32 364, i32 1}
!12 = !{ptr @init_completion.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../include/linux/completion.h", i32 87, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @st21nfca_vendor_cmds, !16, !"st21nfca_vendor_cmds", i1 false, i1 false}
!16 = !{!"../drivers/nfc/st21nfca/vendor_cmds.c", i32 298, i32 36}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/nfc/st21nfca/vendor_cmds.c", i32 43, i32 2}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @st21nfca_factory_mode.__UNIQUE_ID_ddebug280, !18, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2148899518, i64 2148899523, i64 2148899536, i64 2148899580, i64 2148899614, i64 2148899635}
!32 = !{!"auto-init"}
