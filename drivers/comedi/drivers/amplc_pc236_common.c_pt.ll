; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/amplc_pc236_common.c_pt.bc'
source_filename = "../drivers/comedi/drivers/amplc_pc236_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+amplc_pc236_common_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_amplc_pc236_common_attach\09\09\09\09"
module asm "\09.long\09__crc_amplc_pc236_common_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_amplc_pc236_common_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22amplc_pc236_common_attach\22\09\09\09\09\09"
module asm "__kstrtabns_amplc_pc236_common_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.pc236_private = type { i32, i8 }
%struct.pc236_board = type { ptr, ptr, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }

@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@__kstrtab_amplc_pc236_common_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_amplc_pc236_common_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_amplc_pc236_common_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @amplc_pc236_common_attach to i32), ptr @__kstrtab_amplc_pc236_common_attach, ptr @__kstrtabns_amplc_pc236_common_attach }, section "___ksymtab_gpl+amplc_pc236_common_attach", align 4
@__initcall__kmod_amplc_pc236_common__234_183_amplc_pc236_common_init6 = internal global ptr @amplc_pc236_common_init, section ".initcall6.init", align 4
@__exitcall_amplc_pc236_common_exit = internal global ptr @amplc_pc236_common_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [56 x i8] c"amplc_pc236_common.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [78 x i8] c"amplc_pc236_common.description=Comedi helper for amplc_pc236 and amplc_pci236\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [66 x i8] c"amplc_pc236_common.file=drivers/comedi/drivers/amplc_pc236_common\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [31 x i8] c"amplc_pc236_common.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_amplc_pc236_common_exit, ptr @__initcall__kmod_amplc_pc236_common__234_183_amplc_pc236_common_init6, ptr @__ksymtab_amplc_pc236_common_attach, ptr @amplc_pc236_common_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amplc_pc236_common_attach(ptr noundef %dev, i32 noundef %iobase, i32 noundef %irq, i32 noundef %req_irq_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase1 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %iobase, ptr %iobase1, align 4
  %call = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %1 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %subdevices, align 4
  %call2 = tail call i32 @subdev_8255_init(ptr noundef %dev, ptr noundef %2, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %subdevices, align 4
  %arrayidx7 = getelementptr %struct.comedi_subdevice, ptr %4, i32 1
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %5 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx7, ptr %read_subdev, align 4
  %type = getelementptr %struct.comedi_subdevice, ptr %4, i32 1, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %type, align 4
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %7 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %board_ptr.i, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private.i, align 4
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #5
  %enable_irq.i = getelementptr inbounds %struct.pc236_private, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %enable_irq.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %enable_irq.i, align 4
  %intr_update_cb.i = getelementptr inbounds %struct.pc236_board, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %intr_update_cb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intr_update_cb.i, align 4
  %tobool6.not.i = icmp eq ptr %13, null
  br i1 %tobool6.not.i, label %if.end5.pc236_intr_update.exit_crit_edge, label %if.then.i

if.end5.pc236_intr_update.exit_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %pc236_intr_update.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %13(ptr noundef %dev, i1 noundef zeroext false) #5
  br label %pc236_intr_update.exit

pc236_intr_update.exit:                           ; preds = %if.then.i, %if.end5.pc236_intr_update.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %tobool8.not = icmp eq i32 %irq, 0
  br i1 %tobool8.not, label %pc236_intr_update.exit.cleanup_crit_edge, label %if.then9

pc236_intr_update.exit.cleanup_crit_edge:         ; preds = %pc236_intr_update.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9:                                         ; preds = %pc236_intr_update.exit
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %14 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @pc236_interrupt, ptr noundef null, i32 noundef %req_irq_flags, ptr noundef %15, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  br i1 %cmp, label %if.then11, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %irq12 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %16 = ptrtoint ptr %irq12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %irq, ptr %irq12, align 4
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %type, align 4
  %subdev_flags = getelementptr %struct.comedi_subdevice, ptr %4, i32 1, i32 4
  %18 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 98304, ptr %subdev_flags, align 4
  %n_chan = getelementptr %struct.comedi_subdevice, ptr %4, i32 1, i32 3
  %19 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %n_chan, align 4
  %maxdata = getelementptr %struct.comedi_subdevice, ptr %4, i32 1, i32 13
  %20 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %maxdata, align 4
  %range_table = getelementptr %struct.comedi_subdevice, ptr %4, i32 1, i32 15
  %21 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %4, i32 1, i32 20
  %22 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @pc236_intr_insn, ptr %insn_bits, align 4
  %len_chanlist = getelementptr %struct.comedi_subdevice, ptr %4, i32 1, i32 5
  %23 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr %struct.comedi_subdevice, ptr %4, i32 1, i32 23
  %24 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @pc236_intr_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr %struct.comedi_subdevice, ptr %4, i32 1, i32 22
  %25 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @pc236_intr_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr %struct.comedi_subdevice, ptr %4, i32 1, i32 25
  %26 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @pc236_intr_cancel, ptr %cancel, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.then9.cleanup_crit_edge, %pc236_intr_update.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %if.then11 ], [ 0, %pc236_intr_update.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subdev_8255_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pc236_interrupt(i32 noundef %irq, ptr noundef %d) #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %0 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_subdev, align 4
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 9
  %2 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board_ptr.i, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 11
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #5
  %enable_irq.i = getelementptr inbounds %struct.pc236_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %enable_irq.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enable_irq.i, align 4, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.pc236_intr_check.exit_crit_edge, label %if.then.i

entry.pc236_intr_check.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pc236_intr_check.exit

if.then.i:                                        ; preds = %entry
  %intr_chk_clr_cb.i = getelementptr inbounds %struct.pc236_board, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %intr_chk_clr_cb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intr_chk_clr_cb.i, align 4
  %tobool6.not.i = icmp eq ptr %9, null
  br i1 %tobool6.not.i, label %if.then.i.pc236_intr_check.exit_crit_edge, label %if.then7.i

if.then.i.pc236_intr_check.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pc236_intr_check.exit

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i = tail call zeroext i1 %9(ptr noundef %d) #5
  br label %pc236_intr_check.exit

pc236_intr_check.exit:                            ; preds = %if.then7.i, %if.then.i.pc236_intr_check.exit_crit_edge, %entry.pc236_intr_check.exit_crit_edge
  %retval1.0.off0.i = phi i1 [ %call9.i, %if.then7.i ], [ false, %entry.pc236_intr_check.exit_crit_edge ], [ true, %if.then.i.pc236_intr_check.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call3.i) #5
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %10 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %call.not = xor i1 %retval1.0.off0.i, true
  %brmerge = select i1 %tobool.not, i1 true, i1 %call.not
  br i1 %brmerge, label %pc236_intr_check.exit.if.end_crit_edge, label %if.then

pc236_intr_check.exit.if.end_crit_edge:           ; preds = %pc236_intr_check.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %pc236_intr_check.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #5
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %val, align 2
  %call2 = call i32 @comedi_buf_write_samples(ptr noundef %1, ptr noundef nonnull %val, i32 noundef 1) #5
  %call3 = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %1) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %pc236_intr_check.exit.if.end_crit_edge
  %cond = zext i1 %retval1.0.off0.i to i32
  ret i32 %cond
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pc236_intr_insn(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %1 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n, align 4
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pc236_intr_cmdtest(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_src, align 4
  %and.i = and i32 %1, 2
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %1)
  %cmp1.not.i = icmp eq i32 %and.i, %1
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_begin_src, align 4
  %and.i43 = and i32 %3, 64
  store i32 %and.i43, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %cmp.i44 = icmp ne i32 %and.i43, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i43, i32 %3)
  %cmp1.not.i45 = icmp eq i32 %and.i43, %3
  %or.cond.i46 = and i1 %cmp.i44, %cmp1.not.i45
  %4 = select i1 %or.cond.i, i1 %or.cond.i46, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i48 = and i32 %6, 4
  store i32 %and.i48, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %cmp.i49 = icmp ne i32 %and.i48, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i48, i32 %6)
  %cmp1.not.i50 = icmp eq i32 %and.i48, %6
  %or.cond.i51 = and i1 %cmp.i49, %cmp1.not.i50
  %7 = select i1 %4, i1 %or.cond.i51, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i53 = and i32 %9, 32
  store i32 %and.i53, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %cmp.i54 = icmp ne i32 %and.i53, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i53, i32 %9)
  %cmp1.not.i55 = icmp eq i32 %and.i53, %9
  %or.cond.i56 = and i1 %cmp.i54, %cmp1.not.i55
  %10 = select i1 %7, i1 %or.cond.i56, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i58 = and i32 %12, 1
  store i32 %and.i58, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %13 = icmp eq i32 %12, 1
  %14 = select i1 %10, i1 %13, i1 false
  br i1 %14, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %15 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 0
  br i1 %cmp.not.i, label %if.end.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i63 = phi i32 [ -22, %if.then.i ], [ 0, %if.end.comedi_check_trigger_arg_is.exit_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %18 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i64 = icmp eq i32 %19, 0
  br i1 %cmp.not.i64, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit67_crit_edge, label %if.then.i65

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit67_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_is.exit67

if.then.i65:                                      ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_is.exit67

comedi_check_trigger_arg_is.exit67:               ; preds = %if.then.i65, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit67_crit_edge
  %retval.0.i66 = phi i32 [ -22, %if.then.i65 ], [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit67_crit_edge ]
  %or12 = or i32 %retval.0.i66, %retval.0.i63
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %21 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i68 = icmp eq i32 %22, 0
  br i1 %cmp.not.i68, label %comedi_check_trigger_arg_is.exit67.comedi_check_trigger_arg_is.exit71_crit_edge, label %if.then.i69

comedi_check_trigger_arg_is.exit67.comedi_check_trigger_arg_is.exit71_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit67
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_is.exit71

if.then.i69:                                      ; preds = %comedi_check_trigger_arg_is.exit67
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_is.exit71

comedi_check_trigger_arg_is.exit71:               ; preds = %if.then.i69, %comedi_check_trigger_arg_is.exit67.comedi_check_trigger_arg_is.exit71_crit_edge
  %retval.0.i70 = phi i32 [ -22, %if.then.i69 ], [ 0, %comedi_check_trigger_arg_is.exit67.comedi_check_trigger_arg_is.exit71_crit_edge ]
  %or14 = or i32 %or12, %retval.0.i70
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %24 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chanlist_len, align 4
  %26 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp.not.i72 = icmp eq i32 %27, %25
  br i1 %cmp.not.i72, label %comedi_check_trigger_arg_is.exit71.comedi_check_trigger_arg_is.exit75_crit_edge, label %if.then.i73

comedi_check_trigger_arg_is.exit71.comedi_check_trigger_arg_is.exit75_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit71
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_is.exit75

if.then.i73:                                      ; preds = %comedi_check_trigger_arg_is.exit71
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit75

comedi_check_trigger_arg_is.exit75:               ; preds = %if.then.i73, %comedi_check_trigger_arg_is.exit71.comedi_check_trigger_arg_is.exit75_crit_edge
  %retval.0.i74 = phi i32 [ -22, %if.then.i73 ], [ 0, %comedi_check_trigger_arg_is.exit71.comedi_check_trigger_arg_is.exit75_crit_edge ]
  %or16 = or i32 %or14, %retval.0.i74
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %29 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i76 = icmp eq i32 %30, 0
  br i1 %cmp.not.i76, label %comedi_check_trigger_arg_is.exit75.comedi_check_trigger_arg_is.exit79_crit_edge, label %if.then.i77

comedi_check_trigger_arg_is.exit75.comedi_check_trigger_arg_is.exit79_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit75
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_is.exit79

if.then.i77:                                      ; preds = %comedi_check_trigger_arg_is.exit75
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %stop_arg, align 4
  br label %comedi_check_trigger_arg_is.exit79

comedi_check_trigger_arg_is.exit79:               ; preds = %if.then.i77, %comedi_check_trigger_arg_is.exit75.comedi_check_trigger_arg_is.exit79_crit_edge
  %retval.0.i78 = phi i32 [ -22, %if.then.i77 ], [ 0, %comedi_check_trigger_arg_is.exit75.comedi_check_trigger_arg_is.exit79_crit_edge ]
  %or18 = or i32 %or16, %retval.0.i78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or18)
  %tobool19.not = icmp eq i32 %or18, 0
  %. = select i1 %tobool19.not, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %comedi_check_trigger_arg_is.exit79, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %., %comedi_check_trigger_arg_is.exit79 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pc236_intr_cmd(ptr noundef %dev, ptr nocapture noundef readnone %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr.i, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #5
  %enable_irq.i = getelementptr inbounds %struct.pc236_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %enable_irq.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %enable_irq.i, align 4
  %intr_update_cb.i = getelementptr inbounds %struct.pc236_board, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %intr_update_cb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intr_update_cb.i, align 4
  %tobool6.not.i = icmp eq ptr %6, null
  br i1 %tobool6.not.i, label %entry.pc236_intr_update.exit_crit_edge, label %if.then.i

entry.pc236_intr_update.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pc236_intr_update.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %6(ptr noundef %dev, i1 noundef zeroext true) #5
  br label %pc236_intr_update.exit

pc236_intr_update.exit:                           ; preds = %if.then.i, %entry.pc236_intr_update.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pc236_intr_cancel(ptr noundef %dev, ptr nocapture noundef readnone %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr.i, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #5
  %enable_irq.i = getelementptr inbounds %struct.pc236_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %enable_irq.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %enable_irq.i, align 4
  %intr_update_cb.i = getelementptr inbounds %struct.pc236_board, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %intr_update_cb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intr_update_cb.i, align 4
  %tobool6.not.i = icmp eq ptr %6, null
  br i1 %tobool6.not.i, label %entry.pc236_intr_update.exit_crit_edge, label %if.then.i

entry.pc236_intr_update.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pc236_intr_update.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %6(ptr noundef %dev, i1 noundef zeroext false) #5
  br label %pc236_intr_update.exit

pc236_intr_update.exit:                           ; preds = %if.then.i, %entry.pc236_intr_update.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @amplc_pc236_common_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @amplc_pc236_common_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__ksymtab_amplc_pc236_common_attach, !1, !"__ksymtab_amplc_pc236_common_attach", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/amplc_pc236_common.c", i32 177, i32 1}
!2 = !{ptr @__initcall__kmod_amplc_pc236_common__234_183_amplc_pc236_common_init6, !3, !"__initcall__kmod_amplc_pc236_common__234_183_amplc_pc236_common_init6", i1 false, i1 false}
!3 = !{!"../drivers/comedi/drivers/amplc_pc236_common.c", i32 183, i32 1}
!4 = !{ptr @__exitcall_amplc_pc236_common_exit, !5, !"__exitcall_amplc_pc236_common_exit", i1 false, i1 false}
!5 = !{!"../drivers/comedi/drivers/amplc_pc236_common.c", i32 188, i32 1}
!6 = !{ptr @__UNIQUE_ID_author235, !7, !"__UNIQUE_ID_author235", i1 false, i1 false}
!7 = !{!"../drivers/comedi/drivers/amplc_pc236_common.c", i32 190, i32 1}
!8 = !{ptr @__UNIQUE_ID_description236, !9, !"__UNIQUE_ID_description236", i1 false, i1 false}
!9 = !{!"../drivers/comedi/drivers/amplc_pc236_common.c", i32 191, i32 1}
!10 = !{ptr @__UNIQUE_ID_file237, !11, !"__UNIQUE_ID_file237", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/amplc_pc236_common.c", i32 192, i32 1}
!12 = !{ptr @__UNIQUE_ID_license238, !11, !"__UNIQUE_ID_license238", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i8 0, i8 2}
