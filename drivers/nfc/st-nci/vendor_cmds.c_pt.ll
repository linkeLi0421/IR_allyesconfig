; ModuleID = '/llk/IR_all_yes/drivers/nfc/st-nci/vendor_cmds.c_pt.bc'
source_filename = "../drivers/nfc/st-nci/vendor_cmds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+st_nci_vendor_cmds_init\22, \22a\22\09"
module asm "\09.weak\09__crc_st_nci_vendor_cmds_init\09\09\09\09"
module asm "\09.long\09__crc_st_nci_vendor_cmds_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_nci_vendor_cmds_init:\09\09\09\09\09"
module asm "\09.asciz \09\22st_nci_vendor_cmds_init\22\09\09\09\09\09"
module asm "__kstrtabns_st_nci_vendor_cmds_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.nfc_vendor_cmd = type { i32, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.nci_dev = type { ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, %struct.atomic_t, i8, %struct.list_head, ptr, %struct.timer_list, %struct.timer_list, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.mutex, %struct.completion, i32, i32, ptr, i32, i32, [10 x %struct.nfc_target], i32, i8, i32, i8, [4 x i8], i8, i16, i8, i16, i8, i32, %struct.dest_spec_params, i8, ptr, [48 x i8], i8 }
%struct.sk_buff_head = type { %union.anon.62, i32, %struct.spinlock }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { ptr, ptr }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.dest_spec_params = type { i8, i8 }
%struct.st_nci_info = type { ptr, i32, %struct.st_nci_se_info }
%struct.st_nci_se_info = type { ptr, [33 x i8], %struct.completion, %struct.timer_list, i32, i8, %struct.timer_list, i8, i8, ptr, ptr }
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

@st_nci_vendor_cmds = internal constant { [16 x %struct.nfc_vendor_cmd], [32 x i8] } { [16 x %struct.nfc_vendor_cmd] [%struct.nfc_vendor_cmd { i32 32993, i32 0, ptr @st_nci_factory_mode }, %struct.nfc_vendor_cmd { i32 32993, i32 1, ptr @st_nci_hci_clear_all_pipes }, %struct.nfc_vendor_cmd { i32 32993, i32 2, ptr @st_nci_hci_dm_put_data }, %struct.nfc_vendor_cmd { i32 32993, i32 3, ptr @st_nci_hci_dm_update_aid }, %struct.nfc_vendor_cmd { i32 32993, i32 4, ptr @st_nci_hci_dm_get_info }, %struct.nfc_vendor_cmd { i32 32993, i32 5, ptr @st_nci_hci_dm_get_data }, %struct.nfc_vendor_cmd { i32 32993, i32 6, ptr @st_nci_hci_dm_direct_load }, %struct.nfc_vendor_cmd { i32 32993, i32 7, ptr @st_nci_hci_dm_reset }, %struct.nfc_vendor_cmd { i32 32993, i32 8, ptr @st_nci_hci_get_param }, %struct.nfc_vendor_cmd { i32 32993, i32 9, ptr @st_nci_hci_dm_field_generator }, %struct.nfc_vendor_cmd { i32 32993, i32 11, ptr @st_nci_hci_dm_fwupd_start }, %struct.nfc_vendor_cmd { i32 32993, i32 12, ptr @st_nci_hci_dm_fwupd_end }, %struct.nfc_vendor_cmd { i32 32993, i32 10, ptr @st_nci_loopback }, %struct.nfc_vendor_cmd { i32 32993, i32 13, ptr @st_nci_hci_dm_vdc_measurement_value }, %struct.nfc_vendor_cmd { i32 32993, i32 14, ptr @st_nci_hci_dm_vdc_value_comparison }, %struct.nfc_vendor_cmd { i32 32993, i32 15, ptr @st_nci_manufacturer_specific }], [32 x i8] zeroinitializer }, align 32
@__kstrtab_st_nci_vendor_cmds_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_nci_vendor_cmds_init = external dso_local constant [0 x i8], align 1
@__ksymtab_st_nci_vendor_cmds_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_nci_vendor_cmds_init to i32), ptr @__kstrtab_st_nci_vendor_cmds_init, ptr @__kstrtabns_st_nci_vendor_cmds_init }, section "___ksymtab+st_nci_vendor_cmds_init", align 4
@st_nci_factory_mode.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"st_nci\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"st_nci_factory_mode\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/nfc/st-nci/vendor_cmds.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"factory mode: %x\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.4 = private unnamed_addr constant [19 x i8] c"st_nci_vendor_cmds\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 374, i32 36 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [36 x i8] c"../drivers/nfc/st-nci/vendor_cmds.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 48, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_st_nci_vendor_cmds_init, ptr @st_nci_vendor_cmds, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_nci_vendor_cmds to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @st_nci_vendor_cmds_init(ptr nocapture noundef readonly %ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %vendor_cmds.i = getelementptr inbounds %struct.nfc_dev, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %vendor_cmds.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vendor_cmds.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.nfc_set_vendor_cmds.exit_crit_edge

entry.nfc_set_vendor_cmds.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfc_set_vendor_cmds.exit

lor.lhs.false.i:                                  ; preds = %entry
  %n_vendor_cmds.i = getelementptr inbounds %struct.nfc_dev, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %n_vendor_cmds.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_vendor_cmds.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.nfc_set_vendor_cmds.exit_crit_edge

lor.lhs.false.i.nfc_set_vendor_cmds.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfc_set_vendor_cmds.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %vendor_cmds.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @st_nci_vendor_cmds, ptr %vendor_cmds.i, align 4
  %7 = ptrtoint ptr %n_vendor_cmds.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 192, ptr %n_vendor_cmds.i, align 8
  br label %nfc_set_vendor_cmds.exit

nfc_set_vendor_cmds.exit:                         ; preds = %if.end.i, %lor.lhs.false.i.nfc_set_vendor_cmds.exit_crit_edge, %entry.nfc_set_vendor_cmds.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -22, %lor.lhs.false.i.nfc_set_vendor_cmds.exit_crit_edge ], [ -22, %entry.nfc_set_vendor_cmds.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_factory_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, i32 noundef %data_len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i = getelementptr inbounds %struct.nci_dev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %data_len)
  %cmp.not = icmp eq i32 %data_len, 1
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_nci_factory_mode.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_nci_factory_mode, %if.then5)) #4
          to label %do.end [label %if.then5], !srcloc !19

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 1
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_nci_factory_mode.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.3, i32 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %do.end.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 0, label %sw.bb10
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %flags = getelementptr inbounds %struct.st_nci_info, ptr %3, i32 0, i32 1
  %call9 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags) #4
  br label %cleanup

sw.bb10:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %flags11 = getelementptr inbounds %struct.st_nci_info, ptr %3, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags11) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb10, %sw.bb, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ 0, %sw.bb10 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_hci_clear_all_pipes(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, i32 noundef %data_len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @nci_hci_clear_all_pipes(ptr noundef %1) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_hci_dm_put_data(ptr nocapture noundef readonly %dev, ptr noundef %data, i32 noundef %data_len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @nci_hci_send_cmd(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 17, ptr noundef %data, i32 noundef %data_len, ptr noundef null) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_hci_dm_update_aid(ptr nocapture noundef readonly %dev, ptr noundef %data, i32 noundef %data_len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @nci_hci_send_cmd(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 32, ptr noundef %data, i32 noundef %data_len, ptr noundef null) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_hci_dm_get_info(ptr noundef %dev, ptr noundef %data, i32 noundef %data_len) #1 align 64 {
entry:
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #4
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !20
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = call i32 @nci_hci_send_cmd(ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 19, ptr noundef %data, i32 noundef %data_len, ptr noundef nonnull %skb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

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
  br label %cleanup

cleanup:                                          ; preds = %free_skb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %free_skb ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_hci_dm_get_data(ptr noundef %dev, ptr noundef %data, i32 noundef %data_len) #1 align 64 {
entry:
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #4
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !20
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = call i32 @nci_hci_send_cmd(ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 16, ptr noundef %data, i32 noundef %data_len, ptr noundef nonnull %skb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

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
  br label %cleanup

cleanup:                                          ; preds = %free_skb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %free_skb ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_hci_dm_direct_load(ptr nocapture noundef %dev, ptr noundef %data, i32 noundef %data_len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_download_in_progress = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %fw_download_in_progress to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fw_download_in_progress, align 1, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %fw_download_in_progress to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %fw_download_in_progress, align 1
  %call2 = tail call i32 @nci_hci_send_cmd(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 18, ptr noundef %data, i32 noundef %data_len, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ -71, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_hci_dm_reset(ptr nocapture noundef readonly %dev, ptr noundef %data, i32 noundef %data_len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @nci_hci_send_cmd(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 62, ptr noundef %data, i32 noundef %data_len, ptr noundef null) #4
  tail call void @msleep(i32 noundef 200) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_hci_get_param(ptr noundef %dev, ptr nocapture noundef readonly %data, i32 noundef %data_len) #1 align 64 {
entry:
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #4
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !20
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
  %call2 = call i32 @nci_hci_get_param(ptr noundef %2, i8 noundef zeroext %4, i8 noundef zeroext %6, ptr noundef nonnull %skb) #4
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
  %retval.0 = phi i32 [ %r.0, %free_skb ], [ -71, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_hci_dm_field_generator(ptr nocapture noundef readonly %dev, ptr noundef %data, i32 noundef %data_len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @nci_hci_send_cmd(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 50, ptr noundef %data, i32 noundef %data_len, ptr noundef null) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_hci_dm_fwupd_start(ptr nocapture noundef %dev, ptr noundef %data, i32 noundef %data_len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fw_download_in_progress = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %fw_download_in_progress to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %fw_download_in_progress, align 1
  %call1 = tail call i32 @nci_hci_send_cmd(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 20, ptr noundef %data, i32 noundef %data_len, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %fw_download_in_progress to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %fw_download_in_progress, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_hci_dm_fwupd_end(ptr nocapture noundef readonly %dev, ptr noundef %data, i32 noundef %data_len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @nci_hci_send_cmd(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 21, ptr noundef %data, i32 noundef %data_len, ptr noundef null) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_loopback(ptr noundef %dev, ptr noundef %data, i32 noundef %data_len) #1 align 64 {
entry:
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #4
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_len)
  %cmp = icmp eq i32 %data_len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = call i32 @nci_nfcc_loopback(ptr noundef %2, ptr noundef %data, i32 noundef %data_len, ptr noundef nonnull %skb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %call.i = call ptr @__nfc_alloc_vendor_cmd_reply_skb(ptr noundef %dev, i32 noundef 31, i32 noundef 32993, i32 noundef 10, i32 noundef %6) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end4.free_skb_crit_edge, label %if.end7

if.end4.free_skb_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_skb

if.end7:                                          ; preds = %if.end4
  %7 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skb, align 4
  %len8 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len8, align 4
  %data9 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 19
  %11 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data9, align 4
  %call10 = call i32 @nla_put(ptr noundef nonnull %call.i, i32 noundef 31, i32 noundef %10, ptr noundef %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #4
  br label %free_skb

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = call i32 @nfc_vendor_cmd_reply(ptr noundef nonnull %call.i) #4
  br label %free_skb

free_skb:                                         ; preds = %if.end13, %if.then12, %if.end4.free_skb_crit_edge
  %r.0 = phi i32 [ -105, %if.then12 ], [ %call14, %if.end13 ], [ -12, %if.end4.free_skb_crit_edge ]
  %13 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb, align 4
  call void @kfree_skb_reason(ptr noundef %14, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %free_skb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %free_skb ], [ -71, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_hci_dm_vdc_measurement_value(ptr noundef %dev, ptr noundef %data, i32 noundef %data_len) #1 align 64 {
entry:
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #4
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %data_len)
  %cmp.not = icmp eq i32 %data_len, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = call i32 @nci_hci_send_cmd(ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 51, ptr noundef %data, i32 noundef 4, ptr noundef nonnull %skb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %call.i = call ptr @__nfc_alloc_vendor_cmd_reply_skb(ptr noundef %dev, i32 noundef 31, i32 noundef 32993, i32 noundef 13, i32 noundef %6) #4
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end3.free_skb_crit_edge, label %if.end7

if.end3.free_skb_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_skb

if.end7:                                          ; preds = %if.end3
  %7 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skb, align 4
  %len8 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len8, align 4
  %data9 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 19
  %11 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data9, align 4
  %call10 = call i32 @nla_put(ptr noundef nonnull %call.i, i32 noundef 31, i32 noundef %10, ptr noundef %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #4
  br label %free_skb

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = call i32 @nfc_vendor_cmd_reply(ptr noundef nonnull %call.i) #4
  br label %free_skb

free_skb:                                         ; preds = %if.end13, %if.then12, %if.end3.free_skb_crit_edge
  %r.0 = phi i32 [ -105, %if.then12 ], [ %call14, %if.end13 ], [ -12, %if.end3.free_skb_crit_edge ]
  %13 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb, align 4
  call void @kfree_skb_reason(ptr noundef %14, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %free_skb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %free_skb ], [ -71, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_hci_dm_vdc_value_comparison(ptr noundef %dev, ptr noundef %data, i32 noundef %data_len) #1 align 64 {
entry:
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #4
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %data_len)
  %cmp.not = icmp eq i32 %data_len, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = call i32 @nci_hci_send_cmd(ptr noundef %2, i8 noundef zeroext 1, i8 noundef zeroext 52, ptr noundef %data, i32 noundef 2, ptr noundef nonnull %skb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %call.i = call ptr @__nfc_alloc_vendor_cmd_reply_skb(ptr noundef %dev, i32 noundef 31, i32 noundef 32993, i32 noundef 14, i32 noundef %6) #4
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end3.free_skb_crit_edge, label %if.end7

if.end3.free_skb_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %free_skb

if.end7:                                          ; preds = %if.end3
  %7 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skb, align 4
  %len8 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len8, align 4
  %data9 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 19
  %11 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data9, align 4
  %call10 = call i32 @nla_put(ptr noundef nonnull %call.i, i32 noundef 31, i32 noundef %10, ptr noundef %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #4
  br label %free_skb

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = call i32 @nfc_vendor_cmd_reply(ptr noundef nonnull %call.i) #4
  br label %free_skb

free_skb:                                         ; preds = %if.end13, %if.then12, %if.end3.free_skb_crit_edge
  %r.0 = phi i32 [ -105, %if.then12 ], [ %call14, %if.end13 ], [ -12, %if.end3.free_skb_crit_edge ]
  %13 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb, align 4
  call void @kfree_skb_reason(ptr noundef %14, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %free_skb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %free_skb ], [ -71, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_nci_manufacturer_specific(ptr noundef %dev, ptr nocapture noundef readnone %data, i32 noundef %data_len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.nfc_dev, ptr %dev, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call ptr @__nfc_alloc_vendor_cmd_reply_skb(ptr noundef %dev, i32 noundef 31, i32 noundef 32993, i32 noundef 15, i32 noundef 4) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %manufact_specific_info = getelementptr inbounds %struct.nci_dev, ptr %1, i32 0, i32 40
  %call2 = tail call i32 @nla_put(ptr noundef nonnull %call.i, i32 noundef 31, i32 noundef 4, ptr noundef %manufact_specific_info) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 @nfc_vendor_cmd_reply(ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -105, %if.then4 ], [ %call6, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_hci_clear_all_pipes(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_hci_send_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_vendor_cmd_reply(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nfc_alloc_vendor_cmd_reply_skb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_hci_get_param(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_nfcc_loopback(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_st_nci_vendor_cmds_init, !1, !"__ksymtab_st_nci_vendor_cmds_init", i1 false, i1 false}
!1 = !{!"../drivers/nfc/st-nci/vendor_cmds.c", i32 462, i32 1}
!2 = !{ptr @st_nci_vendor_cmds, !3, !"st_nci_vendor_cmds", i1 false, i1 false}
!3 = !{!"../drivers/nfc/st-nci/vendor_cmds.c", i32 374, i32 36}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/nfc/st-nci/vendor_cmds.c", i32 48, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @st_nci_factory_mode.__UNIQUE_ID_ddebug284, !5, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2148901576, i64 2148901581, i64 2148901594, i64 2148901638, i64 2148901672, i64 2148901693}
!20 = !{!"auto-init"}
!21 = !{i8 0, i8 2}
