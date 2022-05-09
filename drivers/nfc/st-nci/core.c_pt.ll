; ModuleID = '/llk/IR_all_yes/drivers/nfc/st-nci/core.c_pt.bc'
source_filename = "../drivers/nfc/st-nci/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+st_nci_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_st_nci_probe\09\09\09\09"
module asm "\09.long\09__crc_st_nci_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_nci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22st_nci_probe\22\09\09\09\09\09"
module asm "__kstrtabns_st_nci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+st_nci_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_st_nci_remove\09\09\09\09"
module asm "\09.long\09__crc_st_nci_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_nci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22st_nci_remove\22\09\09\09\09\09"
module asm "__kstrtabns_st_nci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.nci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nci_driver_ops = type { i16, ptr, ptr }
%struct.llt_ndlc = type { ptr, ptr, ptr, %struct.timer_list, i8, %struct.timer_list, i8, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.work_struct, ptr, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.93, i32, %struct.spinlock }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }
%struct.nci_mode_set_cmd = type { i8, i8 }
%struct.st_nci_info = type { ptr, i32, %struct.st_nci_se_info }
%struct.st_nci_se_info = type { ptr, [33 x i8], %struct.completion, %struct.timer_list, i32, i8, %struct.timer_list, i8, i8, ptr, ptr }
%struct.anon.74 = type { ptr, ptr, %union.anon.75 }
%union.anon.75 = type { ptr }
%struct.sk_buff = type { %union.anon.73, %union.anon.76, %union.anon.77, [48 x i8], %union.anon.78, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.80, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.73 = type { %struct.anon.74 }
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

@st_nci_ops = internal constant { %struct.nci_ops, [52 x i8] } { %struct.nci_ops { ptr @st_nci_init, ptr @st_nci_open, ptr @st_nci_close, ptr @st_nci_send, ptr null, ptr null, ptr null, ptr @st_nci_get_rfprotocol, ptr @st_nci_discover_se, ptr @st_nci_disable_se, ptr @st_nci_enable_se, ptr @st_nci_se_io, ptr @st_nci_hci_load_session, ptr @st_nci_hci_event_received, ptr @st_nci_hci_cmd_received, ptr @st_nci_prop_ops, i32 1, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@st_nci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Cannot allocate nfc ndev\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st_nci_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/nfc/st-nci/core.c\00", [38 x i8] zeroinitializer }, align 32
@st_nci_probe._entry_ptr = internal global ptr @st_nci_probe._entry, section ".printk_index", align 4
@st_nci_probe._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013Cannot register proprietary vendor cmds\0A\00", [53 x i8] zeroinitializer }, align 32
@st_nci_probe._entry_ptr.5 = internal global ptr @st_nci_probe._entry.3, section ".printk_index", align 4
@st_nci_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Cannot register nfc device to nci core\0A\00", [54 x i8] zeroinitializer }, align 32
@st_nci_probe._entry_ptr.8 = internal global ptr @st_nci_probe._entry.6, section ".printk_index", align 4
@__kstrtab_st_nci_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_nci_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_st_nci_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_nci_probe to i32), ptr @__kstrtab_st_nci_probe, ptr @__kstrtabns_st_nci_probe }, section "___ksymtab_gpl+st_nci_probe", align 4
@__kstrtab_st_nci_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_nci_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_st_nci_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_nci_remove to i32), ptr @__kstrtab_st_nci_remove, ptr @__kstrtabns_st_nci_remove }, section "___ksymtab_gpl+st_nci_remove", align 4
@__UNIQUE_ID_file276 = internal constant [38 x i8] c"st_nci.file=drivers/nfc/st-nci/st-nci\00", section ".modinfo", align 1
@__UNIQUE_ID_license277 = internal constant [19 x i8] c"st_nci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description278 = internal constant [45 x i8] c"st_nci.description=NCI NFC driver for ST_NCI\00", section ".modinfo", align 1
@st_nci_prop_ops = internal constant { [1 x %struct.nci_driver_ops], [20 x i8] } { [1 x %struct.nci_driver_ops] [%struct.nci_driver_ops { i16 3841, ptr @st_nci_prop_rsp_packet, ptr null }], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [11 x i8] c"st_nci_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 95, i32 29 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 136, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 145, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 151, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"st_nci_prop_ops\00", align 1
@___asan_gen_.37 = private constant [29 x i8] c"../drivers/nfc/st-nci/core.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 87, i32 36 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_description278, ptr @__UNIQUE_ID_file276, ptr @__UNIQUE_ID_license277, ptr @__ksymtab_st_nci_probe, ptr @__ksymtab_st_nci_remove, ptr @st_nci_probe._entry, ptr @st_nci_probe._entry.3, ptr @st_nci_probe._entry.6, ptr @st_nci_probe._entry_ptr, ptr @st_nci_probe._entry_ptr.5, ptr @st_nci_probe._entry_ptr.8, ptr @st_nci_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @st_nci_prop_ops], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_nci_ops to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_nci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_nci_probe._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_nci_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_nci_prop_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_nci_probe(ptr noundef %ndlc, i32 noundef %phy_headroom, i32 noundef %phy_tailroom, ptr noundef %se_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 11
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 220, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @nci_allocate_device(ptr noundef nonnull @st_nci_ops, i32 noundef 254, i32 noundef %phy_headroom, i32 noundef %phy_tailroom) #5
  %2 = ptrtoint ptr %ndlc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %ndlc, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ndlc, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %call1, i32 0, i32 26
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i, align 4
  %5 = ptrtoint ptr %ndlc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndlc, align 4
  %call13 = tail call i32 @st_nci_vendor_cmds_init(ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end21, label %if.end9.err_reg_dev_crit_edge

if.end9.err_reg_dev_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_reg_dev

if.end21:                                         ; preds = %if.end9
  %7 = ptrtoint ptr %ndlc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndlc, align 4
  %call23 = tail call i32 @nci_register_device(ptr noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end31, label %if.end21.err_reg_dev_crit_edge

if.end21.err_reg_dev_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_reg_dev

if.end31:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %ndlc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndlc, align 4
  %call33 = tail call i32 @st_nci_se_init(ptr noundef %10, ptr noundef %se_status) #5
  br label %cleanup

err_reg_dev:                                      ; preds = %if.end21.err_reg_dev_crit_edge, %if.end9.err_reg_dev_crit_edge
  %.str.7.sink = phi ptr [ @.str.4, %if.end9.err_reg_dev_crit_edge ], [ @.str.7, %if.end21.err_reg_dev_crit_edge ]
  %r.0 = phi i32 [ %call13, %if.end9.err_reg_dev_crit_edge ], [ %call23, %if.end21.err_reg_dev_crit_edge ]
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.7.sink) #8
  %11 = ptrtoint ptr %ndlc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndlc, align 4
  tail call void @nci_free_device(ptr noundef %12) #5
  br label %cleanup

cleanup:                                          ; preds = %err_reg_dev, %if.end31, %do.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %err_reg_dev ], [ %call33, %if.end31 ], [ -12, %do.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nci_allocate_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_nci_vendor_cmds_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_nci_se_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @st_nci_remove(ptr noundef %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @ndlc_close(ptr noundef %3) #5
  tail call void @nci_unregister_device(ptr noundef %ndev) #5
  tail call void @nci_free_device(ptr noundef %ndev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ndlc_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_init(ptr noundef %ndev) #0 align 64 {
entry:
  %cmd = alloca %struct.nci_mode_set_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #5
  %0 = getelementptr inbounds %struct.nci_mode_set_cmd, ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %cmd, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %0, align 1
  %call = call i32 @nci_prop_cmd(ptr noundef %ndev, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %cmd) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_open(ptr nocapture noundef readonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags = getelementptr inbounds %struct.st_nci_info, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @ndlc_open(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_close(ptr nocapture noundef readonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags = getelementptr inbounds %struct.st_nci_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void @ndlc_close(ptr noundef %6) #5
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_send(ptr noundef %ndev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %ndev, i32 0, i32 26
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = getelementptr inbounds %struct.anon.74, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ndev, ptr %2, align 8
  %flags = getelementptr inbounds %struct.st_nci_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @ndlc_send(ptr noundef %8, ptr noundef %skb) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @st_nci_get_rfprotocol(ptr nocapture noundef readnone %ndev, i8 noundef zeroext %rf_protocol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %rf_protocol)
  %cmp = icmp eq i8 %rf_protocol, -125
  %cond = select i1 %cmp, i32 128, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_nci_discover_se(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_nci_disable_se(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_nci_enable_se(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_nci_se_io(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_nci_hci_load_session(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @st_nci_hci_event_received(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @st_nci_hci_cmd_received(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_prop_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ndlc_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ndlc_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_prop_rsp_packet(ptr noundef %ndev, ptr nocapture noundef readonly %skb) #0 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_req_complete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !20, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/nfc/st-nci/core.c", i32 136, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @st_nci_probe._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @st_nci_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/nfc/st-nci/core.c", i32 145, i32 3}
!8 = !{ptr @st_nci_probe._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @st_nci_probe._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/nfc/st-nci/core.c", i32 151, i32 3}
!12 = !{ptr @st_nci_probe._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @st_nci_probe._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_st_nci_probe, !15, !"__ksymtab_st_nci_probe", i1 false, i1 false}
!15 = !{!"../drivers/nfc/st-nci/core.c", i32 161, i32 1}
!16 = !{ptr @__ksymtab_st_nci_remove, !17, !"__ksymtab_st_nci_remove", i1 false, i1 false}
!17 = !{!"../drivers/nfc/st-nci/core.c", i32 172, i32 1}
!18 = !{ptr @__UNIQUE_ID_file276, !19, !"__UNIQUE_ID_file276", i1 false, i1 false}
!19 = !{!"../drivers/nfc/st-nci/core.c", i32 174, i32 1}
!20 = !{ptr @__UNIQUE_ID_license277, !19, !"__UNIQUE_ID_license277", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_description278, !22, !"__UNIQUE_ID_description278", i1 false, i1 false}
!22 = !{!"../drivers/nfc/st-nci/core.c", i32 175, i32 1}
!23 = !{ptr @st_nci_ops, !24, !"st_nci_ops", i1 false, i1 false}
!24 = !{!"../drivers/nfc/st-nci/core.c", i32 95, i32 29}
!25 = !{ptr @st_nci_prop_ops, !26, !"st_nci_prop_ops", i1 false, i1 false}
!26 = !{!"../drivers/nfc/st-nci/core.c", i32 87, i32 36}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
